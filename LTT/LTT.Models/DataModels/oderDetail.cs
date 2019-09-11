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
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int id { get; set; }

        [Required]
        [StringLength(50)]
        public string codeOder { get; set; }

        [Column(TypeName = "ntext")]
        public string detail { get; set; }

        public int quantity { get; set; }

        public int? oderId { get; set; }

        public int? productId { get; set; }

        public virtual oder oder { get; set; }

        public virtual product product { get; set; }
    }
}
