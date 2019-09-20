using LTT.BAL.Repositories;
using LTT.Models.DataModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace LTT.Controllers
{
    public class ContactController : Controller
    {
        Repository<Contact> _contact;
        public ContactController()
        {
            _contact = new Repository<Contact>();
        }
        // GET: Contact
        public ActionResult Index()
        {
            return View(_contact.GetAll());
        }
        public ActionResult Create()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Create(Contact c)
        {
            if (ModelState.IsValid)
            {
                if (_contact.Add(c))
                {
                    return RedirectToAction("Index","Home");
                }
                return View();
            }
            return View();
        }
    }
}