using System;
using System.Diagnostics.CodeAnalysis;
using System.IO;
using System.IO.Ports;
using RollingRoad.Protocols;

namespace RollingRoad
{
    [ExcludeFromCodeCoverage]
    public class SerialConnection : SP4RRInterpreter, IDisposable
    {
        public SerialPort Port { get; }

        public SerialConnection(SerialPort port) : base(new StreamReader(port.BaseStream), new StreamWriter(port.BaseStream))
        {
            Port = port;
        }

        public void Dispose()
        {
            if (Port == null)
                return;

            if (!Port.IsOpen)
                return;

            Port.Dispose();
        }

        public override string ToString()
        {
            return Port.PortName;
        }
    }
}
