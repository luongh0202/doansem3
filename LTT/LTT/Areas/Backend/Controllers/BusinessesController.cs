﻿using LTT.Areas.Backend.Models;
using LTT.BAL.Repositories;
using LTT.Models.DataModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace LTT.Areas.Backend.Controllers
{
    public class BusinessesController : Controller
    {
        // GET: Backend/Businesses
        Repository<Business> _business;
        public BusinessesController()
        {
            _business = new Repository<Business>();
        }
        public ActionResult Index()
        {
            return View(_business.GetAll());
        }
        public ActionResult UpdateBusiness()
        {
            Reflection rf = new Reflection();
            var controllers = rf.GetControllers("LTT.Areas.Backend.Controllers").Select(x => x.Name);
            var oldBusiness = _business.GetAll();

            foreach (var item in controllers)
            {
                if(!oldBusiness.Any(x => x.BusinessId == item))
                {
                    Business b = new Business()
                    {
                        BusinessId = item,
                        Businessname = "Dang cap nhat",
                        Businessstatus = true
                    };
                    _business.Add(b);
                }
            }
            return RedirectToAction("Index");
        }
    }
}