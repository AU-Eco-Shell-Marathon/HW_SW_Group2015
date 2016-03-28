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
