//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace shopping_online.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Role_function
    {
        public int Role_function_id { get; set; }
        public Nullable<int> function_id { get; set; }
        public Nullable<int> role_id { get; set; }
        public int Role_function_view { get; set; }
        public int Role_function_insert { get; set; }
        public int Role_function_update { get; set; }
        public int Role_function_delete { get; set; }
    
        public virtual Function Function { get; set; }
        public virtual Role Role { get; set; }
    }
}
