﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Manheim.Model
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class ManheimEntities : DbContext
    {
        public ManheimEntities()
            : base("name=ManheimEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<Auction> Auctions { get; set; }
        public DbSet<Manager> Managers { get; set; }
        public DbSet<State> States { get; set; }
        public DbSet<PreSale> PreSales { get; set; }
        public DbSet<Vehicle> Vehicles { get; set; }
        public DbSet<VehicleStatus> VehicleStatuses { get; set; }
        public DbSet<Seller> Sellers { get; set; }
        public DbSet<Make> Makes { get; set; }
        public DbSet<Model> Models { get; set; }
        public DbSet<vPreSale> vPreSales { get; set; }
    }
}
