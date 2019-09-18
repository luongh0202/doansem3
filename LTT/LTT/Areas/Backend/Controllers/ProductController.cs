using LTT.BAL.Repositories;
using LTT.Models.DataModels;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace LTT.Areas.Backend.Controllers
{
    public class ProductController : Controller
    {
        // GET: Backend/Product
        Repository<Product> _product;
        Repository<Category> _cat;

        public ProductController()
        {
            _product = new Repository<Product>();
            _cat = new Repository<Category>();
        }
        public ActionResult Index()
        {
            return View(_product.GetAll());
        }
        public ActionResult Create()
        {
            ViewBag.categoryId = new SelectList(_cat.GetAll(), "CategoryId", "CategoryName");
            return View();
        }
        [HttpPost]
        public ActionResult Create(Product p)
        {
            ViewBag.categoryId = new SelectList(_cat.GetAll(), "CategoryId", "CategoryName");
            if (ModelState.IsValid)
            {
                if (_product.Add(p))
                {
                    return RedirectToAction("Index");
                }
                return View();
            }
            
            return View();
        }
        public ActionResult Edit(Int32 id)
        {
            ViewBag.CategoryId = new SelectList(_cat.GetAll(), "CategoryId", "CategoryName");
            return View(_product.Get(id));
        }
        [HttpPost]
        public ActionResult Edit( Product p)
        {
            ViewBag.CategoryId = new SelectList(_cat.GetAll(), "CategoryId", "CategoryName");
            if (ModelState.IsValid)
            {
                if (_product.Edit(p))
                {
                    return RedirectToAction("Index");
                }
                return View();
            }
            return View();
        }
        public ActionResult Details(Int32 id)
        {
            ViewBag.CategoryId = new SelectList(_cat.GetAll(), "CategoryId", "CategoryName");
            return View(_product.Get(id));
        }
        public ActionResult Delete(Int32 id)
        {
            _product.Remove(id);
            return RedirectToAction("Index");
        }
    }
}