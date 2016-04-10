
using System;
using System.Globalization;
using System.IO;
using System.Windows;
using RollingRoad.Loggers;

namespace RollingRoad.WinApplication
{
    /// <summary>
    /// Interaction logic for App.xaml
    /// </summary>
    public partial class App : Application
    {
        public SettingsFile Settings { get; } = new SettingsFile("Settings.settings");
        public ILogger Logger { get; }

        public App()
        {
            if (!Directory.Exists("Logs"))
                Directory.CreateDirectory("Logs");

            Logger = new FileLogger("Logs/log" + DateTime.Now.ToString("yyyyddMMHHmmss", CultureInfo.InvariantCulture) + ".log");

            AppDomain.CurrentDomain.UnhandledException += CatchException;
        }

        void CatchException(object sender, UnhandledExceptionEventArgs args)
        {
            Exception e = (Exception) args.ExceptionObject;
            
            Logger.WriteLine(e.Message + ": " + e.StackTrace);
        }


        void App_Startup(object sender, StartupEventArgs args)
        {
            try
            {
                MainWindow mainWin = new MainWindow();
                mainWin.Show();
            }
            catch (Exception e)
            {
                Logger.WriteLine(e.Message + ": " + e.StackTrace);
                throw;
            }
        }
    }
}
