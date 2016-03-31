using System.Linq;
using NUnit.Framework;
using RollingRoad.Data;

namespace RollingRoad.Test.Unit.Data
{
    [TestFixture]
    public class DataListTests
    {
        private DataList _list;
        private readonly string _name = "TestName";
        private readonly string _unit = "TestUnit";

        [SetUp]
        public void SetUp()
        {
            _list = new DataList(new DataType(_name, _unit));
        }


        [Test]
        public void AddData_DoubleAsData_DataAdded()
        {
            _list.Add(123);

            Assert.That(_list.First(), Is.EqualTo(123));
        }

        [Test]
        public void GetData_NoDataAdded_NoDataPresent()
        {
            Assert.That(_list.Count, Is.EqualTo(0));
        }

        [Test]
        public void GetData_OneDataAdded_DataPresent()
        {
            _list.Add(3);

            Assert.That(_list.Count, Is.EqualTo(1));
            Assert.That(_list.First(), Is.EqualTo(3));
        }

        [Test]
        public void Title_NameAndUnitSet_NameContainedInTitle()
        {
            Assert.That(_list.ToString(), Does.Contain("TestName"));
        }

        [Test]
        public void Title_NameAndUnitSet_UnitContainedInTitle()
        {
            Assert.That(_list.ToString(), Does.Contain("TestUnit"));
        }
    }
}
