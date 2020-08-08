using DAL;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL.DB;
using DAL.Entities;

namespace BLL
{
    public class AccessDb
    {
        public static int AddUser(User user)
        {
            try
            {
                var line = new SqlLine
                {
                    Request = @"EXEC Insert_User VALUES (@FirstName, @LastName, @LastName2, @Email, @Age, @Country, @Username, @Password, @PasswordAge, @PasswordLastSet, 0, @Code)"
                };

                var parFirstName = new SqlParameter
                {
                    SqlDbType = System.Data.SqlDbType.VarChar,
                    ParameterName = "@FirstName",
                    Value = user.FirstName
                };
                line.ParList.Add(parFirstName);

                var parLastName = new SqlParameter
                {
                    SqlDbType = System.Data.SqlDbType.VarChar,
                    ParameterName = "@LastName",
                    Value = user.LastName
                };
                line.ParList.Add(parLastName);

                var parLastName2 = new SqlParameter
                {
                    SqlDbType = System.Data.SqlDbType.VarChar,
                    ParameterName = "@LastName2",
                    Value = user.LastName2
                };
                line.ParList.Add(parLastName2);

                var parEmail = new SqlParameter
                {
                    SqlDbType = System.Data.SqlDbType.VarChar,
                    ParameterName = "@Email",
                    Value = user.Email
                };
                line.ParList.Add(parEmail);

                var parCountry = new SqlParameter
                {
                    SqlDbType = System.Data.SqlDbType.VarChar,
                    ParameterName = "@Country",
                    Value = user.Country
                };
                line.ParList.Add(parCountry);

                var parUsername = new SqlParameter
                {
                    SqlDbType = System.Data.SqlDbType.VarChar,
                    ParameterName = "@Username",
                    Value = user.Username
                };
                line.ParList.Add(parUsername);

                var parPassword = new SqlParameter
                {
                    SqlDbType = System.Data.SqlDbType.VarChar,
                    ParameterName = "@Password",
                    Value = user.Password
                };
                line.ParList.Add(parPassword);

                var parAge = new SqlParameter
                {
                    SqlDbType = System.Data.SqlDbType.Int,
                    ParameterName = "@Age",
                    Value = user.Age
                };
                line.ParList.Add(parAge);

                var parPasswordAge = new SqlParameter
                {
                    SqlDbType = System.Data.SqlDbType.Int,
                    ParameterName = "@PasswordAge",
                    Value = user.PasswordAge
                };
                line.ParList.Add(parPasswordAge);

                var parPasswordLastSet = new SqlParameter
                {
                    SqlDbType = System.Data.SqlDbType.DateTime,
                    ParameterName = "@PasswordLastSet",
                    Value = user.PasswordLastSet
                };
                line.ParList.Add(parPasswordLastSet);

                var parCode = new SqlParameter
                {
                    SqlDbType = System.Data.SqlDbType.VarChar,
                    ParameterName = "@Code",
                    Value = user.Code
                };
                line.ParList.Add(parCode);

                var delivery = new DataAccess();
                return delivery.RunStatementScalar(line);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public static bool AddActivation(User user)
        {
            try
            {
                var line = new SqlLine
                {
                    Request = @"INSERT INTO UserActivation VALUES(@ActivationCode)"
                };

                var parCode = new SqlParameter
                {
                    SqlDbType = System.Data.SqlDbType.VarChar,
                    ParameterName = "@ActivationCode",
                    Value = user.Code
                };
                line.ParList.Add(parCode);


                var delivery = new DataAccess();
                return delivery.RunStatement(line);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
