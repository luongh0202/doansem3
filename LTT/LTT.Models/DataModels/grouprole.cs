namespace LTT.Models.DataModels
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("grouprole")]
    public partial class grouprole
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int id { get; set; }

        public int? groupid { get; set; }

        public int? roleid { get; set; }

        public int? businessid { get; set; }

        public bool? grouprolestatus { get; set; }

        public virtual business business { get; set; }

        public virtual group group { get; set; }

        public virtual role role { get; set; }
    }
}
