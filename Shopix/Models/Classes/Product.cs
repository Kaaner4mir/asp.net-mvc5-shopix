using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Shopix.Models.Classes
{
    public class Product
    {
        [Key]
        public int ProductId { get; set; }

        [Column(TypeName = "varchar")]
        [StringLength(50, ErrorMessage = "You can use a maximum of 50 characters")]
        [Required(ErrorMessage = "This field cannot be left blank")]
        public string ProductName { get; set; }

        [Column(TypeName = "varchar")]
        [StringLength(50, ErrorMessage = "You can use a maximum of 50 characters")]
        [Required(ErrorMessage = "This field cannot be left blank")]
        public string Brand { get; set; }

        public short Stock { get; set; }

        public decimal BuyingPrice { get; set; }

        public decimal SellingPrice { get; set; }

        public bool Status { get; set; }

        [Column(TypeName = "varchar")]
        [StringLength(250)]
        public string ProductImage { get; set; }

        public int CategoryId { get; set; }

        public virtual Category Category { get; set; }

        public ICollection<Activities> Activities { get; set; }
    }
}