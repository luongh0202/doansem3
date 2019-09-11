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

        public virtual DbSet<admin> admins { get; set; }
        public virtual DbSet<brand> brands { get; set; }
        public virtual DbSet<business> businesses { get; set; }
        public virtual DbSet<category> categories { get; set; }
        public virtual DbSet<group> groups { get; set; }
        public virtual DbSet<grouprole> grouproles { get; set; }
        public virtual DbSet<_new> news { get; set; }
        public virtual DbSet<oder> oders { get; set; }
        public virtual DbSet<oderDetail> oderDetails { get; set; }
        public virtual DbSet<product> products { get; set; }
        public virtual DbSet<role> roles { get; set; }
        public virtual DbSet<shop> shops { get; set; }
        public virtual DbSet<user> users { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<admin>()
                .Property(e => e.account)
                .IsUnicode(false);

            modelBuilder.Entity<admin>()
                .Property(e => e.password)
                .IsUnicode(false);

            modelBuilder.Entity<category>()
                .Property(e => e.categoryName)
                .IsUnicode(false);

            modelBuilder.Entity<category>()
                .Property(e => e.notes)
                .IsUnicode(false);

            modelBuilder.Entity<_new>()
                .Property(e => e.codeProduct)
                .IsUnicode(false);

            modelBuilder.Entity<oder>()
                .Property(e => e.codeOder)
                .IsUnicode(false);

            modelBuilder.Entity<oder>()
                .Property(e => e.codeProduct)
                .IsUnicode(false);

            modelBuilder.Entity<oderDetail>()
                .Property(e => e.codeOder)
                .IsUnicode(false);

            modelBuilder.Entity<product>()
                .Property(e => e.codeProduct)
                .IsUnicode(false);

            modelBuilder.Entity<user>()
                .Property(e => e.email)
                .IsUnicode(false);

            modelBuilder.Entity<user>()
                .Property(e => e.password)
                .IsUnicode(false);

            modelBuilder.Entity<user>()
                .Property(e => e.name)
                .IsUnicode(false);

            modelBuilder.Entity<user>()
                .Property(e => e.userPhone)
                .IsUnicode(false);

            modelBuilder.Entity<user>()
                .Property(e => e.userAddress)
                .IsUnicode(false);
        }
    }
}
