﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace LTT
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class LTTEntities : DbContext
    {
        public LTTEntities()
            : base("name=LTTEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<category> categories { get; set; }
        public virtual DbSet<categoryProduct> categoryProducts { get; set; }
        public virtual DbSet<district> districts { get; set; }
        public virtual DbSet<news> news { get; set; }
        public virtual DbSet<oder> oders { get; set; }
        public virtual DbSet<oderDetail> oderDetails { get; set; }
        public virtual DbSet<product> products { get; set; }
        public virtual DbSet<province> provinces { get; set; }
        public virtual DbSet<shop> shops { get; set; }
        public virtual DbSet<typearea> typeareas { get; set; }
        public virtual DbSet<user> users { get; set; }
        public virtual DbSet<ward> wards { get; set; }
    }
}
