using System;
using System.Collections.Generic;
using System.Linq;

namespace RollingRoad.Data
{
    public class DataList
    {
        public DataType Type { get; }
        
        /// <summary>
        /// All data collected
        /// </summary>
        public ICollection<double> Data { get; set; } = new List<double>();
        
        /// <summary>
        /// Creates a new data list with the specified name and unit
        /// </summary>
        /// <param name="type"></param>
        /// <exception cref="System.ArgumentException">Thrown when name or unit is empty or null</exception>
        public DataList(DataType type)
        {
            if(type == null)
                throw new Exception("Type cant be null");

            Type = type;
        }

        public override string ToString()
        {
            return $"{Type} + ({Data.Count} datapoints)";
        }
    }
}
