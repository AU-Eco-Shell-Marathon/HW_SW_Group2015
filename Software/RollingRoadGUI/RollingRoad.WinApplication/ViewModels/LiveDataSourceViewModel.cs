using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Windows;
using System.Windows.Threading;
using Microsoft.Practices.Prism.Commands;
using Microsoft.Practices.Prism.Mvvm;
using Microsoft.Win32;
using RollingRoad.Control;
using RollingRoad.Data;
using RollingRoad.WinApplication.ViewModels;
using MessageBox = System.Windows.MessageBox;

namespace RollingRoad.WinApplication
{
    public class LiveDataSourceViewModel : BindableBase
    {
        public DelegateCommand ClearCommand { get; }
        public DelegateCommand StartStopCommand { get; }
        public DelegateCommand SelectSourceCommand { get; }
        public DelegateCommand SaveCommand { get; }

        public IList<DataListViewModel> Collection => DataCollection.First().Collection;
        public ILogger Logger { get; set; }

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

        public List<double> GraphUpdateRates { get; private set; } = new List<double>() {500, 1000, 2000, 5000, 10000}; 

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
        private int _graphRefreshRateSelectedIndex = 0;

        public ObservableCollection<DataSetViewModel> DataCollection { get; set; } = new ObservableCollection<DataSetViewModel>();

        public LiveDataSourceViewModel()
        {
            StartStopCommand        = new DelegateCommand(StartStop     , CanStartStop);
            ClearCommand            = new DelegateCommand(Clear         , CanClear);
            SaveCommand             = new DelegateCommand(() => Save()  , CanSave);
            SelectSourceCommand     = new DelegateCommand(SelectSource);

            _dispatcher = Dispatcher.CurrentDispatcher;
            DataCollection.Add(new DataSetViewModel(new MemoryDataset()));
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
                StartStopCommand.RaiseCanExecuteChanged();

                ICalibrateControl ctrl = _source as ICalibrateControl;

                if(ctrl != null)
                    LiveControlCollection.Add(new CalibrateControlViewModel(ctrl));

                Start();
                OnPropertyChanged(nameof(SelectedSourceText));

                if (_source != null)
                    _source.OnNextReadValue += ThreadMover;
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

        public override string ToString()
        {
            return "Live data";
        }


        private void IncommingData(IReadOnlyList<Datapoint> datapoints)
        {
            HasBeenSaved = false;
            foreach (Datapoint datapoint in datapoints)
            {
                DataListViewModel list = Collection.FirstOrDefault(x => x.Type.Name == datapoint.Type.Name);

                if (list == null)
                {
                    list = new DataListViewModel(new DataList(datapoint.Type));
                    Collection.Add(list);
                    ClearCommand.RaiseCanExecuteChanged();
                }
                double value = datapoint.Value;

                list?.AddData(value);
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
                SelectSourceWindow window = new SelectSourceWindow();

                if (window.ShowDialog() == true)
                {
                    Source = window.LiveDataSource;
                }
            }
            catch (Exception exception)
            {
                MessageBox.Show("Error: " + exception.Message, "Error opening source!", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private bool Save()
        {
            SaveFileDialog dlg = new SaveFileDialog
            {
                DefaultExt = ".csv",
                Filter = "CSV Files (*.csv)|*.csv"
            };

            if (dlg.ShowDialog() != true)
                return false;

            try
            {
                MemoryDataset source = new MemoryDataset(new List<DataList>(Collection.Select(x => x.List)))
                {
                    Description = DateTime.Now.ToLongDateString()
                };

                //Save file
                CsvDataFile.WriteToFile(dlg.FileName, source);
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
    }
}
