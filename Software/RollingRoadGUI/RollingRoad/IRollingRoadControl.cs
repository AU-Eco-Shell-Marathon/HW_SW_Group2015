namespace RollingRoad
{
    /// <summary>
    /// Allows the control of Rolling Road
    /// </summary>
    public interface IRollingRoadControl
    {
        /// <summary>
        /// Sets the torque
        /// </summary>
        /// <param name="torque">Must be higher than zero</param>
        void SetTorque(int torque);
    }
}
