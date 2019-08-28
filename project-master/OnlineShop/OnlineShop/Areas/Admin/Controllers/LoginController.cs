using Model.DAO;
using OnlineShop.Areas.Admin.Models;
using OnlineShop.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace OnlineShop.Areas.Admin.Controllers
{
    public class LoginController : Controller
    {
        // GET: Admin/Login
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Login(LoginModel lm)
        {
            if (ModelState.IsValid)
            {
                var dao = new UserDao();
                var result = dao.Login(lm.Username, Encryptor.MD5Hash(lm.Password),true);
                if (result == 1)
                {
                    var user = dao.GetById(lm.Username, null, null);
                    var userSession = new UserLogin();
                    Session["name"] = user.Username;
                    Session["id"] = user.ID;
                    userSession.Username = user.Username;
                    userSession.UserID = user.ID;
                    Session.Add(CommonConstant.USER_SESSION,userSession);
                    return RedirectToAction("Index","Home");
                }
                else if(result == 0)
                {
                    ModelState.AddModelError("", "Tài khoản không đúng");
                }
                else if (result == -1)
                {
                    ModelState.AddModelError("", "Tài khoản đang bị khóa");
                }
                else if (result == -2)
                {
                    ModelState.AddModelError("", "Mật khẩu không đúng");
                }
                else if (result == -3)
                {
                    ModelState.AddModelError("", "Bạn không có quyền truy cập");
                }
                else
                {
                    ModelState.AddModelError("", "Đăng nhập không thành công");
                }
            }
            return View("Index");
        }
        public ActionResult LogOut()
        {
            int id = Convert.ToInt32(Session["id"]);
            Session.Abandon();
            return RedirectToAction("Index", "Login");
        }
    }
}