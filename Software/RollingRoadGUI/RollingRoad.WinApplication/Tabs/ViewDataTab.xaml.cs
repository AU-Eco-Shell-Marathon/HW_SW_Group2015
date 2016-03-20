using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Threading;
using Microsoft.Research.DynamicDataDisplay;
using Microsoft.Research.DynamicDataDisplay.DataSources;
using Microsoft.Win32;
using RollingRoad.Data;

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
        private void AppendDataToChart(IDataset source)
        {
            //Assume time is used as x-axis
            const string xAxisname = "Time";

            DataList xDataList = source.GetDataList(xAxisname);

            //Loop through all
            for (int i = 0; i < source.Collection.Count; i++)
            {
                //Make sure we dont plot our x-axis data
                if (source.Collection[i].Type.Name != xAxisname)
                {
                    //Parse our source format to the format the chart requires
                    ObservableDataSource<Point> valueList = new ObservableDataSource<Point>();
                    DataList active = source.Collection[i];

                    int z = 0;
                    foreach (double data in active.GetData())
                    {
                        valueList.AppendAsync(Dispatcher.CurrentDispatcher, new Point(xDataList.GetData()[z], data));
                        z++;
                    }

                    valueList.SetXYMapping(p => p);

                    ViewDataChart.AddLineGraph(valueList, 2, active.ToString());
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
                    MemoryDataset dataset = CsvDataFile.LoadFromFile(filename);

                    DatasetDisplay display = new DatasetDisplay
                    {
                        DatasetName = dataset.Name,
                        Description = dataset.Description,
                        Dataset = dataset
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
                IDataset source = ((DatasetDisplay)view.SelectedItem).Dataset;

                AppendDataToChart(source);
            }
        }
    }
}
