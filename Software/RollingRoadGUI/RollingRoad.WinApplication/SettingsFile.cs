using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;

namespace RollingRoad.WinApplication
{

    public class SettingsFile
    {
        //File struture used in the game Norse
        //The first line of every file defines the count of stats
        //Every line below will be in this format:
        //<Name>: <Value> ETC:
        //Total Damage: 2000

        struct Stat
        {
            public string Name;
            public string Value;

            public Stat(string name, string value)
            {
                Name = name;
                Value = value;
            }
        };

        private readonly string _statsFile;
        private readonly List<Stat> _listOfStats = new List<Stat>();

        public SettingsFile(string path)
        {
            if(string.IsNullOrEmpty(path))
                throw  new ArgumentException("Path must not be null or empty");

            _statsFile = path;
            _listOfStats.Add(new Stat());
            LoadStats();
        }

        private void LoadStats()
        {
            if (!File.Exists(_statsFile))
            {
                File.Create(_statsFile).Close();
            }

            StreamReader sr = new StreamReader(_statsFile);

            int count = 0;
            string countString = sr.ReadLine();

            if (int.TryParse(countString, out count))
            {
                for (int i = 0; i < count; i++)
                {
                    string toParse = sr.ReadLine();

                    Stat temp;

                    temp.Name = toParse.Remove(toParse.IndexOf(": "));
                    temp.Value = toParse.Remove(0, toParse.IndexOf(": ") + 2);

                    CheckIfBigEnough(i);

                    _listOfStats[i] = temp;
                }
            }
            else
            {
                if (countString != null)
                    Debug.WriteLine("Invalid stat file @ " + _statsFile);
            }

            sr.Close();
        }

        public void SaveStats()
        {
            StreamWriter sw = new StreamWriter(_statsFile);

            if (_listOfStats != null)
            {
                sw.WriteLine(_listOfStats.Count.ToString());

                foreach (Stat tempStat in _listOfStats)
                {
                    sw.WriteLine(tempStat.Name + ": " + tempStat.Value);
                }
            }
            else
            {
                sw.WriteLine(0.ToString());
                sw.WriteLine("");
            }

            sw.Close();
        }

        public int GetIntStat(string stat)
        {
            try
            {
                return int.Parse(GetStat(stat));
            }
            catch (Exception)
            {

            }

            return 0;
        }

        public void SetFloatStat(string stat, float value)
        {
            SetStat(stat, value.ToString());
        }

        public float GetFloatStat(string i_stat)
        {
            try
            {
                return float.Parse(GetStat(i_stat));
            }
            catch (Exception)
            {
                // ignored
            }

            return 0;
        }

        public void SetIntStat(string stat, int value)
        {
            SetStat(stat, value.ToString());
        }

        public void AddToIntStat(string stat, int value)
        {
            SetIntStat(stat, GetIntStat(stat) + value);
        }

        public void AddToFloatStat(string stat, float value)
        {
            SetFloatStat(stat, GetFloatStat(stat) + value);
        }

        public string GetStat(string stat)
        {
            if (_listOfStats != null)
            {
                foreach (Stat tempStat in _listOfStats)
                {
                    if (tempStat.Name == stat)
                    {
                        return tempStat.Value;
                    }
                }
            }

            return "";
        }

        public void SetStat(string stat, string value)
        {
            int i = 0;
            foreach (Stat tempStat in _listOfStats)
            {
                if (tempStat.Name == stat)
                {
                    _listOfStats[i] = new Stat(_listOfStats[i].Name, value);
                    SaveStats();
                    return;
                }
                i++;
            }

            CheckIfBigEnough(i);

            _listOfStats[i] = new Stat(stat, value);

            SaveStats();
        }

        private void CheckIfBigEnough(int count)
        {
            for (int i = _listOfStats.Count; i < count + 1; i++)
            {
                _listOfStats.Add(new Stat());
            }
        }
    }
}