using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
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
    /// Interaction logic for DatasetDisplay.xaml
    /// </summary>
    public partial class DatasetDisplay : UserControl
    {
        public IDataSource DataSource { get; set; }

        public string Description
        {
            get { return (string)GetValue(DescriptionProperty); }
            set { SetValue(DescriptionProperty, value); }
        }

        public string DatasetName
        {
            get { return (string)GetValue(DatasetNameProperty); }
            set { SetValue(DatasetNameProperty, value); }
        }

        public static DependencyProperty DescriptionProperty = DependencyProperty.Register("Description", typeof(string), typeof(DatasetDisplay));
        public static DependencyProperty DatasetNameProperty = DependencyProperty.Register("DatasetName", typeof(string), typeof(DatasetDisplay));
        
        public DatasetDisplay()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            ListView view = this.Parent as ListView;

            view.Items.Remove(this);
        }
    }
}
