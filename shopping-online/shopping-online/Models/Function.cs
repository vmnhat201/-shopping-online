//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace shopping_online.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Function
    {
        public Function()
        {
            this.Role_function = new HashSet<Role_function>();
        }
    
        public int function_id { get; set; }
        public string function_name { get; set; }
        public string function_description { get; set; }
        public int function_ordernumber { get; set; }
        public System.DateTime function_createday { get; set; }
    
        public virtual ICollection<Role_function> Role_function { get; set; }
    }
}
