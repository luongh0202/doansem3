using LTT.BAL.Repositories;
using LTT.Models.DataModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace LTT.Controllers
{
    public class ProductDetailController : Controller
    {
        // GET: ProductDetail
        Repository<Product> _product;
        Repository<Category> _cat;
        public ProductDetailController()
        {
            _product = new Repository<Product>();
            _cat = new Repository<Category>();
        }

        public ActionResult Index()
        {
            return View(_product.GetAll());
        }
        public ActionResult Details(Int32 id)
        {
            ViewBag.CategoryId = new SelectList(_cat.GetAll(), "CategoryId", "CategoryName");
            return View(_product.Get(id));
        }
    }
}