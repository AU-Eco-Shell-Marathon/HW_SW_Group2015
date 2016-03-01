using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RollingRoad
{
    public delegate void LogEvent(string text);

    public class EventLogger : ILogger
    {
        public void WriteLine(string line)
        {
            OnLog?.Invoke(line);
        }

        public event LogEvent OnLog;
    }
}
