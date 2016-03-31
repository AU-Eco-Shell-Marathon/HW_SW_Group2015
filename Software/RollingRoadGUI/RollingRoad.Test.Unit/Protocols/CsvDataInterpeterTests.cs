using System;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Text;
using NUnit.Framework;
using RollingRoad.Data;

namespace RollingRoad.Test.Unit.Protocols
{
    [TestFixture]
    public class CsvDataInterpeterTests
    {
        /// <summary>
        /// https://stackoverflow.com/questions/8047064/convert-string-to-system-io-stream
        /// </summary>
        /// <param name="str">String to convent into stream reader</param>
        /// <returns></returns>
        private StreamReader CreateStreamReaderFromString(string str)
        {
            byte[] byteArray = Encoding.UTF8.GetBytes(str);
            MemoryStream stream = new MemoryStream(byteArray);
            return new StreamReader(stream);
        }

        [Test]
        public void LoadFromStream_EmptyReader_ExceptionThrown()
        {
            StreamReader reader = CreateStreamReaderFromString("");

            Assert.Throws<EndOfStreamException>(() => CsvDataInterpreter.LoadFromStream(reader, "shell eco marathon"));
        }

        [Test]
        public void LoadFromStream_IncorrectHeader_ExceptionThrown()
        {
            StreamReader reader = CreateStreamReaderFromString("testtest;type1;type2");

            Assert.Throws<Exception>(() => CsvDataInterpreter.LoadFromStream(reader, "shell eco marathon"));
        }

        [Test]
        public void LoadFromStream_CorrectUpperCaseHeader_DatasourceCreated()
        {
            StreamReader reader = CreateStreamReaderFromString("SHELL ECO MARATHON;type1;type2\n;unit1;unit2");

            Assert.That(CsvDataInterpreter.LoadFromStream(reader, "shell eco marathon"), Is.Not.Null);
        }

        [Test]
        public void LoadFromStream_NoDescriptionInStream_DescriptionIsEmpty()
        {
            StreamReader reader = CreateStreamReaderFromString("SHELL ECO MARATHON;type1;type2\n;unit1;unit2");
            Dataset source = CsvDataInterpreter.LoadFromStream(reader, "shell eco marathon");

            Assert.That(source.Description, Is.Empty.Or.Null);
        }

        [Test]
        public void LoadFromStream_DescriptionInStream_DescriptionLoaded()
        {
            StreamReader reader = CreateStreamReaderFromString("SHELL ECO MARATHON;type1;type2\nTest Description;unit1;unit2");
            Dataset source = CsvDataInterpreter.LoadFromStream(reader, "shell eco marathon");

            Assert.That(source.Description, Is.EqualTo("Test Description"));
        }

        [Test]
        public void LoadFromStream_DataTypeAdded_DatalistWithCorrectNameReturned()
        {
            StreamReader reader = CreateStreamReaderFromString("SHELL ECO MARATHON;type1;type2\nTest Description;unit1;unit2");
            Dataset source = CsvDataInterpreter.LoadFromStream(reader, "shell eco marathon");

            Assert.That(source.TryGetByName("type1").Type.Name, Is.EqualTo("type1"));
        }

        [Test]
        public void LoadFromStream_DataTypeAdded_DatalistWithCorrectUnitReturned()
        {
            StreamReader reader = CreateStreamReaderFromString("SHELL ECO MARATHON;type1;type2\nTest Description;unit1;unit2");
            Dataset source = CsvDataInterpreter.LoadFromStream(reader, "shell eco marathon");

            Assert.That(source.TryGetByName("type1").Type.Unit, Is.EqualTo("unit1"));
        }

        [Test]
        public void LoadFromStream_DataTypeNotAdded_DatalistNotFound()
        {
            StreamReader reader = CreateStreamReaderFromString("SHELL ECO MARATHON;type1;type2\nTest Description;unit1;unit2");
            Dataset source = CsvDataInterpreter.LoadFromStream(reader, "shell eco marathon");

            Assert.That(source.TryGetByName("type3"), Is.EqualTo(null));
        }
        
        [TestCase(5.0)]
        [TestCase(-5.0)]
        [TestCase(0.0)]
        [TestCase(0.852)]
        [TestCase(-0.852)]
        public void LoadFromStream_DataTypeAddedWithOneDataPoint_FirstDataPointPresent(double data)
        {
            StreamReader reader = CreateStreamReaderFromString($"SHELL ECO MARATHON;type1;type2\nTest Description;unit1;unit2\n;{data.ToString(new CultureInfo("en-US"))};3");
            Dataset source = CsvDataInterpreter.LoadFromStream(reader, "shell eco marathon");
            
            Assert.That(source.TryGetByName("type1").First(), Is.EqualTo(data));
        }

        [Test]
        public void LoadFromStream_DataTypeAddedWithOneScientificDatapointLargeE_FirstDataPointPresent()
        {
            StreamReader reader = CreateStreamReaderFromString($"SHELL ECO MARATHON;type1;type2\nTest Description;unit1;unit2\n;3.0E2;3");
            Dataset source = CsvDataInterpreter.LoadFromStream(reader, "shell eco marathon");

            Assert.That(source.TryGetByName("type1").First(), Is.EqualTo(300));
        }

        [Test]
        public void LoadFromStream_DataTypeAddedWithOneScientificDatapointSmallE_FirstDataPointPresent()
        {
            StreamReader reader = CreateStreamReaderFromString($"SHELL ECO MARATHON;type1;type2\nTest Description;unit1;unit2\n;3.0e2;3");
            Dataset source = CsvDataInterpreter.LoadFromStream(reader, "shell eco marathon");

            Assert.That(source.TryGetByName("type1").First(), Is.EqualTo(300));
        }

        [TestCase(5.0)]
        [TestCase(-5.0)]
        [TestCase(0.0)]
        [TestCase(0.852)]
        [TestCase(-0.852)]
        public void LoadFromStream_DataTypeAddedWithTWoDataPoints_SecondDataPointPresent(double data)
        {
            StreamReader reader = CreateStreamReaderFromString($"SHELL ECO MARATHON;type1;type2\nTest Description;unit1;unit2\n;1;2\n;{data.ToString(new CultureInfo("en-US"))};3");
            Dataset source = CsvDataInterpreter.LoadFromStream(reader, "shell eco marathon");

            Assert.That(source.First(x => x.Type.Name == "type1").ElementAt(1), Is.EqualTo(data));
        }

        [Test]
        public void WriteToStream_TypePresentButNoData_DescriptionPresent()
        {
            StringBuilder builder = new StringBuilder();
            TextWriter writer = new StringWriter(builder);
            Dataset dataset = new Dataset();
            string testDescription = "testdescription1234";

            dataset.Description = testDescription;
            dataset.Add(new DataList(new DataType("Test", "Test2")));

            CsvDataInterpreter.WriteToStream(writer, dataset, "");

            Assert.That(writer.ToString(), Does.Contain(testDescription));
        }


        [TestCase(5.0, "5")]
        [TestCase(-5.0, "-5")]
        [TestCase(0.0, "0")]
        [TestCase(0.852, "0.852")]
        [TestCase(-0.852, "-0.852")]
        public void WriteToStream_TypePresentAndOneDataPoint_DataPresent(double value, string valueString)
        {
            StringBuilder builder = new StringBuilder();
            TextWriter writer = new StringWriter(builder);
            Dataset dataset = new Dataset();
            DataList list = new DataList(new DataType("Test", "Test2"));
            list.Add(value);

            dataset.Add(list);

            CsvDataInterpreter.WriteToStream(writer, dataset, "");

            Assert.That(writer.ToString(), Does.Contain(valueString));
        }
    }
}
