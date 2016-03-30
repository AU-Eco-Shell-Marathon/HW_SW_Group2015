using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RollingRoad
{
    /// <summary>
    /// Event used for log
    /// </summary>
    /// <param name="text">The text to be logged</param>
    public delegate void LogEvent(string text);

    public interface ILogger
    {
        /// <summary>
        /// Write a line to the log. (Appends newline)
        /// </summary>
        /// <param name="line"></param>
        void WriteLine(string line);

        /// <summary>
        /// Event that may be called on line recieved
        /// </summary>
        event LogEvent OnLog;
    }
}
