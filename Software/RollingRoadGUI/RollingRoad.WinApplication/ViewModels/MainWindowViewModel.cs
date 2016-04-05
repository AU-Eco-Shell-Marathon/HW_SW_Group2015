﻿using System.Collections.ObjectModel;
using System.Windows;
using System.Windows.Input;
using Microsoft.Practices.Prism.Commands;
using Microsoft.Practices.Prism.Mvvm;
using Microsoft.Research.DynamicDataDisplay.Navigation;

namespace RollingRoad.WinApplication.ViewModels
{
    public class MainWindowViewModel : BindableBase
    {
        public ICommand QuitCommand { get; }
        public ICommand OpenAboutWindowCommand { get; }
        public ObservableCollection<object> Tabs { get; } = new ObjectCollection(); 

        public MainWindowViewModel()
        {
            QuitCommand = new DelegateCommand(Quit);
            OpenAboutWindowCommand = new DelegateCommand(OpenAboutWindow);

            LoggerViewModel vm = new LoggerViewModel();

            Tabs.Add(new LiveDataSourceViewModel() {Logger = vm.Logger});
            Tabs.Add(new DataSetsViewModel());
            Tabs.Add(vm);
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