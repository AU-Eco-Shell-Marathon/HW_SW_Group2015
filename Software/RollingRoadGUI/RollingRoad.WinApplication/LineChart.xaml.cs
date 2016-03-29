using System;
using System.Collections.ObjectModel;
using System.Collections.Specialized;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Threading;
using Microsoft.Research.DynamicDataDisplay;
using Microsoft.Research.DynamicDataDisplay.DataSources;
using RollingRoad.Data;

namespace RollingRoad.WinApplication
{
    /// <summary>
    /// Interaction logic for LineChart.xaml
    /// </summary>
    public partial class LineChart : UserControl
    {
        public ObservableCollection<DataSetViewModel> ItemsSource
        {
            get { return (ObservableCollection<DataSetViewModel>)GetValue(ItemsSourceProperty); }
            set { SetValue(ItemsSourceProperty, value); }
        }

        public string XAxis = "Time";

        public static readonly DependencyProperty ItemsSourceProperty = DependencyProperty.Register(
                                                                            "ItemsSource",
                                                                            typeof(ObservableCollection<DataSetViewModel>),
                                                                            typeof(LineChart),
                                                                            new FrameworkPropertyMetadata(null, OnItemsSourceChanged));

        private static void OnItemsSourceChanged(DependencyObject sender, DependencyPropertyChangedEventArgs e)
        {
            LineChart control = sender as LineChart;
            ObservableCollection<DataSetViewModel> list = e.NewValue as ObservableCollection<DataSetViewModel>;

            if (control == null)
                return;
            
            control.Refresh();

            if (list == null)
                return;

            list.CollectionChanged += control.OnCollectionChange;

            foreach (DataSetViewModel datalist in list)
            {
                datalist.CollectionChanged += control.OnItemsSourceChange;
            }

            control._newData = true;
        }

        private void OnCollectionChange(object sender, NotifyCollectionChangedEventArgs e)
        {
            ObservableCollection<DataSetViewModel> list = sender as ObservableCollection<DataSetViewModel>;

            if (list != null)
            {
                list.CollectionChanged += OnItemsSourceChange;
            }

            _newData = true;
        }

        private void OnItemsSourceChange(object sender, NotifyCollectionChangedEventArgs e)
        {
            _newData = true;
        }

        private bool _newData = false;

        public LineChart()
        {
            InitializeComponent();
            DispatcherTimer timer = new DispatcherTimer();
            timer.Tick += (sender, e) => Refresh();
            timer.Interval = TimeSpan.FromSeconds(0.5);
            timer.Start();
        }

        public void Refresh()
        {
            if (!_newData)
                return;
            
            Clear();

            if (ItemsSource == null || ItemsSource.Count == 0)
                return;

            foreach (DataSetViewModel dataset in ItemsSource)
            {
                DataList xAxis = dataset.Collection.FirstOrDefault(x => x.Type.Name == XAxis);

                if (xAxis == null)
                    continue;

                EnumerableDataSource<double> xData = new EnumerableDataSource<double>(xAxis.Data);
                xData.SetXMapping(x => x);

                foreach (DataList dataList in dataset.Collection)
                {
                    if (dataList.Type.Name == XAxis)
                        continue;

                    EnumerableDataSource<double> yData = new EnumerableDataSource<double>(dataList.Data);
                    yData.SetYMapping(x => x);

                    CompositeDataSource source = new CompositeDataSource(xData, yData);

                    //object colorObj = Properties.Settings.Default[dataList.Type.Name + "LineColor"];
                    Chart.AddLineGraph(source, 2, dataList.Type.ToString());
                }
            }

            _newData = false;
        }

        public void Clear()
        {
            Chart.Children.RemoveAll(typeof(LineGraph));
        }
    }
}
