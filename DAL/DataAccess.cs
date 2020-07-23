using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{

    public class DataAccess
    {
        #region private methods
        private string connectionStr = Properties.Settings.Default.Connection;
        private SqlConnection connectionObjct;
        
        public DataAccess()
        {
            try
            {
                connectionObjct = new SqlConnection(connectionStr);
                this.open();
            }
            catch (Exception)
            {
                throw;
            }
        }
        private void open()
        {
            if (connectionObjct.State == System.Data.ConnectionState.Closed)
                connectionObjct.Open();
        }
        private void close()
        {
            if (connectionObjct.State == System.Data.ConnectionState.Open)
                connectionObjct.Close();
        }
        #endregion
        #region public methods
        public bool RunStatement(SqlLine line)
        {
            try
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = connectionObjct;
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = line.Request;

                if (line.ParList.Count > 0)
                {
                    cmd.Parameters.AddRange(line.ParList.ToArray());
                }
                this.open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally
            {
                this.close();
            }
            return true;
        }

        public int RunStatementScalar(SqlLine line)
        {
            int userid = 0;
            string constring = Properties.Settings.Default.Connection;
            using (SqlConnection con = new SqlConnection(constring))
            {
                using (SqlCommand cmd = new SqlCommand("Insert_User", con))
                {
                    using (SqlDataAdapter da = new SqlDataAdapter());
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        if (line.ParList.Count > 0)
                        {
                            cmd.Parameters.AddRange(line.ParList.ToArray());
                        }
                        con.Open();
                        userid = Convert.ToInt32(cmd.ExecuteScalar());
                    }
                    return userid;
                }

            }
            #endregion
        }

    }
}
