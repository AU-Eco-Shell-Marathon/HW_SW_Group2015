using System;
using System.Collections.Generic;
using System.Globalization;
using System.Threading;

namespace RollingRoad
{
    public class LiveDataEmulator : ILiveDataSource
    {
        private readonly IDataSource _source;
        private DataList _xAxis;
        private int _index;
        private double _lastMs;

        public event ReadOnlyDataEntryList OnNextReadValue;
        
        public string XAxisName
        {
            set
            {
                _xAxis = _source.GetDataList(value);
            }
        }

        private ITimer _timer;
        public ITimer Timer
        {
            get { return _timer; }
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

        public void Start()
        {
            SendNextCallback();
        }

        public void Reset()
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
            
            OnNextReadValue?.Invoke(entry);
            
            double time = _xAxis.GetData()[_index];
            double delta = (time * 1000) - _lastMs;
            _lastMs = time * 1000;

            _index++;
            Timer.Start((int)delta);
        }
    }
}
