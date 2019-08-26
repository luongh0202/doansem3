namespace LTT.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class typearea
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int id { get; set; }

        [Required]
        [StringLength(255)]
        public string typeAreaName { get; set; }

        [Column(TypeName = "text")]
        public string notes { get; set; }

        public bool? typeAreaStatus { get; set; }
    }
}
