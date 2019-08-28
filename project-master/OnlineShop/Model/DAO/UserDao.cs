using Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PagedList;
using System.Web.Mvc;
using Commons;

namespace Model.DAO
{

    public class UserDao
    {
        DbShopContext db = new DbShopContext();
        public UserDao()
        {
           
        }
        public long Insert (User entity)
        {
            db.Users.Add(entity);
            try
            {
                var user = db.Users.Find(entity.ID);
                user.CreatedDate = DateTime.Now;
                db.SaveChanges();
                
            }
            catch (Exception)
            {

                
            }
            return entity.ID;
        }

        public bool Update(User u)
        {
            try
            {
                var user = db.Users.Find(u.ID);
                ////if (!string.IsNullOrEmpty(u.Password))
                ////{
                ////    user.Password = u.Password;
                ////}
                user.Name = u.Name;
                user.Address = u.Address;
                user.Email = u.Email;
                user.Phone = u.Phone;
                user.Birthday = u.Birthday;
                user.ModifiedBy = u.ModifiedBy;
                user.ModifiedDate = DateTime.Now;
                user.Status = u.Status;
                //db.Entry(u).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
                return true;
            }
            catch(Exception)
            {
                return false;
            }
        }

        public int UpdatePassword(long id,string passWord, string passWordNew, string enterPassword)
        {
            
            var result = db.Users.FirstOrDefault(x => x.ID==id);
            if(result == null)
            {
                return -1;
                
            }
            else
            {
                if (result.Password == passWord)
                {
                    if(passWordNew == enterPassword)
                    {
                        result.Password = passWordNew;
                    }
                    
                    db.SaveChanges();
                    return 1;
                }
                else
                {
                    return 0;
                }
            }
            
        }

        public IEnumerable<User> ListAll(string search, int page, int? pagesize)
        {
            IQueryable<User> model = db.Users;
            if (!string.IsNullOrEmpty(search))
            {
                model = model.Where(x=>x.Username.Contains(search) || x.Name.Contains((search)) || x.Phone.Contains((search)));
            }
            return model.OrderByDescending(x=>x.CreatedDate).ToPagedList(page, Convert.ToInt32(pagesize));
        }

        public User GetById(string userName, string phone, string email)
        {
            return db.Users.FirstOrDefault(x => x.Username == userName || x.Phone == phone || x.Email == email);
        }

        public User GetByName(long id)
        {
            return db.Users.FirstOrDefault(x => x.ID == id);
        }

        public User ViewDetail(long id)
        {
            return db.Users.Find(id);
        }

        public List<User> GetUser()
        {


            return db.Users.Where(x => x.ID == x.ID).ToList();

        }

        public List<City> CityListAll()
        {
            
            
            return db.Cities.Where(x=>x.CityID == x.CityID).ToList();
            
        }

        public List<District> DisListAll()
        {
            return db.Districts.Where(x => x.DistrictID == x.DistrictID).ToList();
        }

        public List<Ward> WardListAll()
        {
            return db.Wards.Where(x => x.WardID == x.WardID).ToList();
        }

        public int Login (string userName, string passWord, bool isLoginAdmin = false)
        {
            
                var result = db.Users.SingleOrDefault(x => x.Username == userName);
                if (result == null)
                {
                    return 0;
                }
                else
                {
                if(isLoginAdmin == true)
                {
                    if(result.GroupID == CommonConstants.ADMIN_GROUP || result.GroupID == CommonConstants.MOD_GROUP)
                    {
                        if (result.Status == false)
                        {
                            return -1;
                        }
                        else
                        {
                            if (result.Password == passWord)
                            {
                                return 1;
                            }
                            else
                            {
                                return -2;
                            }
                        }
                    }
                    else
                    {
                        return -3;
                    }
                    
                }
                else
                {
                    if (result.Status == false)
                    {
                        return -1;
                    }
                    else
                    {
                        if (result.Password == passWord)
                        {
                            return 1;
                        }
                        else
                        {
                            return -2;
                        }
                    }
                }
                   

                }
            
            
                
                
           
        }

        public bool delete (int id)
        {
            try
            {
                var user = db.Users.Find(id);
                db.Users.Remove(user);
                db.SaveChanges();
                return true;
            }catch(Exception)
            {
                return false;
            }
            
        }

        public bool ChangeStatus(long id)
        {
            var user = db.Users.Find(id);
            try
            {
                
                user.Status = !user.Status;
                db.SaveChanges();
                
            }catch(Exception)
            {

            }
            return user.Status;
        }
        
        
        
    }
}
