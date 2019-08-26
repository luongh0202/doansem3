namespace LTT.Models.DataModels
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("oderDetail")]
    public partial class oderDetail
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public oderDetail()
        {
            products = new HashSet<product>();
        }

        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int id { get; set; }

        [Required]
        [StringLength(50)]
        public string codeOder { get; set; }

        [Required]
        [StringLength(50)]
        public string codeProduct { get; set; }

        [Required]
        [StringLength(250)]
        public string productName { get; set; }

        [Required]
        [StringLength(250)]
        public string userName { get; set; }

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

        public int? oderId { get; set; }

        public virtual oder oder { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<product> products { get; set; }
    }
}
