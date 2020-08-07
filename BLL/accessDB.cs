using DAL;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class accessDB
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
                line.ParList.Add(parFirstName);

                SqlParameter parLastName = new SqlParameter();
                parLastName.SqlDbType = System.Data.SqlDbType.VarChar;
                parLastName.ParameterName = "@LastName";
                parLastName.Value = user.LastName;
                line.ParList.Add(parLastName);

                SqlParameter parLastName2 = new SqlParameter();
                parLastName2.SqlDbType = System.Data.SqlDbType.VarChar;
                parLastName2.ParameterName = "@LastName2";
                parLastName2.Value = user.LastName2;
                line.ParList.Add(parLastName2);

                SqlParameter parEmail = new SqlParameter();
                parEmail.SqlDbType = System.Data.SqlDbType.VarChar;
                parEmail.ParameterName = "@Email";
                parEmail.Value = user.Email;
                line.ParList.Add(parEmail);

                SqlParameter parCountry = new SqlParameter();
                parCountry.SqlDbType = System.Data.SqlDbType.VarChar;
                parCountry.ParameterName = "@Country";
                parCountry.Value = user.Country;
                line.ParList.Add(parCountry);

                SqlParameter parUsername = new SqlParameter();
                parUsername.SqlDbType = System.Data.SqlDbType.VarChar;
                parUsername.ParameterName = "@Username";
                parUsername.Value = user.Username;
                line.ParList.Add(parUsername);

                SqlParameter parPassword = new SqlParameter();
                parPassword.SqlDbType = System.Data.SqlDbType.VarChar;
                parPassword.ParameterName = "@Password";
                parPassword.Value = user.Password;
                line.ParList.Add(parPassword);

                SqlParameter parAge = new SqlParameter();
                parAge.SqlDbType = System.Data.SqlDbType.Int;
                parAge.ParameterName = "@Age";
                parAge.Value = user.Age;
                line.ParList.Add(parAge);

                SqlParameter parPasswordAge = new SqlParameter();
                parPasswordAge.SqlDbType = System.Data.SqlDbType.Int;
                parPasswordAge.ParameterName = "@PasswordAge";
                parPasswordAge.Value = user.PasswordAge;
                line.ParList.Add(parPasswordAge);

                SqlParameter parPasswordLastSet = new SqlParameter();
                parPasswordLastSet.SqlDbType = System.Data.SqlDbType.DateTime;
                parPasswordLastSet.ParameterName = "@PasswordLastSet";
                parPasswordLastSet.Value = user.PasswordLastSet;
                line.ParList.Add(parPasswordLastSet);

                SqlParameter parCode = new SqlParameter();
                parCode.SqlDbType = System.Data.SqlDbType.VarChar;
                parCode.ParameterName = "@Code";
                parCode.Value = user.Code;
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
