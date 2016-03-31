using System.Windows;
using System.Windows.Controls;
using RollingRoad.WinApplication.ViewModels;

namespace RollingRoad.WinApplication.TemplateSelectors
{
    public class LiveDataControlTemplateSelector : DataTemplateSelector
    {
        public override DataTemplate SelectTemplate(object item, DependencyObject container)
        {
            FrameworkElement element = container as FrameworkElement;

            if (element == null || item == null)
                return null;

            if (item is CalibrateControlViewModel)
                return element.FindResource("CalibrateControlTemplate") as DataTemplate;

            if(item is TorqueControlViewModel)
                return element.FindResource("TorqueControlTemplate") as DataTemplate;

            if(item is PidControlViewModel)
                return element.FindResource("PidControlTemplate") as DataTemplate;

            return null;
        }
    }
}
