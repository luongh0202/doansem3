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
        Repository<product> _product;
        Repository<category> _cat;

        public ProductController()
        {
            _product = new Repository<product>();
            _cat = new Repository<category>();
        }
        public ActionResult Index()
        {
            return View(_product.GetAll());
        }
        public ActionResult Create()
        {
            ViewBag.categoryId = new SelectList(_cat.GetAll(), "id", "categoryName");
            return View();
        }
    }
}