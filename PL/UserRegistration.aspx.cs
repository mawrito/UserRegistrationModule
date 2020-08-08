using BLL;
using DAL;
using System;
using System.IO;
using System.Web.UI;
using DAL.Entities;

namespace PL
{
    public partial class UserRegistration : Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Create_Click(object sender, EventArgs e)
        {
            try
            {
                var userId = 0;
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
                    UserId = 0,
                    PasswordLastSet = DateTime.Today,
                    Active = false
                };

                user.GenerateCode(user);

                userId = AccessDb.AddUser(user);

                switch (userId)
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
                        ae.SendActivationEmail(user, html);
                        AccessDb.AddActivation(user);
                        break;
                }
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + errorMessage.Text + "');", true);
                CleanFields();
            }
            catch (Exception)
            {
                throw;
            }
        }

        protected void CleanFields()
        {
            txtFirstName.Text = String.Empty;
            txtLastName.Text = String.Empty;
            txtLastName2.Text = String.Empty;
            txtEmail.Text = String.Empty;
            txtUsername.Text = String.Empty;
            txtPassword.Text = String.Empty;
            txtAge.Text = String.Empty;
        }

        protected void UserDemo()
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