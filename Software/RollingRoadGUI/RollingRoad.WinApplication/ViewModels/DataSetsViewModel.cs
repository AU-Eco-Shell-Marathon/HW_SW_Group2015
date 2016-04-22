using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Windows;
using System.Windows.Input;
using Microsoft.Practices.Prism.Commands;
using Microsoft.Practices.Prism.Mvvm;
using Microsoft.Win32;
using RollingRoad.Core.DomainModel;
using RollingRoad.Infrastructure.DataAccess;

namespace RollingRoad.WinApplication.ViewModels
{
    public class DataSetsViewModel : BindableBase
    {
        public ObservableCollection<DataSetViewModel> DataSets { get; set; } = new ObservableCollection<DataSetViewModel>();
        public ObservableCollection<DataListViewModel> SelectedDatalists { get; set; } = new ObservableCollection<DataListViewModel>();

        public DataSetsViewModel()
        {
            ImportFromFileCommand = new DelegateCommand(ImportFromFile);
            SelectedChanged = new DelegateCommand(OnSelectedChanged);
            RefreshCommand = new DelegateCommand(Refresh);
        }

        public ICommand ImportFromFileCommand { get; }
        public ICommand SelectedChanged { get; }
        public ICommand RefreshCommand { get; }

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

        private void ImportFromFile()
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
                    DataSet dataset = CsvDataFile.LoadFromFile(filename, "shell eco marathon");
                    ((App) Application.Current).Context.DataSets.Add(dataset);
                    Refresh();
                    ((App) Application.Current).Context.SaveChanges();

                }
                catch (Exception exception)
                {
                    MessageBox.Show(exception.Message, "Error opening file", MessageBoxButton.OK, MessageBoxImage.Error);
                }
            }
        }

        private void Refresh()
        {
            DataSets.Clear();

            ICollection<DataSet> tempSets = ((App)Application.Current).Context.DataSets.ToList();

            int i = 0;
            foreach (DataSet dataSet in tempSets)
            {
                DataSets.Add(new DataSetViewModel(dataSet) {DatasetIndex = i++});
            }

            OnPropertyChanged(nameof(DataSets));
        }

        public override string ToString()
        {
            return "View & Compare";
        }
    }
}
