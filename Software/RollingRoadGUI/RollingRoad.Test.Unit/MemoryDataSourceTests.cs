using System;
using System.Collections.Generic;
using NUnit.Framework;

namespace RollingRoad.Test.Unit
{
    [TestFixture]
    public class MemoryDataSourceTests
    {
        [Test]
        public void Ctor_DataListInterserted_SameListInProperty()
        {
            List<DataList> data = new List<DataList>();
            data.Add(new DataList("TestName", "TestUnit"));

            MemoryDataSource source = new MemoryDataSource(data);

            Assert.That(data == source.Data);
        }

        [Test]
        public void GetDataList_NoListAdded_ExceptionThrown()
        {
            MemoryDataSource source = new MemoryDataSource();

            Assert.Throws<ArgumentException>(() => source.GetDataList("Does not exist"));
        }

        [Test]
        public void GetDataList_OneListAddedAndRequested_ListWithCorrectNameReturned()
        {
            MemoryDataSource source = new MemoryDataSource();
            source.Data.Add(new DataList("TestName", "TestUnit"));

            Assert.That(source.GetDataList("TestName").Name, Is.EqualTo("TestName"));
        }

        [Test]
        public void GetDataList_OneListAddedAndRequested_ListWithCorrectUnitReturned()
        {
            MemoryDataSource source = new MemoryDataSource();
            source.Data.Add(new DataList("TestName", "TestUnit"));

            Assert.That(source.GetDataList("TestName").Unit, Is.EqualTo("TestUnit"));
        }

        [Test]
        public void GetDataList_OneListAddedOtherListRequested_ExceptionThrown()
        {
            MemoryDataSource source = new MemoryDataSource();
            source.Data.Add(new DataList("TestName", "TestUnit"));

            Assert.Throws<ArgumentException>(() => source.GetDataList("TestName2"));
        }

        [TestCase("Test1234")]
        [TestCase("")]
        [TestCase(null)]
        public void Name_SetAndGet_CorrectName(string name)
        {
            MemoryDataSource source = new MemoryDataSource();

            source.Name = name;

            Assert.That(source.Name, Is.EqualTo(name));
        }
    }
}
