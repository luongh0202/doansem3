using LTT.BAL.Repositories;
using LTT.Models.DataModels;
using LTT.Models.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace LTT.Controllers
{
    public class CartController : Controller
    {
        // GET: Cart
        Repository<Product> _product;
        public CartController()
        {
            _product = new Repository<Product>();
        }
        
        public ActionResult Index()
        {
            if (Session["cart"] != null)
            {
                var lCart = Session["cart"] as List<CartModel>;
                return View(lCart);
            }
            return RedirectToAction("Index", "Product");
        }
        public ActionResult AddToCart(Int32 id)
        {
            List<CartModel> lCart = new List<CartModel>();
            var product = _product.Get(id);
            if (Session["cart"] != null)
            {
                lCart = Session["cart"] as List<CartModel>;
                var check = false;
                foreach (var item in lCart)
                {
                    if (item.Products.ProductId == product.ProductId)
                    {
                        item.Quantity += 1;
                        check = true;
                        break;
                    }
                }
                    if (!check)
                    {
                        lCart.Add(new CartModel { Products = product, Quantity = 1 });
                    }                
            }
            else
            {
                lCart.Add(new CartModel { Products = product, Quantity = 1 });
            }
            Session["cart"] = lCart;
            return RedirectToAction("Index");
        }
    }
}