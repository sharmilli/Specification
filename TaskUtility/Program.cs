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
                //Fetch the business configuration set for the day
                var bc = new BusinessConfiguration(countryId, nthBusinessDay, isFromEnd);
                //Execute the pending tasks from previous day's business rules
                CarryForwardBusinessConfiguration carryConfig = new CarryForwardBusinessConfiguration(bc.CountryId);
                if (bc.ExecuteBusinessRule(bc))
                {
                    carryConfig = new CarryForwardBusinessConfiguration(bc);
                }

            }
            Console.ReadKey();

        }

        
    }
}
