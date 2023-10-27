using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using PH.MIDc.BO;
using System.Data;

namespace PH.MIDc.BackEnd.Job
{
    public class StockReportSummary_Job : PH.Platform.BackEnd.BO.IServerReport
    {

        #region IServerReport 成员

        DataTable dt;

        int PH.Platform.BackEnd.BO.IServerReport.CheckDataSource(string parameters)
        {
            //Xsj: 返回 -1，可以直接執行代碼進行調試 。
            //return -1;

            return 0;  
        }

        DevExpress.XtraReports.UI.XtraReport PH.Platform.BackEnd.BO.IServerReport.CreateReport(string parameters)
        {
            StockReportSummary rpt = new StockReportSummary(dt, Convert.ToInt32(parameters));
            return rpt;
        }

        object PH.Platform.BackEnd.BO.IServerReport.GetReportDataSource(string parameters)
        {
            dt = SqlDataHelper.GetStockReportSummary("", Convert.ToInt32(parameters));
            return dt;
        }

        #endregion
    }
}
