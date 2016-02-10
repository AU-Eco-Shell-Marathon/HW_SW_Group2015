using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Controls.DataVisualization.Charting;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

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
    }
}
