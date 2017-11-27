using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
namespace TaskUtility
{
    public class CarryForwardBusinessConfiguration : ICarryForwardBusinessConfiguration
    {
        private CarryForwardBusinessConfiguration() { }
        public CarryForwardBusinessConfiguration(int countryId) {
            ExecuteCarryForwardTask(countryId);
        }
        public int Id { get; set; }
        public long RuleId { get; set; }
        public DateTime PendingSince { get; set; }

        private int dayOfMonth;
        public int NthWorkingDayOfMonth { get; set; }

        public int RemainingWorkingDaysOfMonth { get; set; }

        [DataType(DataType.EmailAddress)]
        public string Recipient { get; set; }
        [DataType(DataType.EmailAddress)]
        public string Owner { get; set; }

        public string Rule { get; set; }

        public Freequency RuleFreequency { get; set; }

        public void ExecuteCarryForwardTask(int countryId)
        {
            List<CarryForwardBusinessConfiguration> carryForwardRules = new List<CarryForwardBusinessConfiguration>();
            //connect to the database and fetch the list of carry forward rules
            /*using (LADAutomationEntities context = new LADAutomationEntities())
            {
                carryForwardRules = (from carryRules in context.CarryForwardRules
                                        join rules in context.Rules on carryRules.RuleId equals rules.Id
                                        join owner1 in context.UserCountryRoles on rules.OwnerId equals owner1.Id
                                        join recipient1 in context.UserCountryRoles on rules.RecipientId equals recipient1.Id
                                        join owner in context.Users on owner1.UserId equals owner.Id
                                        join recipient in context.Users on recipient1.UserId equals recipient.Id
                                        where rules.isRemaining.Equals(false)//todo: now mexico, the id to be populated from configuration
                                        select new CarryForwardBusinessConfiguration
                                        {
                                            RuleId = rules.Id,
                                            Rule = rules.Name,
                                            Owner = owner.Email,
                                            Recipient = recipient.Email,
                                            NthWorkingDayOfMonth = rules.BusinessDay,
                                            PendingSince = carryRules.PendingSince
                                        }).ToList();
            }*/
            //return carryForwardRules;
        }
        public void AddCarryForwardRule(BusinessConfiguration businessConfiguration)
        {
            // If the rule execution is not successful, add record the carryforward table
            using (LADAutomationEntities context = new LADAutomationEntities())
            {
                /*var carryForward = new CarryForwardRules();
                carryForward.PendingSince = DateTime.Now;
                carryForward.CarryForwardRuleId = businessConfiguration.RuleId;
                context.CarryForwardRules.Add(carryForward);
                context.SaveChanges();*/


            }
        }
    }
}
