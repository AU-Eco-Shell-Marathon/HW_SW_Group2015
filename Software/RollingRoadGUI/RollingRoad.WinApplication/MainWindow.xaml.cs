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

            LoggerTab.Logger = _logger;
            LiveDataTabName.Logger = _logger;
        }

        private readonly ILogger _logger = new EventLogger();

        /// <summary>
        /// "File" menu quit
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void MenuBtnQuit_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }

        private void About_Click(object sender, RoutedEventArgs e)
        {
            AboutWindow window = new AboutWindow();

            window.ShowDialog();
        }
    }
}
