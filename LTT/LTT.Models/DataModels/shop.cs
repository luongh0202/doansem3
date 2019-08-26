namespace LTT.Models.DataModels
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("shop")]
    public partial class shop
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int id { get; set; }

        [StringLength(250)]
        public string description { get; set; }

        [StringLength(250)]
        public string image { get; set; }

        [StringLength(250)]
        public string video { get; set; }

        [Column(TypeName = "ntext")]
        public string detail { get; set; }
    }
}
