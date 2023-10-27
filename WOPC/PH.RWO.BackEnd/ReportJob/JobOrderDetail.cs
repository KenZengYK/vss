using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PH.RWO.BackEnd.ReportJob
{
    public class JobOrderDetail:PH.Platform.BackEnd.BO.IServerReport
    {
        #region IServerReport Members

        public int CheckDataSource(string parameters)
        {
            return -1;
        }

        public DevExpress.XtraReports.UI.XtraReport CreateReport(string parameters)
        {
            Reports.OrderDetailReport rpt = new PH.RWO.BackEnd.Reports.OrderDetailReport(Convert.ToInt16(parameters.Split(',')[8]));
            return rpt;
        }

        public object GetReportDataSource(string parameters)
        {
            string[] paras = parameters.Split(',');
            string sql = string.Format(" sp_GetOrderDetail '{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}',{8},{9}", paras);
            PH.RWO.BO.RWOSOPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.RWO.BO.RWOSOPCDataContext>();
            return context.ExecuteQuery<PH.RWO.BO.OrderDetail>(sql).ToList();
        }

        #endregion
    }
    public class JobOrderDetailShip : PH.Platform.BackEnd.BO.IServerReport
    {
        #region IServerReport Members

        public int CheckDataSource(string parameters)
        {
            return -1;
        }

        public DevExpress.XtraReports.UI.XtraReport CreateReport(string parameters)
        {
            Reports.OrderDetailShip rpt = new PH.RWO.BackEnd.Reports.OrderDetailShip();
            return rpt;
        }

        public object GetReportDataSource(string parameters)
        {
            string[] paras = parameters.Split(',');
            string cono = paras[0];
            DateTime cur = DateTime.Now;
            string dt = cur.ToString("yyyyMMdd");
            string tm = cur.ToString("HHmmssfff");
            string dt1 = string.IsNullOrEmpty(paras[1]) ? "20000101" : Convert.ToDateTime(paras[1]).ToString("yyyyMMdd");
            string dt2 = string.IsNullOrEmpty(paras[2]) ? "21000101" : Convert.ToDateTime(paras[2]).ToString("yyyyMMdd");
            string cusn = paras[3];
            string prjno = paras[4];
            string sopno = paras[5];
            string slmn = paras[6];
            string facotry = paras[7];

            string sql = string.Format("call zphlib_aul.sp_printorderdetail_shp('{0}',{1},'{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}')"
               ,cono
               ,dt
               ,tm
               ,dt1
               ,dt2
               ,cusn
               ,prjno
               ,sopno
               ,slmn
               ,facotry);
            DB.AS400DB.Execute(sql);
            sql = string.Format(" SP_GETORDERDETAIL_SHIP '{0}','{1}','{2}'",dt,tm, paras[9]);
            PH.RWO.BO.RWOSOPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.RWO.BO.RWOSOPCDataContext>();
            return context.ExecuteQuery<PH.RWO.BO.OrderDetailShip>(sql).ToList();
        }

        #endregion
    }



}
