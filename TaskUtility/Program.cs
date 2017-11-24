using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TaskUtility
{
    class Program
    {
        static void Main(string[] args)
        {
            //Task utility will connect with the business configuration and performs the task along with carry forward task
            var referenceDate = 4;//will be populated from xml varies for region
            var remBusinessDays = CalendarUtility.RemainingBusinessDaysInMonth();
            var nthBusinessDay = CalendarUtility.RemainingBusinessDaysInMonth()== referenceDate ? CalendarUtility.RemainingBusinessDaysInMonth():CalendarUtility.NthBusinessDayOfMonth();
            var isFromEnd =  remBusinessDays == referenceDate ? true : false;
            BusinessConfiguration bc = new BusinessConfiguration();
            var todaysRule = bc.GetBusinessRules(nthBusinessDay, isFromEnd);
            //perform todays task
            CarryForwardBusinessConfiguration carryConfig = new CarryForwardBusinessConfiguration();
            var carryForwardRules = carryConfig.GetCarryForwardBusinessRules();
            foreach(var carryFwdRule in carryForwardRules)
            {
                
            }
            Console.ReadKey();

        }

        
    }
}
