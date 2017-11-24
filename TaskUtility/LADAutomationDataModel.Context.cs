﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace TaskUtility
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class LADAutomationEntities : DbContext
    {
        public LADAutomationEntities()
            : base("name=LADAutomationEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<User> Users { get; set; }
        public virtual DbSet<Role> Roles { get; set; }
        public virtual DbSet<Country> Countries { get; set; }
        public virtual DbSet<UserCountryRole> UserCountryRoles { get; set; }
        public virtual DbSet<Rule> Rules { get; set; }
        public virtual DbSet<TaskType> TaskTypes { get; set; }
        public virtual DbSet<Task> Tasks { get; set; }
        public virtual DbSet<File> Files { get; set; }
        public virtual DbSet<CarryForwardRules> CarryForwardRules { get; set; }
        public virtual DbSet<EmailTemplate> EmailTemplates { get; set; }
        public virtual DbSet<Email> Emails { get; set; }
        public virtual DbSet<Status> Status { get; set; }
        public virtual DbSet<TaskStatus> TaskStatus { get; set; }
        public virtual DbSet<AuditTrail> AuditTrails { get; set; }
    }
}
