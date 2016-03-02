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

        private Thread _listenThread;
        private readonly StreamReader _reader;
        private readonly StreamWriter _writer;
        private bool _shouldClose;
        private readonly Dictionary<int, DataEntry> _typeDictionary = new Dictionary<int, DataEntry>();

        /// <summary>
        /// Logger used
        /// </summary>
        public ILogger Logger { get; set; }


        private static readonly CultureInfo CultureInfo = new CultureInfo("en-US");
        private const string CommandDivider = "\n";

        /// <summary>
        /// Packet id as specified in the protocol
        /// </summary>
        private enum PacketId
        {
            HandShake = 0,
            UnitDescription = 1,
            Stop = 2,
            Information = 3,
            TorqueCtrl = 4
        }

        //Create a new interpreter from stream
        public ProtocolInterpreter(Stream stream)
        {
            _reader = new StreamReader(stream, Encoding.ASCII);
            _writer = new StreamWriter(stream, Encoding.ASCII);
        }

        /// <summary>
        /// Thread function
        /// </summary>
        private void ListenThread()
        {
            while (!_shouldClose)
            {
                Listen();
            }
        }

        /// <summary>
        /// Listens a single time for incomming messages (Is blocking until the line is recieved)
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

                    DataEntry entry = new DataEntry(typeName, typeUnit, 0);

                    Logger?.WriteLine("New type recieved: " + entry);
                    _typeDictionary.Add(typeId, entry);
                    break;
                case PacketId.Information:
                    //First value is command ID, and each value has an typeId and actual value
                    int valuesToRead = values.Length - 1;
                    List<DataEntry> dataRead = new List<DataEntry>();

                    for (int i = 0; i < valuesToRead; i++)
                    {
                        double value = double.Parse(values[i + 1], CultureInfo);

                        DataEntry type = _typeDictionary[i];

                        dataRead.Add(new DataEntry(type.Name, type.Unit, value));
                    }

                    OnNextReadValue?.Invoke(dataRead);
                    break;
                default:
                    Logger?.WriteLine("Unknown id recieved: " + (int)packetId);
                    break;;
            }
        }

        /// <summary>
        /// Send a new torque to set to the rollingroad
        /// </summary>
        /// <param name="torque"></param>
        public void SetTorque(double torque)
        {
            string torqueString = torque.ToString(CultureInfo);

            Logger?.WriteLine("Sending torque " + torqueString);
            SendCommand((int)PacketId.TorqueCtrl + " " + torqueString);
        }

        private void SendCommand(string cmd)
        {
            _writer?.Write(cmd + CommandDivider);
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

            if (!startThread)
                return;

            if (_listenThread == null)
                _listenThread = new Thread(ListenThread) { IsBackground = true };

            if (_listenThread.ThreadState == ThreadState.Suspended)
                _listenThread = new Thread(ListenThread) { IsBackground = true };

            if (_listenThread.IsAlive)
                return;


            _shouldClose = false;
            _listenThread.Start();
        }

        ~ProtocolInterpreter()
        {
            Stop();
        }
    }
}
