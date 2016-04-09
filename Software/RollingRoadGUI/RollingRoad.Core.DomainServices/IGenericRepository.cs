using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Threading.Tasks;

namespace RollingRoad.Core.DomainServices
{
    public interface IGenericRepository<T> : IReadOnlyGenericRepository<T>
    {
        T Create();
        T GetByKey(params object[] key);
        T Insert(T entity);
        void DeleteByKey(params object[] key);
        void Update(T entity);
    }
}
