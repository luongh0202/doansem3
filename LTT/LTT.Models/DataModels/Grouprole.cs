namespace LTT.Models.DataModels
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Grouprole")]
    public partial class Grouprole
    {
        [Key]
        [Column(Order = 0)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Groupid { get; set; }

        [Key]
        [Column(Order = 1)]
        [StringLength(10)]
        public string Roleid { get; set; }

        [Key]
        [Column(Order = 2)]
        [StringLength(10)]
        public string Businessid { get; set; }

        public int? GrouproleId { get; set; }

        public virtual Business Business { get; set; }

        public virtual Group Group { get; set; }

        public virtual Role Role { get; set; }
    }
}
