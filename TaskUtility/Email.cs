//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace TaskUtility
{
    using System;
    using System.Collections.Generic;
    
    public partial class Email
    {
        public long Id { get; set; }
        public string Subject { get; set; }
        public string Message { get; set; }
        public long FromUserCountryRole_Id { get; set; }
        public long EmailTemplate_Id { get; set; }
        public long ToUserCountryRole_Id { get; set; }
        public long CCUserCountryRole2_Id { get; set; }
    
        public virtual EmailTemplate EmailTemplate { get; set; }
        public virtual UserCountryRole UserCountryRole { get; set; }
        public virtual UserCountryRole UserCountryRole1 { get; set; }
        public virtual UserCountryRole UserCountryRole2 { get; set; }
    }
}
