using LTT.BAL.Repositories;
using LTT.Models.DataModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace LTT.Areas.Backend.Controllers
{
    public class OderDetailController : Controller
    {
        Repository<OderDetail> _oderDetail;
        Repository<Oder> _oder;
        Repository<Product> _product;
        public OderDetailController()
        {
            _oderDetail = new Repository<OderDetail>();
            _oder = new Repository<Oder>();
            _product = new Repository<Product>();
        }
        // GET: Backend/OderDetail
        public ActionResult Index()
        {
            return View(_oderDetail.GetAll());
        }
        public ActionResult Edit(Int32 id)
        {
            ViewBag.OderId = new SelectList(_oder.GetAll(), "OderId", "CodeOder");
            ViewBag.ProductId = new SelectList(_product.GetAll(), "ProductId", "ProductName","ProductImage");
            return View(_oderDetail.Get(id));
        }
        [HttpPost]
        public ActionResult Edit(OderDetail od)
        {
            ViewBag.OderId = new SelectList(_oder.GetAll(), "OderId", "CodeOder");
            ViewBag.ProductId = new SelectList(_product.GetAll(), "ProductId", "ProductName","ProductImage");
            if (ModelState.IsValid)
            {
                if (_oderDetail.Edit(od))
                {
                    return RedirectToAction("Index");
                }
                return View();
            }
            return View();
        }
        public ActionResult Details(Int32 id)
        {
            ViewBag.OderId = new SelectList(_oder.GetAll(), "OderId", "CodeOder");
            ViewBag.ProductId = new SelectList(_product.GetAll(), "ProductId", "ProductName", "ProductImage");
            return View(_oderDetail.Get(id));
        }
        public ActionResult Delete(Int32 id)
        {
            _oderDetail.Remove(id);
            return RedirectToAction("Index");
        }
    }
}