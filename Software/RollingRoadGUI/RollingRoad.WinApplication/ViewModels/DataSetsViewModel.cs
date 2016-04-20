using System;
using System.Collections.ObjectModel;
using System.Linq;
using System.Windows;
using System.Windows.Input;
using Microsoft.Practices.Prism.Commands;
using Microsoft.Practices.Prism.Mvvm;
using Microsoft.Win32;
using RollingRoad.Core.DomainModel;
using RollingRoad.Data;

namespace RollingRoad.WinApplication.ViewModels
{
    public class DataSetsViewModel : BindableBase
    {
        public ObservableCollection<DataSetViewModel> DataSets { get; set; } = new ObservableCollection<DataSetViewModel>();
        public ObservableCollection<DataListViewModel> SelectedDatalists { get; set; } = new ObservableCollection<DataListViewModel>();

        public DataSetsViewModel()
        {
            OpenSelectWindow = new DelegateCommand(OpenSelect);
            SelectedChanged = new DelegateCommand(OnSelectedChanged);
        }

        public ICommand OpenSelectWindow { get; }
        public ICommand SelectedChanged { get; }

        private void OnSelectedChanged()
        {
            SelectedDatalists.Clear();
            
            foreach (DataSetViewModel dataSetViewModel in DataSets.Where(x => x.IsSelected))
            {
                foreach (DataListViewModel dataListViewModel in dataSetViewModel.Collection.Where(x => x.Selected))
                {
                    dataListViewModel.DataSetIndex = dataSetViewModel.DatasetIndex;
                    SelectedDatalists.Add(dataListViewModel);
                }
            }
        }

        private void OpenSelect()
        {
            OpenFileDialog dlg = new OpenFileDialog
            {
                DefaultExt = ".csv",
                Filter = "CSV Files (*.csv)|*.csv"
            };
            
            bool? result = dlg.ShowDialog();

            if (result == true)
            {
                // Open document 
                string filename = dlg.FileName;

                try
                {
                    //TODO FIX
                    //DataSet dataset = CsvDataFile.LoadFromFile(filename, "shell eco marathon");
                    /*
                    DataSets.Add(new DataSetViewModel(dataset));

                    int i = 0;
                    foreach (DataSetViewModel dataSetViewModel in DataSets)
                    {
                        dataSetViewModel.DatasetIndex = i;
                        i++;
                    }*/
                }
                catch (Exception exception)
                {
                    MessageBox.Show(exception.Message, "Error opening file", MessageBoxButton.OK, MessageBoxImage.Error);
                }
            }
        }

        public override string ToString()
        {
            return "View & Compare";
        }
    }
}
