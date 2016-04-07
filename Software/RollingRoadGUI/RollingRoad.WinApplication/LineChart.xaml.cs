using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Threading;
using Microsoft.Research.DynamicDataDisplay;
using Microsoft.Research.DynamicDataDisplay.DataSources;
using RollingRoad.Data;
using RollingRoad.WinApplication.Annotations;
using Color = System.Windows.Media.Color;
using ColorConverter = System.Windows.Media.ColorConverter;

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

        private readonly Dictionary<string, Color> _colorDictionary = new Dictionary<string, Color>(); 

        public LineChart()
        {
            InitializeComponent();
            _timer = new DispatcherTimer();
            _timer.Tick += (sender, e) => Refresh();
            _timer.Interval = TimeSpan.FromMilliseconds(RefreshRate);
            _timer.Start();
        }

        private readonly DispatcherTimer _timer;
        private int lastLength = 0;

        private bool ShouldUpdate()
        {
            if (ItemsSource == null && lastLength != 0)
            {
                lastLength = 0;
                return false;
            }

            if (ItemsSource == null)
            {
                return false;
            }

            Dataset set = ItemsSource.FirstOrDefault();

            if (set == null && lastLength != 0)
            {
                lastLength = 0;
                return true;
            }

            if (set == null)
            {
                return false;
            }

            return true;
        }

        public void Refresh()
        {
            if (!ShouldUpdate())
                return;

            Clear();

            if (ItemsSource == null || ItemsSource.Count == 0)
                return;

            int i = 1;
            foreach (Dataset dataset in ItemsSource)
            {
                DataList xAxis = dataset.FirstOrDefault(x => x.Type.Name == XAxis);

                if (xAxis == null)
                    continue;
                    
                if (dataset.Any(dataList => xAxis.Count != dataList.Count))
                {
                    throw new ArgumentException("Datalist count does not match");
                }

                EnumerableDataSource<double> xData = new EnumerableDataSource<double>(xAxis);
                HorizontalAxisTitle.Content = xAxis.Type.Name + "(" + xAxis.Type.Unit + ")";

                xData.SetXMapping(x => x);

                foreach (DataList dataList in dataset)
                {
                    if (dataList.Type.Name == XAxis || !dataList.Selected)
                        continue;

                    EnumerableDataSource<double> yData = new EnumerableDataSource<double>(dataList);
                    yData.SetYMapping(x => x);

                    CompositeDataSource source = new CompositeDataSource(xData, yData);

                    Chart.AddLineGraph(source, GetLineColor(dataList.Type.Name + "LineColor"), 2, "D" + i + ":" + dataList.Type.ToString());
                }

                i++;
            }
        }

        private Color GetLineColor(string key)
        {
            Color color;

            if (!_colorDictionary.TryGetValue(key, out color))
            {
                App app = ((App) Application.Current);
                string colorStr = app.Settings.GetStat(key);

                if (string.IsNullOrEmpty(colorStr))
                {
                    color = GenerateRandom();
                    app.Settings.SetStat(key, $"#{color.A:X2}{color.R:X2}{color.G:X2}{color.B:X2}");
                    _colorDictionary.Add(key, color);
                }
                else
                {
                    object colorObj = ColorConverter.ConvertFromString(colorStr);
                    color = (Color) colorObj;
                    _colorDictionary.Add(key, color);
                }
            }

            return color;
        }

        private Color GenerateRandom()
        {
            Random rnd = new Random();
            byte[] b = new byte[3];
            rnd.NextBytes(b);
            return Color.FromRgb(b[0], b[1], b[2]);
        }

        public void Clear()
        {
            try
            {
                Chart.Children.RemoveAll(typeof(LineGraph));
            }
            catch (Exception)
            {
                // ignored
            }
        }
    }
}
