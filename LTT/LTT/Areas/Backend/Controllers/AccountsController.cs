//using LTT.BAL.Repositories;
//using LTT.Models.DataModels;
//using LTT.Models.ViewModels;
//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Web;
//using System.Web.Mvc;

//namespace LTT.Areas.Backend.Controllers
//{
//    public class AccountsController : Controller
//    {
//        // GET: Backend/Account
//        Repository<Admin> _admin;
//        Repository<Grouprole> _groupRole;
//        public AccountsController()
//        {
//            _admin = new Repository<Admin>();
//            _groupRole = new Repository<Grouprole>();
//        }
//        public ActionResult Login()
//        {
//            return View();
//        }
//        [HttpPost]
//        public ActionResult Login(AdminLogin ad)
//        {
//            var _ad = _admin.GetAll().FirstOrDefault(x => x.UserName == ad.UserName && x.Password == ad.Password);
//            if (_ad != null)
//            {
//                if (_ad != null)
//                {
//                    Session["admin"] = _ad;
//                    // Lấy danh sách các quyền
//                    var permissions = _groupRole.GetBy(x => x.Groupid == _ad.Groupid).Select(x => x.BusinessId + "_" + x.RoleId).ToList();
//                    Session["roles"] = permissions;
//                    return RedirectToAction("Index", "Home");
//                }
//                return View();
//            }
//            return View();
//        }
//    }
//}