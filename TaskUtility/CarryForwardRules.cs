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
    
    public partial class CarryForwardRules
    {
        public long Id { get; set; }
        public long RuleId { get; set; }
        public System.DateTime PendingSince { get; set; }
    
        public virtual Rule Rule { get; set; }
    }
}
