namespace RollingRoad.Control
{
    public interface IMotorControl
    {
        int CruiseSpeed { get; set; }
        int MaxSpeed { get; set; }
    }
}
