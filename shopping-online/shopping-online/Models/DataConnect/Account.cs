//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace shopping_online.Models.DataConnect
{
    using System;
    using System.Collections.Generic;
    
    public partial class Account
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Account()
        {
            this.feedbacks = new HashSet<feedback>();
            this.Orders = new HashSet<Order>();
        }
    
        public int account_id { get; set; }
        public string account_username { get; set; }
        public string account_password { get; set; }
        public string account_email { get; set; }
        public string account_name { get; set; }
        public string account_phone { get; set; }
        public string account_address { get; set; }
        public int account_role_id { get; set; }
        public Nullable<bool> account_gender { get; set; }
        public Nullable<System.DateTime> account_DOB { get; set; }
    
        public virtual Role Role { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<feedback> feedbacks { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Order> Orders { get; set; }
    }
}
