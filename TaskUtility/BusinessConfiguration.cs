using System;
using System.ComponentModel.DataAnnotations;
using System.Collections.Generic;
using System.Linq;

namespace TaskUtility
{

    public class BusinessConfiguration : IBusinessConfiguration
    {
        public BusinessConfiguration() { }
        public BusinessConfiguration(int countryId, int dayOfTheMonth, bool isFromEnd) {
            //Execute the rules when the object is created
            GetBusinessRule(countryId, dayOfTheMonth, isFromEnd);
        }
        public long RuleId { get; set; }

        public int CountryId { get; set; }
        public int NthWorkingDayOfMonth { get; set; }
        
        public int RemainingWorkingDaysOfMonth { get; set; }
        
        [DataType(DataType.EmailAddress)]
        public string Recipient { get; set; }
        [DataType(DataType.EmailAddress)]
        public string Owner { get; set; }

        public string Rule { get; set; }

        public Freequency RuleFreequency { get; set; }
        
        private BusinessConfiguration GetBusinessRule(int countryId, int dayOfTheMonth, bool isFromEnd)
        {
            CountryId = countryId;
            //connect to the database and fetch the list of Business rules greater than the nth day
            /*using (LADAutomationEntities context = new LADAutomationEntities())
            {
                bc = (from businessConfig in context.Rules
                         join userCountryRole in context.UserCountryRoles on businessConfig.OwnerId equals userCountryRole.Id
                         join owner in context.Users on userCountryRole.UserId equals owner.Id
                         join recipient in context.Users on userCountryRole.UserId equals recipient.Id
                         join country in context.Countries on userCountryRole.CountryId equals country.Id
                         where country.Id == countryId && businessConfig.BusinessDay == dayOfTheMonth
                         select new BusinessConfiguration() {
                             RuleId = businessConfig.Id,
                             Rule = businessConfig.Name,
                             Owner = owner.Email,
                             Recipient = recipient.Email
                         }).FirstOrDefault();
            }*/
            return this;
        }
        public bool ExecuteBusinessRule(BusinessConfiguration businessConfiguration)
        {

            // If the rule execution is successful

            return true;
        }

    }
}
