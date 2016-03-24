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
        public ObservableCollection<ObservableDataList> ItemsSource
        {
            get { return (ObservableCollection<ObservableDataList>)GetValue(ItemsSourceProperty); }
            set { SetValue(ItemsSourceProperty, value); }
        }

        public string XAxis = "Time";
        private CompositeDataSource _dataSource;

        public static readonly DependencyProperty ItemsSourceProperty = DependencyProperty.Register(
                                                                            "ItemsSource",
                                                                            typeof(ObservableCollection<ObservableDataList>),
                                                                            typeof(LineChart),
                                                                            new FrameworkPropertyMetadata(null, OnItemsSourceChanged));

        private static void OnItemsSourceChanged(DependencyObject sender, DependencyPropertyChangedEventArgs e)
        {
            LineChart control = sender as LineChart;
            ObservableCollection<ObservableDataList> list = e.NewValue as ObservableCollection<ObservableDataList>;

            if (list != null && control != null)
            {
                list.CollectionChanged += control.OnItemsSourceChange;
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

            EnumerableDataSource <double> xData = new EnumerableDataSource<double>(ItemsSource.First(x => x.Type.Name == XAxis).Observable);
            xData.SetXMapping(x => x);

            foreach (ObservableDataList dataList in ItemsSource)
            {
                if (dataList.Type.Name != XAxis)
                {
                    EnumerableDataSource<double> yData = new EnumerableDataSource<double>(dataList.Observable);
                    yData.SetYMapping(x => x);

                    CompositeDataSource source = new CompositeDataSource(xData, yData);

                    object colorObj = Properties.Settings.Default[dataList.Type.Name + "LineColor"];
                    Chart.AddLineGraph(source, (System.Windows.Media.Color)colorObj, 2, dataList.Type.ToString());
                }
            }
        }

        public void Clear()
        {
            Chart.Children.RemoveAll(typeof(LineGraph));
        }

    }
}
