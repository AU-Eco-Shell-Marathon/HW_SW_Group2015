using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;


namespace RollingGoal
{
    public class CSVDataSource : IDataSource
    {
        public List<DataList> _data; 

        private CSVDataSource()
        {
            
        }

        public DataList GetDataList(string name)
        {

            foreach (var dataList in _data)
            {
                if (dataList.Name == name)
                    return dataList;
            }

            throw new ArgumentException("Name not found");
        }

        public IReadOnlyCollection<DataList> GetAllData()
        {
            return _data;
        }

        /// <exception cref="FileLoadException"></exception>
        /// <exception cref="FileNotFoundException"></exception>
        /// <param name="path">Path of the csv file to load</param>
        public static CSVDataSource LoadFromFile(string path)
        {
            if(!File.Exists(path))
                throw new FileNotFoundException("File not found", path);

            using (FileStream fileStream = File.OpenRead(path))
            {
                StreamReader reader = new StreamReader(fileStream);

                if (reader.EndOfStream)
                    throw new FileLoadException("File is empty", path);

                //Read header
                var line = reader.ReadLine();
                string[] values = line.Split(';');

                if (values.Length < 1)
                    throw new FileLoadException("Header is to short", path);


                if (values[0].ToLower() != "shell eco marathon")
                    throw new FileLoadException("Invalid header: " + values[0].ToLower(), path);


                while (!reader.EndOfStream)
                {

                }
            }

            return new CSVDataSource();
        }
    }
}
