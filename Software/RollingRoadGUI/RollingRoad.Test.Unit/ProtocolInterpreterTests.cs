using System.IO;
using System.Text;
using NUnit.Framework;

namespace RollingRoad.Test.Unit
{
    [TestFixture]
    public class ProtocolInterpreterTests
    {
        [Test]
        public void Start_FirstStart_HandShakeRequested()
        {
            MemoryStream ms = new MemoryStream();

            ProtocolInterpreter interpreter = new ProtocolInterpreter(ms);

            interpreter.Start();

            Assert.That(Encoding.ASCII.GetString(ms.ToArray()), Is.EqualTo("0 RollingRoad"));
        }
    }
}
