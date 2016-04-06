
namespace RollingRoad.WinApplication
{
    /// <summary>
    /// Interaction logic for App.xaml
    /// </summary>
    public partial class App
    {
        public SettingsFile Settings { get; } = new SettingsFile("Settings.settings");
    }
}
