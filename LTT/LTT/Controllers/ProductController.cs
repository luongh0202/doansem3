using LTT.BAL.Repositories;
using LTT.Models.DataModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace LTT.Controllers
{
    public class ProductController : Controller
    {
        // GET: Product
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
    }
}