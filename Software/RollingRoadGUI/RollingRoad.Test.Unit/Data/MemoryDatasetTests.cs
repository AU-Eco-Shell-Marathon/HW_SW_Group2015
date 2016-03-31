using System;
using System.Collections.Generic;
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
            IList<DataList> dataCollection = new List<DataList>();

            dataCollection.Add(new DataList(new DataType("TestName", "TestUnit")));

            Dataset source = new Dataset(dataCollection);

            Assert.That(dataCollection == source);
        }

        [TestCase("Test1234")]
        [TestCase("")]
        [TestCase(null)]
        public void Name_SetAndGet_CorrectName(string name)
        {
            Dataset source = new Dataset {Name = name};
            
            Assert.That(source.Name, Is.EqualTo(name));
        }
    }
}
