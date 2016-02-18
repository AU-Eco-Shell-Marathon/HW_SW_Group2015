using System.Collections.Generic;
using System.Threading;

namespace RollingGoal
{
    public class LiveDataEmulator : ILiveDataSource
    {
        private readonly IDataSource _source;
        private readonly DataList _xAxis;
        private int _index;
        private Thread _waitThread;
        private int _lastMs;

        public event ReadOnlyDataEntryList OnNextReadValue;

        public LiveDataEmulator(IDataSource source, string timeAxis = "Time")
        {
            _source = source;
            _xAxis = _source.GetDataList(timeAxis);

            Reset();
        }

        public void Reset()
        {
            _waitThread?.Abort();

            _index = 0;
            _lastMs = 0;

            _waitThread = new Thread(ListenThead);
            _waitThread.IsBackground = true;
            _waitThread.Start();
        }

        public void Stop()
        {
            _waitThread?.Abort();
        }

        public void ListenThead()
        {
            Thread.Sleep(500);
            while (true)
            {
                if (_index >= _xAxis.GetData().Count)
                    return;
                
                double time = _xAxis.GetData()[_index];
                Thread.Sleep((int) (time*1000)-_lastMs);

                List<DataEntry> entry = new List<DataEntry>();

                for (int i = 0; i < _source.GetAllData().Count; i++)
                {
                    DataList data = _source.GetAllData()[i];

                    entry.Add(new DataEntry(data.Name, data.Unit, data.GetData()[_index]));
                }

                _index++;
                _lastMs = (int) (time*1000);

                OnNextReadValue?.Invoke(entry);
            }
        }

        ~LiveDataEmulator()
        {
            _waitThread.Abort();
        }
    }
}
