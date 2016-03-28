using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Windows;
using System.Windows.Input;
using System.Windows.Threading;
using Microsoft.Practices.Prism.Commands;
using Microsoft.Practices.Prism.Mvvm;
using Microsoft.Win32;
using RollingRoad.Data;
using MessageBox = System.Windows.MessageBox;

namespace RollingRoad.WinApplication
{
    public class LiveDataSourceViewModel : BindableBase
    {

        public IList<DataList> Collection => DataCollection.First().Collection;

        public DelegateCommand ClearCommand { get; }
        public DelegateCommand StartStopCommand { get; }
        public DelegateCommand SelectSourceCommand { get; }
        public DelegateCommand SaveCommand { get; }

        public ILogger Logger { get; set; }

        public string StartStopButtonText => IsStarted ? "Stop" : "Start";

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
        private bool _isStarted = false;
        public ObservableCollection<DataSetViewModel> DataCollection { get; set; } = new ObservableCollection<DataSetViewModel>();

        public LiveDataSourceViewModel()
        {
            StartStopCommand        = new DelegateCommand(StartStop, CanStartStop);
            ClearCommand            = new DelegateCommand(Clear, CanClear);
            SelectSourceCommand     = new DelegateCommand(SelectSource);
            SaveCommand             = new DelegateCommand(Save, CanSave);

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

                if (_source != null)
                    _source.OnNextReadValue += ThreadMover;
            }
        }

        private void Clear()
        {
            //TODO Confirm with user
            Collection.Clear();
        }

        private bool CanClear()
        {
            return true;
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
            foreach (Datapoint datapoint in datapoints)
            {
                DataList list = Collection.FirstOrDefault(x => x.Type.Name == datapoint.Type.Name);

                if (list == null)
                {
                    list = new DataList(datapoint.Type);
                    Collection.Add(list);
                }
                double value = datapoint.Value;

                list?.Data.Add(value);
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

        private void SelectSource()
        {
            SelectSourceWindow window = new SelectSourceWindow();
            Clear();

            try
            {
                if (window.ShowDialog() == true)
                {
                    Source = window.LiveDataSource;
                    Start();
                }
            }
            catch (Exception exception)
            {
                MessageBox.Show("Error: " + exception.Message, "Error opening source!", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void Save()
        {
            SaveFileDialog dlg = new SaveFileDialog
            {
                DefaultExt = ".csv",
                Filter = "CSV Files (*.csv)|*.csv"
            };
            
            if (dlg.ShowDialog() == true)
            {
                try
                {
                    MemoryDataset source = new MemoryDataset(Collection)
                    {
                        Description = DateTime.Now.ToLongDateString()
                    };

                    //Save file
                    CsvDataFile.WriteToFile(dlg.FileName, source);
                }
                catch (Exception e)
                {
                    MessageBox.Show("Error: " + e.Message, "Error saving data!", MessageBoxButton.OK, MessageBoxImage.Error);
                    Logger?.WriteLine("Error saving data: " + e.Message);
                }
            }
        }

        private bool CanSave()
        {
            return DataCollection.Count > 0;
        }
    }
}
