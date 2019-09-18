namespace LTT.Models.DataModels
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Business")]
    public partial class Business
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Business()
        {
            Grouproles = new HashSet<Grouprole>();
        }

        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int BusinessId { get; set; }

        [Required]
        [StringLength(255)]
        public string Businessname { get; set; }

        public bool Businessstatus { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Grouprole> Grouproles { get; set; }
    }
}
