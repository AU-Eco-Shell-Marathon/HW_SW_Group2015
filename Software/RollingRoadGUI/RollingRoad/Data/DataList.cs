using System;
using System.Collections.Generic;

namespace RollingRoad.Data
{
    public class DataList
    {
        public DataType Type { get; }


        /// <summary>
        /// All data collected
        /// </summary>
        private readonly List<double> _data = new List<double>();


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

        /// <summary>
        /// Get all data currently storred by this type
        /// </summary>
        /// <returns>All data</returns>
        public IReadOnlyList<double> GetData()
        {
            return _data;
        }

        /// <summary>
        /// Adds data to the datalist
        /// </summary>
        /// <param name="value">Value to add</param>
        public void AddData(double value)
        {
            _data.Add(value);
        }

        public override string ToString()
        {
            return $"{Type} + ({_data.Count} datapoints)";
        }
    }
}
