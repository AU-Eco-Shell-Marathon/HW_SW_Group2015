using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RollingRoad.WinApplication.ViewModels
{
    public class PidControlViewModel
    {
        private IPidControl _control;

        public PidControlViewModel(IPidControl control)
        {
            _control = control;
        }

        public double Kp => _control.Kp;
        public double Ki => _control.Ki;
        public double Kd => _control.Kd;
    }
}
