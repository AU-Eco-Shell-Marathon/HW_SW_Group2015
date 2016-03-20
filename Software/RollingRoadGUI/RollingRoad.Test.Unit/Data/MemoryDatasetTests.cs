using System;
using NUnit.Framework;
using RollingRoad.Data;

namespace RollingRoad.Test.Unit.Data
{
    [TestFixture]
    public class MemoryDatasetTests
    {
        [Test]
        public void Ctor_DataListInterserted_SameListInProperty()
        {
            DataCollection dataCollection = new DataCollection();

            dataCollection.Add(new DataList(new DataType("TestName", "TestUnit")));

            MemoryDataset source = new MemoryDataset(dataCollection);

            Assert.That(dataCollection == source.Collection);
        }

        [Test]
        public void GetDataList_NoListAdded_ExceptionThrown()
        {
            MemoryDataset source = new MemoryDataset();

            Assert.Throws<ArgumentException>(() => source.GetDataList("Does not exist"));
        }

        [Test]
        public void GetDataList_OneListAddedAndRequested_ListWithCorrectNameReturned()
        {
            MemoryDataset dataset = new MemoryDataset();
            dataset.Collection.Add(new DataList(new DataType("TestName", "TestUnit")));

            Assert.That(dataset.GetDataList("TestName").Type.Name, Is.EqualTo("TestName"));
        }

        [Test]
        public void GetDataList_OneListAddedAndRequested_ListWithCorrectUnitReturned()
        {
            MemoryDataset source = new MemoryDataset();
            source.Collection.Add(new DataList(new DataType("TestName", "TestUnit")));

            Assert.That(source.GetDataList("TestName").Type.Unit, Is.EqualTo("TestUnit"));
        }

        [Test]
        public void GetDataList_OneListAddedOtherListRequested_ExceptionThrown()
        {
            MemoryDataset source = new MemoryDataset();
            source.Collection.Add(new DataList(new DataType("TestName", "TestUnit")));

            Assert.Throws<ArgumentException>(() => source.GetDataList("TestName2"));
        }

        [TestCase("Test1234")]
        [TestCase("")]
        [TestCase(null)]
        public void Name_SetAndGet_CorrectName(string name)
        {
            MemoryDataset source = new MemoryDataset {Name = name};
            
            Assert.That(source.Name, Is.EqualTo(name));
        }
    }
}
