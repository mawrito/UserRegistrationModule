using DAL;
using System;
using System.Net;
using System.Net.Mail;
using DAL.Entities;

namespace BLL
{
    public class ActivationEmail
    {

        public void SendActivationEmail(User user, String html)
        {
            MailMessage mm = new MailMessage("mariochavessolano@gmail.com", user.Email);

            string link = "https://localhost:44379/Activation.aspx?ActivationCode=" + user.Code;

            mm.Subject = "Account Activation";
            string body = html;
            body += "<a href='" + link +
                    "' style='padding: 1em;background-color: lightskyblue;color: white;text-decoration: none;font-family:verdana;'>Activate your Account</a><br />";
            mm.Body = body;
            mm.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.EnableSsl = true;
            NetworkCredential networkCredential = new NetworkCredential("mariochavessolano@gmail.com", "Limitless2018!");
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = networkCredential;
            smtp.Port = 587;
            smtp.Send(mm);
        }
    }
}
