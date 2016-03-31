using System.Collections.Generic;
using RollingRoad.Data;
using RollingRoad.Loggers;

namespace RollingRoad.LiveData
{

    public delegate void ReadOnlyDataEntryList(IReadOnlyList<Datapoint> values);

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
