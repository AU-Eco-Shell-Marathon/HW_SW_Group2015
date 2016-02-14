using System.Collections.Generic;

namespace RollingGoal
{
    public interface ILiveDataSource
    {
        /// <summary>
        /// Updated each time a fullset om data has been recived.
        /// </summary>
        IReadOnlyList<DataEntry> LastDataReceived { get; }
    }
}
