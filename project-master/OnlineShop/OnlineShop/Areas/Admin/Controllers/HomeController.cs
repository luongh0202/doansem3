using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Model.DAO;
using Model.EF;

namespace OnlineShop.Areas.Admin.Controllers
{
    public class HomeController : Controller
    {
        // GET: Admin/Home
        public ActionResult Index()
        {
            return View();
        }
        [ChildActionOnly]
        public ActionResult _LeftMenu()
        {
            var model = new MenuDao().ListGroupById(1);
            return PartialView(model);
        }
        [ChildActionOnly]
        public ActionResult _MenuTop(Menu m)
        {
            ViewBag.Menu = new MenuDao().ListDisplayById(2);
            
            return PartialView();
        }
        public ActionResult Details(long id)
        {
            
            ViewBag.Detail = new UserDao().ViewDetail(id);
            return View(ViewBag.Detail);
        }
    }
}

//public static class MyUtil
//{
//    public static string MyUtilMethod(int displayOrder)
//    {
//        var model = new MenuDao().ListDisplayById(displayOrder, 2);
//        string result = "";
//        result += "<div>";
//        result += "123123123123";
//        result += "</div>";
//        return result;
//    }
//}