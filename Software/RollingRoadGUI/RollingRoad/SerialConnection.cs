using System;
using System.Diagnostics.CodeAnalysis;
using System.IO.Ports;

namespace RollingRoad
{
    [ExcludeFromCodeCoverage]
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
