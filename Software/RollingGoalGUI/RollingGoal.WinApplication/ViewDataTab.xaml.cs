using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Controls.DataVisualization.Charting;
using Microsoft.Win32;

namespace RollingGoal.WinApplication
{
    /// <summary>
    /// Interaction logic for ViewDataTab.xaml
    /// </summary>
    public partial class ViewDataTab
    {
        /// <summary>
        /// Constructor
        /// </summary>
        public ViewDataTab()
        {
            InitializeComponent();
        }
        
        /// <summary>
        /// Append a datasource to a WPFToolkit chart
        /// </summary>
        /// <param name="source">Data source</param>
        /// <param name="chart">Chart to append to</param>
        private static void AppendDataToChart(IDataSource source, ref Chart chart)
        {
            const string xAxisname = "Time";

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

                    DatasetDisplay display = new DatasetDisplay
                    {
                        DatasetName = dataSource.Name,
                        Description = dataSource.Description,
                        DataSource = dataSource
                    };
                    
                    ListViewDataselect.Items.Add(display);

                }
                catch (Exception exception)
                {
                    MessageBox.Show(exception.Message, "Error opening file", MessageBoxButton.OK, MessageBoxImage.Error);
                }
            }
        }

        private void ListViewDataselect_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            ListView view = (ListView) sender;

            ViewDataChart.Axes.Clear();
            ViewDataChart.Series.Clear();

            if (view.SelectedItem != null)
            {
                IDataSource source = ((DatasetDisplay)view.SelectedItem).DataSource;

                AppendDataToChart(source, ref ViewDataChart);
                ViewDataChart.Title = source.Name;
            }
        }
    }
}
