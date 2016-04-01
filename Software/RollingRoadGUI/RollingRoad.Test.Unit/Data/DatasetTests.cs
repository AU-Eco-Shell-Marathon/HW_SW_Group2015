using NUnit.Framework;
using RollingRoad.Data;

namespace RollingRoad.Test.Unit.Data
{
    [TestFixture]
    public class DatasetTests
    {
        [Test]
        public void TryGetByName_EmptySet_NullReturned()
        {
            Dataset set = new Dataset();

            Assert.That(set.TryGetByName("noname"), Is.Null);
        }

        [Test]
        public void TryGetByName_NameNotInSet_NullReturned()
        {
            Dataset set = new Dataset {new DataList(new DataType("TestName", "TestUnit"))};


            Assert.That(set.TryGetByName("noname"), Is.Null);
        }

        [Test]
        public void TryGetByName_OnlyNameListInSet_ListReturned()
        {
            Dataset set = new Dataset();
            DataList list = new DataList(new DataType("TestName", "TestUnit"));

            set.Add(list);

            Assert.That(set.TryGetByName("TestName"), Is.EqualTo(list));
        }
    }
}
