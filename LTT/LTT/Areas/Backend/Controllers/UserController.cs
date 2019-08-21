using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace LTT.Areas.Backend.Controllers
{
    public class UserController : Controller
    {
        // GET: Backend/User
        public ActionResult Index()
        {
            return View();
        }
    }
}