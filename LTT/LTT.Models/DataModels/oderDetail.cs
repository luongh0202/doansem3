namespace LTT.Models.DataModels
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("OderDetail")]
    public partial class OderDetail
    {
        public int OderDetailId { get; set; }

        [Required]
        [StringLength(50)]
        public string CodeOder { get; set; }

        [Column(TypeName = "ntext")]
        public string Detail { get; set; }

        public int Quantity { get; set; }

        public int? OderId { get; set; }

        public int? ProductId { get; set; }

        public virtual Oder Oder { get; set; }

        public virtual Product Product { get; set; }
    }
}
