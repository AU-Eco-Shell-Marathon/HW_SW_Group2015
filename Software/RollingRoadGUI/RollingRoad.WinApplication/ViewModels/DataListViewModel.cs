using System.Collections.Generic;
using System.Linq;
using System.Windows.Media;
using Microsoft.Practices.Prism.Mvvm;
using RollingRoad.Data;

namespace RollingRoad.WinApplication.ViewModels
{
    public class DataListViewModel : BindableBase
    {
        public DataList List { get; }

        public DataListViewModel(DataList list)
        {
            List = list;
            //List.Data = new ObservableCollection<double>(List.Data);
        }

        public DataType Type => List.Type;

        public void Add(double value)
        {
            List.Add(value);
            OnPropertyChanged(nameof(NewestValue));
        }
        
        public double NewestValue => List.Last();

        public int DataSetIndex { get; set; } = 0;

        public int Count => List.Count;
        public bool Selected { get; set; } = true;
        public IReadOnlyCollection<double> Data => List;

        private Brush _fill;
        public Brush Fill
        {
            get { return _fill; }
            set
            {
                _fill = value; 
                OnPropertyChanged(nameof(Fill));
            }
        }

        public override string ToString()
        {
            return $"D{DataSetIndex}:{Type}";
        }
    }
}
