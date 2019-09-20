using LTT.Areas.Backend.Models;
using LTT.BAL.Repositories;
using LTT.Models.DataModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace LTT.Areas.Backend.Controllers
{
    public class BusinessesController : BaseController
    {
        Repository<Business> _business;
        public BusinessesController()
        {
            _business = new Repository<Business>();
        }
        // GET: Backend/Businesses
        public ActionResult Index()
        {
            return View(_business.GetAll());
        }
        public ActionResult UpdateBusiness()
        {
            Reflection rf = new Reflection();
            var controllers = rf.GetControllers("LTT.Areas.Backend.Controllers").Select(x => x.Name.Replace("Controller", ""));
            var oldBusiness = _business.GetAll().ToList();
            foreach (var item in controllers)
            {
                if (!oldBusiness.Any(x => x.BusinessId == item))
                {
                    Business b = new Business()
                    {
                        BusinessId = item,
                        Businessname = item,
                        Businessstatus = true
                    };
                    _business.Add(b);
                }
            }
            return RedirectToAction("Index");
        }
    }
}