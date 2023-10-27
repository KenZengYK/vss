using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using PH.MobileQC.BO;
using System.Data.SqlClient;
using System.Data;

namespace PH.MobileQC.UI.Helper
{
    //Xsj20141224:Line助手，用于獲取Line的信息。
    public class LineHelper
    {



        public MobileQCDataContext Context
        {
            get;
            set;
        }


        public List<lines> GetLineInfo(bool IsOnLine)
        {
            List<lines> lineList = new List<lines>();
            string sqlstr = string.Empty;
            if (IsOnLine)
            {


                //sqlstr = @"select pline  from openquery(INTERBASE, 'select distinct pline from Mobile_QC where TPlant = ''{0}'' ')";
               // sqlstr = @"select tshop,pline,tplant as factory from openquery(INTERBASE, 'select distinct tshop,pline,tplant from Mobile_QC where tplant=''SL'' ')";
                sqlstr = @"select tshop,pline,tplant as factory from openquery(INTERBASE, 'select distinct tshop,pline,tplant from Mobile_QC ')";
                // sqlstr = string.Format(sqlstr, PH.Platform.Common.SysParamHelper.Instance.Location);
            }
            else
            {
                sqlstr = "SELECT distinct pline FROM mobile_qc ORDER BY pline";
            }
            lineList=this.Context.ExecuteQuery<lines>(sqlstr).ToList<lines>();
            return lineList;
        }


        public List<LineBO> GetLineDataSource()
        {
            List<LineBO> lineBOList = new List<LineBO>();
            PH.MobileQC.BO.MobileQCDataContext dcon = PH.Platform.BO.ContextBuilder.CreateContext<PH.MobileQC.BO.MobileQCDataContext>();

            SqlDataAdapter dap = new SqlDataAdapter();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select tplant as factory,tShop,pline from openquery(INTERBASE, 'select distinct tplant,TSHOP, PLINE from Mobile_QC ') order by factory desc";
            cmd.Connection = new SqlConnection(dcon.Connection.ConnectionString);
            cmd.CommandTimeout = 1000 * 60 * 3;
            dap.SelectCommand = cmd;

            DataTable dt = new DataTable();
            dap.Fill(dt);
 
            if (dt.Rows.Count > 0)
            {
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    LineBO bo = new LineBO();
                    bo.Factory = dt.Rows[i]["factory"].ToString();
                    bo.WorkShop = dt.Rows[i]["tShop"].ToString();
                    bo.Line = dt.Rows[i]["pline"].ToString();
                    lineBOList.Add(bo);
                }
            }

            return lineBOList;
        }
    }
}
