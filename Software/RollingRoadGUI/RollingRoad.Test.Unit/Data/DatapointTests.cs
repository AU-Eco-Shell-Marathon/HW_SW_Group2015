using NUnit.Framework;
using RollingRoad.Data;

namespace RollingRoad.Test.Unit.Data
{
    [TestFixture]
    public class DatapointTests
    {
        [Test]
        public void Ctor_ValueSet_CorrectValue()
        {
            Datapoint entry = new Datapoint(new DataType("Name", "Test"), 0);

            Assert.That(entry.Value, Is.EqualTo(0));
        }
    }
}
