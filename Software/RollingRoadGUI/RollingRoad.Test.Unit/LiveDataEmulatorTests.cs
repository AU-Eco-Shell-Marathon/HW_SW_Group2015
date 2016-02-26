using NUnit.Framework;

namespace RollingRoad.Test.Unit
{
    internal class MockITimer : ITimer
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
    }

    [TestFixture]
    public class LiveDataEmulatorTests
    {
        [Test]
        public void OnNextReadValueEvent_NoDataGiven_NoInvokes()
        {
            MemoryDataSource source = new MemoryDataSource();
            LiveDataEmulator emu = new LiveDataEmulator(source);
            MockITimer timer = new MockITimer();
            emu.Timer = timer;

            int invokeCount = 0;

            //Excluded from coverage since invokeCount should not be called
            emu.OnNextReadValue += data =>invokeCount++;

            emu.Start();

            Assert.That(invokeCount, Is.EqualTo(0));
        }

        [TestCase(5.0)]
        [TestCase(-5.0)]
        [TestCase(0.0)]
        [TestCase(0.852)]
        [TestCase(-0.852)]
        public void OnNextReadValueEvent_OneDataPointGiven_CorrectData(double value)
        {
            MemoryDataSource source = new MemoryDataSource();
            source.Data.Add(new DataList("Time", "TestUnit"));
            source.Data[0].AddData(value);
            LiveDataEmulator emu = new LiveDataEmulator(source) {Timer = new MockITimer()};

            double dataRead = 0;

            emu.OnNextReadValue += data => dataRead = data[0].Value;

            emu.Start();

            Assert.That(dataRead, Is.EqualTo(value));
        }
    }
}
