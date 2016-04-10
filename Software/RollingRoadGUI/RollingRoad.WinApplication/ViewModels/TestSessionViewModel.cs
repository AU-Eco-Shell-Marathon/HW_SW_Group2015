
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using Microsoft.Practices.Prism.Commands;
using Microsoft.Practices.Prism.Mvvm;
using RollingRoad.Control;
using RollingRoad.Data;
using RollingRoad.Protocols;

namespace RollingRoad.WinApplication.ViewModels
{
    public class TestSessionViewModel : BindableBase
    {
        public enum TestSessionStatus
        {
            Stopped,
            Running
        }

        public DelegateCommand StartStopCommand { get; }
        public ICollection<string> TestSessionList { get; }
        public TestSessionStatus Status { get; }
        public double CurrentTorque { get; private set; }

        public bool IsEnabled { get; }

        public ITorqueControl Control
        {
            get { return _control; }
            set { _control = value; }
        }

        public int SelectedTestSession { get; set; }
        private Dataset TorqueDataset { get; set; }

        public double LastestDistance
        {
            set
            {
                if (!_started)
                    return;

                DataList distanceDataList = TorqueDataset.First(x => x.Type.Name == "Distance");

                int index = distanceDataList.IndexOf(distanceDataList.Min(x => Math.Abs(x - value)));

                _control.SetTorque(TorqueDataset.First(x => x.Type.Name == "Torque").ElementAt(index));
            }
        }

        private bool _started = false;
        private ITorqueControl _control;

        public TestSessionViewModel(ITorqueControl control = null)
        {
            string folder = "TestSessions";

            if (!Directory.Exists(folder))
                Directory.CreateDirectory(folder);

            TestSessionList = Directory.GetFiles(folder).Select(x => x.Substring(folder.Length + 1)).ToList();
            StartStopCommand = new DelegateCommand(StartStop);
            Control = control;
        }

        public void StartStop()
        {
            if (_started)
            {
                _started = false;
            }
            else
            {
                TorqueDataset =
                    CsvDataFile.LoadFromFile("TestSessions/" + TestSessionList.ElementAt(SelectedTestSession),
                        "eco shell marathon torque");

                //Must contain torque and distance info
                if (TorqueDataset.FirstOrDefault(x => x.Type.Name == "Torque") == null ||
                    TorqueDataset.FirstOrDefault(x => x.Type.Name == "Distance") == null)
                {
                    return;
                }

                _started = true;
            }
        }
    }
}
