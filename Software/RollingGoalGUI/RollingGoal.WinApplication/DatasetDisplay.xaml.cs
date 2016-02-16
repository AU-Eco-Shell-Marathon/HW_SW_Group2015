using System.Windows;
using System.Windows.Controls;

namespace RollingGoal.WinApplication
{
    /// <summary>
    /// Interaction logic for DatasetDisplay.xaml
    /// </summary>
    public partial class DatasetDisplay
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
            ListView view = Parent as ListView;

            view?.Items.Remove(this);
        }
    }
}
