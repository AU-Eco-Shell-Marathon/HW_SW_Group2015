using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Threading.Tasks;

namespace RollingRoad.Core.DomainServices
{
    public interface IReadOnlyGenericRepository<T>
    {
        IEnumerable<T> Get(
            Expression<Func<T, bool>> filter = null,
            Func<IQueryable<T>, IOrderedQueryable<T>> orderBy = null,
            string includeProperties = "",
            int? page = null,
            int? pageSize = null);
        Task<IEnumerable<T>> GetAsync(
            Expression<Func<T, bool>> filter = null,
            Func<IQueryable<T>, IOrderedQueryable<T>> orderBy = null,
            string includeProperties = "",
            int? page = null,
            int? pageSize = null);
        IQueryable<T> AsQueryable();
        Task<T> GetByKeyAsync(params object[] key);
        int Count(Expression<Func<T, bool>> filter = null);
        Task<int> CountAsync(Expression<Func<T, bool>> filter = null);
    }
}
