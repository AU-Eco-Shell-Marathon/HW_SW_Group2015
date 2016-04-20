using System.Linq;
using NSubstitute;
using NUnit.Framework;
using RollingRoad.Core.DomainModel;
using RollingRoad.Data;
using RollingRoad.Infrastructure.DataAccess;
using RollingRoad.Timers;

namespace RollingRoad.Test.Unit
{
    [TestFixture]
    public class LiveDataEmulatorTests
    {
        private DataSet _dataset;
        private ITimer _timer;
        private LiveDataEmulator _emulator;

        [SetUp]
        public void SetUp()
        {
            _dataset = new DataSet();
            _timer = Substitute.For<ITimer>();
            
            _dataset.DataLists.Add(new DataList(new DataType("Time", "TestUnit")));

            _emulator = new LiveDataEmulator(_dataset) {Timer = _timer};
        }

        [Test]
        public void OnNextReadValueEvent_NoDataGiven_NoInvokes()
        {
            int invokeCount = 0;

            //Excluded from coverage since invokeCount should not be called
            _emulator.OnNextReadValue += data =>invokeCount++;

            _emulator.Start();

            Assert.That(invokeCount, Is.EqualTo(0));
        }

        [TestCase(5.0)]
        [TestCase(-5.0)]
        [TestCase(0.0)]
        [TestCase(0.852)]
        [TestCase(-0.852)]
        public void OnNextReadValueEvent_OneDataPointGiven_CorrectData(double value)
        {
            _dataset.DataLists.ElementAt(0).Data.Add(new DataPoint(value));
            _timer.When(timer => timer.Start(Arg.Any<int>())).Do(x => _timer.Elapsed += Raise.Event<TimerElapsedEvent>());
            
            double dataRead = -1000;
            _emulator.OnNextReadValue += incommingData => dataRead = incommingData[0].Value;

            _emulator.Start();

            Assert.That(dataRead, Is.EqualTo(value));
        }
    }
}
