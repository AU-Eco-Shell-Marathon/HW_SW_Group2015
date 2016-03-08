using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Globalization;
using System.Linq;
using System.Windows;
using Microsoft.Research.DynamicDataDisplay;
using Microsoft.Win32;

namespace RollingRoad.WinApplication
{
    /// <summary>
    /// Interaction logic for LiveDataTab.xaml
    /// </summary>
    public partial class LoggerTab
    {
        public ObservableCollection<Tuple<string, string>> Log { get; } = new ObservableCollection<Tuple<string, string>>();

        private ILogger _logger;
        public ILogger Logger {
            get { return _logger; }
            set
            {
                if (_logger != null)
                    _logger.OnLog -= WriteLine;

                _logger = value;

                if (_logger != null)
                    _logger.OnLog += WriteLine;
            }
        }

        public LoggerTab()
        {
            InitializeComponent();
        }
        
        public void WriteLine(string line)
        {
            try
            {
                Dispatcher?.Invoke(() => WriteLineCorrectThread(line));
            }
            catch (Exception)
            {
                // ignored
            }
        }

        public void WriteLineCorrectThread(string line)
        {
            Log.Add(new Tuple<string, string>(DateTime.Now.ToString("MM/dd/yyyy HH:mm:ss.fff", CultureInfo.InvariantCulture), line));
        }
    }
}
