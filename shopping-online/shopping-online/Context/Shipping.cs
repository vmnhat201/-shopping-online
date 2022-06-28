//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace shopping_online.Context
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel;
    using System.ComponentModel.DataAnnotations;

    public partial class shipping
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public shipping()
        {
            this.Orders = new HashSet<Order>();
        }
    
        public int shipping_id { get; set; }


        [DisplayName("Name")]
        [Required(ErrorMessage = "Name of ship is Required")]
        [StringLength(50, MinimumLength = 2, ErrorMessage = "Note should be between 2 and 50 characters")]
        [RegularExpression(@"^(([A-za-z]+[\s]{1}[A-za-z]+)|([A-Za-z]+))$")]
        public string shipping_name { get; set; }



        [DisplayName("Email")]
        [Required(ErrorMessage = "Email of ship is Required")]
        [StringLength(50, MinimumLength = 10, ErrorMessage = "Email should be between 10 and 50 characters")]
        [DataType(DataType.EmailAddress, ErrorMessage = "Please Enter a valid Email")]
        public string shipping_email { get; set; }




        [DisplayName("Phone")]
        [Required(ErrorMessage = "Phone of ship is Required")]
        [StringLength(11, MinimumLength = 10, ErrorMessage = "Phone should be between 10 and 11 numbers")]
        [DataType(DataType.PhoneNumber, ErrorMessage = "Please Enter a valid Phone Number")]
        public string shipping_phone { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Order> Orders { get; set; }
    }
}
