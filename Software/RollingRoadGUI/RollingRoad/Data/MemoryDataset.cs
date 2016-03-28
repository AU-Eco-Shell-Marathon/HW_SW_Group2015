using System;
using System.Collections.Generic;
using System.Linq;

namespace RollingRoad.Data
{
    public class MemoryDataset : IDataset
    {
        /// <summary>
        /// Data in the memory data source
        /// </summary>
        public IList<DataList> Collection { get; set; } = new List<DataList>();

        /// <summary>
        /// Memory data source, initiated with no data
        /// </summary>
        public MemoryDataset()
        {
            
        }

        /// <summary>
        /// Create datasource from list
        /// </summary>
        /// <param name="dataCollection">dataCollection to use in datasource</param>
        public MemoryDataset(IList<DataList> dataCollection)
        {
            Collection = dataCollection;
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
            DataList result = Collection.FirstOrDefault(x => x.Type.Name == name);
            
            if(result == null)
                throw new ArgumentException("List does not exist");

            return result;
        }

        public override string ToString()
        {
            return Name;
        }
    }
}
