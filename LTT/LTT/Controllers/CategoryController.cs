using LTT.BAL.Repositories;
using LTT.Models.DataModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace LTT.Controllers
{
    public class CategoryController : Controller
    {
        // GET: Category
        Repository<Category> _cat;
        Repository<Product> _product;
        public CategoryController()
        {
            _cat = new Repository<Category>();
            _product = new Repository<Product>();
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