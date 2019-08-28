namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("User")]
    public partial class User
    {
        public long ID { get; set; }
        [DatabaseGenerated(DatabaseGeneratedOption.Computed)]
        [StringLength(11)]
        public string UserId { get; set; }
        [StringLength(50)]
        [DisplayName("Tài khoản")]
        [RegularExpression("^(?=.{8,20}$)(?![_.])(?!.*[_.]{2})[a-zA-Z0-9._]+(?![_.])$", ErrorMessage = "TÊn tài khoản không đúng định dạng")]
        [Required(ErrorMessage = "Vui lòng nhập thông tin")]
        public string Username { get; set; }

        [StringLength(32)]
        [DisplayName("Mật khẩu")]
        
        public string Password { get; set; }

        [StringLength(50)]
        [DisplayName("Họ tên")]
        [Required(ErrorMessage = "Vui lòng nhập thông tin")]
        public string Name { get; set; }

        [StringLength(50)]
        public string GroupID { get; set; }

        [StringLength(50)]
        [DisplayName("Địa chỉ")]
        [Required(ErrorMessage = "Vui lòng nhập thông tin")]
        public string Address { get; set; }

        [StringLength(50)]
        [Required(ErrorMessage = "Vui lòng nhập thông tin")]
        [RegularExpression("^[a-z][a-z0-9_\\.]{5,32}@[a-z0-9-]{2,}(\\.[a-z0-9]{2,4}){1,2}$", ErrorMessage = "Email không đúng định dạng")]
        public string Email { get; set; }

        [StringLength(50)]
        [Required(ErrorMessage = "Vui lòng nhập thông tin")]
        [DisplayName("Số điện thoại")]
        [RegularExpression("(09[6-8]|03[2-9])+([0-9]{7})", ErrorMessage = "Số điện thoại không đúng")]
        public string Phone { get; set; }

        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy}", ApplyFormatInEditMode = true)]
        [DisplayName("Ngày sinh")]
        public DateTime? Birthday { get; set; }

        public DateTime? CreatedDate { get; set; }

        [StringLength(50)]
        [DataType(DataType.Date)]
        public string CreatedBy { get; set; }
        [DataType(DataType.Date)]
        public DateTime? ModifiedDate { get; set; }

        [StringLength(50)]
        public string ModifiedBy { get; set; }
        [DisplayName("Trạng thái")]
        public bool Status { get; set; }

        [StringLength(10)]
        public string CityID { get; set; }

        [StringLength(10)]
        public string DistrictID { get; set; }

        [StringLength(10)]
        public string WardID { get; set; }

        public string PassNew { get; set; }

       
    }
}