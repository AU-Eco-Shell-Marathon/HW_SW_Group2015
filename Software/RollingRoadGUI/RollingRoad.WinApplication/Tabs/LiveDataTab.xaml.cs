using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Windows;
using Microsoft.Research.DynamicDataDisplay;
using Microsoft.Research.DynamicDataDisplay.DataSources;
using Microsoft.Win32;
using RollingRoad.Data;
using RollingRoad.WinApplication.Displays;
using Point = System.Windows.Point;

namespace RollingRoad.WinApplication
{

    /// <summary>
    /// Interaction logic for LiveDataTab.xaml
    /// </summary>
    public partial class LiveDataTab
    {
        /*

        private LineStructure CreateNewLine(Datapoint entry)
        {
            LineStructure lineStuct = new LineStructure(entry.Type.Name, entry.Type.Unit);

            if (entry.Type.Name != XAxisName)
            {
                lineStuct.RawData.SetXYMapping(p => p);

                try
                {
                    object colorObj = Properties.Settings.Default[entry.Type.Name + "LineColor"];
                    LiveDataChart.AddLineGraph(lineStuct.RawData, (System.Windows.Media.Color)colorObj, 2, entry.Type.ToString());
                }
                catch (Exception)
                {
                    LiveDataChart.AddLineGraph(lineStuct.RawData, 2, entry.Type.ToString());
                }

            }

            //Live values
            LiveDataDisplay lab = new LiveDataDisplay
            {
                TitleTextBlock = {Text = entry.Type.ToString()},
                ValueTextBlock = {Text = entry.Value.ToString(CultureInfo.InvariantCulture)}
            };


            LiveDataStackPanel.Children.Add(lab);

            lineStuct.Label = lab;

            return lineStuct;
        }

        private bool TryGetLineStructure(DataType entry, out LineStructure? value)
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
        private void ThreadMover(IReadOnlyList<Datapoint> entries)
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
                    /*MemoryDataset source = new MemoryDataset(new DataCollection(_data.Select(x => x.Data).ToList()))
                    {
                        Description = DateTime.Now.ToLongDateString()
                    };

                    //Save file
                    //CsvDataFile.WriteToFile(dlg.FileName, source);
                }
                catch (Exception e)
                {
                    MessageBox.Show("Error: " + e.Message, "Error saving data!", MessageBoxButton.OK, MessageBoxImage.Error);
                    Logger?.WriteLine("Error saving data: " + e.Message);
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
            try
            {
                if ((string) LiveDataStartStopButton.Content == "Stop")
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
            catch (Exception exception)
            {
                Logger?.WriteLine("Error starting/stopping source: " + exception.Message);
                MessageBox.Show("Error: " + exception.Message, "Error starting/stopping source!", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }
*/
    }
}
