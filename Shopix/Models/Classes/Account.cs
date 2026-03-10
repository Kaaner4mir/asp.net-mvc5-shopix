using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Shopix.Models.Classes
{
    public class Account
    {
        [Key]
        public int AccountID { get; set; }

        [Column(TypeName = "varchar")]
        [StringLength(50, ErrorMessage = "You can use a maximum of 50 characters")]
        [Required(ErrorMessage = "This field cannot be left blank")]
        public string AccountFirstName { get; set; }

        [Column(TypeName = "varchar")]
        [StringLength(50, ErrorMessage = "You can use a maximum of 50 characters")]
        [Required(ErrorMessage = "This field cannot be left blank")]
        public string AccountLastName { get; set; }

        [Column(TypeName = "varchar")]
        [StringLength(50, ErrorMessage = "You can use a maximum of 50 characters")]
        [Required(ErrorMessage = "This field cannot be left blank")]
        public string AccountCity { get; set; }

        [Column(TypeName = "varchar")]
        [StringLength(75, ErrorMessage = "You can use a maximum of 75 characters")]
        [Required(ErrorMessage = "This field cannot be left blank")]
        public string AccountEmail { get; set; }
    }
}