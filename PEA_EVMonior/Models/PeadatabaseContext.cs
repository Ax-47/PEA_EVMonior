using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;
using Pomelo.EntityFrameworkCore.MySql.Scaffolding.Internal;

namespace PEA_EVMonior.Models;

public partial class PeadatabaseContext : DbContext
{
    public PeadatabaseContext()
    {
    }

    public PeadatabaseContext(DbContextOptions<PeadatabaseContext> options)
        : base(options)
    {
    }

    public virtual DbSet<ElectricityDatum> ElectricityData { get; set; }

    public virtual DbSet<Request> Requests { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        => optionsBuilder.UseMySql("server=localhost;port=3306;database=PEADatabase;user=root;password=password", Microsoft.EntityFrameworkCore.ServerVersion.Parse("11.3.2-mariadb"));

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder
            .UseCollation("utf8mb4_general_ci")
            .HasCharSet("utf8mb4");

        modelBuilder.Entity<ElectricityDatum>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PRIMARY");

            entity.Property(e => e.Id)
                .HasColumnType("int(11)")
                .HasColumnName("ID");
            entity.Property(e => e.AmtBill)
                .HasPrecision(18, 2)
                .HasColumnName("AMT_BILL");
            entity.Property(e => e.AmtBoi)
                .HasPrecision(18, 2)
                .HasColumnName("AMT_BOI");
            entity.Property(e => e.AmtFt)
                .HasPrecision(18, 2)
                .HasColumnName("AMT_FT");
            entity.Property(e => e.AmtInvoice)
                .HasPrecision(18, 2)
                .HasColumnName("AMT_INVOICE");
            entity.Property(e => e.AmtKwPk)
                .HasPrecision(18, 2)
                .HasColumnName("AMT_KW_PK");
            entity.Property(e => e.AmtKwPp)
                .HasPrecision(18, 2)
                .HasColumnName("AMT_KW_PP");
            entity.Property(e => e.AmtKwhOp)
                .HasPrecision(18, 2)
                .HasColumnName("AMT_KWH_OP");
            entity.Property(e => e.AmtKwhPk)
                .HasPrecision(18, 2)
                .HasColumnName("AMT_KWH_PK");
            entity.Property(e => e.AmtKwhTot)
                .HasPrecision(18, 2)
                .HasColumnName("AMT_KWH_TOT");
            entity.Property(e => e.AmtMin)
                .HasPrecision(18, 2)
                .HasColumnName("AMT_MIN");
            entity.Property(e => e.AmtPf)
                .HasPrecision(18, 2)
                .HasColumnName("AMT_PF");
            entity.Property(e => e.AmtService)
                .HasPrecision(18, 2)
                .HasColumnName("AMT_SERVICE");
            entity.Property(e => e.AmtVat)
                .HasPrecision(18, 2)
                .HasColumnName("AMT_VAT");
            entity.Property(e => e.Bp)
                .HasMaxLength(50)
                .HasColumnName("BP");
            entity.Property(e => e.ContractAccMI)
                .HasMaxLength(50)
                .HasColumnName("ContractAccM_I");
            entity.Property(e => e.Crsg)
                .HasMaxLength(50)
                .HasColumnName("CRSG");
            entity.Property(e => e.Ct)
                .HasMaxLength(50)
                .HasColumnName("CT");
            entity.Property(e => e.Installation).HasMaxLength(50);
            entity.Property(e => e.Kva)
                .HasColumnType("int(11)")
                .HasColumnName("KVA");
            entity.Property(e => e.KvarMax)
                .HasColumnType("int(11)")
                .HasColumnName("KVAR_MAX");
            entity.Property(e => e.KwOpH)
                .HasColumnType("int(11)")
                .HasColumnName("KW_OP_H");
            entity.Property(e => e.KwPk)
                .HasColumnType("int(11)")
                .HasColumnName("KW_PK");
            entity.Property(e => e.KwPpOp)
                .HasPrecision(18, 2)
                .HasColumnName("KW_PP_OP");
            entity.Property(e => e.KwhOpH)
                .HasColumnType("int(11)")
                .HasColumnName("KWH_OP_H");
            entity.Property(e => e.KwhPea)
                .HasColumnType("int(11)")
                .HasColumnName("KWH_PEA");
            entity.Property(e => e.KwhPk)
                .HasColumnType("int(11)")
                .HasColumnName("KWH_PK");
            entity.Property(e => e.KwhPpOp)
                .HasPrecision(18, 2)
                .HasColumnName("KWH_PP_OP");
            entity.Property(e => e.KwhTot)
                .HasColumnType("int(11)")
                .HasColumnName("KWH_TOT");
            entity.Property(e => e.MaterialNo).HasMaxLength(50);
            entity.Property(e => e.Mru)
                .HasMaxLength(50)
                .HasColumnName("MRU");
            entity.Property(e => e.Ratebill)
                .HasPrecision(18, 2)
                .HasColumnName("RATEBILL");
            entity.Property(e => e.Ratecat)
                .HasMaxLength(50)
                .HasColumnName("RATECAT");
            entity.Property(e => e.Rsg)
                .HasMaxLength(50)
                .HasColumnName("RSG");
            entity.Property(e => e.Trnloss)
                .HasPrecision(18, 2)
                .HasColumnName("TRNLOSS");
            entity.Property(e => e.Tsic)
                .HasMaxLength(50)
                .HasColumnName("TSIC");
            entity.Property(e => e.Vt)
                .HasMaxLength(50)
                .HasColumnName("VT");
        });

        modelBuilder.Entity<Request>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PRIMARY");

            entity.Property(e => e.Id)
                .HasColumnType("int(11)")
                .HasColumnName("ID");
            entity.Property(e => e.Address).HasMaxLength(255);
            entity.Property(e => e.Amount).HasColumnType("int(11)");
            entity.Property(e => e.Ca)
                .HasMaxLength(12)
                .HasColumnName("CA");
            entity.Property(e => e.Description).HasMaxLength(255);
            entity.Property(e => e.Name).HasMaxLength(255);
            entity.Property(e => e.Pacode)
                .HasMaxLength(6)
                .HasColumnName("PACode");
            entity.Property(e => e.RequestId)
                .HasMaxLength(20)
                .HasColumnName("RequestID");
            entity.Property(e => e.TypeRequest).HasMaxLength(100);
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
