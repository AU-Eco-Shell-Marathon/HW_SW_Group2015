using System.Diagnostics.CodeAnalysis;
using System.IO;
using RollingRoad.Data;

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
        public static void WriteToFile(string path, IDataset data, string header)
        {
            //Overwrite file if exists or create new
            using (FileStream fileStream = File.Open(path, FileMode.Create, FileAccess.Write))
            {
                StreamWriter writer = new StreamWriter(fileStream);
                CsvDataInterpreter.WriteToStream(writer, data, header);
            }
        }

        /// <exception cref="FileLoadException"></exception>
        /// <exception cref="FileNotFoundException"></exception>
        /// <param name="path">Path of the csv file to load</param>
        public static MemoryDataset LoadFromFile(string path, string header)
        {
            //Source the data will be loaded into
            MemoryDataset data;

            //Check if file exists
            if (!File.Exists(path))
                throw new FileNotFoundException("File not found", path);

            //Open file
            using (FileStream fileStream = File.OpenRead(path))
            {
                StreamReader reader = new StreamReader(fileStream);

                //Read file
                data = CsvDataInterpreter.LoadFromStream(reader, header);
                data.Name = Path.GetFileName(path); //Set filename as datasource name
            }

            //Return data
            return data;
        }
    }
}
