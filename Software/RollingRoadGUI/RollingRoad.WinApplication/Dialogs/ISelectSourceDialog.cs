using System;
using RollingRoad.Core.ApplicationServices;
using RollingRoad.Loggers;

namespace RollingRoad.WinApplication.Dialogs
{
    public interface ISelectSourceDialog
    {
        bool ShowDialog();
        event EventHandler<bool> OnClose;
        ILiveDataSource LiveDataSource { get;}
        IDisposable DisposableSource { get;}
        ILogger Logger { get; set; }
    }
}
