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
        public CategoryController()
        {
            _cat = new Repository<Category>();
        }
        public ActionResult Index()
        {
            return View(_cat.GetAll());
        }
    }
}