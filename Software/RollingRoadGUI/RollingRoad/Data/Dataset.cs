using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;

namespace RollingRoad.Data
{
    public class Dataset : ObservableCollection<DataList>
    {
        /// <summary>
        /// Memory data source, initiated with no data
        /// </summary>
        public Dataset()
        {
            
        }

        /// <summary>
        /// Create datasource from list
        /// </summary>
        /// <param name="dataCollection">dataCollection to use in datasource</param>
        public Dataset(IList<DataList> dataCollection) : base(dataCollection)
        {
        }
        
        /// <summary>
        /// Name of the file
        /// </summary>
        public string Name { get; set; }

        /// <summary>
        /// Description written in the file
        /// </summary>
        public string Description { get; set; }

        public DataList TryGetByName(string listname)
        {
            return this.FirstOrDefault(datalist => datalist.Type.Name == listname);
        }

        public override string ToString()
        {
            return Name;
        }
    }
}
