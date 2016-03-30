using System.Windows;
using System.Windows.Controls;

namespace RollingRoad.WinApplication.TemplateSelectors
{
    public class LiveDataControlTemplateSelector : DataTemplateSelector
    {
        public override DataTemplate SelectTemplate(object item, DependencyObject container)
        {
            FrameworkElement element = container as FrameworkElement;

            if (element != null && item != null)
            {
                if (item is CalibrateControlViewModel)
                    return element.FindResource("CalibrateControlTemplate") as DataTemplate;
            }

            return null;
        }
    }
}
