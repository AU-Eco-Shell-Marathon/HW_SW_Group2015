using System.Windows.Input;

namespace RollingRoad.WinApplication.Displays
{
    /// <summary>
    /// Interaction logic for PidControlDisplay.xaml
    /// </summary>
    public partial class PidControlDisplay 
    {
        public IPidControl PidControl { get; private set; }

        public PidControlDisplay(IPidControl ctrl)
        {
            PidControl = ctrl;
            InitializeComponent();

            /*KpTextBox.DataContext = PidControl.Kp;
            KiTextBox.DataContext = PidControl.Ki;
            KdTextBox.DataContext = PidControl.Kd;*/
        }

        private void PidControlTextBox_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Enter)
            {
                //PidControl.Kp = PidControl.Kp;
            }
        }
    }
}
