using RollingRoad.Core.DomainModel;

namespace RollingRoad.Infrastructure.DataAccess.Mapping
{
    public class DataPointMap : EntityMap<DataPoint>
    {
        public DataPointMap()
        {
            this.Property(x => x.Value)
                .IsRequired();
        }
    }
}
