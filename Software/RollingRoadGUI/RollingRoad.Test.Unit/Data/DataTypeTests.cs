using System;
using NUnit.Framework;
using RollingRoad.Core.DomainModel;
using RollingRoad.Data;

namespace RollingRoad.Test.Unit.Data
{
    [TestFixture]
    public class DataTypeTests
    {
        [Test]
        public void Ctor_NameIsNull_ExceptionThrown()
        {
            // ReSharper disable once ObjectCreationAsStatement
            Assert.Throws<ArgumentException>(() => new DataType(null, "Test"));
        }

        [Test]
        public void Ctor_NameIsEmpty_ExceptionThrown()
        {
            // ReSharper disable once ObjectCreationAsStatement
            Assert.Throws<ArgumentException>(() => new DataType("", "Test"));
        }

        [Test]
        public void Ctor_UnitIsNull_ExceptionThrown()
        {
            // ReSharper disable once ObjectCreationAsStatement
            Assert.Throws<ArgumentException>(() => new DataType("Test", null));
        }

        [Test]
        public void Ctor_UnitsIsEmpty_ExceptionThrown()
        {
            // ReSharper disable once ObjectCreationAsStatement
            Assert.Throws<ArgumentException>(() => new DataType("Test", ""));
        }

        [Test]
        public void Ctor_NameSet_CorrectName()
        {
            DataType entry = new DataType("Test", "Unit");

            Assert.That(entry.Name, Is.EqualTo("Test"));
        }

        [Test]
        public void Ctor_UnitSet_CorrectUnit()
        {
            DataType entry = new DataType("Name", "Test");

            Assert.That(entry.Unit, Is.EqualTo("Test"));
        }

        [Test]
        public void ToString_InsertNameAndUnit_NameExists()
        {
            DataType entry = new DataType("TestName", "TestUnit");

            Assert.That(entry.ToString(), Does.Contain("TestName"));
        }

        [Test]
        public void ToString_InsertNameAndUnit_UnitExists()
        {
            DataType entry = new DataType("TestName", "TestUnit");

            Assert.That(entry.ToString(), Does.Contain("TestUnit"));
        }
    }
}
