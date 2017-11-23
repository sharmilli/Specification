using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace TaskUtility
{
    public class CarryForwardBusinessConfiguration : ICarryForwardBusinessConfiguration
    {
        public CarryForwardBusinessConfiguration() { }
        private int dayOfMonth;
        public int NthWorkingDayOfMonth { get; set; }
        //{
        //    get { return CalendarUtility.NthBusinessDayOfMonth(); }
        //    set { this.dayOfMonth = value; }
        //}
        public int RemainingWorkingDaysOfMonth { get; set; }
        //{
        //    get { return CalendarUtility.RemainingBusinessDaysInMonth(); }
        //    set { this.dayOfMonth = value; }
        //}

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
        public void UpdateCarryForwardRule(ICarryForwardBusinessConfiguration carryForward)
        {
            // If the rule execution is not successful, update the carryforward table
        }
    }
}
