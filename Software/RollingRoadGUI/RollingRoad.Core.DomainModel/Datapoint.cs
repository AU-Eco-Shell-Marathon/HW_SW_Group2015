namespace RollingRoad.Core.DomainModel
{
    public class DataPoint : IEntity
    {
        public int Id { get; set; }

        public DataPoint(double value)
        {
            Value = value;
        }
        
        public double Value { get; set; }
        
        public DataList DataList { get; set; }
    }
}
