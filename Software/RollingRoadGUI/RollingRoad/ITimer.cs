namespace RollingRoad
{
    public delegate void TimerElapsedEvent();

    public interface ITimer
    {
        /// <summary>
        /// Blocking delay call
        /// </summary>
        /// <param name="ms">Time to delay in milliseconds</param>
        void Start(int ms);

        void Stop();

        event TimerElapsedEvent Elapsed;
    }
}
