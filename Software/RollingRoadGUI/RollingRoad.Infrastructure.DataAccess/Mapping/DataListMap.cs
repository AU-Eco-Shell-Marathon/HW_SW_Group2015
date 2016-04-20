using RollingRoad.Data;

namespace RollingRoad.Infrastructure.DataAccess.Mapping
{
    public class DataListMap : EntityMap<DataList>
    {
        public DataListMap()
        {
            this.Property(x => x.Type.Name)
                .IsRequired();
            this.Property(x => x.Type.Unit)
                .IsRequired();
            this.HasMany(x => x.Data).WithRequired(x => x.DataList);
        }
    }
}
