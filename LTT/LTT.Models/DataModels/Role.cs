namespace LTT.Models.DataModels
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Role")]
    public partial class Role
    {
        [StringLength(10)]
        public string RoleId { get; set; }

        [Required]
        [StringLength(255)]
        public string Rolename { get; set; }

        public bool Rolestatus { get; set; }
    }
}
