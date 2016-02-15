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

                    AppendDataToChart(dataSource, ref ViewDataChart);

                    ViewDataChart.Title = dataSource.Name;

                }
                catch (Exception exception)
                {
                    MessageBox.Show(exception.Message, "Error opening file", MessageBoxButton.OK, MessageBoxImage.Error);
                }
            }
        }

        /// <summary>
        /// Append a datasource to a WPFToolkit chart
        /// </summary>
        /// <param name="source">Data source</param>
        /// <param name="chart">Chart to append to</param>
        private void AppendDataToChart(IDataSource source, ref Chart chart)
        {
            string xAxisname = "Time";

            //TODO allow modification
            //Assume time is used as x-axis
            DataList xDataList = source.GetDataList(xAxisname);

            //Setup x-axis
            LinearAxis lAxis = new LinearAxis
            {
                Minimum = xDataList.GetData().Min() * -1.10,
                Maximum = xDataList.GetData().Max() * 1.10,
                Orientation = AxisOrientation.X,
                Title = $"{xDataList.Name} ({xDataList.Unit})"
            };

            //Add axis to chart
            chart.Axes.Add(lAxis);

            //Loop through all
            for (int i = 0; i < source.GetAllData().Count; i++)
            {
                //Make sure we dont plot our x-axis data
                if (source.GetAllData()[i].Name != xAxisname)
                {
                    //Parse our source format to the format the chart requires
                    List<KeyValuePair<double, double>> valueList = new List<KeyValuePair<double, double>>();
                    DataList active = source.GetAllData()[i];

                    int z = 0;
                    foreach (double data in active.GetData())
                    {
                        valueList.Add(new KeyValuePair<double, double>(xDataList.GetData()[z], data));
                        z++;
                    }

                    //Create our y-axis
                    LinearAxis axis = new LinearAxis
                    {
                        Minimum = active.GetData().Min() * -1.10,
                        Maximum = active.GetData().Max() * 1.10,
                        Orientation = AxisOrientation.Y,
                        Title = active.Unit
                    };

                    //Create out line with data
                    LineSeries line = new LineSeries
                    {
                        Title = $"{active.Name} ({active.Unit})",
                        IndependentValuePath = "Key",
                        DependentValuePath = "Value",
                        ItemsSource = valueList,
                        DependentRangeAxis = axis
                    };

                    //Add line to chart
                    chart.Series.Add(line);
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
