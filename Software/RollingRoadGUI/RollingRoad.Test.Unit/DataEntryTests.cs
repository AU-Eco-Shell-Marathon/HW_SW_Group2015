using System;
using NUnit.Framework;

namespace RollingRoad.Test.Unit
{
    [TestFixture]
    public class DataEntryTests
    {
        [Test]
        public void Ctor_NameIsNull_ExceptionThrown()
        {
            // ReSharper disable once ObjectCreationAsStatement
            Assert.Throws<ArgumentException>(() => new DataEntry(null, "Test", 0));
        }

        [Test]
        public void Ctor_NameIsEmpty_ExceptionThrown()
        {
            // ReSharper disable once ObjectCreationAsStatement
            Assert.Throws<ArgumentException>(() => new DataEntry("", "Test", 0));
        }

        [Test]
        public void Ctor_UnitIsNull_ExceptionThrown()
        {
            // ReSharper disable once ObjectCreationAsStatement
            Assert.Throws<ArgumentException>(() => new DataEntry("Test", null, 0));
        }

        [Test]
        public void Ctor_UnitsIsEmpty_ExceptionThrown()
        {
            // ReSharper disable once ObjectCreationAsStatement
            Assert.Throws<ArgumentException>(() => new DataEntry("Test", "", 0));
        }

        [Test]
        public void Ctor_NameSet_CorrectName()
        {
            DataEntry entry = new DataEntry("Test", "Unit", 0);

            Assert.That(entry.Name, Is.EqualTo("Test"));
        }

        [Test]
        public void Ctor_UnitSet_CorrectUnit()
        {
            DataEntry entry = new DataEntry("Name", "Test", 0);

            Assert.That(entry.Unit, Is.EqualTo("Test"));
        }

        [Test]
        public void Ctor_ValueSet_CorrectValue()
        {
            DataEntry entry = new DataEntry("Name", "Test", 0);

            Assert.That(entry.Value, Is.EqualTo(0));
        }

        [Test]
        public void Title_InsertNameAndUnit_NameExists()
        {
            DataEntry entry = new DataEntry("TestName", "TestUnit", 0);

            Assert.That(entry.Title, Does.Contain("TestName"));
        }

        [Test]
        public void Title_InsertNameAndUnit_UnitExists()
        {
            DataEntry entry = new DataEntry("TestName", "TestUnit", 0);

            Assert.That(entry.Title, Does.Contain("TestUnit"));
        }
    }
}
