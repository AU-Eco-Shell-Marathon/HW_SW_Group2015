namespace RollingRoad
{
    public delegate void TimerElapsedEvent();

    public interface ITimer
    {
        /// <summary>
        /// Initiate timer to make a call to <see cref="Elapsed"/>
        /// </summary>
        /// <param name="ms">Time to delay in milliseconds</param>
        void Start(int ms);

        void Stop();

        event TimerElapsedEvent Elapsed;
    }
}
