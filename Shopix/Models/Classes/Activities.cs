using System;
using System.ComponentModel.DataAnnotations;

namespace Shopix.Models.Classes
{
    public class Activities
    {
        [Key]
        public int ActivityId { get; set; }
        public DateTime Date { get; set; }
        public int Quantity { get; set; }

        public decimal UnitPrice { get; set; }

        public decimal Amount { get; set; }

        public Product Product { get; set; }
        public Account Account { get; set; }
        public Staff Staff { get; set; }
    }
}