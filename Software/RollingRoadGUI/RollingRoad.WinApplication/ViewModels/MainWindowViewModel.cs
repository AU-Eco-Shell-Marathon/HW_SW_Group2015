using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using Microsoft.Practices.Prism.Commands;
using Microsoft.Practices.Prism.Mvvm;

namespace RollingRoad.WinApplication
{
    public class MainWindowViewModel : BindableBase
    {

        public ICommand QuitCommand { get; set; }
        public ICommand OpenAboutWindowCommand { get; set; }

        public ObservableCollection<object> Tabs { get; }

        public MainWindowViewModel()
        {
            QuitCommand = new DelegateCommand(Quit);
            OpenAboutWindowCommand = new DelegateCommand(OpenAboutWindow);

            Tabs = new ObservableCollection<object>
            {
                new LiveDataSourceViewModel(),
                new DataSetsViewModel(),
                new LoggerViewModel()
            };
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