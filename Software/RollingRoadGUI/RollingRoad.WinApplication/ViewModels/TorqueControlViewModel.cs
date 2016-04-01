using Microsoft.Practices.Prism.Mvvm;
using RollingRoad.Control;

namespace RollingRoad.WinApplication.ViewModels
{
    public class TorqueControlViewModel : BindableBase
    {
        private readonly ITorqueControl _control;
        private double _torque;

        public TorqueControlViewModel(ITorqueControl control)
        {
            _control = control;
            /*
            
            double min = Properties.Settings.Default.TorqueControlMin;
            double max = Properties.Settings.Default.TorqueControlMax;*/
        }

        public double Torque
        {
            get { return _torque; }
            set
            {
                _torque = value;
                _control.SetTorque(_torque);
                OnPropertyChanged(nameof(Torque));
            }
        }
    }
}
