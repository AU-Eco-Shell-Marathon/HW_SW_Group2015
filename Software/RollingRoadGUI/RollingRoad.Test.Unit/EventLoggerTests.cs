﻿
using NUnit.Framework;

namespace RollingRoad.Test.Unit
{
    [TestFixture]
    public class EventLoggerTests
    {
        [Test]
        public void WriteLine_SendString_EventCalled()
        {
            EventLogger eventLogger = new EventLogger();
            int eventCallCount = 0;

            eventLogger.OnLog += (text) => eventCallCount++;

            eventLogger.WriteLine("Test line");

            Assert.That(eventCallCount, Is.EqualTo(1));
        }

        [TestCase("Test one")]
        [TestCase("Two tests")]
        public void WriteLine_SendSingleString_CorrectStringInEvent(string str)
        {
            EventLogger eventLogger = new EventLogger();
            string eventCallValue = "";

            eventLogger.OnLog += (text) => eventCallValue = text;

            eventLogger.WriteLine(str);

            Assert.That(eventCallValue, Is.EqualTo(str));
        }

        [TestCase("Test", 4)]
        [TestCase("All the strings", 10)]
        public void WriteLine_SendMultipleStrings_CorrectStringAtEnd(string prefix, int number)
        {
            EventLogger eventLogger = new EventLogger();
            string eventCallValue = "";

            eventLogger.OnLog += (text) => eventCallValue = text;
            
            int i;
            for (i = 0; i < number; i++)
            {
                eventLogger.WriteLine(prefix + i);
            }


            Assert.That(eventCallValue, Is.EqualTo(prefix + (number - 1)));
        }
    }
}