using System.Collections.Generic;
using System.ComponentModel;
using RollingRoad.Data;
using RollingRoad.Loggers;

namespace RollingRoad.LiveData
{

    public delegate void ReadOnlyDataEntryList(IReadOnlyList<Datapoint> values);

    public delegate void OnStatusUpdate(object sender, LiveDataSourceStatus status);

    public enum LiveDataSourceStatus
    {
        Stopped,
        Running,
        Disconnected
    }

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

        LiveDataSourceStatus Status { get; }

        event OnStatusUpdate OnStatusChange;

        /// <summary>
        /// Logger used
        /// </summary>
        ILogger Logger { set; }
    }
}
