using System;
using System.Collections.Generic;
using System.IO;


namespace RollingGoal
{
    public class CsvDataSource : IDataSource
    {
        private readonly List<DataList> _data = new List<DataList>(); 

        private CsvDataSource()
        {
            
        }

        public string Name { get; private set; }

        public string Description { get; private set; }

        public DataList GetDataList(string name)
        {

            foreach (var dataList in _data)
            {
                if (dataList.Name == name)
                    return dataList;
            }

            throw new ArgumentException("Name not found");
        }

        public IReadOnlyList<DataList> GetAllData()
        {
            return _data.AsReadOnly();
        }

        /// <exception cref="FileLoadException"></exception>
        /// <exception cref="FileNotFoundException"></exception>
        /// <param name="path">Path of the csv file to load</param>
        public static CsvDataSource LoadFromFile(string path)
        {
            CsvDataSource data = new CsvDataSource();

            if(!File.Exists(path))
                throw new FileNotFoundException("File not found", path);

            using (FileStream fileStream = File.OpenRead(path))
            {
                StreamReader reader = new StreamReader(fileStream);

                if (reader.EndOfStream)
                    throw new FileLoadException("File is empty", path);

                //Read header
                var line = reader.ReadLine();
                string[] names = line.Split(';');

                if (names.Length < 2)
                    throw new FileLoadException("Header is to short", path);

                if (names[0].ToLower() != "shell eco marathon")
                    throw new FileLoadException("Invalid header: " + names[0].ToLower(), path);

                line = reader.ReadLine();
                string[] units = line.Split(';');

                if (units.Length != names.Length)
                    throw new FileLoadException("Unit lenght does not match names", path);

                for (int i = 1; i < names.Length; i++)
                {
                    data._data.Add(new DataList(names[i], units[i]));
                }

                int curLine = 2;
                while (!reader.EndOfStream)
                {
                    line = reader.ReadLine();
                    string[] readData = line.Split(';');

                    if(readData.Length != names.Length)
                        throw new Exception("Error at line " + curLine);

                    for (int i = 1; i < readData.Length; i++)
                    {
                        data._data[i - 1].AddData(double.Parse(readData[i]));
                    }

                    curLine++;
                }

                data.Name = Path.GetFileName(path);
                data.Description = units[0];
            }

            return data;
        }
    }
}
