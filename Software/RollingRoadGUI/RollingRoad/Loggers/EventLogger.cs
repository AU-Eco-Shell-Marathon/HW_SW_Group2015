﻿namespace RollingRoad.Loggers
{
    /// <summary>
    /// Invokes OnLog every time there's a log message, does not store log.
    /// </summary>
    public class EventLogger : ILogger
    {
        /// <summary>
        /// Write to log
        /// </summary>
        /// <param name="line">Line to write</param>
        public void WriteLine(string line)
        {
            OnLog?.Invoke(line);
        }

        /// <summary>
        /// Called when there's a new line written, without a newline at the end
        /// </summary>
        public event LogEvent OnLog;
    }
}
