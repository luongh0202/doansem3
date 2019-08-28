namespace LTT.Models.DataModels
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class user
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int id { get; set; }

        [Required]
        [StringLength(255)]
        public string email { get; set; }

        [Required]
        [StringLength(255)]
        public string password { get; set; }

        [Required]
        [StringLength(255)]
        public string name { get; set; }

        [Required]
        [StringLength(255)]
        public string userAvatar { get; set; }

        [Column(TypeName = "date")]
        [DataType(DataType.DateTime)]
        public DateTime? userBirthday { get; set; }

        [Required]
        [StringLength(20)]
        public string userPhone { get; set; }

        [Column(TypeName = "text")]
        public string userProvince { get; set; }

        [Column(TypeName = "text")]
        public string userDistricts { get; set; }

        [Column(TypeName = "text")]
        public string userWard { get; set; }

        [Column(TypeName = "text")]
        public string userAddress { get; set; }

        public bool? userStatus { get; set; }
    }
}
