using LTT.Models.DataModels;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LTT.BAL.Repositories
{
    public class Repository<TEntity> : IRepository<TEntity> where TEntity : class
    {
        protected LTTDB db;
        protected DbSet<TEntity> tbl;
        public Repository()
        {
            db = new LTTDB();
            tbl = db.Set<TEntity>();
        }
        public bool Add(TEntity entity)
        {
            try
            {
                tbl.Add(entity);
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {

                return false;
            }
        }

        public bool Edit(TEntity entity)
        {
            try
            {
                db.Entry(entity).State = EntityState.Modified;
                db.SaveChanges();
                return true;
            }
            catch (Exception ex)
            {

                return false;
            }
        }

        public TEntity Get(Int32 id)
        {
            return tbl.Find(id);
        }

        public IEnumerable<TEntity> GetAll()
        {
            return tbl;
        }

        public bool Remove(Int32 id)
        {
            try
            {
                tbl.Remove(Get(id));
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {

                return false;
            }
        }
    }
}
