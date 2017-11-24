using System;

namespace TaskUtility
{
    public interface ICarryForwardBusinessConfiguration 
    {
        int Id { get; set; }
        int RuleId { get; set; }
        DateTime PendingSince { get; set; }
    }
}
