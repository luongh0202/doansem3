using LTT.BAL.Repositories;
using LTT.Models.DataModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace LTT.Controllers
{
    public class NewController : Controller
    {
        Repository<News> _new;
        public NewController()
        {
            _new = new Repository<News>();
        }
        // GET: New
        public ActionResult Index()
        {
            return View(_new.GetAll());
        }
        
    }
}