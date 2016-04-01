using NSubstitute;
using NUnit.Framework;
using RollingRoad.Control;
using RollingRoad.WinApplication.ViewModels;

namespace RollingRoad.WinApplication.Test.Unit.ViewModels
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

        [TestCase(10.0)]
        [TestCase(20.0)]
        public void Ki_SetValue_ValueSet(double value)
        {
            _vm.Ki = value;

            Assert.That(_vm.Ki, Is.EqualTo(value));
        }

        [TestCase(10.0)]
        [TestCase(20.0)]
        public void Kd_SetValue_ValueSet(double value)
        {
            _vm.Kd = value;

            Assert.That(_vm.Kd, Is.EqualTo(value));
        }

        [Test]
        public void Kp_SetValue_PropertyChangedCalled()
        {
            bool propertyChangedCalled = false;

            _vm.PropertyChanged += (sender, args) =>
            {
                Assert.That(args.PropertyName, Is.EqualTo(nameof(_vm.Kp)));
                propertyChangedCalled = true;
            };

            _vm.Kp = 1;

            Assert.That(propertyChangedCalled, Is.True);
        }

        [Test]
        public void Ki_SetValue_PropertyChangedCalled()
        {
            bool propertyChangedCalled = false;

            _vm.PropertyChanged += (sender, args) =>
            {
                Assert.That(args.PropertyName, Is.EqualTo(nameof(_vm.Ki)));
                propertyChangedCalled = true;
            };

            _vm.Ki = 1;

            Assert.That(propertyChangedCalled, Is.True);
        }

        [Test]
        public void Kd_SetValue_PropertyChangedCalled()
        {
            bool propertyChangedCalled = false;

            _vm.PropertyChanged += (sender, args) =>
            {
                Assert.That(args.PropertyName, Is.EqualTo(nameof(_vm.Kd)));
                propertyChangedCalled = true;
            };

            _vm.Kd = 1;

            Assert.That(propertyChangedCalled, Is.True);
        }
    }
}
