using System.Collections.ObjectModel;
using System.Windows;
using System.Windows.Input;
using Microsoft.Practices.Prism.Commands;
using Microsoft.Practices.Prism.Mvvm;

namespace RollingRoad.WinApplication.ViewModels
{
    public class MainWindowViewModel : BindableBase
    {
        public ICommand QuitCommand { get; }
        public ICommand OpenAboutWindowCommand { get; }

        public MainWindowViewModel()
        {
            QuitCommand = new DelegateCommand(Quit);
            OpenAboutWindowCommand = new DelegateCommand(OpenAboutWindow);
        }

        private void Quit()
        {
            Application.Current.Shutdown();
        }

        private void OpenAboutWindow()
        {
            AboutWindow window = new AboutWindow();

            window.ShowDialog();
        }
    }
}