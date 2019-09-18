namespace LTT.Models.DataModels
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class LTTDBContext : DbContext
    {
        public LTTDBContext()
            : base("name=LTTDBContext")
        {
        }

        public virtual DbSet<Admin> Admins { get; set; }
        public virtual DbSet<Brand> Brands { get; set; }
        public virtual DbSet<Business> Businesses { get; set; }
        public virtual DbSet<Category> Categories { get; set; }
        public virtual DbSet<Contact> Contacts { get; set; }
        public virtual DbSet<Grouprole> Grouproles { get; set; }
        public virtual DbSet<Group> Groups { get; set; }
        public virtual DbSet<News> News { get; set; }
        public virtual DbSet<Oder> Oders { get; set; }
        public virtual DbSet<OderDetail> OderDetails { get; set; }
        public virtual DbSet<Product> Products { get; set; }
        public virtual DbSet<Role> Roles { get; set; }
        public virtual DbSet<Shop> Shops { get; set; }
        public virtual DbSet<User> Users { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Admin>()
                .Property(e => e.Account)
                .IsUnicode(false);

            modelBuilder.Entity<Admin>()
                .Property(e => e.Password)
                .IsUnicode(false);

            modelBuilder.Entity<Category>()
                .Property(e => e.CategoryName)
                .IsUnicode(false);

            modelBuilder.Entity<Category>()
                .Property(e => e.Notes)
                .IsUnicode(false);

            modelBuilder.Entity<Grouprole>()
                .Property(e => e.Roleid)
                .IsFixedLength();

            modelBuilder.Entity<Oder>()
                .Property(e => e.CodeOder)
                .IsUnicode(false);

            modelBuilder.Entity<Oder>()
                .Property(e => e.CodeProduct)
                .IsUnicode(false);

            modelBuilder.Entity<Oder>()
                .Property(e => e.Notes)
                .IsUnicode(false);

            modelBuilder.Entity<OderDetail>()
                .Property(e => e.CodeOder)
                .IsUnicode(false);

            modelBuilder.Entity<Product>()
                .Property(e => e.CodeProduct)
                .IsUnicode(false);

            modelBuilder.Entity<Role>()
                .Property(e => e.RoleId)
                .IsFixedLength();

            modelBuilder.Entity<User>()
                .Property(e => e.Email)
                .IsUnicode(false);

            modelBuilder.Entity<User>()
                .Property(e => e.Password)
                .IsUnicode(false);

            modelBuilder.Entity<User>()
                .Property(e => e.Name)
                .IsUnicode(false);

            modelBuilder.Entity<User>()
                .Property(e => e.UserPhone)
                .IsUnicode(false);

            modelBuilder.Entity<User>()
                .Property(e => e.UserAddress)
                .IsUnicode(false);
        }
    }
}
