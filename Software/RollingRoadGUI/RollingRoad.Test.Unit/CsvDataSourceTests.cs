﻿using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using NUnit.Framework;

namespace RollingRoad.Test.Unit
{
    [TestFixture]
    public class CsvDataSourceTests
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

            Assert.Throws<EndOfStreamException>(() => CsvDataSource.LoadFromStream(reader));
        }

        [Test]
        public void LoadFromStream_IncorrectHeader_ExceptionThrown()
        {
            StreamReader reader = CreateStreamReaderFromString("testtest;type1;type2");

            Assert.Throws<Exception>(() => CsvDataSource.LoadFromStream(reader));
        }

        [Test]
        public void LoadFromStream_CorrectUpperCaseHeader_DatasourceCreated()
        {
            StreamReader reader = CreateStreamReaderFromString("SHELL ECO MARATHON;type1;type2\n;unit1;unit2");

            Assert.That(CsvDataSource.LoadFromStream(reader), Is.Not.Null);
        }

        [Test]
        public void WriteToStream_TypePresentButNoData_DescriptionPresent()
        {
            StringBuilder builder = new StringBuilder();
            TextWriter writer = new StringWriter(builder);
            List<DataList> data = new List<DataList>();
            string testDescription = "testdescription1234";

            data.Add(new DataList("Test", "Test2"));

            CsvDataSource.WriteToStream(writer, data, testDescription);

            Assert.That(writer.ToString(), Does.Contain(testDescription));
        }
    }
}