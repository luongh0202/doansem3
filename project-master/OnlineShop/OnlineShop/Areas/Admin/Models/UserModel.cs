using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using CompareAttribute = System.Web.Mvc.CompareAttribute;

namespace OnlineShop.Areas.Admin.Models
{
    public class UserModel
    {
        public long ID { get; set; }
        [Display(Name ="Mật khẩu cũ")]
        [Required(ErrorMessage = "Bạn chưa nhập mật khẩu")]
        [DataType(DataType.Password)]
        public string Password { get; set; }
        [Display(Name ="Mật khẩu mới")]
        [Required(ErrorMessage = "Bạn chưa nhập mật khẩu mới")]
        [DataType(DataType.Password)]
        public string PasswordNew { get; set; }
        [Display(Name ="Nhập lại mật khẩu")]
        [Required(ErrorMessage = "Bạn chưa nhập lại mật khẩu mới")]
        
        [DataType(DataType.Password)]
        public string EnterPassword { get; set; }
    }
}