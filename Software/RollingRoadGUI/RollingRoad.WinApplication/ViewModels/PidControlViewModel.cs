﻿using Microsoft.Practices.Prism.Mvvm;
using RollingRoad.Control;

namespace RollingRoad.WinApplication.ViewModels
{
    public class PidControlViewModel : BindableBase
    {
        private readonly IPidControl _control;

        public PidControlViewModel(IPidControl control)
        {
            _control = control;
        }

        public double Kp
        {
            get { return _control.Kp; }
            set
            {
                _control.Kp = value;
                OnPropertyChanged(nameof(Kp));
            }
        }
        public double Ki
        {
            get { return _control.Ki; }
            set
            {
                _control.Ki = value;
                OnPropertyChanged(nameof(Ki));
            }
        }
        public double Kd
        {
            get { return _control.Kp; }
            set
            {
                _control.Kp = value;
                OnPropertyChanged(nameof(Kd));
            }
        }
    }
}