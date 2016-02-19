using System;
using System.Collections.Generic;

namespace RollingRoad
{
    public class DataList
    {
        /// <summary>
        /// Name of the data-list type. Same as <see cref="DataEntry.Name"/>
        /// </summary>
        public string Name { get; }

        /// <summary>
        /// Name of the unit. Same as <see cref="DataEntry.Unit"/>
        /// </summary>
        public string Unit { get; }

        /// <summary>
        /// A concat of the name nad unit
        /// </summary>
        public string Title => $"{Name} ({Unit})";

        /// <summary>
        /// All data collected
        /// </summary>
        private readonly List<double> _data = new List<double>();


        /// <exception cref="System.ArgumentException">Thrown when name or unit is empty or null</exception>
        public DataList(string name, string unit)
        {
            if (string.IsNullOrEmpty(name))
                throw new ArgumentException("Name can't be null or empty");

            if (string.IsNullOrEmpty(unit))
                throw new ArgumentException("Name can't be null or empty");

            Name = name;
            Unit = unit;
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

        /// <summary>
        /// Adds data to the datalist
        /// </summary>
        /// <param name="value">Value to add</param>
        /// <exception cref="System.ArgumentException">Thrown when the name or unit does not match the list</exception>
        public void AddData(DataEntry value)
        {
            if(value.Name != Name)
                throw new ArgumentException("Name does not match");

            if(value.Unit != Unit)
                throw new ArgumentException("Unit does not match");

            _data.Add(value.Value);
        }
    }
}
