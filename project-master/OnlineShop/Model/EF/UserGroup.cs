﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.Spatial;

namespace Model.EF
{
    [Table("UserGroup")]
    public partial class UserGroup
    {
        [Key]
        [StringLength(50)]
        public string UserGroupID { get; set; }
        [StringLength(50)]
        public string RoleID { get; set; }
    }
}
