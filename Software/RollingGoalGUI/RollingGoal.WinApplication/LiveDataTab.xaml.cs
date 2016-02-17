using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Controls.DataVisualization.Charting;
using System.Windows.Threading;
using Microsoft.Win32;

namespace RollingGoal.WinApplication
{
    public struct LineStructure
    {
        public List<KeyValuePair<double, double>> RawData;
        public DataList Data;
        public LineSeries Line;
        public LiveDataDisplay Label;

        public string Name => Data.Name;
        public string Unit => Data.Unit;

        public LineStructure(string name, string unit)
        {
            RawData = new List<KeyValuePair<double, double>>();
            Data = new DataList(name, unit);
            Line = null;
            Label = null;
        }
    }

    /// <summary>
    /// Interaction logic for LiveDataTab.xaml
    /// </summary>
    public partial class LiveDataTab
    {
        private ILiveDataSource _currentSource;
        private List<LineStructure?> _data = new List<LineStructure?>();
        public bool HasBeenSaved { get; private set; } = true;

        public LiveDataTab()
        {
            InitializeComponent();
            SelectSource(new LiveDataEmulator(CsvDataSource.LoadFromFile("3TypesOfData17Rows.csv")));
        }

        private void SelectSource(ILiveDataSource source)
        {
            _data = new List<LineStructure?>();
            _currentSource = source;

            //Setup x-axis
            LinearAxis lAxis = new LinearAxis
            {
                Orientation = AxisOrientation.X,
                Title = "Time (Seconds)",
                Minimum = 0
            };

            LiveDataChart.Axes.Add(lAxis);

            _currentSource.OnNextReadValue += ThreadMover;
        }

        private void ThreadMover(IReadOnlyList<DataEntry> entries)
        {
            try
            {
                Dispatcher?.Invoke(() => IncommingData(entries));
            }
            catch (Exception)
            {
                // ignored
            }
        }

        private LineStructure CreateNewLine(DataEntry entry)
        {
            LineStructure lineStuct = new LineStructure(entry.Name, entry.Unit);

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
                    ItemsSource = lineStuct.RawData
                };

                line.PolylineStyle = null;

                line.DataPointStyle = null;
                line.Style = null;

                //Add line to chart
                LiveDataChart.Series.Add(line);
            }

            //Live values
            LiveDataDisplay lab = new LiveDataDisplay
            {
                TitleTextBlock = {Text = $"{entry.Name} ({entry.Unit})"},
                ValueTextBlock = {Text = entry.Value.ToString()}
            };


            LiveDataStackPanel.Children.Add(lab);

            lineStuct.Label = lab;

            return lineStuct;
        }

        private bool TryGetLineStructure(DataEntry entry, out LineStructure? value)
        {
            try
            {
                value = _data.FirstOrDefault(x => x != null && x.Value.Name == entry.Name);
                return value != null;
            }
            catch (Exception)
            {
                value = null;
                return false;
            }
        }

        private void IncommingData(IReadOnlyList<DataEntry> entries)
        {
            HasBeenSaved = false;

            double time = entries.First(x => x.Name == "Time").Value;

            foreach (DataEntry entry in entries)
            {
                LineStructure? lineStruct;

                //Try to get structure if exists, else create new
                if (!TryGetLineStructure(entry, out lineStruct))
                {
                    lineStruct = CreateNewLine(entry);
                    _data.Add(lineStruct);
                }

                //The above code ensures that linestruct is not null
                // ReSharper disable once PossibleInvalidOperationException
                lineStruct.Value.Data.AddData(entry.Value);

                if(entry.Name != "Time")
                    lineStruct.Value.RawData.Add(new KeyValuePair<double, double>(time, entry.Value));

                lineStruct.Value.Label.ValueTextBlock.Text = entry.Value.ToString();



                //Update lines
                foreach (LineSeries line in LiveDataChart.Series.Cast<LineSeries>())
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
