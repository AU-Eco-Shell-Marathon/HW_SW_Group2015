using System.IO;
using RollingRoad.Core.DomainModel;

namespace RollingRoad.Core.ApplicationServices
{
    interface ICsvHandler
    {
        Dataset Import(Stream stream);
        Stream Export(Dataset set, Stream stream);
    }
}
