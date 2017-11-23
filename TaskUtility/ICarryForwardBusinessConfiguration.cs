using System;

namespace TaskUtility
{
    public interface ICarryForwardBusinessConfiguration : IBusinessConfiguration
    {
        DateTime PendingSince { get; set; }
    }
}
