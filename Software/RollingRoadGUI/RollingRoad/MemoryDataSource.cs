using System;
using System.Collections.Generic;

namespace RollingRoad
{
    public class MemoryDataSource : IDataSource
    {
        /// <summary>
        /// Data in the memory data source
        /// </summary>
        public List<DataList> Data { get; } = new List<DataList>();

        /// <summary>
        /// Memory data source, initiated with no data
        /// </summary>
        public MemoryDataSource()
        {
            
        }

        /// <summary>
        /// Create datasource from list
        /// </summary>
        /// <param name="list">List to use in datasource</param>
        public MemoryDataSource(List<DataList> list)
        {
            Data = list;
        }
        
        /// <summary>
        /// Name of the file
        /// </summary>
        public string Name { get; set; }

        /// <summary>
        /// Description written in the file
        /// </summary>
        public string Description { get; set; }

        /// <summary>
        /// Get datalist by name
        /// </summary>
        /// <param name="name">Name of the data (Ex "Time", "Torque")</param>
        /// <returns></returns>
        public DataList GetDataList(string name)
        {
            foreach (var dataList in Data)
            {
                if (dataList.Name == name)
                    return dataList;
            }

            throw new ArgumentException("Name not found");
        }

        /// <summary>
        /// Returns all data known
        /// </summary>
        /// <returns></returns>
        public IReadOnlyList<DataList> GetAllData()
        {
            return Data.AsReadOnly();
        }

        public override string ToString()
        {
            return Name;
        }
    }
}
