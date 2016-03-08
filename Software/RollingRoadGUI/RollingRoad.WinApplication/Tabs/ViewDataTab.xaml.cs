using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Threading;
using Microsoft.Research.DynamicDataDisplay;
using Microsoft.Research.DynamicDataDisplay.DataSources;
using Microsoft.Win32;

namespace RollingRoad.WinApplication
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
        private void AppendDataToChart(IDataSource source)
        {
            //Assume time is used as x-axis
            const string xAxisname = "Time";

            DataList xDataList = source.GetDataList(xAxisname);

            //Loop through all
            for (int i = 0; i < source.GetAllData().Count; i++)
            {
                //Make sure we dont plot our x-axis data
                if (source.GetAllData()[i].Name != xAxisname)
                {
                    //Parse our source format to the format the chart requires
                    ObservableDataSource<Point> valueList = new ObservableDataSource<Point>();
                    DataList active = source.GetAllData()[i];

                    int z = 0;
                    foreach (double data in active.GetData())
                    {
                        valueList.AppendAsync(Dispatcher.CurrentDispatcher, new Point(xDataList.GetData()[z], data));
                        z++;
                    }

                    valueList.SetXYMapping(p => p);

                    ViewDataChart.AddLineGraph(valueList, 2, active.Title);
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
                    MemoryDataSource dataSource = CsvDataFile.LoadFromFile(filename);

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

            ViewDataChart.Children.RemoveAll(typeof(LineGraph));

            if (view.SelectedItem != null)
            {
                IDataSource source = ((DatasetDisplay)view.SelectedItem).DataSource;

                AppendDataToChart(source);
            }
        }
    }
}
