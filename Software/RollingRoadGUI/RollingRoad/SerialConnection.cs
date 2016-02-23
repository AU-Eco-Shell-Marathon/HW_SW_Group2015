using System;
using System.IO.Ports;

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
