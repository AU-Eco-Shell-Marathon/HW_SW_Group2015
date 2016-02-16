using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Windows;
using System.Windows.Controls.DataVisualization.Charting;
using Microsoft.Win32;
using ChartStructure = System.Collections.Generic.List<System.Collections.Generic.KeyValuePair<double, double>>;

namespace RollingGoal.WinApplication
{
    /// <summary>
    /// Interaction logic for LiveDataTab.xaml
    /// </summary>
    public partial class LiveDataTab
    {
        private ILiveDataSource _currentSource;
        private List<KeyValuePair<DataList, ChartStructure>?> _data = new List<KeyValuePair<DataList, ChartStructure>?>();
        private bool _hasBeenSaved = true;

        public LiveDataTab()
        {
            InitializeComponent();
            SelectSource(new LiveDataEmulator(CsvDataSource.LoadFromFile("3TypesOfData17Rows.csv")));
        }

        private void SelectSource(ILiveDataSource source)
        {
            _data = new List<KeyValuePair<DataList, ChartStructure>?>();
            _currentSource = source;

            //Setup x-axis
            LinearAxis lAxis = new LinearAxis
            {
                Orientation = AxisOrientation.X,
                Title = "Time (Seconds)"
            };

            LiveDataChart.Axes.Add(lAxis);

            _currentSource.OnNextReadValue += ThreadMover;
        }

        private void ThreadMover(IReadOnlyList<DataEntry> entries)
        {
            Dispatcher?.Invoke(() => IncommingData(entries));
        }

        private void IncommingData(IReadOnlyList<DataEntry> entries)
        {
            _hasBeenSaved = false;

            double time = entries.First(x => x.Name == "Time").Value;

            for (int i = 0; i < entries.Count; i++)
            {
                DataEntry entry = entries[i];

                KeyValuePair<DataList, ChartStructure>? list = null;

                try
                {
                    list = _data.FirstOrDefault(x => x.Value.Key.Name == entry.Name);
                }
                catch (Exception e)
                {
                        
                }

                if (list == null)
                {

                    list = new KeyValuePair<DataList, ChartStructure>(new DataList(entry.Name, entry.Unit), new ChartStructure());


                    if (entry.Name != "Time")
                    {

                        //Create our y-axis
                        LinearAxis axis = new LinearAxis
                        {
                            Orientation = AxisOrientation.Y,
                            Title = entry.Unit
                        };

                        //Create out line with data
                        LineSeries line = new LineSeries
                        {
                            Title = $"{entry.Name} ({entry.Unit})",
                            IndependentValuePath = "Key",
                            DependentValuePath = "Value",
                            DependentRangeAxis = axis,
                            ItemsSource = list.Value.Value
                        };

                        //Add line to chart
                        LiveDataChart.Series.Add(line);
                    }

                    _data.Add(list);
                }

                list.Value.Key.AddData(entry.Value);

                if(entry.Name != "Time")
                    list.Value.Value.Add(new KeyValuePair<double, double>(time, entry.Value));

                foreach (LineSeries line in LiveDataChart.Series)
                {
                    line.Refresh();
                }

            }
        }

        private void BtnFileSaveDataset_Click(object sender, RoutedEventArgs e)
        {
            SaveFileDialog dlg = new SaveFileDialog
            {
                DefaultExt = ".csv",
                Filter = "CSV Files (*.csv)|*.csv"
            };


            if (dlg.ShowDialog() == true)
            {
                //Open file her
            }
        }
    }
}
