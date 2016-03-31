using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using Microsoft.Practices.Prism.Mvvm;
using RollingRoad.Data;

namespace RollingRoad.WinApplication.ViewModels
{
    public class DataSetViewModel : BindableBase
    {
        private Dataset DataSet { get; set; }

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
