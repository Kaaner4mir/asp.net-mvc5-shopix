using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Shopix.Models.Classes
{
    public class Category
    {
        [Key]
        public int CategoryId { get; set; }

        [Column(TypeName = "varchar")]
        [StringLength(50, ErrorMessage = "You can use a maximum of 50 characters")]
        [Required(ErrorMessage = "This field cannot be left blank")]
        public string CategoryName { get; set; }

        public ICollection<Product> Products { get; set; }

    }
}