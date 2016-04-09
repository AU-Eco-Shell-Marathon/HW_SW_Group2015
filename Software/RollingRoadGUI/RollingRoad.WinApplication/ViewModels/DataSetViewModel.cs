using System.Collections.Generic;
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

        public int Count => DataSet.Count;

        public IList<DataListViewModel> Collection { get; set; } = new List<DataListViewModel>();
    }
}
