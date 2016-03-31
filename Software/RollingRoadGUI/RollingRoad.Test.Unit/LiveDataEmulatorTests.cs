using System.Collections.Generic;
using System.Runtime.InteropServices;
using NSubstitute;
using NUnit.Framework;
using RollingRoad.Data;

namespace RollingRoad.Test.Unit
{
    /*internal class MockITimer : ITimer
    {
        public int StartCallAmount { get; private set; }
        public int StopCallAmount { get; private set; }

        /// <summary>
        /// Invoke instantly
        /// </summary>
        /// <param name="ms"></param>
        public void Start(int ms)
        {
            StartCallAmount++;
            Elapsed?.Invoke();
        }

        public void Stop()
        {
            StopCallAmount++;
        }

        public event TimerElapsedEvent Elapsed;
    }*/

    [TestFixture]
    public class LiveDataEmulatorTests
    {
        private Dataset _dataset;
        private ITimer _timer;
        private LiveDataEmulator _emulator;

        [SetUp]
        public void SetUp()
        {
            _dataset = new Dataset();
            _timer = Substitute.For<ITimer>();
            
            _dataset.Add(new DataList(new DataType("Time", "TestUnit")));

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
            _dataset[0].Add(value);
            _timer.When(timer => timer.Start(Arg.Any<int>())).Do(x => _timer.Elapsed += Raise.Event<TimerElapsedEvent>());
            
            double dataRead = -1000;
            _emulator.OnNextReadValue += incommingData => dataRead = incommingData[0].Value;

            _emulator.Start();

            Assert.That(dataRead, Is.EqualTo(value));
        }
    }
}
