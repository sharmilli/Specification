using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
namespace TaskUtility
{
    public class Email 
    {
        private Email()
        { }

        public Email(string from, string to, string subject,string message)
        {
            From = from;
            To = to;
            Subject = subject;
            Message = message;
        }
        public int EmailID { get; set; }
        

        [Required]
        [DataType(DataType.EmailAddress)]
        public string From { get; set; }

        [Required]
        [DataType(DataType.EmailAddress)]
        public string To { get; set; }

        [DataType(DataType.EmailAddress)]
        public string CC { get; set; }

        [Required]
        [MaxLength(100)]
        public string Subject { get; set; }
        [Required]
        public string Message { get; set; }

        public void Send()
        {
            //<DEBUG>Console.WriteLine(this.From + ":" + this.To + ":" + this.Subject + ":" + this.Message);</DEBUG>
            //Fetch the email template from the database
            //Construct the message as per the business rules
            //Send email via SMTP
        }
    }
}
