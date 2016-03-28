using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Collections.Specialized;
using System.Data;
using RollingRoad.Data;

namespace RollingRoad.WinApplication
{
    public class DataSetViewModel : INotifyCollectionChanged
    {
        private IDataset DataSet { get; set; }

        public DataSetViewModel(IDataset dataset)
        {
            DataSet = dataset;
            DataSet.Collection = new ObservableCollection<DataList>(DataSet.Collection);
            ((ObservableCollection<DataList>) DataSet.Collection).CollectionChanged += OnListUpdate;
        }

        private void OnListUpdate(object sender, NotifyCollectionChangedEventArgs args)
        {
            foreach (DataList dataList in DataSet.Collection)
            {
                dataList.Data = new ObservableCollection<double>(dataList.Data);
                ((ObservableCollection<double>)dataList.Data).CollectionChanged += OnDataUpdate;
            }
        }

        private void OnDataUpdate(object sender, NotifyCollectionChangedEventArgs args)
        {
            CollectionChanged?.Invoke(this, new NotifyCollectionChangedEventArgs(args.Action, Collection));
        }

        public string Name => DataSet.Name;
        public string Description => DataSet.Description;

        public bool IsSelected { get; set; }

        public IList<DataList> Collection
        {
            get { return DataSet.Collection; }
            set { DataSet.Collection = value; }
        }



        public event NotifyCollectionChangedEventHandler CollectionChanged;
    }
}
