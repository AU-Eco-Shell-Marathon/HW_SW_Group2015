using NUnit.Framework;
using RollingRoad.Core.DomainModel;
using RollingRoad.Data;

namespace RollingRoad.Test.Unit.Data
{
    [TestFixture]
    public class DatapointTests
    {
        [Test]
        public void Ctor_ValueSet_CorrectValue()
        {
            DataPoint entry = new DataPoint(0);

            Assert.That(entry.Value, Is.EqualTo(0));
        }
    }
}
