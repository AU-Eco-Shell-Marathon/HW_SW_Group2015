using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.Practices.Prism.Commands;
using RollingRoad.Control;

namespace RollingRoad.WinApplication
{
    public class CalibrateControlViewModel
    {
        public DelegateCommand CalibrateCommand { get; }

        public CalibrateControlViewModel(ICalibrateControl ctrl)
        {
            CalibrateCommand = new DelegateCommand(ctrl.Calibrate);
        }
    }
}
