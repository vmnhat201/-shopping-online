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
    
    public partial class Order_Details
    {
        public int Order_Details_id { get; set; }
        public Nullable<int> Order_id { get; set; }
        public Nullable<int> product_id { get; set; }
        public Nullable<decimal> Order_Details_price { get; set; }
        public Nullable<int> Order_Details_num { get; set; }
        public Nullable<double> Order_Details_total_number { get; set; }
    
        public virtual Order Order { get; set; }
        public virtual product product { get; set; }
    }
}