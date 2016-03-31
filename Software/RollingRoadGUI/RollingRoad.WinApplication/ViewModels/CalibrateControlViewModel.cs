using Microsoft.Practices.Prism.Commands;
using RollingRoad.Control;

namespace RollingRoad.WinApplication.ViewModels
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
