using System;
using System.Xml.Linq;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;

namespace TaskUtility
{
    class Program
    {
        static void Main(string[] args)
        {
            foreach (XElement level1Element in XElement.Load(@"AppData\BusinessConfiguration.xml").Elements("Business"))
            {
               

                //Task utility will connect with the business configuration and performs the task along with carry forward task
                var referenceDate = Int32.Parse(level1Element.Attribute("remainingWorkDays").Value);//will be populated from xml varies for region
                var countryId = Int32.Parse(level1Element.Attribute("id").Value);
                var remBusinessDays = CalendarUtility.RemainingBusinessDaysInMonth();
                var nthBusinessDay = CalendarUtility.RemainingBusinessDaysInMonth() == referenceDate ? CalendarUtility.RemainingBusinessDaysInMonth() : CalendarUtility.NthBusinessDayOfMonth();
                var isFromEnd = remBusinessDays == referenceDate ? true : false;
                var bc = new BusinessConfiguration(countryId, nthBusinessDay, isFromEnd);
                //Get the rule id and fetch the corresponding tasks
                //perform todays task
                CarryForwardBusinessConfiguration carryConfig = new CarryForwardBusinessConfiguration();
                var carryForwardRules = carryConfig.GetCarryForwardBusinessRules();
                foreach (var carryFwdRule in carryForwardRules)
                {
                    //Get the rule id from carry forward rule object and invoke the corresponding tasks

                }
            }
            Console.ReadKey();

        }

        
    }
}
