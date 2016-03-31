using System.Linq;
using Microsoft.Practices.Prism.Mvvm;
using RollingRoad.Data;

namespace RollingRoad.WinApplication.ViewModels
{
    public class DataListViewModel : BindableBase
    {
        public DataList List { get; private set; }

        public DataListViewModel(DataList list)
        {
            List = list;
            //List.Data = new ObservableCollection<double>(List.Data);
        }

        public DataType Type => List.Type;

        public void AddData(double value)
        {
            List.Add(value);
            OnPropertyChanged(nameof(NewestValue));
        }
        
        public double NewestValue => List.Last();
    }
}
