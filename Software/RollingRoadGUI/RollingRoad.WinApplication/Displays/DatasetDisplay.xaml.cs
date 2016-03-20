using System.Windows;
using System.Windows.Controls;
using RollingRoad.Data;

namespace RollingRoad.WinApplication
{
    /// <summary>
    /// Interaction logic for DatasetDisplay.xaml
    /// </summary>
    public partial class DatasetDisplay
    {
        public IDataset Dataset { get; set; }

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

        public static readonly DependencyProperty DescriptionProperty = DependencyProperty.Register("Description", typeof(string), typeof(DatasetDisplay));
        public static readonly DependencyProperty DatasetNameProperty = DependencyProperty.Register("DatasetName", typeof(string), typeof(DatasetDisplay));
        
        public DatasetDisplay()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            ListView view = Parent as ListView;

            view?.Items.Remove(this);
        }
    }
}
