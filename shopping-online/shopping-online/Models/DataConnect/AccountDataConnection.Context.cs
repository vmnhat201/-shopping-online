﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace shopping_online.Models.DataConnect
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class AccountDBContext : DbContext
    {
        public AccountDBContext()
            : base("name=AccountDBContext")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Account> Accounts { get; set; }
        public virtual DbSet<blog> blogs { get; set; }
        public virtual DbSet<Category> Categories { get; set; }
        public virtual DbSet<Color> Colors { get; set; }
        public virtual DbSet<feedback> feedbacks { get; set; }
        public virtual DbSet<Function> Functions { get; set; }
        public virtual DbSet<Order> Orders { get; set; }
        public virtual DbSet<Order_Details> Order_Details { get; set; }
        public virtual DbSet<Order_status> Order_status { get; set; }
        public virtual DbSet<product> products { get; set; }
        public virtual DbSet<Role> Roles { get; set; }
        public virtual DbSet<Role_function> Role_function { get; set; }
        public virtual DbSet<shipping> shippings { get; set; }
        public virtual DbSet<size> sizes { get; set; }
        public virtual DbSet<slide> slides { get; set; }
        public virtual DbSet<status_product> status_product { get; set; }
        public virtual DbSet<sysdiagram> sysdiagrams { get; set; }
        public virtual DbSet<productsize> productsizes { get; set; }
    }
}
