using System;
using System.Collections.Generic;

namespace PEA_EVMonior.Models;

public partial class ElectricityDatum
{
    public int Id { get; set; }

    public string? Crsg { get; set; }

    public string? Rsg { get; set; }

    public string? Bp { get; set; }

    public string? ContractAccMI { get; set; }

    public string? Installation { get; set; }

    public DateOnly? Period { get; set; }

    public int? Kva { get; set; }

    public string? Tsic { get; set; }

    public string? Ratecat { get; set; }

    public decimal? Ratebill { get; set; }

    public string? Mru { get; set; }

    public string? MaterialNo { get; set; }

    public int? KwPk { get; set; }

    public decimal? KwPpOp { get; set; }

    public int? KwOpH { get; set; }

    public int? KvarMax { get; set; }

    public int? KwhPk { get; set; }

    public decimal? KwhPpOp { get; set; }

    public int? KwhOpH { get; set; }

    public int? KwhTot { get; set; }

    public int? KwhPea { get; set; }

    public decimal? AmtKwPk { get; set; }

    public decimal? AmtKwPp { get; set; }

    public decimal? AmtPf { get; set; }

    public decimal? AmtKwhPk { get; set; }

    public decimal? AmtKwhOp { get; set; }

    public decimal? AmtKwhTot { get; set; }

    public decimal? AmtService { get; set; }

    public decimal? AmtFt { get; set; }

    public decimal? AmtBoi { get; set; }

    public decimal? AmtMin { get; set; }

    public decimal? AmtBill { get; set; }

    public decimal? AmtVat { get; set; }

    public decimal? AmtInvoice { get; set; }

    public decimal? Trnloss { get; set; }

    public string? Ct { get; set; }

    public string? Vt { get; set; }
}
