using Model.DAO;
using Model.EF;
using OnlineShop.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PagedList;
using OnlineShop.Areas.Admin.Models;
using System.Web.Script.Serialization;

namespace OnlineShop.Areas.Admin.Controllers
{
    public class UserController : Controller
    {
        DbShopContext db = new DbShopContext();
        // GET: Admin/User
        public ActionResult Index(User u,string search, int page = 1, int pagesize = 1)
        {
            var dao = new UserDao();
            var model = dao.ListAll(search, page, pagesize);
            ViewBag.search = search;
            ViewBag.CurrentPage = page;
            return View(model);
        }
        [HttpGet]
        public ActionResult Create(string id)
        {
            SetViewBag(id);
           
            return View();
        }
        public ActionResult Edit(int id, int page)
        {
            ViewBag.CurrentPage = page;
            var user = new UserDao().ViewDetail(id);
            return View(user);
        }
        [HttpGet]
        public ActionResult EditPassword()
        {
            UserModel um = new UserModel();
            return View(um);
        }
        [HttpPost]
        public ActionResult Create(User u)
        {
            if (ModelState.IsValid)
            {
                var dao = new UserDao();
                var md5 = Encryptor.MD5Hash(u.Password);
                u.Password = md5;

                if (dao.GetById(u.Username,null,null) != null)
                {
                    ModelState.AddModelError("","Tên tài khoản đã tồn tại");
                }
                
                else
                {
                    long id = dao.Insert(u);
                    
                    if (id > 0)
                    {
                        return RedirectToAction("Index", "User");
                    }
                    else
                    {
                        ModelState.AddModelError("", "Thêm mới không thành công");

                    }
                }
                
            }
            return View(u);
        }
        [HttpPost]
        public ActionResult Edit(User u, int page)
        {
            if (ModelState.IsValid)
            {
                var dao = new UserDao();
                //if (!string.IsNullOrEmpty(u.Password))
                //{
                //    var md5 = Encryptor.MD5Hash(u.Password);
                //    u.Password = md5;
                //}

                var id = dao.Update(u);
                if (id)
                {
                    return RedirectToAction("Index", "User",new { page = page});

                }
                else
                {
                    ModelState.AddModelError("", "Cập nhật không thành công");
                }


            }
            return View(u);
        }

        [HttpPost]
        public ActionResult EditPassword(UserModel u)
        {
            if (ModelState.IsValid)
            {
                var dao = new UserDao();
                var result = dao.UpdatePassword(u.ID, Encryptor.MD5Hash(u.Password), Encryptor.MD5Hash(u.PasswordNew), Encryptor.MD5Hash(u.EnterPassword));
                var md5new = Encryptor.MD5Hash(u.PasswordNew);
                u.PasswordNew = md5new;
                var entermd5new = Encryptor.MD5Hash(u.EnterPassword);
                u.EnterPassword = entermd5new;
                if (result == 1)
                {
                    var user = dao.GetByName(u.ID);
                    if (u.PasswordNew != u.EnterPassword)
                    {
                        ModelState.AddModelError("", "Mật khẩu mới không khớp");
                    }
                    else
                    {
                        user.Password = md5new;
                        return RedirectToAction("Index", "User", "Index");
                    }


                }
                else if (result == 0)
                {
                    ModelState.AddModelError("", "Mật khẩu cũ không đúng");
                }
                else if (result == -1)
                {
                    ModelState.AddModelError("", "Mật khẩu cũ không đúng");
                }
            }
            return View();


        }
        [HttpDelete]
        public ActionResult Delete(int id)
        {
            new UserDao().delete(id);
            
            return RedirectToAction("Index");
        }
        [HttpDelete]
        public JsonResult Remove(int id)
        {
            new UserDao().delete(id);
            return Json(db.Users.Select(x => new {
                id = x.ID,
                user = x.Username,
                name = x.Name,
                address = x.Address,
                email = x.Email,
                phone = x.Phone,
                status = x.Status
            }), JsonRequestBehavior.AllowGet);
        }
        public JsonResult GetDetail(int id)
        {
            var user = new UserDao().ViewDetail(id);
            return Json(new
            {
                data = user,
                status = true
            }, JsonRequestBehavior.AllowGet);
        }
        [HttpPost]
        public JsonResult ChangeStatus(long id)
        {
            var result = new UserDao().ChangeStatus(id);
            var user = new UserDao().ViewDetail(id);
            return Json(new
            {
                data = user,
                status = result
            }, JsonRequestBehavior.AllowGet);
        }

        public JsonResult Update(string id)
        {
            DbShopContext db = new DbShopContext();
            JavaScriptSerializer serializer = new JavaScriptSerializer();
            User u = serializer.Deserialize<User>(id);
            if (u.ID != 0)
            {
                var user = db.Users.Find(u.ID);
                user.Name = u.Name;
                user.Address = u.Address;
                user.Email = u.Email;
                user.Phone = u.Phone;
                user.CityID = u.CityID;
                user.DistrictID = u.DistrictID;
                user.WardID = u.WardID;
                if(user.PassNew != null)
                {
                    user.Password = Encryptor.MD5Hash(user.PassNew);
                }
                db.SaveChanges();
            }
            return Json(new {
                data = u
            },JsonRequestBehavior.AllowGet);
        }

        public JsonResult UpdatePassword(string id)
        {
            DbShopContext db = new DbShopContext();
            JavaScriptSerializer serializer = new JavaScriptSerializer();
            User u = serializer.Deserialize<User>(id);
            if (u.ID != 0)
            {
                var user = db.Users.Find(u.ID);
                user.PassNew = u.PassNew;
                db.SaveChanges();
            }
            return Json(new
            {
                data = u
            }, JsonRequestBehavior.AllowGet);
        }

        public JsonResult getCity()
        {

            DbShopContext db = new DbShopContext();

            return Json(db.Cities.Select(x => new
            {
                cityID = x.CityID,
                cityName = x.CityName

            }).ToList(), JsonRequestBehavior.AllowGet);
        }
        public JsonResult getDistrict(City c)
        {

            DbShopContext db = new DbShopContext();
            var dis = db.Districts
                .Where(x => x.CityID == c.CityID)
                .Select(x => new
                {
                    districtID = x.DistrictID,
                    districtName = x.DistrictName
                }).ToList();
            return Json(dis, JsonRequestBehavior.AllowGet);
        }

        public JsonResult getWard(District d)
        {
            DbShopContext db = new DbShopContext();
            var war = db.Wards
                .Where(x => x.DistrictID == d.DistrictID)
                .Select(x => new
                {
                    wardID = x.WardID,
                    wardName = x.WardName
                }).ToList();
            return Json(war, JsonRequestBehavior.AllowGet);
        }
        public void SetViewBag(string selectedId)
        {
            var dao = new UserDao();

            ViewBag.CityID = new SelectList(dao.CityListAll(), "CityID", "CityName", selectedId);
            ViewBag.DistrictID = new SelectList(dao.DisListAll(), "DistrictID", "DistrictName", selectedId);
            ViewBag.WardID = new SelectList(dao.WardListAll(), "WardID", "WardName", selectedId);
        }
        public ActionResult Profiled()
        {
            return View();
        }
        public ActionResult test()
        {
            return View();
        }
        

    }
}