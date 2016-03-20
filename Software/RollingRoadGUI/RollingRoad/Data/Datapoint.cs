namespace RollingRoad.Data
{
    public class Datapoint
    {
        public Datapoint(DataType type, double value)
        {
            Type = type;
            Value = value;
        }

        public DataType Type { get; }
        public double Value { get; }
    }
}
