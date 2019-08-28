using Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.DAO
{
    public class ContentDao
    {
        DbShopContext db = new DbShopContext();
        public ContentDao()
        {

        }
        public Content GetById(int id)
        {
            return db.Contents.FirstOrDefault(x => x.ID == id);
        }
        public long Insert(Content ct)
        {
            db.Contents.Add(ct);
            db.SaveChanges();
            return ct.ID;
        }
    }
}
