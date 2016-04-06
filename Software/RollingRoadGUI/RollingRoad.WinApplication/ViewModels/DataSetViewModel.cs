using System.Collections.Generic;
using Microsoft.Practices.Prism.Mvvm;
using RollingRoad.Data;

namespace RollingRoad.WinApplication.ViewModels
{
    public class DataSetViewModel : BindableBase
    {
        private bool _isSelected;
        public Dataset DataSet { get; }

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

        public IList<DataListViewModel> Collection { get; set; }
    }
}
