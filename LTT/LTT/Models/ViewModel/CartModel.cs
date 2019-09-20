using LTT.Models.DataModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LTT.Models.ViewModel
{
    public class CartModel
    {
        public Product Products { get; set; }
        public int Quantity { get; set; }
    }
}