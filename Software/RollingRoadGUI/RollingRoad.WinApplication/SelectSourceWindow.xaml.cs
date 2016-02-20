using System;
using System.IO.Ports;
using System.Windows;
using Microsoft.Win32;

namespace RollingRoad.WinApplication
{
    /// <summary>
    /// Interaction logic for SelectSourceWindow.xaml
    /// </summary>
    public partial class SelectSourceWindow : Window
    {
        public SelectSourceWindow()
        {
            InitializeComponent();
            Loaded += LoadComPorts;
        }

        private void LoadComPorts(object sender, RoutedEventArgs a)
        {
            string[] ports = SerialPort.GetPortNames();

            SelectComPortComboBox.ItemsSource = ports;

            if(ports.Length > 0)
                SelectComPortComboBox.SelectedIndex = 0;
            else
                SelectComPortComboBox.SelectedIndex = -1;
        }

        public ILiveDataSource LiveDataSource { get; private set; } = null;

        private void SourceFromFile_Click(object sender, RoutedEventArgs e)
        {

            OpenFileDialog dlg = new OpenFileDialog
            {
                DefaultExt = ".csv",
                Filter = "CSV Files (*.csv)|*.csv"
            };
            
            if (dlg.ShowDialog() == true)
            {
                // Open document 
                string filename = dlg.FileName;

                try
                {
                    LiveDataSource = new LiveDataEmulator(CsvDataFile.LoadFromFile(filename));
                    DialogResult = true;
                    Close();

                }
                catch (Exception exception)
                {
                    MessageBox.Show(exception.Message, "Error opening file", MessageBoxButton.OK, MessageBoxImage.Error);
                }
            }
        }

        private void TestAndConnectComPortButton(object sender, RoutedEventArgs e)
        {

        }
    }
}
