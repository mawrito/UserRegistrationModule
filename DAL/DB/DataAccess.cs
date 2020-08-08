using System;
using System.Data;
using System.Data.SqlClient;

namespace DAL.DB
{

    public class DataAccess
    {
        private readonly string connectionString = Properties.Settings.Default.Connection;
        private SqlConnection connection;

        public DataAccess()
        {
            try
            {
                connection = new SqlConnection(connectionString);
                this.Open();
            }
            catch (Exception)
            {
                throw;
            }
        }
        private void Open()
        {
            if (connection.State == System.Data.ConnectionState.Closed)
                connection.Open();
        }
        private void Close()
        {
            if (connection.State == System.Data.ConnectionState.Open)
                connection.Close();
        }

        public int RunStatementScalar(SqlLine line)
        {
            int userid = 0;
            var constring = Properties.Settings.Default.Connection;
            SqlConnection con = new SqlConnection(constring);

            SqlCommand cmd = new SqlCommand("Insert_User", con);
            SqlDataAdapter da = new SqlDataAdapter();
            cmd.CommandType = CommandType.StoredProcedure;
            if (line.ParList.Count > 0)
                cmd.Parameters.AddRange(line.ParList.ToArray());
            con.Open();
            userid = Convert.ToInt32(cmd.ExecuteScalar());

            return userid;
        }

        public bool RunStatement(SqlLine line)
        {
            try
            {
                var cmd = new SqlCommand
                {
                    Connection = connection,
                    CommandType = System.Data.CommandType.Text,
                    CommandText = line.Request
                };

                if (line.ParList.Count > 0)
                {
                    cmd.Parameters.AddRange(line.ParList.ToArray());
                }
                this.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally
            {
                this.Close();
            }
            return true;
        }
    }
}
