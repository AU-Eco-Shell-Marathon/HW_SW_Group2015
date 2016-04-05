using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Windows;
using System.Windows.Threading;
using Microsoft.Practices.Prism.Commands;
using Microsoft.Practices.Prism.Mvvm;
using RollingRoad.Control;
using RollingRoad.Data;
using RollingRoad.LiveData;
using RollingRoad.Loggers;
using RollingRoad.WinApplication.Dialogs;
using MessageBox = System.Windows.MessageBox;

namespace RollingRoad.WinApplication.ViewModels
{
    public class LiveDataSourceViewModel : BindableBase
    {
        public DelegateCommand ClearCommand { get; }
        public DelegateCommand StartStopCommand { get; }
        public DelegateCommand SelectSourceCommand { get; }
        public DelegateCommand SaveCommand { get; }

        public IList<DataList> Collection => DataCollection.First();

        public ILogger Logger
        {
            get { return _logger; }
            set
            {
                _logger = value;
                SelectSourceDialog.Logger = value;
            }
        }

        public ISelectSourceDialog SelectSourceDialog { get; set; } = new SelectSourceDialog();
        public ISaveFileDialog SaveFileDialog { get; set; } = new SaveFileDialog()
        {
            DefaultExt = ".csv",
            Filter = "CSV Files (*.csv)|*.csv"
        };

        public ObservableCollection<object> LiveControlCollection { get; } = new ObservableCollection<object>(); 

        public string StartStopButtonText => IsStarted ? "Stop" : "Start";

        public string SelectedSourceText => "Source: " + Source;

        public bool HasBeenSaved { get; private set; } = true;

        private double _refreshRate = 500;
        public double GraphRefreshRate
        {
            get{ return _refreshRate; }
            set { SetProperty(ref _refreshRate, value); }
        }

        public int GraphRefreshRateSelectedIndex
        {
            get { return _graphRefreshRateSelectedIndex; }
            set
            {
                _graphRefreshRateSelectedIndex = value;
                GraphRefreshRate = GraphUpdateRates[_graphRefreshRateSelectedIndex];
            }
        }

        public List<double> GraphUpdateRates { get; } = new List<double>() {500, 1000, 2000, 5000, 100000}; 

        private bool _isStarted;
        public bool IsStarted
        {
            get { return _isStarted; }
            private set
            {
                _isStarted = value;
                OnPropertyChanged("StartStopButtonText");
            }
        }

        //TODO Make to an interface
        private readonly Dispatcher _dispatcher;

        private ILiveDataSource _source;
        private int _graphRefreshRateSelectedIndex = 4;
        private ILogger _logger;

        public ObservableCollection<Dataset> DataCollection { get; set; } = new ObservableCollection<Dataset>();

        public LiveDataSourceViewModel()
        {
            StartStopCommand        = new DelegateCommand(StartStop     , CanStartStop);
            ClearCommand            = new DelegateCommand(Clear         , CanClear);
            SaveCommand             = new DelegateCommand(() => Save()  , CanSave);
            SelectSourceCommand     = new DelegateCommand(SelectSource);

            _dispatcher = Dispatcher.CurrentDispatcher;
            DataCollection.Add(new Dataset());
        }

        public ILiveDataSource Source
        {
            get
            {
                return _source;
            }
            set
            {
                if (_source != null)
                    _source.OnNextReadValue -= ThreadMover;

                _source = value;

                LiveControlCollection.Clear();

                ICalibrateControl cctrl = _source as ICalibrateControl;
                if(cctrl != null)
                    LiveControlCollection.Add(new CalibrateControlViewModel(cctrl));

                ITorqueControl tctrl = _source as ITorqueControl;
                if(tctrl != null)
                    LiveControlCollection.Add(new TorqueControlViewModel(tctrl));

                IPidControl pctrl = _source as IPidControl;
                if (pctrl != null)
                    LiveControlCollection.Add(new PidControlViewModel(pctrl));

                if (_source != null)
                {
                    _source.OnNextReadValue += ThreadMover;
                    _source.Logger = Logger;
                }

                Start();
                StartStopCommand.RaiseCanExecuteChanged();
                OnPropertyChanged(nameof(SelectedSourceText));
                OnPropertyChanged(nameof(LiveControlCollection));
            }
        }

        private void Clear()
        {
            if(CheckAndAskAboutChanges())
            {
                Collection.Clear();
                HasBeenSaved = true;
            }
        }

        private bool CanClear()
        {
            return Collection.Count > 0;
        }

        private void Start()
        {
            Source?.Start();
            IsStarted = true;
        }

        private void Stop()
        {
            Source?.Stop();
            IsStarted = false;
        }

        private void StartStop()
        {
            if(IsStarted)
                Stop();
            else
                Start();
        }

        private bool CanStartStop()
        {
            return Source != null;
        }

        private void IncommingData(IReadOnlyList<Datapoint> datapoints)
        {
            HasBeenSaved = false;
            foreach (Datapoint datapoint in datapoints)
            {
                DataList list = Collection.FirstOrDefault(x => x.Type.Name == datapoint.Type.Name);

                if (list == null)
                {
                    list = new DataList(datapoint.Type);
                    Collection.Add(list);
                    ClearCommand.RaiseCanExecuteChanged();
                }
                double value = datapoint.Value;

                list.Add(value);
            }
        }


        private void ThreadMover(IReadOnlyList<Datapoint> entries)
        {
            try
            {
                _dispatcher?.Invoke(() => IncommingData(entries));
            }
            catch (Exception)
            {
                // ignored
            }
        }

        private bool CheckAndAskAboutChanges()
        {
            if (HasBeenSaved)
                return true;
            
            MessageBoxResult result = MessageBox.Show("Do you want to save changes?", "Unsaved changes",
                MessageBoxButton.YesNoCancel, MessageBoxImage.Warning);

            switch (result)
            {
                case MessageBoxResult.Yes:
                    return Save();
                case MessageBoxResult.No:
                    return true;
                default:
                    return false;
            }
        }

        private void SelectSource()
        {
            if (!CheckAndAskAboutChanges())
                return;

            Collection.Clear();

            try
            {
                if (SelectSourceDialog.ShowDialog())
                {
                    Source = SelectSourceDialog.LiveDataSource;
                }
            }
            catch (Exception exception)
            {
                MessageBox.Show("Error: " + exception.Message, "Error opening source!", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private bool Save()
        {
            if (SaveFileDialog.ShowDialog() != true)
                return false;

            try
            {
                Dataset source = new Dataset(new List<DataList>(Collection))
                {
                    Description = DateTime.Now.ToLongDateString()
                };

                //Save file
                CsvDataFile.WriteToFile(SaveFileDialog.FileName, source, "shell eco marathon");
                return true;
            }
            catch (Exception e)
            {
                MessageBox.Show("Error: " + e.Message, "Error saving data!", MessageBoxButton.OK, MessageBoxImage.Error);
                Logger?.WriteLine("Error saving data: " + e.Message);
            }

            return false;
        }

        private bool CanSave()
        {
            return DataCollection.Count > 0;
        }

        public override string ToString()
        {
            return "Live data";
        }
    }
}
