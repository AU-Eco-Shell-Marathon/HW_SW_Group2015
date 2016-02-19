using System.Windows;

namespace RollingRoad.WinApplication
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow
    {
        /// <summary>
        /// Constructor
        /// </summary>
        public MainWindow()
        {
            InitializeComponent();
        }

        /// <summary>
        /// "File" menu quit
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void MenuBtnQuit_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }
    }
}
