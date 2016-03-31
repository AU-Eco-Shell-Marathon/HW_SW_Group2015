using System;
using System.Collections.Generic;
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
        public ICollection<Dataset> ItemsSource
        {
            get { return (ICollection<Dataset>)GetValue(ItemsSourceProperty); }
            set { SetValue(ItemsSourceProperty, value); }
        }

        /// <summary>
        /// Miliseconds
        /// </summary>
        public double RefreshRate
        {
            get { return (double) GetValue(RefreshRateProperty); }
            set { SetValue(RefreshRateProperty, value); }
        }

        public string XAxis = "Time";

        public static readonly DependencyProperty ItemsSourceProperty = DependencyProperty.Register(
                                                                            "ItemsSource",
                                                                            typeof(ICollection<Dataset>),
                                                                            typeof(LineChart),
                                                                            new FrameworkPropertyMetadata(ItemsSourceChange, null));

        private static void ItemsSourceChange(DependencyObject d, DependencyPropertyChangedEventArgs e)
        {
            LineChart control = d as LineChart;

            control?.Refresh();
        }


        public static readonly DependencyProperty RefreshRateProperty = DependencyProperty.Register(
                                                                            "RefreshRate",
                                                                            typeof (double),
                                                                            typeof (LineChart),
                                                                            new FrameworkPropertyMetadata(500.0, RefreshRateChange, null));

        private static void RefreshRateChange(object sender, DependencyPropertyChangedEventArgs e)
        {
            LineChart control = sender as LineChart;
            double newtime = (double) e.NewValue;

            if (control == null)
                return;

            control._timer.Interval = TimeSpan.FromMilliseconds(newtime);
        }

        public LineChart()
        {
            InitializeComponent();
            _timer = new DispatcherTimer();
            _timer.Tick += (sender, e) => Refresh();
            _timer.Interval = TimeSpan.FromMilliseconds(RefreshRate);
            _timer.Start();
        }

        private readonly DispatcherTimer _timer;

        public void Refresh()
        {
            Clear();

            if (ItemsSource == null || ItemsSource.Count == 0)
                return;

            foreach (Dataset dataset in ItemsSource)
            {
                DataList xAxis = dataset.FirstOrDefault(x => x.Type.Name == XAxis);

                if (xAxis == null)
                    continue;

                EnumerableDataSource<double> xData = new EnumerableDataSource<double>(xAxis);
                xData.SetXMapping(x => x);

                foreach (DataList dataList in dataset)
                {
                    if (dataList.Type.Name == XAxis)
                        continue;

                    EnumerableDataSource<double> yData = new EnumerableDataSource<double>(dataList);
                    yData.SetYMapping(x => x);

                    CompositeDataSource source = new CompositeDataSource(xData, yData);

                    try
                    {
                        object colorObj = Properties.Settings.Default[dataList.Type.Name + "LineColor"];
                        Chart.AddLineGraph(source, (System.Windows.Media.Color)colorObj, 2, dataList.Type.ToString());
                    }
                    catch (Exception)
                    {
                        Chart.AddLineGraph(source, 2, dataList.Type.ToString());
                    }
                }
            }
        }

        public void Clear()
        {
            try
            {
                Chart.Children.RemoveAll(typeof(LineGraph));
            }
            catch (Exception)
            {
                
            }
        }
    }
}
