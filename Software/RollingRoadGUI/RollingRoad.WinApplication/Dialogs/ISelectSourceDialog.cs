using System;
using RollingRoad.Core.ApplicationServices;
using RollingRoad.Loggers;

namespace RollingRoad.WinApplication.Dialogs
{
    public delegate void RequestDialogCloseEvent(bool success);

    public interface ISelectSourceDialog
    {
        bool ShowDialog();
        event RequestDialogCloseEvent OnClose;
        ILiveDataSource LiveDataSource { get;}
        IDisposable DisposableSource { get;}
        ILogger Logger { get; set; }
    }
}
