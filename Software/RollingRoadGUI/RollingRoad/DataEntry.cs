using System;

namespace RollingRoad
{
    public class DataEntry
    {
        /// <summary>
        /// 
        /// </summary>
        /// <param name="name">Can't be empty or zero</param>
        /// <param name="unit">Can't be empty or zero</param>
        /// <param name="value"></param>
        /// <exception cref="System.ArgumentException">Thrown when name or unit is empty or null</exception>
        public DataEntry(string name, string unit, double value)
        {
            if(string.IsNullOrEmpty(name))
                throw new ArgumentException("Name can't be null or empty");

            if (string.IsNullOrEmpty(unit))
                throw new ArgumentException("Unit can't be null or empty");

            Name = name;
            Unit = unit;
            Value = value;
        }

        /// <summary>
        /// Name of the data-type, for example "Time", "Torque".
        /// </summary>
        public string Name { get; }
        /// <summary>
        /// Name of the unit for this data-entry, for example "Seconds", "Nm".
        /// </summary>
        public string Unit { get; }
        /// <summary>
        /// Value for this data-entry
        /// </summary>
        public double Value { get; }

        /// <summary>
        /// Concat of the name and unit
        /// </summary>
        public string Title => $"{Name} ({Unit})";
    }
}
