using System;
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
                    LiveDataSource = new LiveDataEmulator(CsvDataSource.LoadFromFile(filename));
                    DialogResult = true;
                    Close();

                }
                catch (Exception exception)
                {
                    MessageBox.Show(exception.Message, "Error opening file", MessageBoxButton.OK, MessageBoxImage.Error);
                }
            }
        }
    }
}
