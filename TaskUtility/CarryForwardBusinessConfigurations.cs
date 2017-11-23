using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace TaskUtility
{
    public class CarryForwardBusinessConfiguration : ICarryForwardBusinessConfiguration
    {
        private CarryForwardBusinessConfiguration() { }

        public CarryForwardBusinessConfiguration(ICarryForwardBusinessConfiguration carryForwardConfig)
        {
            DayOfMonth = carryForwardConfig.DayOfMonth;
            Email = carryForwardConfig.Email;
            Owner = carryForwardConfig.Owner;
            Rule = carryForwardConfig.Rule;
            RuleId = carryForwardConfig.RuleId;
            RuleFreequency = carryForwardConfig.RuleFreequency;
            Path = carryForwardConfig.Path;
            PendingSince = carryForwardConfig.PendingSince;
        }
        public int DayOfMonth { get; set; }

        [DataType(DataType.EmailAddress)]
        public string Email { get; set; }
    
        public string Owner { get; set; }

        public string Rule { get; set; }

        public Freequency RuleFreequency { get; set; }

        public int RuleId { get; set; }

        public string Path { get; set; }
        
        public DateTime PendingSince { get; set; }

        public List<ICarryForwardBusinessConfiguration> GetCarryForwardBusinessRules()
        {
            //connect to the database and fetch the list of carry forward rules
            return new List<ICarryForwardBusinessConfiguration>();
        }
        public void UpdateCarryForwardRule()
        {
            // If the rule execution is not successful, update the carryforward table
        }
    }
}
