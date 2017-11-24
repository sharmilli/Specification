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
            //XmlDocument xml = new XmlDocument(@"C:\Users\662942\documents\visual studio 2015\Projects\AIGLADAutomation\TaskUtility\BusinessConfiguration.");

            // FileStream fs = new FileStream(@"C:\Users\662942\documents\visual studio 2015\Projects\AIGLADAutomation\TaskUtility\BusinessConfiguration.xml", FileMode.Open, FileAccess.Read);
            foreach (XElement level1Element in XElement.Load(@"C:\Users\662942\documents\visual studio 2015\Projects\AIGLADAutomation\TaskUtility\BusinessConfiguration.xml").Elements("Business"))
            {
               

                //Task utility will connect with the business configuration and performs the task along with carry forward task
                var referenceDate = Int32.Parse(level1Element.Attribute("remainingWorkDays").Value);//will be populated from xml varies for region
                var countryId = Int32.Parse(level1Element.Attribute("id").Value);
                var remBusinessDays = CalendarUtility.RemainingBusinessDaysInMonth();
                var nthBusinessDay = CalendarUtility.RemainingBusinessDaysInMonth() == referenceDate ? CalendarUtility.RemainingBusinessDaysInMonth() : CalendarUtility.NthBusinessDayOfMonth();
                var isFromEnd = remBusinessDays == referenceDate ? true : false;
                BusinessConfiguration bc = new BusinessConfiguration();
                var todaysRule = bc.GetBusinessRules(countryId,nthBusinessDay, isFromEnd);
                //perform todays task
                CarryForwardBusinessConfiguration carryConfig = new CarryForwardBusinessConfiguration();
                var carryForwardRules = carryConfig.GetCarryForwardBusinessRules();
                foreach (var carryFwdRule in carryForwardRules)
                {


                }
            }
            Console.ReadKey();

        }

        
    }
}
