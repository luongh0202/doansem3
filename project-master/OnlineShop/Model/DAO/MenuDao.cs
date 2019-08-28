using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model.EF;

namespace Model.DAO
{
    public class MenuDao
    {
        DbShopContext db = new DbShopContext();
        public List<Menu> ListGroupById(int groupId)
        {
            return db.Menus.Where(x => x.TypeID == groupId).ToList();
        }
        public ICollection<Menu> ListDisplayById (int groupId)
        {
            var result = db.Menus.Where(x => x.DisplayOrder == null && x.TypeID == groupId).ToList();
            return result;
        }
        
    }
}
