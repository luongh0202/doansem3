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
        public ActionResult Edit(Int32 id)
        {
            return View(_oder.Get(id));
        }
        [HttpPost]
        public ActionResult Edit(Oder o)
        {
            if (ModelState.IsValid)
            {
                if (_oder.Edit(o))
                {
                    return RedirectToAction("Index");
                }
                return View();
            }
            return View();
        }
        public ActionResult Details(Int32 id)
        {
            return View(_oder.Get(id));
        }
        public ActionResult Delete(Int32 id)
        {
            _oder.Remove(id);
            return RedirectToAction("Index");
        }
    }
}