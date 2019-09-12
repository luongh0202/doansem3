namespace LTT.Models.DataModels
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Oder")]
    public partial class Oder
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Oder()
        {
            OderDetails = new HashSet<OderDetail>();
        }

        public int OderId { get; set; }

        [Required]
        [StringLength(50)]
        public string CodeOder { get; set; }

        [Required]
        [StringLength(50)]
        public string CodeProduct { get; set; }

        [Required]
        [StringLength(250)]
        public string UserName { get; set; }

        [Column(TypeName = "text")]
        public string Notes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<OderDetail> OderDetails { get; set; }
    }
}
