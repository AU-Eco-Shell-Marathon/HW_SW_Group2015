using System.Collections.Generic;

namespace RollingRoad
{
    public class LiveDataEmulator : ILiveDataSource
    {
        private readonly IDataSource _source;
        private readonly DataList _xAxis;
        private int _index;
        private double _lastMs;

        public event ReadOnlyDataEntryList OnNextReadValue;

        private ITimer _timer;
        public ITimer Timer
        {
            private get { return _timer; }
            set
            {
                if (_timer != null)
                    _timer.Elapsed -= SendNextCallback;

                _timer = value;


                if (_timer != null)
                    _timer.Elapsed += SendNextCallback;
            }
        }

        public LiveDataEmulator(IDataSource source)
        {
            _source = source;

            try
            {
                _xAxis = source.GetDataList("Time");
            }
            catch
            {
                // ignored
            }

            Timer = new SystemTimer();
            
            Reset();
        }

        public void Stop()
        {
            Timer.Stop();
        }

        public ILogger Logger { get; set; }

        public void Start()
        {
            Logger?.WriteLine("Starting emulator");
            SendNextCallback();
        }

        private void Reset()
        {
            _index = 0;
            _lastMs = 0;
            _timer.Stop();
        }

        private void SendNextCallback()
        {
            if(_xAxis == null)
                return;

            if (_index >= _xAxis.GetData().Count)
            {
                Timer.Stop();
                return;
            }

            List<DataEntry> entry = new List<DataEntry>();
            for (int i = 0; i < _source.GetAllData().Count; i++)
            {
                DataList data = _source.GetAllData()[i];
                entry.Add(new DataEntry(data.Name, data.Unit, data.GetData()[_index]));
            }

            Logger?.WriteLine("Emulator sending value");
            OnNextReadValue?.Invoke(entry);
            
            double time = _xAxis.GetData()[_index];
            double delta = (time * 1000) - _lastMs;
            _lastMs = time * 1000;

            _index++;
            Timer.Start((int)delta);
        }
    }
}
