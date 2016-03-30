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
