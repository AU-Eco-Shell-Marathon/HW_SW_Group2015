using System.Collections.Generic;
using RollingRoad.Data;

namespace RollingRoad.Core.DomainModel
{
    public class Dataset
    {
        /// <summary>
        /// Name of the file
        /// </summary>
        public string Name { get; set; }
        /// <summary>
        /// Description written in the file
        /// </summary>
        public string Description { get; set; }
        public virtual ICollection<DataList> DataLists { get; set; } 

        public override string ToString()
        {
            return Name;
        }
    }
}
