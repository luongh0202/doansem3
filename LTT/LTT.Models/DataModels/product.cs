namespace LTT.Models.DataModels
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Product
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Product()
        {
            Brands = new HashSet<Brand>();
            OderDetails = new HashSet<OderDetail>();
        }

        public int ProductId { get; set; }

        [Required]
        [StringLength(250)]
        public string ProductName { get; set; }

        [Required]
        [StringLength(50)]
        public string CodeProduct { get; set; }

        [StringLength(250)]
        public string ProductDescription { get; set; }

        [StringLength(250)]
        public string ProductImage { get; set; }

        [StringLength(250)]
        public string video { get; set; }

        public double price { get; set; }

        public int quantity { get; set; }

        [Column(TypeName = "ntext")]
        public string detail { get; set; }

        public int? CategoryId { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Brand> Brands { get; set; }

        public virtual Category Category { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<OderDetail> OderDetails { get; set; }
    }
}
