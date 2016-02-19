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
    }
}
