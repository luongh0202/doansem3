using LTT.BAL.Repositories;
using LTT.Models.DataModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace LTT.Areas.Backend.Controllers
{
    public class OderController : Controller
    {
        Repository<Oder> _oder;
        public OderController()
        {
            _oder = new Repository<Oder>();
        }
        // GET: Backend/Oder
        public ActionResult Index()
        {
            return View(_oder.GetAll());
        }
    }
}