using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Linq;


namespace RollingRoad
{
    /// <summary>
    /// 
    /// </summary>
    public class CsvDataFile
    {

        /// <summary>
        /// No public ctor, must be created by <see cref="LoadFromFile"/>
        /// </summary>
        private CsvDataFile()
        {
            
        }

        /// <summary>
        /// Path of the file opened
        /// </summary>
        public string FilePath { get; private set; } = "Unknown";


        private const string HeaderName = "shell eco marathon";

        /// <summary>
        /// Save datasource to file
        /// </summary>
        /// <param name="path">What path to save the file to</param>
        /// <param name="data">Data to be saved</param>
        public static void WriteToFile(string path, IDataSource data)
        {
            using (FileStream fileStream = File.Open(path, FileMode.Create, FileAccess.Write))
            {
                StreamWriter writer = new StreamWriter(fileStream);

                WriteToStream(writer, data);
            }
        }

        public static void WriteToStream(TextWriter writer, IDataSource source)
        {
            string seperator = ";";
            IReadOnlyList<DataList> data = source.GetAllData();
            int dataLength = data[0].GetData().Count;

            writer.WriteLine(HeaderName + seperator + string.Join(seperator, data.Select(x => x.Name))); //Names
            writer.WriteLine(source.Description + seperator + string.Join(seperator, data.Select(x => x.Unit))); //Units

            //Data
            for (int i = 0; i < dataLength; i++)
            {
                //LINQ Magic
                string stringout = data.Aggregate("", (current, dataList) => current + (";" + dataList.GetData()[i]));

                writer.WriteLine(stringout);
            }
            
            writer.Flush();
        }

        public static MemoryDataSource LoadFromStream(StreamReader reader)
        {

            //Make sure stream is not empty
            if (reader.EndOfStream)
                throw new EndOfStreamException("File is empty");

            //Names/types
            var line = reader.ReadLine();

            if(line == null)
                throw new Exception("First line is empty");

            string[] names = line.Split(';');

            //We need at least to data lists to make a graph 
            if (names.Length < 3)
                throw new Exception("Header is to short");

            //Make sure header name matches (basic check to make not all files are loaded)
            if (names[0].ToLower() != HeaderName)
                throw new Exception("Invalid header: " + names[0].ToLower());

            //Units
            line = reader.ReadLine();
            
            if (line == null)
                throw new Exception("Second line is empty");

            string[] units = line.Split(';');

            //Make sure our unit length matches our amount of names
            if (units.Length != names.Length)
                throw new Exception("Unit lenght does not match names");


            MemoryDataSource data = new MemoryDataSource();

            //Create a new list for each of the units
            for (int i = 1; i < names.Length; i++)
            {
                data.Data.Add(new DataList(names[i], units[i]));
            }

            //We allready read two lines
            int curLine = 3;

            //Read all data
            while (!reader.EndOfStream)
            {
                line = reader.ReadLine();
                
                if (line == null)
                    throw new Exception($"Line {curLine} is empty");

                string[] readData = line.Split(';');

                //No data cell is allowed to be null, so our data must be at least as long as our amount of datatypes
                if (readData.Length < names.Length)
                    throw new Exception("Error at line " + curLine);

                //Parse values
                for (int i = 1; i < readData.Length; i++)
                {
                    data.Data[i - 1].AddData(double.Parse(readData[i], CultureInfo.InvariantCulture));
                }

                //Progress one line
                curLine++;
            }

            //Setup meta info
            data.Description = units[0];

            return data;
        }

        /// <exception cref="FileLoadException"></exception>
        /// <exception cref="FileNotFoundException"></exception>
        /// <param name="path">Path of the csv file to load</param>
        public static MemoryDataSource LoadFromFile(string path)
        {
            MemoryDataSource data;

            if (!File.Exists(path))
                throw new FileNotFoundException("File not found", path);

            using (FileStream fileStream = File.OpenRead(path))
            {
                StreamReader reader = new StreamReader(fileStream);

                data = LoadFromStream(reader);
                data.Name = Path.GetFileName(path);
            }

            return data;
        }
    }
}
