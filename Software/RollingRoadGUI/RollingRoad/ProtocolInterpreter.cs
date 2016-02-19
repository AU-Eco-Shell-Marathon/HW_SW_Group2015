using System.Collections.Generic;
using System.Globalization;
using System.IO;
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

            _listenThread = new Thread(Listen);
            _listenThread.IsBackground = true;
            _listenThread.Start();
        }

        private void Listen()
        {
            StreamReader reader = new StreamReader(_stream);

            while (!_shouldClose)
            {
                string line = reader.ReadLine();
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
                        int valuesToRead = (values.Length - 1)/2;
                        List<DataEntry> dataRead = new List<DataEntry>();

                        for (int i = 0; i < valuesToRead; i++)
                        {
                            int typeId2 = int.Parse(values[i*2 + 1], CultureInfo.InvariantCulture);
                            DataEntry type = _typeDictionary[typeId2];

                            double value = double.Parse(values[i*2 + 2], CultureInfo.InvariantCulture);

                            dataRead.Add(new DataEntry(type.Name, type.Unit, value));
                        }

                        OnNextReadValue?.Invoke(dataRead);
                        break;
                }
            }
        }

        public void SetTorque(int torque)
        {
            //TODO Check if ready to transmit

            StreamWriter writer = new StreamWriter(_stream);

            writer.WriteLine((int)PacketId.TorqueCtrl + " " + torque);
            writer.Flush();
        }

        public void Stop()
        {
            StreamWriter writer = new StreamWriter(_stream);

            writer.Write((int)PacketId.Stop);
            writer.Flush();

            _listenThread.Abort();
        }

        public void Start()
        {
            StreamWriter writer = new StreamWriter(_stream);

            string header = (int)PacketId.HandShake + " RollingRoad";

            //Start by sending headers
            writer.Write(header);
            writer.Flush();
        }

        ~ProtocolInterpreter()
        {
            Stop();
        }
    }
}
