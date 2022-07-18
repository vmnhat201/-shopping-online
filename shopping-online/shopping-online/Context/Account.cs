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
    using shopping_online.Common;
    using System;
    using System.Collections.Generic;
    using System.ComponentModel;
    using System.ComponentModel.DataAnnotations;

    public partial class Account
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Account()
        {
            this.Orders = new HashSet<Order>();
        }

        public int account_id { get; set; }
        [DisplayName("Username")]
        [Required(ErrorMessage = "Username is Required")]
        [StringLength(50, MinimumLength = 2, ErrorMessage = "Username should be between 2 and 50 characters")]
        public string account_username { get; set; }









        [DisplayName("Password")]
        [Required(ErrorMessage = "Password is Required")]
        [StringLength(20, MinimumLength = 8, ErrorMessage = "Password should be between 8 and 20 characters")]
        public string account_password { get; set; }










        [DisplayName("Email")]
        [Required(ErrorMessage = "Email is Required")]
        [StringLength(50, MinimumLength = 2, ErrorMessage = "Email should be between 2 and 50 characters")]

        public string account_email { get; set; }








        [DisplayName("Name")]
        [Required(ErrorMessage = "Name is Required")]
        [StringLength(50, MinimumLength = 2, ErrorMessage = "Name should be between 2 and 50 characters")]
        public string account_name { get; set; }









        [DisplayName("Phone Number")]
        [Required(ErrorMessage = "Phone Number is Required")]
        [StringLength(11, MinimumLength = 10, ErrorMessage = "Phone Number should be between 10 and 11 characters")]
        public string account_phone { get; set; }








        [DisplayName("Address")]
        [Required(ErrorMessage = "Address is Required")]
        [StringLength(50, MinimumLength = 5, ErrorMessage = "Address should be between 5 and 50 characters")]
        public string account_address { get; set; }





        [DisplayName("Role")]
        public int account_role_id { get; set; }





        [DisplayName("Gender")]
        public Nullable<bool> account_gender { get; set; }




        [DisplayName("Status")]
        public bool account_status { get; set; }





        [DisplayName("Create date")]
        [DateRange("01/01/1960", ErrorMessage = "Date of Birth Must be between 01-01-1960 and Current Date")]
        [DisplayFormat(DataFormatString = "{0:d}", ApplyFormatInEditMode = true)]
        public Nullable<System.DateTime> account_createdate { get; set; }

        [DisplayName("Image")]
        public string account_image { get; set; }

        [DisplayName("Date of birth")]
        [DateRange("01/01/1960", ErrorMessage = "Date of Birth Must be between 01-01-1960 and Current Date")]
        [DisplayFormat(DataFormatString = "{0:d}", ApplyFormatInEditMode = true)]
        public Nullable<System.DateTime> account_DOB { get; set; }

        public virtual Role Role { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Order> Orders { get; set; }
    }
}
