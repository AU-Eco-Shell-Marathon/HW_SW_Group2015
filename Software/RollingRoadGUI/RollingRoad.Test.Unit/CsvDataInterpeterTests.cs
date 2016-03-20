using System;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Text;
using NUnit.Framework;
using RollingRoad.Data;

namespace RollingRoad.Test.Unit
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

            Assert.Throws<EndOfStreamException>(() => CsvDataInterpreter.LoadFromStream(reader));
        }

        [Test]
        public void LoadFromStream_IncorrectHeader_ExceptionThrown()
        {
            StreamReader reader = CreateStreamReaderFromString("testtest;type1;type2");

            Assert.Throws<Exception>(() => CsvDataInterpreter.LoadFromStream(reader));
        }

        [Test]
        public void LoadFromStream_CorrectUpperCaseHeader_DatasourceCreated()
        {
            StreamReader reader = CreateStreamReaderFromString("SHELL ECO MARATHON;type1;type2\n;unit1;unit2");

            Assert.That(CsvDataInterpreter.LoadFromStream(reader), Is.Not.Null);
        }

        [Test]
        public void LoadFromStream_NoDescriptionInStream_DescriptionIsEmpty()
        {
            StreamReader reader = CreateStreamReaderFromString("SHELL ECO MARATHON;type1;type2\n;unit1;unit2");
            MemoryDataset source = CsvDataInterpreter.LoadFromStream(reader);

            Assert.That(source.Description, Is.Empty.Or.Null);
        }

        [Test]
        public void LoadFromStream_DescriptionInStream_DescriptionLoaded()
        {
            StreamReader reader = CreateStreamReaderFromString("SHELL ECO MARATHON;type1;type2\nTest Description;unit1;unit2");
            MemoryDataset source = CsvDataInterpreter.LoadFromStream(reader);

            Assert.That(source.Description, Is.EqualTo("Test Description"));
        }

        [Test]
        public void LoadFromStream_DataTypeAdded_DatalistWithCorrectNameReturned()
        {
            StreamReader reader = CreateStreamReaderFromString("SHELL ECO MARATHON;type1;type2\nTest Description;unit1;unit2");
            MemoryDataset source = CsvDataInterpreter.LoadFromStream(reader);

            Assert.That(source.GetDataList("type1").Type.Name, Is.EqualTo("type1"));
        }

        [Test]
        public void LoadFromStream_DataTypeAdded_DatalistWithCorrectUnitReturned()
        {
            StreamReader reader = CreateStreamReaderFromString("SHELL ECO MARATHON;type1;type2\nTest Description;unit1;unit2");
            MemoryDataset source = CsvDataInterpreter.LoadFromStream(reader);

            Assert.That(source.GetDataList("type1").Type.Unit, Is.EqualTo("unit1"));
        }

        [Test]
        public void LoadFromStream_DataTypeNotAdded_ExceptionThrown()
        {
            StreamReader reader = CreateStreamReaderFromString("SHELL ECO MARATHON;type1;type2\nTest Description;unit1;unit2");
            MemoryDataset source = CsvDataInterpreter.LoadFromStream(reader);

            Assert.Throws<ArgumentException>(() => source.GetDataList("type3"));
        }
        
        [TestCase(5.0)]
        [TestCase(-5.0)]
        [TestCase(0.0)]
        [TestCase(0.852)]
        [TestCase(-0.852)]
        public void LoadFromStream_DataTypeAddedWithOneDataPoint_FirstDataPointPresent(double data)
        {
            StreamReader reader = CreateStreamReaderFromString($"SHELL ECO MARATHON;type1;type2\nTest Description;unit1;unit2\n;{data.ToString(new CultureInfo("en-US"))};3");
            MemoryDataset source = CsvDataInterpreter.LoadFromStream(reader);
            
            Assert.That(source.GetDataList("type1").GetData().First(), Is.EqualTo(data));
        }

        [TestCase(5.0)]
        [TestCase(-5.0)]
        [TestCase(0.0)]
        [TestCase(0.852)]
        [TestCase(-0.852)]
        public void LoadFromStream_DataTypeAddedWithTWoDataPoints_SecondDataPointPresent(double data)
        {
            StreamReader reader = CreateStreamReaderFromString($"SHELL ECO MARATHON;type1;type2\nTest Description;unit1;unit2\n;1;2\n;{data.ToString(new CultureInfo("en-US"))};3");
            MemoryDataset source = CsvDataInterpreter.LoadFromStream(reader);

            Assert.That(source.GetDataList("type1").GetData()[1], Is.EqualTo(data));
        }

        [Test]
        public void WriteToStream_TypePresentButNoData_DescriptionPresent()
        {
            StringBuilder builder = new StringBuilder();
            TextWriter writer = new StringWriter(builder);
            MemoryDataset dataset = new MemoryDataset();
            string testDescription = "testdescription1234";

            dataset.Description = testDescription;
            dataset.Collection.Add(new DataList(new DataType("Test", "Test2")));

            CsvDataInterpreter.WriteToStream(writer, dataset);

            Assert.That(writer.ToString(), Does.Contain(testDescription));
        }


        [TestCase(5.0, "5")]
        [TestCase(-5.0, "-5")]
        [TestCase(0.0, "0")]
        [TestCase(0.852, "0.852")]
        [TestCase(-0.852, "-0.852")]
        public void WriteToStream_TypePresentButOneDataPoint_DataPresent(double value, string valueString)
        {
            StringBuilder builder = new StringBuilder();
            TextWriter writer = new StringWriter(builder);
            MemoryDataset dataset = new MemoryDataset();
            
            dataset.Collection.Add(new DataList(new DataType("Test", "Test2")));
            dataset.Collection[0].AddData(value);

            CsvDataInterpreter.WriteToStream(writer, dataset);

            Assert.That(writer.ToString(), Does.Contain(valueString));
        }
    }
}
