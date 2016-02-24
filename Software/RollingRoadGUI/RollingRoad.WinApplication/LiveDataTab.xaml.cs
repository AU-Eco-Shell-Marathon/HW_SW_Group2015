using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Windows;
using Microsoft.Research.DynamicDataDisplay;
using Microsoft.Research.DynamicDataDisplay.DataSources;
using Microsoft.Win32;

namespace RollingRoad.WinApplication
{
    public struct LineStructure
    {
        public readonly ObservableDataSource<Point> RawData;
        public readonly DataList Data;
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
        private List<LineStructure?> _data;
        public bool HasBeenSaved { get; private set; } = true;


        private const string XAxisName = "Time";

        public LiveDataTab()
        {
            InitializeComponent();
            ClearChart();
        }

        public void SelectSource(ILiveDataSource source)
        {

            if (_currentSource != null)
                _currentSource.OnNextReadValue -= ThreadMover;

            _data = new List<LineStructure?>();
            _currentSource = source;
            _currentSource.OnNextReadValue += ThreadMover;

            ClearChart();

            _currentSource.Start();
        }

        private LineStructure CreateNewLine(DataEntry entry)
        {
            LineStructure lineStuct = new LineStructure(entry.Name, entry.Unit);

            if (entry.Name != XAxisName)
            {
                lineStuct.RawData.SetXYMapping(p => p);
                LiveDataChart.AddLineGraph(lineStuct.RawData, 2, entry.Title);
            }

            //Live values
            LiveDataDisplay lab = new LiveDataDisplay
            {
                TitleTextBlock = {Text = entry.Title},
                ValueTextBlock = {Text = entry.Value.ToString(CultureInfo.InvariantCulture)}
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


        /// <summary>
        /// The <see cref="IncommingData"/> method need to be run from the main/gui-thread, therefor we create a translator
        /// </summary>
        /// <param name="entries"></param>
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

        /// <summary>
        /// Handles incomming data and creates new lines if no line for the data type is present
        /// </summary>
        /// <param name="entries"></param>
        private void IncommingData(IReadOnlyList<DataEntry> entries)
        {
            //New data, so it's no longer saved
            HasBeenSaved = false;

            //Find the time value from incomming data
            double time = entries.First(x => x.Name == XAxisName).Value;

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

                lineStruct.Value.Label.ValueTextBlock.Text = entry.Value.ToString(CultureInfo.InvariantCulture);
            }
        }

        /// <summary>
        /// When the user request a save
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void BtnFileSaveDataset_Click(object sender, RoutedEventArgs e)
        {
            HasBeenSaved = SaveCurrentData();
        }

        /// <summary>
        /// Tries to save current data
        /// </summary>
        /// <returns>Whether the data was actually saved</returns>
        private bool SaveCurrentData()
        {
            SaveFileDialog dlg = new SaveFileDialog
            {
                DefaultExt = ".csv",
                Filter = "CSV Files (*.csv)|*.csv"
            };


            if (dlg.ShowDialog() == true)
            {
                try
                {
                    MemoryDataSource source = new MemoryDataSource(_data.Select(x => x?.Data).ToList())
                    {
                        Description = DateTime.Now.ToLongDateString()
                    };

                    //Save file
                    CsvDataFile.WriteToFile(dlg.FileName, source);
                }
                catch (Exception e)
                {
                    MessageBox.Show("Error: " + e.Message, "Error saving data!", MessageBoxButton.OK, MessageBoxImage.Error);
                    return false;
                }

                return true;
            }

            return false;
        }

        private void ClearChart()
        {
            LiveDataChart.Children.RemoveAll(typeof(LineGraph));
            LiveDataStackPanel.Children.Clear();
            _data = new List<LineStructure?>();

            HasBeenSaved = true;
        }

        private void LiveDataClearButton_Click(object sender, RoutedEventArgs e)
        {
            if (!HasBeenSaved)
            {
                MessageBoxResult result = MessageBox.Show("Do you want to save changes?", "Unsaved changes",
                    MessageBoxButton.YesNoCancel, MessageBoxImage.Warning);

                switch (result)
                {
                    case MessageBoxResult.Yes:
                        HasBeenSaved = SaveCurrentData();
                        break;
                    case MessageBoxResult.No:
                        ClearChart();
                        break;
                }
            }
            else
            {
                ClearChart();
            }
        }

        private void LiveDataStartStopButton_Click(object sender, RoutedEventArgs e)
        {
            if ((string)LiveDataStartStopButton.Content == "Stop")
            {
                _currentSource?.Stop();

                LiveDataStartStopButton.Content = "Start";
            }
            else
            {
                _currentSource?.Start();

                LiveDataStartStopButton.Content = "Stop";
            }
        }

        private void SelectSource_Click(object sender, RoutedEventArgs e)
        {
            SelectSourceWindow window = new SelectSourceWindow();

            try
            {
                if (window.ShowDialog() == true)
                {
                    SelectSource(window.LiveDataSource);
                }
            }
            catch (Exception exception)
            {
                MessageBox.Show("Error: " + exception.Message, "Error opening source!", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }
    }
}
