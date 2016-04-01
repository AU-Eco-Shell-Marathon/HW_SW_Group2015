
using NUnit.Framework;
using RollingRoad.Data;
using RollingRoad.WinApplication.ViewModels;

namespace RollingRoad.WinApplication.Test.Unit.ViewModels
{
    [TestFixture]
    public class DataSetViewModelTests
    {
        [TestCase("TestName")]
        [TestCase("Another")]
        public void Name_CreateSetWithName_CorrectName(string name)
        {
            Dataset set = new Dataset() {Name = name};
            DataSetViewModel vm = new DataSetViewModel(set);

            Assert.That(vm.Name, Is.EqualTo(name));
        }

        [TestCase("TestDescrition")]
        [TestCase("Another")]
        public void Description_CreateSetWithDescription_CorrectName(string description)
        {
            Dataset set = new Dataset() { Description = description };
            DataSetViewModel vm = new DataSetViewModel(set);

            Assert.That(vm.Description, Is.EqualTo(description));
        }

        [Test]
        public void IsSelected_SetValue_PropertyChangedCalled()
        {
            Dataset set = new Dataset() {};
            DataSetViewModel vm = new DataSetViewModel(set);
            bool propertyChangedCalled = false;

            vm.PropertyChanged += (sender, args) =>
            {
                Assert.That(args.PropertyName, Is.EqualTo(nameof(vm.IsSelected)));
                propertyChangedCalled = true;
            };

            vm.IsSelected = true;

            Assert.That(propertyChangedCalled, Is.True);
        }

        [TestCase(true)]
        [TestCase(false)]
        public void IsSelected_SetValue_ValueSet(bool values)
        {
            Dataset set = new Dataset() { };
            DataSetViewModel vm = new DataSetViewModel(set) {IsSelected = values};


            Assert.That(vm.IsSelected, Is.EqualTo(values));
        }
    }
}
