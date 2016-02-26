using System.Globalization;
using System.IO;
using System.Text;
using NUnit.Framework;

namespace RollingRoad.Test.Unit
{
    [TestFixture]
    public class ProtocolInterpreterTests
    {
        private void WriteToMemoryStream(MemoryStream ms, StreamWriter writer, string value)
        {
            ms.SetLength(0);
            writer.Write(value);
            writer.Flush();
            ms.Position = 0;
        }

        [Test]
        public void Start_FirstStart_HandShakeSent()
        {
            MemoryStream ms = new MemoryStream();
            ProtocolInterpreter interpreter = new ProtocolInterpreter(ms);

            interpreter.Start();

            Assert.That(Encoding.ASCII.GetString(ms.ToArray()), Is.EqualTo("0 RollingRoad\n"));
        }

        [Test]
        public void Stop_StartedAndStopped_StopSent()
        {
            MemoryStream ms = new MemoryStream();
            ProtocolInterpreter interpreter = new ProtocolInterpreter(ms);

            interpreter.Start();
            //Reset memory stream
            ms.SetLength(0);

            interpreter.Stop();

            Assert.That(Encoding.ASCII.GetString(ms.ToArray()), Is.EqualTo("2\n"));
        }


        [TestCase(5.0)]
        [TestCase(-5.0)]
        [TestCase(0.0)]
        [TestCase(0.852)]
        [TestCase(-0.852)]
        public void SetTorque_StartedAndTorqueSet_TorqueSent(double value)
        {
            MemoryStream ms = new MemoryStream();
            ProtocolInterpreter interpreter = new ProtocolInterpreter(ms);

            interpreter.Start();
            //Reset memory stream
            ms.SetLength(0);

            interpreter.SetTorque(value);

            Assert.That(Encoding.UTF8.GetString(ms.ToArray()), Is.EqualTo("4 " + value.ToString(new CultureInfo("en-US")) + "\n"));
        }

        [Test]
        public void OnNextReadValueEvent_OneUnitAndOneDataPoint_EventCalledWithCorrectTypename()
        {
            MemoryStream ms = new MemoryStream();
            StreamWriter writer = new StreamWriter(ms);
            ProtocolInterpreter interpreter = new ProtocolInterpreter(ms);
            string nameRead = "";

            interpreter.OnNextReadValue += data => nameRead = data[0].Name;
            
            interpreter.Start(false);

            WriteToMemoryStream(ms, writer, "1 0 Time Seconds\n");
            interpreter.Listen();
            
            WriteToMemoryStream(ms, writer, "3 2.3\n");
            interpreter.Listen();

            Assert.That(nameRead, Is.EqualTo("Time"));
        }

        [Test]
        public void OnNextReadValueEvent_TwoUnitsAndOneDataPoint_EventCalledWithCorrectTypenames()
        {
            MemoryStream ms = new MemoryStream();
            StreamWriter writer = new StreamWriter(ms);
            ProtocolInterpreter interpreter = new ProtocolInterpreter(ms);
            string nameRead1 = "", nameRead2 = "";

            interpreter.OnNextReadValue += data =>
            {
                nameRead1 = data[0].Name;
                nameRead2 = data[1].Name;
            };

            interpreter.Start(false);
            
            WriteToMemoryStream(ms, writer, "1 0 Time Seconds\n");
            interpreter.Listen();

            WriteToMemoryStream(ms, writer, "1 1 Torque Nm\n");
            interpreter.Listen();

            WriteToMemoryStream(ms, writer, "3 2.3 5\n");
            interpreter.Listen();

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
            MemoryStream ms = new MemoryStream();
            StreamWriter writer = new StreamWriter(ms);
            ProtocolInterpreter interpreter = new ProtocolInterpreter(ms);
            double valueRead = 0;

            interpreter.OnNextReadValue += data => valueRead = data[0].Value;

            interpreter.Start(false);

            WriteToMemoryStream(ms, writer, "1 0 Time Seconds\n");
            interpreter.Listen();
            
            WriteToMemoryStream(ms, writer, $"3 {value.ToString(new CultureInfo("en-US"))}\n");
            interpreter.Listen();

            Assert.That(valueRead, Is.EqualTo(value));
        }

        [TestCase(5.0)]
        [TestCase(-5.0)]
        [TestCase(0.0)]
        [TestCase(0.852)]
        [TestCase(-0.852)]
        public void OnNextReadValueEvent_OneUnitAndTwoDataPoints_EventCalledWithCorrectDataEndPoints(double value)
        {
            MemoryStream ms = new MemoryStream();
            StreamWriter writer = new StreamWriter(ms);
            ProtocolInterpreter interpreter = new ProtocolInterpreter(ms);
            double valueRead = 0;

            interpreter.OnNextReadValue += data => valueRead = data[0].Value;

            interpreter.Start(false);

            WriteToMemoryStream(ms, writer, "1 0 Time Seconds\n");
            interpreter.Listen();

            WriteToMemoryStream(ms, writer, "3 4.25\n");
            interpreter.Listen();

            WriteToMemoryStream(ms, writer, $"3 {value.ToString(new CultureInfo("en-US"))}\n");
            interpreter.Listen();

            Assert.That(valueRead, Is.EqualTo(value));
        }
    }
}
