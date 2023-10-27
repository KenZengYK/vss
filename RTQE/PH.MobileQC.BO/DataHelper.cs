using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace PH.MobileQC.BO
{
    public class DataHelper
    {
        public static DataTable EXECSP_QC_MasterAnalyze(string Line, string Project, string Style, string WO, string WOc, string QNNo, DateTime QC_timeForm, DateTime QC_timeTo)
        {
            MobileQCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();
            string sqlstr = context.Connection.ConnectionString;

            SqlDataAdapter da = new SqlDataAdapter();
            SqlConnection cn = new SqlConnection(sqlstr);
            DataSet ds = new DataSet();

            da.SelectCommand = new SqlCommand("SP_QC_MasterAnalyze", cn);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.Add(new SqlParameter("@Line", SqlDbType.VarChar, 8));
            da.SelectCommand.Parameters.Add(new SqlParameter("@Project", SqlDbType.VarChar, 20));
            da.SelectCommand.Parameters.Add(new SqlParameter("@Style", SqlDbType.VarChar, 20));
            da.SelectCommand.Parameters.Add(new SqlParameter("@WO", SqlDbType.VarChar, 20));
            da.SelectCommand.Parameters.Add(new SqlParameter("@WOc", SqlDbType.VarChar, 20));
            da.SelectCommand.Parameters.Add(new SqlParameter("@QNNo", SqlDbType.VarChar, 10));
            da.SelectCommand.Parameters.Add(new SqlParameter("@QC_timeForm", SqlDbType.VarChar));
            da.SelectCommand.Parameters.Add(new SqlParameter("@QC_timeTo", SqlDbType.VarChar));

            da.SelectCommand.Parameters["@Line"].Value = Line;
            da.SelectCommand.Parameters["@Project"].Value = Project;
            da.SelectCommand.Parameters["@Style"].Value = Style;
            da.SelectCommand.Parameters["@WO"].Value = WO;
            da.SelectCommand.Parameters["@WOc"].Value = WOc;
            da.SelectCommand.Parameters["@QNNo"].Value = QNNo;
            da.SelectCommand.Parameters["@QC_timeForm"].Value = QC_timeForm.ToString("yyyy-MM-dd");
            da.SelectCommand.Parameters["@QC_timeTo"].Value = QC_timeTo.ToString("yyyy-MM-dd");


            da.SelectCommand.CommandTimeout = 8000;

            cn.Open();
            da.Fill(ds);
            cn.Close();
            cn.Dispose();

            return ds.Tables[0];
        }
    }
}
