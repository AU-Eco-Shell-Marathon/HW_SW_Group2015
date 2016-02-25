using System.Diagnostics.CodeAnalysis;
using System.IO;

namespace RollingRoad
{
    [ExcludeFromCodeCoverage]
    public static class CsvDataFile
    {
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

                CsvDataInterpreter.WriteToStream(writer, data);
            }
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

                data = CsvDataInterpreter.LoadFromStream(reader);
                data.Name = Path.GetFileName(path);
            }

            return data;
        }
    }
}
