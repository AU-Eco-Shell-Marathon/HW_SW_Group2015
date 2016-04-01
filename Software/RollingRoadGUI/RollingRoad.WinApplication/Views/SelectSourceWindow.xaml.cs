using System.Windows;
using System.Windows.Input;
using RollingRoad.WinApplication.Dialogs;

namespace RollingRoad.WinApplication
{
    /// <summary>
    /// Interaction logic for SelectSourceWindow.xaml
    /// </summary>
    public partial class SelectSourceWindow : Window
    {
        private ISelectSourceDialog _vm;

        public SelectSourceWindow(ISelectSourceDialog vm)
        {
            _vm = vm;
            _vm.OnClose += OnClose;

            DataContext = _vm;
            InitializeComponent();
        }

        private void OnClose(bool success)
        {
            _vm.OnClose -= OnClose;
            DialogResult = success;
            Close();
        }
    }
}
