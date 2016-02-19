using System.Timers;

namespace RollingRoad
{
    public class SystemTimer : ITimer
    {
        public event TimerElapsedEvent Elapsed;

        private Timer _timer;

        public void Start(int ms)
        {
            if (_timer != null)
                _timer.Elapsed -= TimerCallback;

            _timer = new Timer
            {
                Interval = ms
            };

            _timer.Elapsed += TimerCallback;
            _timer.Start();
        }

        public void Stop()
        {
            _timer?.Stop();
        }

        private void TimerCallback(object o, ElapsedEventArgs e)
        {
            Elapsed?.Invoke();
        }
    }
}
