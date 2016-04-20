using RollingRoad.Core.DomainModel;
using RollingRoad.Data;

namespace RollingRoad.Infrastructure.DataAccess.Mapping
{
    public class DataSetMap : EntityMap<DataSet>
    {
        public DataSetMap()
        {
            this.Property(t => t.Name)
                .IsRequired();
            this.Property(t => t.Description)
                .IsRequired();

            this.HasMany(x => x.DataLists)
                .WithRequired(x => x.DataSet);

            this.ToTable("DataSet");
        }
    }
}
