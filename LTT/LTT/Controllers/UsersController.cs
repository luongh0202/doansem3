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
        public JsonResult GetTypeArea (Type t)
        {
            Model1 db = new Model1();

            return Json(db.typeareas.Select(x => new
            {
                typeid = x.id,
                typename = x.typeAreaName

            }).ToList(), JsonRequestBehavior.AllowGet);
        }
        public JsonResult GetProvice()
        {
            Model1 db = new Model1();

            return Json(db.provinces.Select(x => new
            {
                proviceid = x.id,
                provicename = x.provinceName,
                provicetpe = x.typeArea_id

            }).ToList(), JsonRequestBehavior.AllowGet);
        }
        public JsonResult GetDistrict(provinces c)
        {
            Model1 db = new Model1();
            var dis = db.districts
                .Where(x => x.province_id == c.id)
                .Select(x => new
                {
                    districtid = x.id,
                    districtname = x.districtName,
                    districtype = x.typeArea_id
                }).ToList();
            return Json(dis, JsonRequestBehavior.AllowGet);
        }
        public JsonResult GetWards(district d)
        {
            Model1 db = new Model1();

            return Json(db.wards.Select(x => new
            {
                typeid = x.id,
                wardname = x.wardName,
                wardtype = x.typeArea_id

            }).ToList(), JsonRequestBehavior.AllowGet);
        }

    }
}