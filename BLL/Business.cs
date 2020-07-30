using System;
using DAL;
using System.Data.SqlClient;

namespace BLL
{
    public class Business
    {
        
        public static int AddUser(User user)
        {
            try
            {
                SqlLine line = new SqlLine();
                line.Request = @"EXEC Insert_User VALUES (@FirstName, @LastName, @LastName2, @Email, @Age, @Country, @Username, @Password, @PasswordAge, @PasswordLastSet, 0, @Code)";

                SqlParameter parFirstName = new SqlParameter();
                parFirstName.SqlDbType = System.Data.SqlDbType.VarChar;
                parFirstName.ParameterName = "@FirstName";
                parFirstName.Value = user.FirstName;

                SqlParameter parLastName = new SqlParameter();
                parLastName.SqlDbType = System.Data.SqlDbType.VarChar;
                parLastName.ParameterName = "@LastName";
                parLastName.Value = user.LastName;

                SqlParameter parLastName2 = new SqlParameter();
                parLastName2.SqlDbType = System.Data.SqlDbType.VarChar;
                parLastName2.ParameterName = "@LastName2";
                parLastName2.Value = user.LastName2;

                SqlParameter parEmail = new SqlParameter();
                parEmail.SqlDbType = System.Data.SqlDbType.VarChar;
                parEmail.ParameterName = "@Email";
                parEmail.Value = user.Email;

                SqlParameter parCountry = new SqlParameter();
                parCountry.SqlDbType = System.Data.SqlDbType.VarChar;
                parCountry.ParameterName = "@Country";
                parCountry.Value = user.Country;

                SqlParameter parUsername = new SqlParameter();
                parUsername.SqlDbType = System.Data.SqlDbType.VarChar;
                parUsername.ParameterName = "@Username";
                parUsername.Value = user.Username;

                SqlParameter parPassword = new SqlParameter();
                parPassword.SqlDbType = System.Data.SqlDbType.VarChar;
                parPassword.ParameterName = "@Password";
                parPassword.Value = user.Password;

                SqlParameter parAge = new SqlParameter();
                parAge.SqlDbType = System.Data.SqlDbType.Int;
                parAge.ParameterName = "@Age";
                parAge.Value = user.Age;

                SqlParameter parPasswordAge = new SqlParameter();
                parPasswordAge.SqlDbType = System.Data.SqlDbType.Int;
                parPasswordAge.ParameterName = "@PasswordAge";
                parPasswordAge.Value = user.PasswordAge;

                SqlParameter parPasswordLastSet = new SqlParameter();
                parPasswordLastSet.SqlDbType = System.Data.SqlDbType.DateTime;
                parPasswordLastSet.ParameterName = "@PasswordLastSet";
                parPasswordLastSet.Value = user.PasswordLastSet;

                SqlParameter parCode = new SqlParameter();
                parCode.SqlDbType = System.Data.SqlDbType.VarChar;
                parCode.ParameterName = "@Code";
                parCode.Value = user.Code;



                line.ParList.Add(parFirstName);
                line.ParList.Add(parLastName);
                line.ParList.Add(parLastName2);
                line.ParList.Add(parEmail);
                line.ParList.Add(parCountry);
                line.ParList.Add(parUsername);
                line.ParList.Add(parPassword);
                line.ParList.Add(parAge);
                line.ParList.Add(parPasswordAge);
                line.ParList.Add(parPasswordLastSet);
                line.ParList.Add(parCode);

                DataAccess objacceso = new DataAccess();

                
                return objacceso.RunStatementScalar(line);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        

    }
}
