using System.Collections.ObjectModel;
using Microsoft.Practices.Prism.Mvvm;
using RollingRoad.Data;

namespace RollingRoad.WinApplication.ViewModels
{
    public class DataSetViewModel : BindableBase
    {
        private bool _isSelected;
        private int _datasetIndex = 0;
        private Dataset DataSet { get; }

        public DataSetViewModel(Dataset dataset)
        {
            DataSet = dataset;

            foreach (DataList dataList in dataset)
            {
                Collection.Add(new DataListViewModel(dataList));
            }
        }

        public string Name => DataSet.Name;
        public string Description => DataSet.Description;

        public int DatasetIndex
        {
            get { return _datasetIndex; }
            set
            {
                _datasetIndex = value;
                OnPropertyChanged(nameof(DataSet));

            }
        }

        public bool IsSelected
        {
            get { return _isSelected; }
            set
            {
                _isSelected = value;
                OnPropertyChanged(nameof(IsSelected));
                OnPropertyChanged(nameof(ToStringProperty));
            }
        }

        public void Clear()
        {
            DataSet.Clear();
        }

        public int Count => Collection.Count;

        public ObservableCollection<DataListViewModel> Collection { get; } = new ObservableCollection<DataListViewModel>();

        public string ToStringProperty => ToString();

        public override string ToString()
        {
            return $"D{DatasetIndex}:{Name}";
        }
    }
}
