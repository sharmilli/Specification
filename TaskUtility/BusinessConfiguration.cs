using System;
using System.ComponentModel.DataAnnotations;

namespace TaskUtility
{

    public class BusinessConfiguration : IBusinessConfiguration
    {
        private BusinessConfiguration() { }
        public BusinessConfiguration(IBusinessConfiguration businessConfig)
        {
            this.RuleId = businessConfig.RuleId;
            this.DayOfMonth = businessConfig.DayOfMonth;
            this.Rule = businessConfig.Rule;
            this.RuleFreequency = businessConfig.RuleFreequency;
            this.Owner = businessConfig.Owner;
            this.Path = businessConfig.Path;
        }
        public int RuleId { get; set; }
        public int DayOfMonth { get; set; }

        [DataType(DataType.EmailAddress)]
        public string Email { get; set; }

        public string Owner { get; set; }

        public string Rule { get; set; }

        public Freequency RuleFreequency { get; set; }

        public string Path { get; set; }
        

    }
}
