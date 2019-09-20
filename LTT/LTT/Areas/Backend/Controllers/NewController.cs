using LTT.BAL.Repositories;
using LTT.Models.DataModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace LTT.Areas.Backend.Controllers
{
    public class NewController : BaseController
    {
        Repository<News> _new;
        public NewController()
        {
            _new = new Repository<News>();
        }
        // GET: Backend/New
        public ActionResult Index()
        {
            return View(_new.GetAll());
        }
        public ActionResult Create()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Create(News n)
        {
            if (ModelState.IsValid)
            {
                if (_new.Add(n))
                {
                    return RedirectToAction("Index");
                }
                return View();
            }
            return View();
        }
        public ActionResult Edit(Int32 id)
        {
            return View(_new.Get(id));
        }
        [HttpPost]
        public ActionResult Edit(News n)
        {
            if (ModelState.IsValid)
            {
                if (_new.Edit(n))
                {
                    return RedirectToAction("Index");
                }
                return View();
            }
            return View();
        }
        public ActionResult Delete(Int32 id)
        {
            _new.Remove(id);
            return RedirectToAction("Index");
        }
    }
}