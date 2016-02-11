﻿using System;
using System.Collections.Generic;
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


            List<KeyValuePair<double, double>> valueList = new List<KeyValuePair<double, double>>();

            for (int i = 0; i < 100; i++)
            {
                valueList.Add(new KeyValuePair<double, double>((double)i / 10, Math.Exp((double)i / 10)));
            }

            LiveDataChart.Axes.Add(new LinearAxis());

            LiveDataChart.DataContext = valueList;
        }

        private void MenuBtnFileLoadDataset_Click(object sender, RoutedEventArgs e)
        {
            OpenFileDialog dlg = new Microsoft.Win32.OpenFileDialog();

            // Set filter for file extension and default file extension 
            dlg.DefaultExt = ".csv";
            dlg.Filter = "CSV Files (*.csv)|*.csv";


            // Display OpenFileDialog by calling ShowDialog method 
            Nullable<bool> result = dlg.ShowDialog();

            if (result == true)
            {
                // Open document 
                string filename = dlg.FileName;
                CSVDataSource dataSource;

                try
                {
                    dataSource = CSVDataSource.LoadFromFile(filename);
                }
                catch (Exception exception)
                {
                    MessageBox.Show(exception.Message, "Error opening file", MessageBoxButton.OK, MessageBoxImage.Error);
                }
            }
        }

        private void BtnFileSaveDataset_Click(object sender, RoutedEventArgs e)
        {
            SaveFileDialog dlg = new SaveFileDialog();

            dlg.DefaultExt = ".csv";
            dlg.Filter = "CSV Files (*.csv)|*.csv";

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
