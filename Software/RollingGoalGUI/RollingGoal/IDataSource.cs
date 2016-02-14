using System.Collections.Generic;

namespace RollingGoal
{
    public interface IDataSource
    {
        /// <summary>
        /// Gets a datalist based on name(Case-sensitive)
        /// </summary>
        /// <param name="name">The name of data to get</param>
        /// <exception cref="System.ArgumentException">Thrown when no data with the providede name could be found</exception>
        /// <returns>A data entry</returns>
        DataList GetDataList(string name);

        /// <summary>
        /// Returns all datalists currently available by this source.
        /// </summary>
        /// <returns>All datalist collected by this source, may be NULL</returns>
        IReadOnlyList<DataList> GetAllData();
    }
}
