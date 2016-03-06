﻿using System.Globalization;
using System.IO;
using System.Text;
using NUnit.Framework;

namespace RollingRoad.Test.Unit
{
    [TestFixture]
    public class ProtocolInterpreterTests
    {
        private MemoryStream _ms;
        private ProtocolInterpreter _interpreter;

        [SetUp]
        public void SetUp()
        {
            _ms = new MemoryStream();
            _interpreter = new ProtocolInterpreter(_ms);
        }

        private void WriteToMemoryStream(StreamWriter writer, string value)
        {
            _ms.SetLength(0);
            writer.Write(value);
            writer.Flush();
            _ms.Position = 0;
        }

        [Test]
        public void Start_FirstStart_HandShakeSent()
        {
            _interpreter.Start();

            Assert.That(Encoding.ASCII.GetString(_ms.ToArray()), Is.EqualTo("0 RollingRoad\n"));
        }

        [Test]
        public void Stop_StartedAndStopped_StopSent()
        {
            _interpreter.Start();
            //Reset memory stream
            _ms.SetLength(0);

            _interpreter.Stop();

            Assert.That(Encoding.ASCII.GetString(_ms.ToArray()), Is.EqualTo("2\n"));
        }


        [TestCase(5.0)]
        [TestCase(-5.0)]
        [TestCase(0.0)]
        [TestCase(0.852)]
        [TestCase(-0.852)]
        public void SetTorque_StartedAndTorqueSet_TorqueSent(double value)
        {
            _interpreter.Start();
            //Reset memory stream
            _ms.SetLength(0);

            _interpreter.SetTorque(value);

            Assert.That(Encoding.UTF8.GetString(_ms.ToArray()), Is.EqualTo("4 " + value.ToString(new CultureInfo("en-US")) + "\n"));
        }

        [Test]
        public void OnNextReadValueEvent_OneUnitAndOneDataPoint_EventCalledWithCorrectTypename()
        {
            StreamWriter writer = new StreamWriter(_ms);
            string nameRead = "";

            _interpreter.OnNextReadValue += data => nameRead = data[0].Name;
            
            _interpreter.Start(false);

            WriteToMemoryStream(writer, "1 0 Time Seconds\n");
            _interpreter.Listen();
            
            WriteToMemoryStream(writer, "3 2.3\n");
            _interpreter.Listen();

            Assert.That(nameRead, Is.EqualTo("Time"));
        }

        [Test]
        public void OnNextReadValueEvent_TwoUnitsAndOneDataPoint_EventCalledWithCorrectTypenames()
        {
            StreamWriter writer = new StreamWriter(_ms);
            string nameRead1 = "", nameRead2 = "";

            _interpreter.OnNextReadValue += data =>
            {
                nameRead1 = data[0].Name;
                nameRead2 = data[1].Name;
            };

            _interpreter.Start(false);
            
            WriteToMemoryStream(writer, "1 0 Time Seconds\n");
            _interpreter.Listen();

            WriteToMemoryStream(writer, "1 1 Torque Nm\n");
            _interpreter.Listen();

            WriteToMemoryStream(writer, "3 2.3 5\n");
            _interpreter.Listen();

            Assert.That(nameRead1, Is.EqualTo("Time"));
            Assert.That(nameRead2, Is.EqualTo("Torque"));
        }


        [TestCase(5.0)]
        [TestCase(-5.0)]
        [TestCase(0.0)]
        [TestCase(0.852)]
        [TestCase(-0.852)]
        public void OnNextReadValueEvent_OneUnitAndOneDataPoint_EventCalledWithCorrectData(double value)
        {
            StreamWriter writer = new StreamWriter(_ms);
            double valueRead = 0;

            _interpreter.OnNextReadValue += data => valueRead = data[0].Value;

            _interpreter.Start(false);

            WriteToMemoryStream(writer, "1 0 Time Seconds\n");
            _interpreter.Listen();
            
            WriteToMemoryStream( writer, $"3 {value.ToString(new CultureInfo("en-US"))}\n");
            _interpreter.Listen();

            Assert.That(valueRead, Is.EqualTo(value));
        }

        [TestCase(5.0)]
        [TestCase(-5.0)]
        [TestCase(0.0)]
        [TestCase(0.852)]
        [TestCase(-0.852)]
        public void OnNextReadValueEvent_OneUnitAndTwoDataPoints_EventCalledWithCorrectDataEndPoints(double value)
        {
            StreamWriter writer = new StreamWriter(_ms);
            double valueRead = 0;

            _interpreter.OnNextReadValue += data => valueRead = data[0].Value;

            _interpreter.Start(false);

            WriteToMemoryStream(writer, "1 0 Time Seconds\n");
            _interpreter.Listen();

            WriteToMemoryStream(writer, "3 4.25\n");
            _interpreter.Listen();

            WriteToMemoryStream(writer, $"3 {value.ToString(new CultureInfo("en-US"))}\n");
            _interpreter.Listen();

            Assert.That(valueRead, Is.EqualTo(value));
        }

        [Test]
        public void Start_StartStopStart_StartSent()
        {
            _interpreter.Start(true);
            _interpreter.Stop();

            _ms.SetLength(0);
            _interpreter.Start(true);

            Assert.That(Encoding.ASCII.GetString(_ms.ToArray()), Is.EqualTo("0 RollingRoad\n"));
        }
    }
}
