using NSubstitute;
using NUnit.Framework;
using RollingRoad.Control;
using RollingRoad.WinApplication.ViewModels;

namespace RollingRoad.WinApplication.Test.Unit.ViewModels
{
    [TestFixture]
    public class TorqueControlViewModelTests
    {
        private TorqueControlViewModel _vm;
        private ITorqueControl _control;

        [SetUp]
        public void SetUp()
        {
            _control = Substitute.For<ITorqueControl>();
            _vm = new TorqueControlViewModel(_control);
        }

        [Test]
        public void Torque_PositiveValue_ValueSet()
        {
            _vm.Torque = 10.5;

            Assert.That(_vm.Torque, Is.EqualTo(10.5).Within(double.Epsilon));
        }

        [Test]
        public void Torque_SetValue_InterfaceSetTorqueCalled()
        {
            _vm.Torque = 10.5;

            _control.Received(1).SetTorque(Arg.Any<double>());
        }

        [Test]
        public void Torque_SetValue_InterfaceSetTorqueCalledWithCorrectValue()
        {
            _vm.Torque = 10.5;

            _control.Received(1).SetTorque(10.5);
        }
    }
}
