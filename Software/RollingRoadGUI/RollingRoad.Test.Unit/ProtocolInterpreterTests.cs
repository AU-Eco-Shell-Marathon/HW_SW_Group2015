using System.IO;
using System.Text;
using NUnit.Framework;

namespace RollingRoad.Test.Unit
{
    [TestFixture]
    public class ProtocolInterpreterTests
    {
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

        [Test]
        public void SetTorque_StartedAndTorqueSet_TorqueSent()
        {
            MemoryStream ms = new MemoryStream();
            ProtocolInterpreter interpreter = new ProtocolInterpreter(ms);

            interpreter.Start();
            //Reset memory stream
            ms.SetLength(0);

            interpreter.SetTorque(50);

            Assert.That(Encoding.UTF8.GetString(ms.ToArray()), Is.EqualTo("4 50\n"));
        }

        [Test]
        public void OnNextReadValueEvent_OneUnitAndOneDataPoint_EventCalledWithCorrectTypename()
        {
            MemoryStream ms = new MemoryStream();
            StreamWriter writer = new StreamWriter(ms);
            ProtocolInterpreter interpreter = new ProtocolInterpreter(ms);
            string nameRead = "";

            interpreter.OnNextReadValue += (data) =>
            {
                nameRead = data[0].Name;
            };
            
            interpreter.Start(false);
            ms.SetLength(0);

            writer.Write("1 0 Time Seconds\n");
            writer.Flush();
            ms.Position = 0;
            interpreter.Listen();
            ms.SetLength(0);

            ms.SetLength(0);
            writer.Write("3 2.3\n");
            writer.Flush();
            ms.Position = 0;
            interpreter.Listen();
            ms.SetLength(0);

            Assert.That(nameRead, Is.EqualTo("Time"));
        }

        [Test]
        public void OnNextReadValueEvent_TwoUnitsAndOneDataPoint_EventCalledWithCorrectTypenames()
        {
            MemoryStream ms = new MemoryStream();
            StreamWriter writer = new StreamWriter(ms);
            ProtocolInterpreter interpreter = new ProtocolInterpreter(ms);
            string nameRead1 = "", nameRead2 = "";

            interpreter.OnNextReadValue += (data) =>
            {
                nameRead1 = data[0].Name;
                nameRead2 = data[1].Name;
            };

            interpreter.Start(false);
            ms.SetLength(0);

            writer.Write("1 0 Time Seconds\n");
            writer.Flush();
            ms.Position = 0;
            interpreter.Listen();
            ms.SetLength(0);

            writer.Write("1 1 Torque Nm\n");
            writer.Flush();
            ms.Position = 0;
            interpreter.Listen();
            ms.SetLength(0);

            ms.SetLength(0);
            writer.Write("3 2.3 5\n");
            writer.Flush();
            ms.Position = 0;
            interpreter.Listen();
            ms.SetLength(0);

            Assert.That(nameRead1, Is.EqualTo("Time"));
            Assert.That(nameRead2, Is.EqualTo("Torque"));
        }
    }
}
