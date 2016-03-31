using System.Collections.Generic;
using Microsoft.Practices.Prism.Mvvm;
using RollingRoad.Data;

namespace RollingRoad.WinApplication.ViewModels
{
    public class DataSetViewModel : BindableBase
    {
        private Dataset DataSet { get; }

        public DataSetViewModel(Dataset dataset)
        {
            DataSet = dataset;
        }

        public string Name => DataSet.Name;
        public string Description => DataSet.Description;

        public bool IsSelected { get; set; }

        public IList<DataListViewModel> Collection { get; set; }
    }
}
