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

        [Column(TypeName = "smallint")]
        [Required(ErrorMessage = "This field cannot be left blank")]
        public short Stock { get; set; }

        [Column(TypeName = "decimal(18,2)")]
        [Required(ErrorMessage = "This field cannot be left blank")]
        public decimal BuyingPrice { get; set; }

        [Column(TypeName = "decimal(18,2)")]
        [Required(ErrorMessage = "This field cannot be left blank")]
        public decimal SellingPrice { get; set; }

        [Column(TypeName = "bit")]
        public bool Status { get; set; }

        [Column(TypeName = "varchar")]
        [StringLength(250)]
        public string ProductImage { get; set; }
    }
}