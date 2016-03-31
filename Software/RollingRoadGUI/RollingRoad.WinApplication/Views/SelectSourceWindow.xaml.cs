using System;
using System.IO.Ports;
using System.Windows;
using Microsoft.Win32;
using RollingRoad.LiveData;
using RollingRoad.Loggers;

namespace RollingRoad.WinApplication
{
    /// <summary>
    /// Interaction logic for SelectSourceWindow.xaml
    /// </summary>
    public partial class SelectSourceWindow
    {
        public ILiveDataSource LiveDataSource { get; private set; }
        public ILogger Logger { get; set; }

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
                    LiveDataSource = new LiveDataEmulator(CsvDataFile.LoadFromFile(filename, "shell eco marathon"));
                    DialogResult = true;
                    Close();

                }
                catch (Exception exception)
                {
                    Logger?.WriteLine($"Error opening file {filename}: " + exception.Message);
                    MessageBox.Show(exception.Message, "Error opening file", MessageBoxButton.OK, MessageBoxImage.Error);
                }
            }
        }

        private void ConnectComPortButton(object sender, RoutedEventArgs e)
        {
            if (SelectComPortComboBox.SelectedItem == null)
                return;

            SerialPort port = new SerialPort((string) SelectComPortComboBox.SelectedValue) {BaudRate = 9600};
            port.Open();
           
            LiveDataSource = new SerialConnection(port);

            DialogResult = true;
            Close();
        }
    }
}
