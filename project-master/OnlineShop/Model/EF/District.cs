namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("District")]
    public partial class District
    {
        [StringLength(10)]
        public string DistrictID { get; set; }

        [StringLength(50)]
        public string DistrictName { get; set; }

        [StringLength(50)]
        public string Type { get; set; }

        [StringLength(10)]
        public string CityID { get; set; }
    }
}
