using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;

namespace RollingRoad.Data
{
    public class DataList : List<double>, INotifyPropertyChanged
    {
        public DataType Type { get; }

        public double LastestValue
        {
            get
            {
                double value = this.LastOrDefault();
                return value;
            }
        }

        public new void Add(double value)
        {
            base.Add(value);
            OnPropertyChanged(nameof(LastestValue));
        }
        
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
            return $"{Type} + ({Count} datapoints)";
        }

        public event PropertyChangedEventHandler PropertyChanged;

        protected virtual void OnPropertyChanged([CallerMemberName] string propertyName = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}
