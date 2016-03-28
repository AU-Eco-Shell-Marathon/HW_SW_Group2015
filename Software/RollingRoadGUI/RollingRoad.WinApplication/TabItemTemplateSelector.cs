using System.Windows;
using System.Windows.Controls;

namespace RollingRoad.WinApplication
{
    public class TabItemTemplateSelector : DataTemplateSelector
    {
        public DataTemplate LiveDataTab { get; set; }
        public DataTemplate ShowDataTab { get; set; }

        public override DataTemplate SelectTemplate(object item, DependencyObject container)
        {
            FrameworkElement element = container as FrameworkElement;

            if (element != null && item != null)
            {
                if (item is LiveDataSourceViewModel)
                    return element.FindResource("LiveDataTemplate") as DataTemplate;

                if (item is LoggerViewModel)
                    return element.FindResource("LoggerTemplate") as DataTemplate;

                if(item is DataSetsViewModel)
                    return element.FindResource("ViewTemplate") as DataTemplate;
            }

            return null;
        }
    }
}
