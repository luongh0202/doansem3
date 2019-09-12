namespace LTT.Models.DataModels
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Admin
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int AdminId { get; set; }

        [Required]
        [StringLength(255)]
        public string Account { get; set; }

        [Required]
        [StringLength(255)]
        public string UserName { get; set; }

        [Required]
        [StringLength(255)]
        public string Password { get; set; }

        public int? Groupid { get; set; }

        public bool? UserStatus { get; set; }

        public virtual Group Group { get; set; }
    }
}
