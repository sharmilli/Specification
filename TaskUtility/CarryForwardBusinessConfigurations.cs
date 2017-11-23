using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace TaskUtility
{
    public class CarryForwardBusinessConfiguration : ICarryForwardBusinessConfiguration
    {
        public int DayOfMonth { get; set; }

        [DataType(DataType.EmailAddress)]
        public string Email { get; set; }
    
        public string Owner { get; set; }

        public string Rule { get; set; }

        public Freequency RuleFreequency { get; set; }

        public int RuleId { get; set; }

        public string Path { get; set; }
        
        public DateTime PendingSince { get; set; }

        /*Check if these methods has to be a part of different class
        public void AddCarryForwardRule()
        {
            //Implement the logic to update the database table for carryforward whenever the business rule is not executed successfully
        }

        public void RemoveCarryForwardRule(int RuleId)
        {
            //Whenever the pending rule execution gets completed, delete the carry forward record from the database table.
        }*/
    }
}
