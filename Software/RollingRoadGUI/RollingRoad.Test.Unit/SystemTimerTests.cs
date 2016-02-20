using System.Threading;
using NUnit.Framework;

namespace RollingRoad.Test.Unit
{
    [TestFixture]
    public class SystemTimerTests
    {
        [Test]
        public void Start_SingleCallToStart_OneInvoke()
        {
            SystemTimer timer = new SystemTimer();
            int invokes = 0;

            timer.Elapsed += () =>
            {
                invokes++;
            };

            timer.Start(10);

            while (invokes != 1){}

            Assert.That(invokes, Is.EqualTo(1));
        }

        [Test]
        public void Start_TwoCallsToStart_TwoInvokes()
        {
            SystemTimer timer = new SystemTimer();
            int invokes = 0;

            timer.Elapsed += () =>
            {
                invokes++;
            };

            timer.Start(5);
            timer.Start(5);

            while (invokes != 2) { }

            Assert.That(invokes, Is.EqualTo(2));
        }
    }
}
