using System.Collections.Generic;

namespace RollingRoad
{

    public delegate void ReadOnlyDataEntryList(IReadOnlyList<DataEntry> values);

    public interface ILiveDataSource
    {
        /// <summary>
        /// Updated each time a fullset om data has been recived.
        /// </summary>

        event ReadOnlyDataEntryList OnNextReadValue;

        /// <summary>
        /// Starts the transmission/recieving of data
        /// </summary>
        void Start();

        /// <summary>
        /// Stops the transmission/recieving of data
        /// </summary>
        void Stop();

        /// <summary>
        /// Logger used
        /// </summary>
        ILogger Logger { set; }
    }
}
