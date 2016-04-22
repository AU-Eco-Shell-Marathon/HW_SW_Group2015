using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Windows;
using System.Windows.Input;
using Microsoft.Practices.Prism.Commands;
using Microsoft.Practices.Prism.Mvvm;
using RollingRoad.Core.ApplicationServices;
using RollingRoad.Core.DomainModel;
using RollingRoad.Core.DomainServices;
using RollingRoad.Infrastructure.DataAccess;
using RollingRoad.WinApplication.Dialogs;

namespace RollingRoad.WinApplication.ViewModels
{
    public class DataSetsViewModel : BindableBase
    {
        public ObservableCollection<DataSetViewModel> DataSets { get; set; } = new ObservableCollection<DataSetViewModel>();
        public ObservableCollection<DataListViewModel> SelectedDatalists { get; set; } = new ObservableCollection<DataListViewModel>();

        public ICommand ImportFromFileCommand { get; }
        public ICommand SelectionChanged { get; }
        public ICommand RefreshCommand { get; }

        public IOpenFileDialog OpenFileDialog
        {
            get { return _openFileDialog; }
            set
            {
                if(value == null)
                    throw new ArgumentNullException(nameof(value));
                _openFileDialog = value;
            }
        }
        public IDataSetLoader DataSetLoader
        {
            get { return _dataSetLoader; }
            set
            {
                if(value == null)
                    throw new ArgumentNullException(nameof(value));
                _dataSetLoader = value;
            }
        }
        public IErrorMessageBox ErrorMessageBox
        {
            get { return _errorMessageBox; }
            set
            {
                if(value == null)
                    throw new ArgumentNullException(nameof(value));

                _errorMessageBox = value;
            }
        }

        private readonly IUnitOfWork _unitOfWork;
        private readonly IRepository<DataSet> _dataSetRepository; 
        private IOpenFileDialog _openFileDialog = new OpenFileDialog(){DefaultExt = ".csv",Filter = "CSV Files (*.csv)|*.csv"};
        private IErrorMessageBox _errorMessageBox = new ErrorMessageBox();
        private IDataSetLoader _dataSetLoader = new CsvDataFile() {ExpectedHeader = "shell eco marathon"};
        
        public DataSetsViewModel()
        {
            ImportFromFileCommand = new DelegateCommand(ImportFromFile);
            SelectionChanged = new DelegateCommand(OnSelectedChanged);
            RefreshCommand = new DelegateCommand(Refresh);
        }

        public DataSetsViewModel(IRepository<DataSet> source, IUnitOfWork unitOfWork) : this()
        {
            _dataSetRepository = source;
            _unitOfWork = unitOfWork;

            Refresh();
        }

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
            bool? result = _openFileDialog.ShowDialog();

            if (result == true)
            {
                // Open document 
                string filename = _openFileDialog.FileName;

                try
                {
                    DataSet dataset = DataSetLoader.LoadFromFile(filename);
                    dataset = _dataSetRepository.Insert(dataset);
                    _unitOfWork.Save();
                    AddDataSet(dataset);

                }
                catch (Exception exception)
                {
                    ErrorMessageBox.Show("Error opening file", exception.Message);
                }
            }
        }

        private void AddDataSet(DataSet dataSet)
        {
            DataSets.Add(new DataSetViewModel(dataSet) { DatasetIndex = DataSets.Count});
        }

        private void Refresh()
        {
            DataSets.Clear();

            ICollection<DataSet> tempSets = _dataSetRepository.Get().ToList();

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