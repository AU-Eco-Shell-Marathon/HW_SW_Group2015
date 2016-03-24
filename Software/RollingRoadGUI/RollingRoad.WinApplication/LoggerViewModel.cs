using System;
using System.Collections.ObjectModel;
using System.Globalization;
using Microsoft.Practices.Prism.Mvvm;

namespace RollingRoad.WinApplication
{
    public class LoggerViewModel : BindableBase
    {
        public ObservableCollection<Tuple<string, string>> Log { get; } = new ObservableCollection<Tuple<string, string>>();
        
        public ILogger Logger { get; }

        public LoggerViewModel()
        {
            Logger = new EventLogger();
            Logger.OnLog += WriteLine;

            Logger.WriteLine("Program started");
        }

        public void WriteLine(string line)
        {
            Log.Add(new Tuple<string, string>(DateTime.Now.ToString("MM/dd/yyyy HH:mm:ss.fff", CultureInfo.InvariantCulture), line));
        }

        public override string ToString()
        {
            return "Log";
        }
    }
}
