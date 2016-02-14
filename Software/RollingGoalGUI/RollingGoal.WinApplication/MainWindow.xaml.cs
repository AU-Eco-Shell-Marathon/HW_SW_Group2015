using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows;
using System.Windows.Controls.DataVisualization.Charting;
using Microsoft.Win32;

namespace RollingGoal.WinApplication
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        /*private void CreateNewLine(int mult)
        {
            LineSeries line = new LineSeries();

            List<KeyValuePair<double, double>> valueList = new List<KeyValuePair<double, double>>();

            for (int i = 0; i < 100; i++)
            {
                valueList.Add(new KeyValuePair<double, double>((double)i / 10, (double)i / 10 * mult));
            }

            LiveDataChart.Series.Add(line);

            line.Title = "TEST";
            line.IndependentValuePath = "Key";
            line.DependentValuePath = "Value";
            line.ItemsSource = valueList;
        }*/

        private void BtnFileLoadDataset_Click(object sender, RoutedEventArgs e)
        {
            OpenFileDialog dlg = new OpenFileDialog
            {
                DefaultExt = ".csv",
                Filter = "CSV Files (*.csv)|*.csv"
            };

            // Set filter for file extension and default file extension 


            // Display OpenFileDialog by calling ShowDialog method 
            bool? result = dlg.ShowDialog();

            if (result == true)
            {
                // Open document 
                string filename = dlg.FileName;

                try
                {
                    CsvDataSource dataSource = CsvDataSource.LoadFromFile(filename);
                    IReadOnlyList<double> xAxis = dataSource.GetDataList("Time").GetData();


                    for (int i = 1; i < dataSource.GetAllData().Count; i++)
                    {
                        LineSeries line = new LineSeries();
                        List<KeyValuePair<double, double>> valueList = new List<KeyValuePair<double, double>>();
                        DataList active = dataSource.GetAllData()[i];

                        int z = 0;
                        foreach (double data in active.GetData())
                        {
                            valueList.Add(new KeyValuePair<double, double>(xAxis[z], data));
                            z++;
                        }

                        line.Title = $"{active.Name} ({active.Unit})";
                        line.IndependentValuePath = "Key";
                        line.DependentValuePath = "Value";
                        line.ItemsSource = valueList;
                        
                        LinearAxis axis = new LinearAxis {Minimum = active.GetData().Min()};

                        axis.Minimum *= -1.10;
                        axis.Maximum = active.GetData().Max();
                        axis.Maximum *= 1.10;
                        axis.Orientation = AxisOrientation.Y;
                        axis.Title = active.Unit;

                        line.DependentRangeAxis = axis;

                        ViewDataChart.Series.Add(line);
                        
                    }

                }
                catch (Exception exception)
                {
                    MessageBox.Show(exception.Message, "Error opening file", MessageBoxButton.OK, MessageBoxImage.Error);
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

        private void MenuBtnQuit_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }
    }
}
