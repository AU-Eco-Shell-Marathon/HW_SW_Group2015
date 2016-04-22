using System;
using System.Diagnostics;
using System.Linq;
using System.Windows;
using RollingRoad.Infrastructure.DataAccess;

namespace RollingRoad.WinApplication
{
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            Loaded += OnLoaded;
        }

        private void OnLoaded(object sender, RoutedEventArgs routedEventArgs)
        {
            ApplicationContext context = ApplicationContext.Create();

            string output = "";

            output += context.DataLists.Select(x => x.Name);

            Debug.WriteLine(output);
        }
    }
}
