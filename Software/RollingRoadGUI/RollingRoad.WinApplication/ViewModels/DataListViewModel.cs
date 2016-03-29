using System.Collections.ObjectModel;
using RollingRoad.Data;

namespace RollingRoad.WinApplication.ViewModels
{
    public class DataListViewModel
    {
        private DataList _list;

        public DataListViewModel(DataList list)
        {
            _list = list;
            _list.Data = new ObservableCollection<double>(_list.Data);
        }
    }
}
