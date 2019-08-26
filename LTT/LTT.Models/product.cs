namespace LTT.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class product
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int id { get; set; }

        [Required]
        [StringLength(250)]
        public string productName { get; set; }

        [Required]
        [StringLength(50)]
        public string codeProduct { get; set; }

        [Required]
        [StringLength(250)]
        public string productDescription { get; set; }

        [Required]
        [StringLength(250)]
        public string productImage { get; set; }

        [StringLength(250)]
        public string video { get; set; }

        public double price { get; set; }

        public int quantity { get; set; }

        [Column(TypeName = "ntext")]
        public string detail { get; set; }

        public int? categoryProductId { get; set; }

        public int? oderDetailId { get; set; }

        public virtual categoryProduct categoryProduct { get; set; }

        public virtual oderDetail oderDetail { get; set; }
    }
}
