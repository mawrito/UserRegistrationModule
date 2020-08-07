using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class ActivationEmail
    {

        

        public void SendActivationEmail(ref User user, String html)
        {
            MailMessage mm = new MailMessage("mariochavessolano@gmail.com", user.Email);
                            
            string link = "https://localhost:44379/Activation.aspx?ActivationCode=" + user.Code;

            mm.Subject = "Account Activation";
            string body = html;
            body += "<a href='" + link + "' style='padding: 1em;background-color: lightskyblue;color: white;text-decoration: none;font-family:verdana;'>Activate your Account</a><br />";
            mm.Body = body;
            mm.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.EnableSsl = true;
            NetworkCredential NetworkCred = new NetworkCredential("mariochavessolano@gmail.com", "Limitless2018!");
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = NetworkCred;
            smtp.Port = 587;
            smtp.Send(mm);

            InsertActivation(ref user);
        }

        public void InsertActivation(ref User user)
        {
            string constr = "Data Source=localhost;Initial Catalog=UserRegistration;Integrated Security=True";

            string activationCode = user.Code;

            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand("INSERT INTO UserActivation VALUES(@UserId, @ActivationCode)");

            SqlDataAdapter sda = new SqlDataAdapter();

            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@UserId", user.UserID);
            cmd.Parameters.AddWithValue("@ActivationCode", user.Code);
            cmd.Connection = con;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

    }
}
