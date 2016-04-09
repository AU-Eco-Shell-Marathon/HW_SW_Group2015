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

        public DataSetViewModel DataSet { get; } = new DataSetViewModel(new Dataset());
        public ICollection<DataListViewModel> DataLists => DataSet.Collection; 
        public IDispatcher Dispatcher { get; set; }
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


        private ILiveDataSource _source;
        private ILogger _logger;


        public ObservableCollection<object> LiveControlCollection { get; } = new ObservableCollection<object>(); 

        public string StartStopButtonText => IsStarted ? "Stop" : "Start";

        public string SelectedSourceText => "Source: " + Source;

        public bool HasBeenSaved { get; private set; } = true;
        
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

        public LiveDataSourceViewModel()
        {
            StartStopCommand        = new DelegateCommand(StartStop     , CanStartStop);
            ClearCommand            = new DelegateCommand(Clear         , CanClear);
            SaveCommand             = new DelegateCommand(() => Save()  , CanSave);
            SelectSourceCommand     = new DelegateCommand(SelectSource);

            Dispatcher = new SystemDispatcher(System.Windows.Threading.Dispatcher.CurrentDispatcher);
        }

        public LiveDataSourceViewModel(ILiveDataSource initialSource) : this()
        {
            Source = initialSource;
        }

        public ILiveDataSource Source
        {
            get
            {
                return _source;
            }
            private set
            {
                if (_source != null)
                    _source.OnNextReadValue -= ThreadMover;

                _source = value;

                LiveControlCollection.Clear();

                ICalibrateControl cctrl = _source as ICalibrateControl;
                if(cctrl != null)
                    LiveControlCollection.Add(new CalibrateControlViewModel(cctrl));

                ITorqueControl tctrl = _source as ITorqueControl;
                if (tctrl != null)
                {
                    LiveControlCollection.Add(new TorqueControlViewModel(tctrl));
                    LiveControlCollection.Add(new TestSessionViewModel(tctrl));
                }

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
                DataSet.Clear();
                HasBeenSaved = true;
            }
        }

        private bool CanClear()
        {
            return DataSet.Count > 0;
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
                DataListViewModel list = DataSet.Collection.FirstOrDefault(x => x.Type.Name == datapoint.Type.Name);

                if (list == null)
                {
                    list = new DataListViewModel(new DataList(datapoint.Type));
                    DataSet.Collection.Add(list);
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
                Dispatcher?.BeginInvoke(DispatcherPriority.Input, new Action(() => IncommingData(entries)));
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

            Source?.Stop();
            DataSet.Collection.Clear();

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
                /*Dataset source = new Dataset(new List<DataList>(DataSet.Collection))
                {
                    Description = DateTime.Now.ToLongDateString()
                };*/

                //Save file
                //CsvDataFile.WriteToFile(SaveFileDialog.FileName, source, "shell eco marathon");
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
            return DataSet.Count > 0;
        }

        public override string ToString()
        {
            return "Live data";
        }
    }
}
