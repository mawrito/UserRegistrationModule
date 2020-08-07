using System;
using DAL;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Net.Mail;
using System.Net;
using System.IO;

namespace PL
{
    public partial class UserRegistration : Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
           userDemo();
        }

        protected void Create_Click(object sender, EventArgs e)
        {
            try
            {
               var user = new User
                {
                    FirstName = txtFirstName.Text.Trim(),
                    LastName = txtLastName.Text.Trim(),
                    LastName2 = txtLastName2.Text.Trim(),
                    Email = txtEmail.Text.Trim(),
                    Country = ddlCountry.SelectedValue,
                    Username = txtUsername.Text.Trim(),
                    Password = txtPassword.Text.Trim(),
                    PasswordAge = Convert.ToInt32(txtAge.Text.Trim()),
                    Age = Convert.ToInt32(ddlExpiration.SelectedValue),
                    UserID = 0,
                    PasswordLastSet = DateTime.Today,
                    Active = false
                };
                
               user.generateCode(ref user);

                Business.AddUser(user);

                switch (user.UserID)
                {
                    case -1:
                        errorMessage.Text = "User Could not be created, Username is already in use";
                        break;
                    case -2:
                        errorMessage.Text = "User Could not be created, Email Address is already in use";
                        break;
                    default:
                        errorMessage.Text = "User registered, Confirm email to activate account";
                        
                        StringWriter writer = new StringWriter();
                        Server.Execute("Email.aspx", writer);
                        string html = writer.ToString();

                        var ae = new ActivationEmail();
                        ae.SendActivationEmail(ref user, html);
                        break;
                }
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + errorMessage.Text + "');", true);
                cleanFields();
            }
            catch (Exception)
            {

                throw;
            }
            
            

        }

     



        //private void SendActivationEmail(User user)
        //{

        //    StringWriter writer = new StringWriter();
        //    Server.Execute("Email.aspx", writer);
        //    string html = writer.ToString();

        //    string constr = ConfigurationManager.ConnectionStrings["UserRegistrationConnectionString"].ConnectionString;
        //    string activationCode = user.Code;
        //    using (SqlConnection con = new SqlConnection(constr))
        //    {
        //        using (SqlCommand cmd = new SqlCommand("INSERT INTO UserActivation VALUES(@UserId, @ActivationCode)"))
        //        {
        //            using (SqlDataAdapter sda = new SqlDataAdapter())
        //            {
        //                cmd.CommandType = CommandType.Text;
        //                cmd.Parameters.AddWithValue("@UserId", user.UserID);
        //                cmd.Parameters.AddWithValue("@ActivationCode", activationCode);
        //                cmd.Connection = con;
        //                con.Open();
        //                cmd.ExecuteNonQuery();
        //                con.Close();
        //            }
        //        }
        //    }
        //    using (MailMessage mm = new MailMessage("mariochavessolano@gmail.com", txtEmail.Text))
        //    {
        //        string link = "https://localhost:44379/Activation.aspx?ActivationCode=" + activationCode;

        //        mm.Subject = "Account Activation";
        //        string body = html;
        //        body += "<a href='" + link + "' style='padding: 1em;background-color: lightskyblue;color: white;text-decoration: none;font-family:verdana;'>Activate your Account</a><br />";             
        //        mm.Body = body;
        //        mm.IsBodyHtml = true;
        //        SmtpClient smtp = new SmtpClient();
        //        smtp.Host = "smtp.gmail.com";
        //        smtp.EnableSsl = true;
        //        NetworkCredential NetworkCred = new NetworkCredential("mariochavessolano@gmail.com", "Limitless2018!");
        //        smtp.UseDefaultCredentials = true;
        //        smtp.Credentials = NetworkCred;
        //        smtp.Port = 587;
        //        smtp.Send(mm);
        //    }
        //}


        protected void cleanFields()
        {
            txtFirstName.Text = String.Empty;
            txtLastName.Text = String.Empty;
            txtLastName2.Text = String.Empty;
            txtEmail.Text = String.Empty;
            txtUsername.Text = String.Empty;
            txtPassword.Text = String.Empty;
            txtAge.Text = String.Empty;

        }

        protected void userDemo()
        {
            txtFirstName.Text = "Mario";
            txtLastName.Text = "Chaves";
            txtLastName2.Text = "Solano";
            txtEmail.Text = "mariochavessolano@gmail.com";
            txtUsername.Text = "mawrito1";
            txtAge.Text = "38";
            txtPassword.Text = "1McsJrb.";
            txtConfirmPasword.Text = "1McsJrb.";
        }


    }
}