using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using LTT.Models.DataModels;
using LTT.Models.ViewModels;

namespace LTT.Controllers
{
    public class UsersController : Controller
    {
        // GET: Users
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
            return View();
        }
        public JsonResult GetTypeArea ()
        {
            Model1 db = new Model1();

            return Json(db.typeareas.Select(x => new
            {
                typeid = x.id,
                cityName = x.typeAreaName

            }).ToList(), JsonRequestBehavior.AllowGet);
        }

    }
}