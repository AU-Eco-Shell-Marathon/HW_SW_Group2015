using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace RollingRoad
{
    public class ProtocolStreamLiveData : ILiveDataSource
    {
        /// <summary>
        /// Updated each time a fullset om data has been recived.
        /// </summary>
        public event ReadOnlyDataEntryList OnNextReadValue;

        private readonly Stream _stream;
        private readonly Thread _thread;
        
        private bool _shouldClose = false;

        private Dictionary<int, DataEntry> _typeDictionary = new Dictionary<int, DataEntry>();

        private enum PacketId
        {
            HandShake = 0,
            UnitDescription = 1,
            Stop = 2,
            Information = 3,
            TorqueCtrl = 4
        }

        public ProtocolStreamLiveData(Stream stream)
        {
            _stream = stream;

            _thread = new Thread(Listen);
            _thread.IsBackground = true;
            _thread.Start();
        }

        private void Listen()
        {
            StreamReader reader = new StreamReader(_stream);
            StreamWriter writer = new StreamWriter(_stream);

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

                        break;
                }
            }
        }

        public void Stop()
        {
            StreamWriter writer = new StreamWriter(_stream);

            writer.WriteLine(PacketId.Stop);

            _thread.Abort();
        }

        public void Start()
        {
            StreamWriter writer = new StreamWriter(_stream);

            string header = PacketId.HandShake + " RollingRoad";

            //Start by sending headers
            writer.WriteLine(header);
        }

        ~ProtocolStreamLiveData()
        {
            Stop();
        }
    }
}
