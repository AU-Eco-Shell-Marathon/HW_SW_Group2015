using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows;
using Microsoft.Research.DynamicDataDisplay;
using Microsoft.Research.DynamicDataDisplay.DataSources;
using Microsoft.Win32;

namespace RollingGoal.WinApplication
{
    public struct LineStructure
    {
        public ObservableDataSource<Point> RawData;
        public DataList Data;
        public LiveDataDisplay Label;

        public string Name => Data.Name;
        public string Unit => Data.Unit;

        public LineStructure(string name, string unit)
        {
            RawData = new ObservableDataSource<Point>();
            Data = new DataList(name, unit);
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
            string dataTitle = $"{entry.Name} ({entry.Unit})";

            if (entry.Name != "Time")
            {
                lineStuct.RawData.SetXYMapping(p => p);

                LiveDataChart.AddLineGraph(lineStuct.RawData, 2, dataTitle);
            }

            //Live values
            LiveDataDisplay lab = new LiveDataDisplay
            {
                TitleTextBlock = {Text = dataTitle},
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
                    lineStruct.Value.RawData.AppendAsync(Dispatcher, new Point(time, entry.Value));

                lineStruct.Value.Label.ValueTextBlock.Text = entry.Value.ToString();
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
