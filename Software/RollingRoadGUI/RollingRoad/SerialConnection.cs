using System;
using System.Collections.Generic;
using System.IO.Ports;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RollingRoad
{
    public class SerialConnection : ProtocolInterpreter, IDisposable
    {
        public SerialPort Port { get; private set; }

        public SerialConnection(SerialPort port) : base(port.BaseStream)
        {
            Port = port;
        }

        public void Dispose()
        {
            Port.Dispose();
        }
    }
}
