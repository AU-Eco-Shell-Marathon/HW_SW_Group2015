using System.Threading.Tasks;
using NSubstitute;
using NUnit.Framework;
using RollingRoad.Control;
using RollingRoad.WinApplication.ViewModels;

namespace RollingRoad.WinApplication.Test.Unit.ViewModels
{
    [TestFixture]
    public class CalibrateControlViewModelTests
    {
        [Test]
        public async Task CalibrateCommand_Execute_CalibrateCalledOnInterface()
        {
            ICalibrateControl ctrl = Substitute.For<ICalibrateControl>();
            CalibrateControlViewModel vm = new CalibrateControlViewModel(ctrl);

            await vm.CalibrateCommand.Execute();

            ctrl.Received(1).Calibrate();
        }
    }
}
