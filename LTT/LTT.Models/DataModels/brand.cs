namespace LTT.Models.DataModels
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Brand")]
    public partial class Brand
    {
        public int BrandId { get; set; }

        [Required]
        [StringLength(250)]
        public string brandName { get; set; }

        public int? ProductId { get; set; }

        public virtual Product Product { get; set; }
    }
}
