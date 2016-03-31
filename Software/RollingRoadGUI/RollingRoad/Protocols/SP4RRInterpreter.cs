using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Threading;
using RollingRoad.Control;
using RollingRoad.Data;
using RollingRoad.LiveData;
using RollingRoad.Loggers;

namespace RollingRoad.Protocols
{
    // ReSharper disable once InconsistentNaming
    public class SP4RRInterpreter : ILiveDataSource, ITorqueControl, IPidControl, ICalibrateControl
    {
        /// <summary>
        /// Updated each time a fullset om data has been recived.
        /// </summary>
        public event ReadOnlyDataEntryList OnNextReadValue;

        private Thread _listenThread;
        private readonly StreamReader _reader;
        private readonly StreamWriter _writer;
        private bool _shouldClose;
        private readonly Dictionary<int, DataType> _typeDictionary = new Dictionary<int, DataType>();
        private double _kp;
        private double _ki;
        private double _kd;

        /// <summary>
        /// Logger used
        /// </summary>
        public ILogger Logger { get; set; }

        public double Kp
        {
            get { return _kp; }
            set
            {
                _kp = value;
                ResendPid();
            }
        }

        public double Ki
        {
            get { return _ki; }
            set
            {
                _ki = value;
                ResendPid();
            }
        }

        public double Kd
        {
            get { return _kd; }
            set
            {
                _kd = value;
                ResendPid();
            }
        }

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
            TorqueCtrl = 4,
            PidCtrl = 5,
            Calibrate = 6
        }

        //Create a new interpreter from stream
        public SP4RRInterpreter(StreamReader reader, StreamWriter writer)
        {
            _reader = reader;
            _writer = writer;
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

                    DataType type = new DataType(typeName, typeUnit);
                    Datapoint entry = new Datapoint(type, 0);

                    Logger?.WriteLine("New type recieved: " + entry);

                    if (_typeDictionary.ContainsKey(typeId))
                    {
                        _typeDictionary[typeId] = type;
                    }
                    else
                    {
                        _typeDictionary.Add(typeId, type);
                    }
                    break;
                case PacketId.Information:

                    //First value is command ID, and each value has an typeId and actual value
                    int valuesToRead = values.Length - 1;
                    List<Datapoint> dataRead = new List<Datapoint>();

                    for (int i = 0; i < valuesToRead; i++)
                    {
                        double value = double.Parse(values[i + 1], CultureInfo);

                        if (!_typeDictionary.ContainsKey(i))
                        {
                            Logger?.WriteLine("Unknown datatype recieved, sending handshake");
                            SendHandshake();
                            if(i == 0)
                                _typeDictionary.Add(i, new DataType("Time", "Unknown"));
                            else
                                _typeDictionary.Add(i, new DataType("Unknown", "Unknown"));
                        }

                        DataType dataType = _typeDictionary[i];
                        dataRead.Add(new Datapoint(dataType, value));
                    }

                    OnNextReadValue?.Invoke(dataRead);
                    break;
                case PacketId.PidCtrl:

                    //Start id + 3 doubles
                    if (values.Length != 4)
                    {
                        Logger?.WriteLine("Packet not matching protocol (5): " + line + ". Should be 5 <double> <double> <double>");
                    }

                    _kp = int.Parse(values[1]);
                    _ki = int.Parse(values[2]);
                    _kd = int.Parse(values[3]);

                    break;
                default:
                    Logger?.WriteLine("Unknown id recieved: " + (int)packetId);
                    break;
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

        private void ResendPid()
        {
            string pidString = Kp.ToString(CultureInfo) + " " + Ki.ToString(CultureInfo) + " " + Kd.ToString(CultureInfo);
            Logger?.WriteLine("Sending PID " + pidString);

            SendCommand((int)PacketId.PidCtrl + " " + pidString);
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

        public void SendHandshake()
        {
            SendCommand((int)PacketId.HandShake + " RollingRoad");
        }

        public void Start()
        {
            Start(true);
        }

        public void Start(bool startThread)
        {
            SendHandshake();

            if (!startThread)
                return;

            if (_listenThread == null)
                _listenThread = new Thread(ListenThread) { IsBackground = true };

            if (_listenThread.ThreadState != ThreadState.Unstarted && _listenThread.ThreadState != ThreadState.Running)
                _listenThread = new Thread(ListenThread) { IsBackground = true };

            _shouldClose = false;
            _listenThread.Start();
        }

        ~SP4RRInterpreter()
        {
            Stop();
        }

        public void Calibrate()
        {
            SendCommand(((int)PacketId.Calibrate).ToString());
        }
    }
}
