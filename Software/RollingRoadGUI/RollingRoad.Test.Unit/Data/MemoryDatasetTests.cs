using NUnit.Framework;
using RollingRoad.Core.DomainModel;

namespace RollingRoad.Test.Unit.Data
{
    [TestFixture]
    public class MemoryDatasetTests
    {
        [TestCase("Test1234")]
        [TestCase("")]
        [TestCase(null)]
        public void Name_SetAndGet_CorrectName(string name)
        {
            DataSet source = new DataSet { Name = name};
            
            Assert.That(source.Name, Is.EqualTo(name));
        }
    }
}
