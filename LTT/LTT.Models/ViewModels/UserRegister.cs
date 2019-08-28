using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LTT.Models.ViewModels
{
    public class UserRegister
    {
        [Required]
        public string email { get; set; }
        [Required]
        public string password { get; set; }
        [Required]
        [Compare("password")]
        public string repassword { get; set; }
        [Required]
        public string name { get; set; }
        public string userAvatar { get; set; }

        [DataType(DataType.Date)]
        public DateTime? userBirthday { get; set; }
        [Required]
        public string userPhone { get; set; }
        [Required]
        public string userProvince { get; set; }
        [Required]
        public string userDistricts { get; set; }
        [Required]
        public string userWard { get; set; }
        [Required]
        public string userAddress { get; set; }
        public bool? userStatus { get; set; }

    }
}
