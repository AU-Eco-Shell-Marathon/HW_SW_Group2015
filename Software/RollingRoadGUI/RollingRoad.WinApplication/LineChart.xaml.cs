using System;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Collections.Specialized;
using System.ComponentModel;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
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

            if (list != null && control != null)
            {
                list.CollectionChanged += control.OnCollectionChange;

                foreach (DataSetViewModel datalist in list)
                {
                    datalist.CollectionChanged += control.OnItemsSourceChange;
                }
            }
        }

        private void OnCollectionChange(object sender, NotifyCollectionChangedEventArgs e)
        {
            ObservableCollection<DataSetViewModel> list = sender as ObservableCollection<DataSetViewModel>;

            if (list != null)
            {
                list.CollectionChanged += OnItemsSourceChange;
            }
        }

        private void OnItemsSourceChange(object sender, NotifyCollectionChangedEventArgs e)
        {
            Refresh();
        }

        public LineChart()
        {
            InitializeComponent();
        }

        public void Refresh()
        {
            Clear();
            
            if (ItemsSource == null || ItemsSource.Count == 0)
                return;

            foreach (DataSetViewModel dataset in ItemsSource)
            {
                EnumerableDataSource<double> xData = new EnumerableDataSource<double>(dataset.Collection.First(x => x.Type.Name == XAxis).Data);
                xData.SetXMapping(x => x);

                foreach (DataList dataList in dataset.Collection)
                {
                    if (dataList.Type.Name != XAxis)
                    {
                        EnumerableDataSource<double> yData = new EnumerableDataSource<double>(dataList.Data);
                        yData.SetYMapping(x => x);

                        CompositeDataSource source = new CompositeDataSource(xData, yData);

                        object colorObj = Properties.Settings.Default[dataList.Type.Name + "LineColor"];
                        Chart.AddLineGraph(source, (System.Windows.Media.Color)colorObj, 2, dataList.Type.ToString());
                    }
                }
            }

        }

        public void Clear()
        {
            Chart.Children.RemoveAll(typeof(LineGraph));
        }
    }
}
