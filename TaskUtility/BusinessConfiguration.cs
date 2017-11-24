using System;
using System.ComponentModel.DataAnnotations;
using System.Collections.Generic;
using System.Linq;
namespace TaskUtility
{

    public class BusinessConfiguration : IBusinessConfiguration
    {
        public BusinessConfiguration() { }
        private int dayOfMonth;
        public int RuleId { get; set; }
        public int NthWorkingDayOfMonth { get; set; }
        
        public int RemainingWorkingDaysOfMonth { get; set; }
        
        [DataType(DataType.EmailAddress)]
        public string Email { get; set; }

        public string Owner { get; set; }

        public string Rule { get; set; }

        public Freequency RuleFreequency { get; set; }
        
        public BusinessConfiguration GetBusinessRules(int dayOfTheMonth, bool isFromEnd)
        {
            //connect to the database and fetch the list of Business rules greater than the nth day
            return new BusinessConfiguration();
        }
        public void UpdateBusinessRule(BusinessConfiguration businessConfiguration)
        {
            
            // If the rule execution is successful

        }

    }
}
