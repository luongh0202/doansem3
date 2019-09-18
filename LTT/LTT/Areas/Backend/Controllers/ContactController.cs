using LTT.BAL.Repositories;
using LTT.Models.DataModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace LTT.Areas.Backend.Controllers
{
    public class ContactController : Controller
    {
        Repository<Contact> _contact;
        public ContactController()
        {
            _contact = new Repository<Contact>();
        }
        // GET: Backend/Contact
        public ActionResult Index()
        {
            return View(_contact.GetAll());
        }
        public ActionResult Details(Int32 id)
        {
            return View(_contact.Get(id));
        }
    }
}