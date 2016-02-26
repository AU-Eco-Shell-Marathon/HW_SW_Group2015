using System.Globalization;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace RollingRoad.WinApplication
{
    /// <summary>
    /// Interaction logic for TorqueControlDisplay.xaml
    /// </summary>
    public partial class TorqueControlDisplay
    {
        private readonly ITorqueControl _control;

        public TorqueControlDisplay(ITorqueControl control)
        {
            InitializeComponent();
            _control = control;
        }

        private void TrySetTorque(string input)
        {
            double value;

            if (double.TryParse(input, NumberStyles.Number, CultureInfo.CreateSpecificCulture("en-US"), out value))
            {
                TrySetTorque(value);
            }
            else
            {
                MessageBox.Show("Could not parse, torque must be a number", "Error setting torque", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void TrySetTorque(double value)
        {
            double min = Properties.Settings.Default.TorqueControlMin;
            double max = Properties.Settings.Default.TorqueControlMax;

            if (value > max || value < min)
            {
                MessageBox.Show($"Torque must be greather than {min} and less than {max}", "Error setting torque", MessageBoxButton.OK, MessageBoxImage.Error);
            }
            else
            {
                _control?.SetTorque(value);
            }
        }

        private void TorqueControlTextBox_KeyDown(object sender, System.Windows.Input.KeyEventArgs e)
        {
            if (e.Key == Key.Enter)
            {
                TrySetTorque(TorqueControlTextBox.Text);
            }
        }
    }
}
