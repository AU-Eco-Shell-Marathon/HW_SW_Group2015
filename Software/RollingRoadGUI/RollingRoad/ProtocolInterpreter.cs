using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Text;
using System.Threading;

namespace RollingRoad
{
    public class ProtocolInterpreter : ILiveDataSource, ITorqueControl
    {
        /// <summary>
        /// Updated each time a fullset om data has been recived.
        /// </summary>
        public event ReadOnlyDataEntryList OnNextReadValue;

        private readonly Thread _listenThread;
        
        private readonly StreamReader _reader;
        private readonly StreamWriter _writer;

        private bool _shouldClose;

        private readonly Dictionary<int, DataEntry> _typeDictionary = new Dictionary<int, DataEntry>();

        public ILogger Logger { get; set; }

        private enum PacketId
        {
            HandShake = 0,
            UnitDescription = 1,
            Stop = 2,
            Information = 3,
            TorqueCtrl = 4
        }

        public ProtocolInterpreter(Stream stream)
        {
            _listenThread = new Thread(ListenThread) {IsBackground = true};

            _reader = new StreamReader(stream, Encoding.ASCII);
            _writer = new StreamWriter(stream, Encoding.ASCII);
        }

        private void ListenThread()
        {
            while (!_shouldClose)
            {
                Listen();
            }
        }

        /// <summary>
        /// Forces a listen
        /// </summary>
        public void Listen()
        {
            string line = _reader.ReadLine();

            if (line == null)
                return;

            Logger?.WriteLine("Recieved: " + line);

            string[] values = line.Split(' ');

            //Read packet id
            PacketId packetId = (PacketId)int.Parse(values[0]);

            switch (packetId)
            {
                case PacketId.UnitDescription:
                    int typeId = int.Parse(values[1]);
                    string typeName = values[2];
                    string typeUnit = values[3];

                    _typeDictionary.Add(typeId, new DataEntry(typeName, typeUnit, 0));
                    break;
                case PacketId.Information:
                    //First value is command ID, and each value has an typeId and actual value
                    int valuesToRead = values.Length - 1;
                    List<DataEntry> dataRead = new List<DataEntry>();

                    for (int i = 0; i < valuesToRead; i++)
                    {
                        double value = double.Parse(values[i + 1], CultureInfo.InvariantCulture);

                        DataEntry type = _typeDictionary[i];

                        dataRead.Add(new DataEntry(type.Name, type.Unit, value));
                    }

                    OnNextReadValue?.Invoke(dataRead);
                    break;
            }
        }

        public void SetTorque(double torque)
        {
            SendCommand((int)PacketId.TorqueCtrl + " " + torque.ToString(new CultureInfo("en-US")));
        }

        private void SendCommand(string cmd)
        {
            _writer?.Write(cmd + "\n");
            _writer?.Flush();
        }

        public void Stop()
        {
            SendCommand(((int)PacketId.Stop).ToString());
            _shouldClose = true;
        }

        public void Start()
        {
            Start(true);
        }

        public void Start(bool startThread)
        {
            SendCommand((int)PacketId.HandShake + " RollingRoad");

            if(startThread)
                _listenThread.Start();
        }

        ~ProtocolInterpreter()
        {
            Stop();
        }
    }
}
