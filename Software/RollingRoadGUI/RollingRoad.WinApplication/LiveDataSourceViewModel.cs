using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Collections.Specialized;
using System.ComponentModel;
using System.Globalization;
using System.Linq;
using System.Windows;
using System.Windows.Input;
using System.Windows.Threading;
using Microsoft.Practices.Prism.Commands;
using Microsoft.Practices.Prism.Mvvm;
using Microsoft.Research.DynamicDataDisplay.DataSources;
using RollingRoad.Data;

namespace RollingRoad.WinApplication
{
    public class LiveDataSourceViewModel : INotifyPropertyChanged
    {
        private ILiveDataSource _source;
        public ObservableCollection<DataSetViewModel> DataCollection { get; set; } = new ObservableCollection<DataSetViewModel>();

        public IList<DataList> Collection => DataCollection.First().Collection;

        public event PropertyChangedEventHandler PropertyChanged;

        //TODO Make to an interface
        private readonly Dispatcher _dispatcher;

        public LiveDataSourceViewModel()
        {
            ClearCommand = new DelegateCommand(Clear, CanClear);
            SelectSourceCommand = new DelegateCommand(SelectSource);

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
                
                if (_source != null)
                    _source.OnNextReadValue += ThreadMover;
            }
        }

        public ICommand ClearCommand { get; }
        public ICommand StartCommand { get; }
        public ICommand StopCommand { get; }

        public ICommand SelectSourceCommand { get; }

        private void Clear()
        {
            MessageBox.Show("Test", "Test");
        }

        private bool CanClear()
        {
            return true;
        }

        private void Start()
        {
            Source?.Start();
        }

        private void Stop()
        {
            
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
    }
}
