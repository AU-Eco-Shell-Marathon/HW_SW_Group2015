using System.Collections.Generic;

namespace RollingRoad.Data
{
    public interface IDataset
    {
        /// <summary>
        /// Data source name
        /// </summary>
        string Name { get; }
    
        /// <summary>
        /// Description of the datasource
        /// </summary>
        string Description { get; }

        /// <summary>
        /// Gets a datalist based on name(Case-sensitive)
        /// </summary>
        /// <param name="name">The name of data to get</param>
        /// <exception cref="System.ArgumentException">Thrown when no data with the providede name could be found</exception>
        /// <returns>A data entry</returns>
        DataList GetDataList(string name);

        /// <summary>
        /// All datalists currently available by this dataset.
        /// </summary>
        /// <returns>All datalist collected by this source, may be NULL</returns>
        IList<DataList> Collection { get; set; }
    }
}
