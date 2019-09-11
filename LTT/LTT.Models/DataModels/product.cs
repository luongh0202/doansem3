namespace LTT.Models.DataModels
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class product
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public product()
        {
            brands = new HashSet<brand>();
            oderDetails = new HashSet<oderDetail>();
        }

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

        public int? categoryId { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<brand> brands { get; set; }

        public virtual category category { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<oderDetail> oderDetails { get; set; }
    }
}
