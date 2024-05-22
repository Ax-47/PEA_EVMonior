using System;
using System.Collections.Generic;

namespace PEA_EVMonior.Models;

public partial class Request
{
    public int Id { get; set; }

    public string Pacode { get; set; } = null!;

    public string Ca { get; set; } = null!;

    public string RequestId { get; set; } = null!;

    public string TypeRequest { get; set; } = null!;

    public DateOnly ReceivedDate { get; set; }

    public string Name { get; set; } = null!;

    public string Address { get; set; } = null!;

    public string Description { get; set; } = null!;

    public int Amount { get; set; }
}
