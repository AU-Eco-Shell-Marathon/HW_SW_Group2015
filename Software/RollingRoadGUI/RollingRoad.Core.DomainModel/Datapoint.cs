using System;
using RollingRoad.Data;

namespace RollingRoad.Core.DomainModel
{
    public class DataPoint : IEntity
    {
        public DataPoint(double value)
        {
            Value = value;
        }
        
        public double Value { get; set; }
        public int Id { get; set; }

        public DataType Type => DataList.Type;
        public DataList DataList { get; set; }
    }
}
