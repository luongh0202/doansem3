namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Ward")]
    public partial class Ward
    {
        [StringLength(10)]
        public string WardID { get; set; }

        [StringLength(50)]
        public string WardName { get; set; }

        [StringLength(50)]
        public string Type { get; set; }

        [StringLength(10)]
        public string DistrictID { get; set; }
    }
}
