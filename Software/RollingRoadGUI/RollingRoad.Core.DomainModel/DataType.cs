using System;

namespace RollingRoad.Core.DomainModel
{
    public class DataType
    {
        /// <summary>
        /// 
        /// </summary>
        /// <param name="name">Can't be empty or zero</param>
        /// <param name="unit">Can't be empty or zero</param>
        /// <exception cref="System.ArgumentException">Thrown when name or unit is empty or null</exception>
        public DataType(string name, string unit)
        {
            if(string.IsNullOrEmpty(name))
                throw new ArgumentException("Name can't be null or empty");

            if (string.IsNullOrEmpty(unit))
                throw new ArgumentException("Unit can't be null or empty");

            Name = name;
            Unit = unit;
        }

        /// <summary>
        /// Name of the data-type, for example "Time", "Torque".
        /// </summary>
        public string Name { get; }
        /// <summary>
        /// Name of the unit for this data-entry, for example "Seconds", "Nm".
        /// </summary>
        public string Unit { get; }
        
        public override string ToString()
        {
            return $"{Name} ({Unit})";
        }
    }
}
