namespace RollingRoad.Control
{
    public interface IPidControl
    {
        double Kp { get; set; }
        double Ki { get; set; }
        double Kd { get; set; }
    }
}
