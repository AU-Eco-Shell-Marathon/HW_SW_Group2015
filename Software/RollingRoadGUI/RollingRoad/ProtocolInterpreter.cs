using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Text;
using System.Threading;

namespace RollingRoad
{
    public class ProtocolInterpreter : ILiveDataSource, IRollingRoadControl
    {
        /// <summary>
        /// Updated each time a fullset om data has been recived.
        /// </summary>
        public event ReadOnlyDataEntryList OnNextReadValue;

        private readonly Stream _stream;
        private readonly Thread _listenThread;
        
        private readonly StreamReader _reader;
        private readonly StreamWriter _writer;

        private bool _shouldClose = false;

        private readonly Dictionary<int, DataEntry> _typeDictionary = new Dictionary<int, DataEntry>();

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
            _stream = stream;

            _listenThread = new Thread(ListenThread);
            _listenThread.IsBackground = true;

            _reader = new StreamReader(_stream, Encoding.ASCII);
            _writer = new StreamWriter(_stream, Encoding.ASCII);
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

        public void SetTorque(int torque)
        {
            //TODO Check if ready to transmit
            SendCommand((int)PacketId.TorqueCtrl + " " + torque);
        }

        private void SendCommand(string cmd)
        {
            _writer.Write(cmd + "\n");
            _writer.Flush();
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
