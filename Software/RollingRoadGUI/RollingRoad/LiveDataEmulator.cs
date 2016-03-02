using System.Collections.Generic;

namespace RollingRoad
{
    public class LiveDataEmulator : ILiveDataSource
    {
        private readonly IDataSource _source;
        private readonly DataList _xAxis;
        private int _index;
        private double _lastMs;

        /// <summary>
        /// Event when at new value is sent
        /// </summary>
        public event ReadOnlyDataEntryList OnNextReadValue;
        /// <summary>
        /// Logger used for debug messages
        /// </summary>
        public ILogger Logger { get; set; }

        private ITimer _timer;

        /// <summary>
        /// Timer used for timing when to send new values
        /// </summary>
        public ITimer Timer
        {
            private get { return _timer; }
            set
            {
                //If a timer is allready connected, disconnect the event
                if (_timer != null)
                    _timer.Elapsed -= SendNextValue;

                _timer = value;

                //If the new timer is not not, connect the event
                if (_timer != null)
                    _timer.Elapsed += SendNextValue;
            }
        }

        /// <summary>
        /// Ctor, before the timer starts sending values, start must be called
        /// </summary>
        /// <param name="source">Source to emulate</param>
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

        //Stop the transmission of values
        public void Stop()
        {
            Timer.Stop();
        }

        /// <summary>
        /// Start the timer
        /// </summary>
        public void Start()
        {
            Logger?.WriteLine("Emulator: starting");
            SendNextValue();
        }

        /// <summary>
        /// Resets the timer, making it possible to re-transmit all values
        /// </summary>
        private void Reset()
        {
            _index = 0;
            _lastMs = 0;
            Timer.Stop();
        }
        
        /// <summary>
        /// Transmits next value and restarts the timer if more data i available
        /// </summary>
        private void SendNextValue()
        {
            if(_xAxis == null)
                return;

            //If there's not more available data, stop. 
            if (_index >= _xAxis.GetData().Count)
            {
                Logger?.WriteLine("Emulator: stopping");
                Timer.Stop();
                return;
            }

            //Setup data to transmit
            List<DataEntry> entry = new List<DataEntry>();
            for (int i = 0; i < _source.GetAllData().Count; i++)
            {
                DataList data = _source.GetAllData()[i];
                entry.Add(new DataEntry(data.Name, data.Unit, data.GetData()[_index]));
            }
            
            OnNextReadValue?.Invoke(entry); //Send value
            
            //Calculate time to wait
            double time = _xAxis.GetData()[_index];
            double delta = (time * 1000) - _lastMs;
            _lastMs = time * 1000;

            //Move data index
            _index++;

            //Restart timer
            Timer.Start((int)delta);
        }

        public override string ToString()
        {
            return "Live data emulator (" + _source + ")";
        }
    }
}
