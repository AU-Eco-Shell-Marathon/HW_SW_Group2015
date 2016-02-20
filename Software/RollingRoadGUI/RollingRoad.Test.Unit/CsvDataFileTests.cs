using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Text;
using NUnit.Framework;

namespace RollingRoad.Test.Unit
{
    [TestFixture]
    public class CsvDataFileTests
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

            Assert.Throws<EndOfStreamException>(() => CsvDataFile.LoadFromStream(reader));
        }

        [Test]
        public void LoadFromStream_IncorrectHeader_ExceptionThrown()
        {
            StreamReader reader = CreateStreamReaderFromString("testtest;type1;type2");

            Assert.Throws<Exception>(() => CsvDataFile.LoadFromStream(reader));
        }

        [Test]
        public void LoadFromStream_CorrectUpperCaseHeader_DatasourceCreated()
        {
            StreamReader reader = CreateStreamReaderFromString("SHELL ECO MARATHON;type1;type2\n;unit1;unit2");

            Assert.That(CsvDataFile.LoadFromStream(reader), Is.Not.Null);
        }

        [Test]
        public void LoadFromStream_NoDescriptionInStream_DescriptionIsEmpty()
        {
            StreamReader reader = CreateStreamReaderFromString("SHELL ECO MARATHON;type1;type2\n;unit1;unit2");
            MemoryDataSource source = CsvDataFile.LoadFromStream(reader);

            Assert.That(source.Description, Is.Empty.Or.Null);
        }

        [Test]
        public void LoadFromStream_DescriptionInStream_DescriptionLoaded()
        {
            StreamReader reader = CreateStreamReaderFromString("SHELL ECO MARATHON;type1;type2\nTest Description;unit1;unit2");
            MemoryDataSource source = CsvDataFile.LoadFromStream(reader);

            Assert.That(source.Description, Is.EqualTo("Test Description"));
        }

        [Test]
        public void LoadFromStream_DataTypeAdded_DatalistWithCorrectNameReturned()
        {
            StreamReader reader = CreateStreamReaderFromString("SHELL ECO MARATHON;type1;type2\nTest Description;unit1;unit2");
            MemoryDataSource source = CsvDataFile.LoadFromStream(reader);

            Assert.That(source.GetDataList("type1").Name, Is.EqualTo("type1"));
        }

        [Test]
        public void LoadFromStream_DataTypeAdded_DatalistWithCorrectUnitReturned()
        {
            StreamReader reader = CreateStreamReaderFromString("SHELL ECO MARATHON;type1;type2\nTest Description;unit1;unit2");
            MemoryDataSource source = CsvDataFile.LoadFromStream(reader);

            Assert.That(source.GetDataList("type1").Unit, Is.EqualTo("unit1"));
        }

        [Test]
        public void LoadFromStream_DataTypeNotAdded_ExceptionThrown()
        {
            StreamReader reader = CreateStreamReaderFromString("SHELL ECO MARATHON;type1;type2\nTest Description;unit1;unit2");
            MemoryDataSource source = CsvDataFile.LoadFromStream(reader);

            Assert.Throws<ArgumentException>(() => source.GetDataList("type3"));
        }
        
        [TestCase(5.0)]
        [TestCase(-5.0)]
        [TestCase(0.0)]
        [TestCase(0.852)]
        [TestCase(-0.852)]
        public void LoadFromStream_DataTypeAddedWithData_DataPresent(double data)
        {
            StreamReader reader = CreateStreamReaderFromString($"SHELL ECO MARATHON;type1;type2\nTest Description;unit1;unit2\n;{data.ToString(new CultureInfo("en-US"))};3");
            MemoryDataSource source = CsvDataFile.LoadFromStream(reader);
            
            Assert.That(source.GetDataList("type1").GetData().First(), Is.EqualTo(data));
        }

        [Test]
        public void WriteToStream_TypePresentButNoData_DescriptionPresent()
        {
            StringBuilder builder = new StringBuilder();
            TextWriter writer = new StringWriter(builder);
            MemoryDataSource data = new MemoryDataSource();
            string testDescription = "testdescription1234";

            data.Description = testDescription;
            data.Data.Add(new DataList("Test", "Test2"));

            CsvDataFile.WriteToStream(writer, data);

            Assert.That(writer.ToString(), Does.Contain(testDescription));
        }
    }
}
