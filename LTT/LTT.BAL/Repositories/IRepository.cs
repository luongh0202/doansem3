using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LTT.BAL.Repositories
{
    public interface IRepository <TEntity> where TEntity : class
    {
        IEnumerable<TEntity> GetAll();
        TEntity Get(Int32 id);
        bool Add(TEntity entity);
        bool Edit(TEntity entity);
        bool Remove(Int32 id);
    }
}
