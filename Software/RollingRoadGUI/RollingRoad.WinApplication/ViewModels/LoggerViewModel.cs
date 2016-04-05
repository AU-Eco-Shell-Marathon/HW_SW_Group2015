using System;
using System.Collections.ObjectModel;
using System.Globalization;
using System.Windows;
using System.Windows.Threading;
using Microsoft.Practices.Prism.Mvvm;
using RollingRoad.Loggers;

namespace RollingRoad.WinApplication.ViewModels
{
    public class LoggerViewModel : BindableBase
    {
        public ObservableCollection<Tuple<string, string>> Log { get; } = new ObservableCollection<Tuple<string, string>>();
        
        public ILogger Logger { get; }

        public LoggerViewModel()
        {
            Logger = new EventLogger();
            Logger.OnLog += WriteLine;

            Logger.WriteLine("Logger started");
        }

        public void WriteLine(string line)
        {
            Application.Current.Dispatcher.BeginInvoke(DispatcherPriority.Input, new Action(() => Log.Add(new Tuple<string, string>(DateTime.Now.ToString("MM/dd/yyyy HH:mm:ss.fff", CultureInfo.InvariantCulture), line))));
        }

        public override string ToString()
        {
            return "Log";
        }
    }
}
