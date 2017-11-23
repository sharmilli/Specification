using System;
using System.Collections.Generic;

namespace TaskUtility
{
    public class BusinessRules
    {
        public List<CarryForwardBusinessConfiguration> GetCarryForwardBusinessRules()
        {
            //connect to the database and fetch the list of carry forward rules
            return new List<CarryForwardBusinessConfiguration>();
        }

        public List<BusinessConfiguration> GetBusinessRules()
        {
            //connect to the database and fetch the list of Business rules greater than the nth day
            return new List<BusinessConfiguration>();
        }

        public void UpdateBusinessRule(IBusinessConfiguration businessConfiguration)
        {

            // If the rule execution is successful

        }

        public void UpdateCarryForwardRule(ICarryForwardBusinessConfiguration businessConfiguration)
        {
            // If the rule execution is not successful, update the carryforward table
        }
    }
}
