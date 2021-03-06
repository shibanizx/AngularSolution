﻿using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SeriesAPI.Repository
{
    public class SeriesEntityContext : DbContext
    {
        public SeriesEntityContext(DbContextOptions context) : base(context)
        { }

        public virtual DbSet<Show> Show { get; set; }
        public virtual DbSet<Genre> Genre { get; set; }
        public virtual DbSet<ProductionHouse> ProductionHouse { get; set; }
        public virtual DbSet<OnlineChannel> OnlineChannel { get; set; }
        public virtual DbSet<AudioLanguage> AudioLanguage { get; set; }
        public virtual DbSet<WatchStatus> WatchStatus { get; set; }
        public virtual DbSet<Ratings> Ratings { get; set; }

        public virtual DbSet<GetAllShows_Result> GetAllShows { get; set; }
        public virtual DbSet<GetStatusCount_Result> GetStatusCount { get; set; }
        public virtual DbSet<GetFavoritesByNetwork_Result> GetFavoritesByNetwork { get; set; }
        public virtual DbSet<GetNetworkBasedShowData_Result> GetNetworkBasedShowData { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
                // oClass.csptionsBuilder.UseSqlServer(ConfigurationManager.ConnectionStrings["SeriesDatabase"].ConnectionString);
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
        }
    }
}
