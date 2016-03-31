using NSubstitute;
using NUnit.Framework;
using RollingRoad.WinApplication.ViewModels;

namespace RollingRoad.WinApplication.Test.Unit
{
    [TestFixture]
    public class PidControlViewModelTests
    {
        private PidControlViewModel _vm;
        private IPidControl _control;

        [SetUp]
        public void SetUp()
        {
            _control = Substitute.For<IPidControl>();
            _vm = new PidControlViewModel(_control);
        }

        [TestCase(10.0)]
        [TestCase(20.0)]
        public void Kp_SetValue_ValueSet(double value)
        {
            _vm.Kp = value;

            Assert.That(_vm.Kp, Is.EqualTo(value));
        }
    }
}
