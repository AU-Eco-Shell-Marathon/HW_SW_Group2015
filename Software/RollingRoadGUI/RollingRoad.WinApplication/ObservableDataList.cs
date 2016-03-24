using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using RollingRoad.Data;

namespace RollingRoad.WinApplication
{
    public class ObservableDataList : DataList
    {
        public ObservableDataList(DataType type) : base(type)
        {
            Data = new ObservableCollection<double>();
        }

        public ObservableCollection<double> Observable => (ObservableCollection<double>)Data;
    }
}
