using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace TaskUtility
{
    public class CarryForwardBusinessConfiguration : ICarryForwardBusinessConfiguration
    {
        public CarryForwardBusinessConfiguration() { }
        public int Id { get; set; }
        public int RuleId { get; set; }
        public DateTime PendingSince { get; set; }

        public List<ICarryForwardBusinessConfiguration> GetCarryForwardBusinessRules()
        {
            //connect to the database and fetch the list of carry forward rules
            
            return new List<ICarryForwardBusinessConfiguration>();
        }
        public void UpdateCarryForwardRule(ICarryForwardBusinessConfiguration carryForward)
        {
            // If the rule execution is not successful, update the carryforward table
        }
    }
}
