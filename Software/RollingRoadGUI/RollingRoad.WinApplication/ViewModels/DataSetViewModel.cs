using System.Collections.Generic;
using System.Collections.ObjectModel;
using Microsoft.Practices.Prism.Mvvm;
using RollingRoad.Data;

namespace RollingRoad.WinApplication.ViewModels
{
    public class DataSetViewModel : BindableBase
    {
        private bool _isSelected;
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

        public bool IsSelected
        {
            get { return _isSelected; }
            set
            {
                _isSelected = value;
                OnPropertyChanged(nameof(IsSelected));
            }
        }

        public void Clear()
        {
            DataSet.Clear();
        }

        public int Count => Collection.Count;

        public ObservableCollection<DataListViewModel> Collection { get; } = new ObservableCollection<DataListViewModel>();
    }
}
