using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Shopix.Models.Classes
{
    public class Invoice
    {
        [Key]
        public int InvoiceId { get; set; }

        [Column(TypeName = "Char")]
        [StringLength(1)]
        public string SerialNumber { get; set; }

        [Column(TypeName = "Varchar")]
        [StringLength(50)]
        public string SequenceNumber { get; set; }
        public DateTime Date { get; set; }
        public DateTime Time { get; set; }

        [Column(TypeName = "Varchar")]
        [StringLength(60)]
        public string TaxOffice { get; set; }

        [Column(TypeName = "Varchar")]
        [StringLength(50)]
        public string DeliveredBy { get; set; }

        [Column(TypeName = "Varchar")]
        [StringLength(50)]
        public string ReceivedBy { get; set; }

        public ICollection<LineItem> LineItems { get; set; }
    }
}