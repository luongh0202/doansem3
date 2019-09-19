using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using LTT.BAL.Repositories;
using LTT.Models;
using LTT.Models.DataModels;
using LTT.Models.ViewModels;

namespace LTT.Controllers
{
    public class UsersController : Controller
    {
        // GET: Users
        Repository<User> _user;
        public UsersController()
        {
            _user = new Repository<User>();
        }
        [HttpGet]
        public ActionResult Login()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Login(UserLogin c)
        {
            if (ModelState.IsValid)
            {
                var _u = _user.GetAll().FirstOrDefault(x => x.Email == c.Email && x.Password == c.Password);
                if (_u != null)
                {
                    Session["user"] = _u;
                    return RedirectToAction("Index", "Home");
                }
                ViewBag.err = "Sai tài khoản hoặc mật khẩu!";
                return View();
            }
            return View();
        }
        public ActionResult Index()
        {
            return View();
        }
        [HttpGet]
        public ActionResult Register()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Register(UserRegister u)
        {
            if (ModelState.IsValid)
            {
                User _u = new User();
                _u.Email = u.Email;
                _u.Name = u.Name;
                _u.UserAddress = u.UserAddress;
                _u.Password = u.Password;
                if (_user.Add(_u))
                {
                    Helper.SendEmail(u.Email, "quantrivienwebsite.bkap@gmail.com", "quantriwebbkap", "[CASTAR]_Đăng ký tài khoản", String.Format(@"
                    <h1>Đăng ký tài khoản thành công!</h1>
                    <b>Email đăng ký: </b> {0}
                    <p>Trân trọng!</p>
                    ", u.Email));
                    return RedirectToAction("Login");
                }
                return View();
            }
            return View();
        }
    }
}