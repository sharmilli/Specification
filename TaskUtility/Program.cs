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
            //<DEBUG>Console.WriteLine(DateTime.Now.ToShortDateString()+" is "+  CalendarUtility.NthBusinessDayOfMonth()+"th working day of the month");
            // Console.WriteLine(DateTime.Now.ToShortDateString() + " has " + CalendarUtility.RemainingBusinessDaysInMonth() + " working days remaining in the month");
            //var email = new Email("1", "2", "3", "4");
            //email.Send();
            //ITask procedureTask = new Procedure("Test");
            //procedureTask.TaskID = 1;
            //procedureTask.TaskName = Tasks.Procedure;
            //procedureTask.ExecuteTask();</DEBUG>)

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
                //perform tasks here
            }
            //var pendingRules = 


            Console.ReadKey();

        }

        
    }
}
