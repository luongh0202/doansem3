using LTT.BAL.Repositories;
using LTT.Models.DataModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace LTT.Controllers
{
    public class HomeController : Controller
    {
        Repository<Category> _cat;
        public HomeController()
        {
            _cat = new Repository<Category>();
        }
        public ActionResult Index()
        {
            return View(_cat.GetAll());
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}