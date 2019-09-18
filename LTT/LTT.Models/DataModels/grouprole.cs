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
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int GroupRoleId { get; set; }

        public int? Groupid { get; set; }

        public int? Roleid { get; set; }

        public int? Businessid { get; set; }

        public bool? Grouprolestatus { get; set; }

        public virtual Business Business { get; set; }

        public virtual Group Group { get; set; }

        public virtual Role Role { get; set; }
    }
}