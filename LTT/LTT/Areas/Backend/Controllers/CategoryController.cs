using LTT.BAL.Repositories;
using LTT.Models.DataModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace LTT.Areas.Backend.Controllers
{
    public class CategoryController : BaseController
    {
        // GET: Backend/Category
        Repository<Category> _cat;
        public CategoryController()
        {
            _cat = new Repository<Category>();
        }
        public ActionResult Index()
        {
            return View(_cat.GetAll());
        }
        public ActionResult Create()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Create(Category c)
        {
            if (ModelState.IsValid)
            {
                if (_cat.Add(c))
                {
                    return RedirectToAction("Index");
                }
                return View();
            }
            return View();
        }
        public ActionResult Edit(Int32 id)
        {
            return View(_cat.Get(id));
        }
        [HttpPost]
        public ActionResult Edit(Category c)
        {
            if (ModelState.IsValid)
            {
                if (_cat.Edit(c))
                {
                    return RedirectToAction("Index");
                }
                return View();
            }
            return View();
        }
        public ActionResult Details(Int32 id)
        {
            return View(_cat.Get(id));
        }
        public ActionResult Delete(Int32 id)
        {
            _cat.Remove(id);
            return RedirectToAction("Index");
        }
    }
}