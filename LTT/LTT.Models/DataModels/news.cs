namespace LTT.Models.DataModels
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class news
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
        public string description { get; set; }

        [Required]
        [StringLength(250)]
        public string image { get; set; }

        [StringLength(250)]
        public string video { get; set; }

        [Column(TypeName = "ntext")]
        public string detail { get; set; }
    }
}
