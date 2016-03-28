using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RollingRoad.Control
{
    public interface IMotorControl
    {
        int CruiseSpeed { get; set; }
        int MaxSpeed { get; set; }
    }
}
