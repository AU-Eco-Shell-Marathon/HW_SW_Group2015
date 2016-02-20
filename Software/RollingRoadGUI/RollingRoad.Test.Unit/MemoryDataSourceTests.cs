using System;
using NUnit.Framework;

namespace RollingRoad.Test.Unit
{
    [TestFixture]
    public class MemoryDataSourceTests
    {
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
    }
}
