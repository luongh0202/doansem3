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
        [StringLength(10)]
        public string BusinessId { get; set; }

        [Required]
        [StringLength(255)]
        public string Businessname { get; set; }

        public bool Businessstatus { get; set; }
    }
}
