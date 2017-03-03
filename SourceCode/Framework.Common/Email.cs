using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Configuration;
using System.Net;

namespace Framework.Common
{
    public class Email
    {
        public EmailMessage emailMessage = null;
        public void Send(EmailMessage emailMessage)
        {
            
            
            EmailSettings config = EmailSettings.GetConfigSettings();
            if (config == null) throw new ApplicationException("Email settings missing.");

            System.Net.Mail.MailMessage message = new System.Net.Mail.MailMessage(config.From, emailMessage.To, emailMessage.Subject, emailMessage.Body);
            message.IsBodyHtml = true;
            
            int port = 25;
            int.TryParse(config.Port, out port);
            var smtp = new System.Net.Mail.SmtpClient();
            {
                smtp.Host = config.Host;
                smtp.Port = port;
                smtp.EnableSsl = config.EnableSsl.Equals("Y") ? true : false;
                smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
                smtp.Credentials = new NetworkCredential(config.From, config.Password);
                smtp.Timeout = 20000;
            }
            // Passing values to smtp object
            smtp.Send(message);
        }
    }
    public class EmailMessage
    {
        public string To { get; set; }
        public string Cc { get; set; }
        public string Subject { get; set; }
        public string Body { get; set; }
        
    
    }
    internal class EmailSettings : ConfigurationSection
    {
        public static EmailSettings GetConfigSettings()
        {
            return (EmailSettings)System.Configuration.ConfigurationManager.GetSection("emailSettings") ?? new EmailSettings();
        }

        // Create a "host" element.
        [ConfigurationProperty("host")]
        public string Host
        {
            get
            {
                return (string)this["host"];
            }
        }

        // Create a "port" element.
        [ConfigurationProperty("port")]
        public string Port
        {
            get
            {
                return (string)this["port"];
            }
        }

        // Create a "enableSsl" element.
        [ConfigurationProperty("enableSsl")]
        public string EnableSsl
        {
            get
            {
                return (string)this["enableSsl"];
            }
        }
        // Create a "from" element.
        [ConfigurationProperty("from")]
        public string From
        {
            get
            {
                return (string)this["from"];
            }
        }
        // Create a "password" element.
        [ConfigurationProperty("password")]
        public string Password
        {
            get
            {
                return (string)this["password"];
            }
        }
        
    }
}
