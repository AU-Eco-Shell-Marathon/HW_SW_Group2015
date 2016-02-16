using System;
using System.Collections.Generic;
using System.Threading;
using System.Windows.Threading;

namespace RollingGoal
{
    public class LiveDataEmulator : ILiveDataSource
    {
        private readonly IDataSource _source;
        private readonly DataList _xAxis;
        private int _index = 0;
        private Thread _waitThread;

        public event ReadOnlyDataEntryList OnNextReadValue;

        public LiveDataEmulator(IDataSource source, string timeAxis = "Time")
        {
            _source = source;
            _xAxis = _source.GetDataList(timeAxis);
            _waitThread = new Thread(ListenThead);
            _waitThread.Start();
        }

        public void ListenThead()
        {
            while (true)
            {
                if (_index >= _xAxis.GetData().Count)
                    return;
                
                double time = _xAxis.GetData()[_index];
                Thread.Sleep((int) (time*1000));

                List<DataEntry> entry = new List<DataEntry>();

                for (int i = 0; i < _source.GetAllData().Count; i++)
                {
                    DataList data = _source.GetAllData()[i];

                    entry.Add(new DataEntry(data.Name, data.Unit, data.GetData()[_index]));
                }

                _index++;

                OnNextReadValue?.Invoke(entry);
            }
        }

        ~LiveDataEmulator()
        {
            _waitThread.Abort();
        }
    }
}
