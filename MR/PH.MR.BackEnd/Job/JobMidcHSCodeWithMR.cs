using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using PH.MR.BO;
using PH.Platform.BO;
using PH.Platform.BO.Interface;
using PH.Platform.BackEnd.BO;

namespace PH.MR.BackEnd
{
    public class JobMidcHSCodeByMRReport : PH.Platform.BackEnd.BO.IServerReport
    {
        private string _taskNO = "";

        public JobMidcHSCodeByMRReport()
        {

        }

        #region IServerReport 成员

        public int CheckDataSource(string parameters)
        {
            ServerJob.WriteLog("Running -- Step1: CheckDataSource");

            //Xsj: 返回 -1，可以直接執行代碼進行調試 。
            //return -1;

            //Xsj: 返回 0，後台運行，無法調試。
            return 0;
        }

        public DevExpress.XtraReports.UI.XtraReport CreateReport(string parameters)
        {
            ServerJob.WriteLog("Running --Step2: CreateReport");
            string[] pars = parameters.Split(',');

            PH.MR.BackEnd.MidcHSCodeMRReport rpt = new PH.MR.BackEnd.MidcHSCodeMRReport();

            if (pars.ToList().Count() > 2)
            {
                string fromDay = pars[0];
                string toDay = pars[1];

                rpt.FromDay = fromDay;
                rpt.TODay = toDay;
            }
            else
            { 
                string ProjectNo = pars[0];

                rpt.RptProjectNo = ProjectNo;

            }         
           
          
            rpt.RptType = "3";
            return rpt;
        }

        public object GetReportDataSource(string parameters)
        {
            //Xsj:Fetch MR Data From Erp TO Local Saql DataBase

            PH.MR.BO.MRDataContext dct = PH.Platform.BO.ContextBuilder.CreateContext<PH.MR.BO.MRDataContext>();
            dct.CommandTimeout = 30000;

            AnticipantMR_HSCodeHeader taskHeaderBO = new AnticipantMR_HSCodeHeader();

            string taskNO = DateTime.Now.ToString("yyyyMMddHHmmssfff");
            string ProjectNo = "";
            string fromDay = "";
            string toDay = "";
            string sqlString = "";

            string[] pars = parameters.Split(',');
            if (pars.ToList().Count() > 2)
            {

                 fromDay = pars[0];
                 toDay = pars[1];
                taskHeaderBO.FromDate = DateTime.ParseExact(fromDay, "yyyyMMdd", null);
                taskHeaderBO.EndDate = DateTime.ParseExact(toDay, "yyyyMMdd", null);

            }
            else
            { 
                ProjectNo = pars[0];
                taskHeaderBO.ProjectNo = ProjectNo;
                //taskHeaderBO.FromDate = DateTime.Now;
                //taskHeaderBO.EndDate = DateTime.Now;
            }

            this._taskNO = taskNO;

            //Xsj20151017:Add 
            taskHeaderBO.TaskNO = taskNO;      

            taskHeaderBO.ActionFromTime = DateTime.Now;
            taskHeaderBO.CreateUser = PH.Platform.Common.SysParamHelper.Instance.UserID; //由David加入 2019-07-09
            taskHeaderBO.CreateDate = DateTime.Now;

            dct.AnticipantMR_HSCodeHeaders.InsertOnSubmit(taskHeaderBO);
            dct.SubmitChanges();

            string remark = "";

            List<PH.MR.BO.MRHSCodeRptBO> rptDataSourceList = new List<PH.MR.BO.MRHSCodeRptBO>();
            PH.MR.BO.MRHSCodeRptBO rptDataSource = new PH.MR.BO.MRHSCodeRptBO();
            rptDataSourceList.Add(rptDataSource);
            try
            {
                if (pars.ToList().Count() > 2)
                {
                    sqlString = string.Format(@"SELECT DISTINCT ordn55
                                                   FROM OPENQUERY([AS400],'
                                                                SELECT DISTINCT ordn55,dtdr55
                                                                FROM AULT4F1.oep55 
                                                                    Inner Join AULT4F1.oep40 on cono55=cono40
                                                                     and ordn55=ordn40
                                                                WHERE cono55=''P1'' 
                                                                    AND dtdr55+19000000>={0} 
                                                                    AND dtdr55+19000000<={1}
                                                                    AND dtlc55=0 AND stat55<>''X'' 
                                                                    AND stat55<>''C'' And CUSN40 not like ''CRTE%''  
                                                                    ') ", fromDay, toDay);
                }
                else
                {
                   
                     sqlString = string.Format(@"SELECT DISTINCT ordn55
                                                   FROM OPENQUERY([AS400],'
                                                                SELECT DISTINCT ordn55,dtdr55
                                                                FROM AULT4F1.oep55 
                                                                    Inner Join AULT4F1.oep40 on cono55=cono40
                                                                     and ordn55=ordn40
                                                                WHERE cono55=''P1'' 
                                                                    AND CUSO40=''{0}''                                                                   
                                                                    AND dtlc55=0 AND stat55<>''X'' 
                                                                    AND stat55<>''C'' And CUSN40 not like ''CRTE%''  
                                                                    ') ", ProjectNo);

                }
                //                string sqlString = string.Format(@"SELECT DISTINCT ordn55
                //                                                   FROM OPENQUERY([AS400],'
                //                                                                SELECT DISTINCT ordn55,dtdr55
                //                                                                FROM AULT4F1.oep55 
                //                                                                    Inner Join AULT4F1.oep40 on cono55=cono40
                //                                                                     and ordn55=ordn40
                //                                                                WHERE cono55=''P1'' 
                //                                                                    AND dtdr55+19000000>={0} 
                //                                                                    AND dtdr55+19000000<={1}
                //
                //                                                                    and CUSO40=''ETAA930C-O''
                //
                //                                                                    AND dtlc55=0 AND stat55<>''X'' 
                //                                                                    AND stat55<>''C'' And CUSN40 not like ''CRTE%''  
                //                                                                    ') ", fromDay, toDay);

                DataTable dt = new DataTable();
                ServerJob.WriteLog("Running --Step3: Get Sales Order List");
                dt = dct.ExecuteDataTable(sqlString, "OrdnList");
                if (dt.Rows.Count > 0)
                {
                    //Xsj20150822:One by One to get Mr Info.
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {

                        ReportHelper helper = new ReportHelper();
                        string dept = "OA";
                        helper.DT = Convert.ToInt32(DateTime.Now.ToString("yyyyMMdd"));
                        helper.TM = DateTime.Now.ToString("HHmmssfff");
                        helper.JOBN = string.Format("{0}{1}.{2}", helper.DT, helper.TM.Substring(0, 2), helper.TM.Substring(2, 4));

                        ServerJob.WriteLog("Running --Step4: Create ERP Data----JobNO:" + helper.JOBN + "  Order NO:" + dt.Rows[i][0].ToString());

                        helper.phReportAction = PHReportAction.GenerateMR;
                        helper.dataAction = DataAction.None;
                        helper.ReportOption = PHPrintReportOption.None;
                        helper.Dept = dept;
                        helper.CONO = "P1";
                        helper.Ordn = dt.Rows[i][0].ToString();
                        helper.IsOrdnAlive = true;
                        helper.PrepareData();

                        //-------------2   
                        ServerJob.WriteLog("Running --Step4.2: Get ERP Data TO SQL----JobNO:" + helper.JOBN + "  Order NO:" + dt.Rows[i][0].ToString());
                        string sqlcmd = string.Format("exec [PH.MR].dbo.[sp_AnticipatedMR_MIDC] {0}0,'{1}','{2}'", helper.JOBN, PH.Platform.Common.SysParamHelper.Instance.UserID, taskNO);

                        try
                        {
                            //Xsj:只能執行Erp Live的數據
                            PH.MR.BO.DB.SQL2000DB.Execute(sqlcmd);
                        }
                        catch (Exception ex)
                        {
                            ServerJob.WriteLog("Error --Step4: Create ERP Data JobNO:" + helper.JOBN + "  Order NO:" + dt.Rows[i][0].ToString() + " \r\n " + ex.Message);

                            taskHeaderBO.Status = "Error";
                            remark += "Error --Step4: Create ERP Data JobNO:" + helper.JOBN + "  Order NO:" + dt.Rows[i][0].ToString() + " \r\n " + ex.Message + "\r\n" +
                                "出错的SQL语句为：" + sqlcmd;

                        }
                    }
                }
            }
            catch (Exception ex)
            {
                ServerJob.WriteLog("Running --Error Msg: " + ex.Message);
                taskHeaderBO.Status = "Error";
                remark += ex.Message;
            }
            finally
            {
                ServerJob.WriteLog("Running --Step4: Create ERP Data  Finished! ");
                dct.Connection.Close();
            }


            //Xsj:Create Report Data From Local Sql DataBase
            if (taskHeaderBO.Status != "Error")
            {
                try
                {
                    DataSet ds = new DataSet();
                    System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();
                    cmd.Connection = dct.Connection as System.Data.SqlClient.SqlConnection;
                    cmd.Connection.Open();
                    cmd.CommandTimeout = 60000;
                    cmd.CommandText = "SELECT * FROM [PH.MR].dbo.AnticipantMR_HSCodeDetail WHERE TaskNO='" + this._taskNO + "'";
                    System.Data.SqlClient.SqlDataAdapter dap = new System.Data.SqlClient.SqlDataAdapter();
                    dap.SelectCommand = cmd;
                    dap.Fill(ds);
                    if (ds.Tables.Count > 0 && ds.Tables[0].Rows.Count == 0)
                    {
                        ServerJob.WriteLog("Running --Step4: No Data Create At this Task! ");
                        taskHeaderBO.Status = "Error";
                        remark += "No Data Create At this Task!";
                    }
                    else
                    {
                        ServerJob.WriteLog("Running --Step5: Start MR Report Sumarry! ");


                        //2017-11-25 由David加入begin---------------------------------------------
                        string SaveProjects = "";
                        var lists = dct.AnticipantMR_HSCodeDetails.Where(p => p.TaskNO == this._taskNO).Select(p => p.Projectno).Distinct();
                        foreach (var projectNo in lists)
                        {
                            SaveProjects += projectNo + ",";
                        }
                        if (SaveProjects[SaveProjects.Length - 1] == ',')
                        {
                            SaveProjects = SaveProjects.Remove(SaveProjects.Length - 1, 1);
                        }
                        //2017-11-25 由David加入end---------------------------------------------

                        DataSet ds2 = new DataSet();
                        //cmd.CommandText = "P_GetMidcHSCodeByMRWithWO"; // 20200907 by shulin

                        cmd.CommandText = "P_GetMidcHSCodeByMR";
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.Add("@TaskNO", SqlDbType.NVarChar, 50);
                        cmd.Parameters["@TaskNO"].Value = this._taskNO;
                        cmd.Parameters.Add("@Projects", SqlDbType.NVarChar, 1000);
                        //cmd.Parameters["@Projects"].Value = "";
                        cmd.Parameters["@Projects"].Value = SaveProjects;  //2017-11-25由David調整
                        dap.Fill(ds2);


                        //Detial
                        DataTable dt = ds2.Tables[0];
                        for (int i = 0; i < ds2.Tables[0].Rows.Count; i++)
                        {
                            #region
                            PH.MR.BO.MRHSCodeDetailRptBO bo = new MRHSCodeDetailRptBO();

                            bo.Customer = dt.Rows[i]["Customer"] == DBNull.Value ? "" : dt.Rows[i]["Customer"].ToString();
                            bo.SalesOrder = dt.Rows[i]["SalesOrder"] == DBNull.Value ? "" : dt.Rows[i]["SalesOrder"].ToString();
                            bo.StyleType = dt.Rows[i]["StyleType"] == DBNull.Value ? "" : dt.Rows[i]["StyleType"].ToString();
                            bo.StyleHSCode = dt.Rows[i]["StyleHSCode"] == DBNull.Value ? "" : dt.Rows[i]["StyleHSCode"].ToString();
                            bo.PHStyleNo = dt.Rows[i]["PHStyleNo"] == DBNull.Value ? "" : dt.Rows[i]["PHStyleNo"].ToString();
                            bo.StyleName = dt.Rows[i]["StyleName"] == DBNull.Value ? "" : dt.Rows[i]["StyleName"].ToString();
                            bo.ProductUnit = dt.Rows[i]["ProductUnit"] == DBNull.Value ? "" : dt.Rows[i]["ProductUnit"].ToString();
                            bo.ProductQty = dt.Rows[i]["ProductQty"] == DBNull.Value ? 0 : Convert.ToInt32(dt.Rows[i]["ProductQty"]);
                            bo.ProductWeightPer = dt.Rows[i]["ProductWeightPer"] == DBNull.Value ? 0 : Convert.ToDecimal(dt.Rows[i]["ProductWeightPer"]);

                            bo.ItemHSCode = dt.Rows[i]["ItemHSCode"] == DBNull.Value ? "" : dt.Rows[i]["ItemHSCode"].ToString();
                            bo.PHItemNO = dt.Rows[i]["PHItemNO"] == DBNull.Value ? "" : dt.Rows[i]["PHItemNO"].ToString();
                            bo.ItemName = dt.Rows[i]["ItemName"] == DBNull.Value ? "" : dt.Rows[i]["ItemName"].ToString();
                            bo.ItemWeightPer = dt.Rows[i]["ItemWeightPer"] == DBNull.Value ? 0 : Convert.ToDecimal(dt.Rows[i]["ItemWeightPer"]);

                            bo.WeightHsCode = dt.Rows[i]["WeightHsCode"] == DBNull.Value ? 0 : Convert.ToDecimal(dt.Rows[i]["WeightHsCode"]);
                            bo.TotalWeight = dt.Rows[i]["TotalWeight"] == DBNull.Value ? 0 : Convert.ToDecimal(dt.Rows[i]["TotalWeight"]);
                            bo.TotalMRQty = dt.Rows[i]["TotalMRQty"] == DBNull.Value ? 0 : Convert.ToInt32(dt.Rows[i]["TotalMRQty"]);
                            bo.MRPer = dt.Rows[i]["MRPer"] == DBNull.Value ? 0 : Convert.ToDecimal(dt.Rows[i]["MRPer"]);

                            bo.PHUnit = dt.Rows[i]["PHUnit"] == DBNull.Value ? "" : dt.Rows[i]["PHUnit"].ToString();
                            bo.Currency = dt.Rows[i]["Currency"] == DBNull.Value ? "" : dt.Rows[i]["Currency"].ToString();
                            bo.IsPurchaseItem = dt.Rows[i]["IsPurchaseItem"] == DBNull.Value ? "" : dt.Rows[i]["IsPurchaseItem"].ToString();


                            bo.FabricRate = dt.Rows[i]["FabricRate"] == DBNull.Value ? 0 : Convert.ToDecimal(dt.Rows[i]["FabricRate"]);
                            bo.Wastage = dt.Rows[i]["Wastage"] == DBNull.Value ? 0 : Convert.ToDecimal(dt.Rows[i]["Wastage"]);
                            bo.ItemNetWeight = dt.Rows[i]["NetWeight"] == DBNull.Value ? 0 : Convert.ToDecimal(dt.Rows[i]["NetWeight"]);
                            bo.ProductQty_Purchase = dt.Rows[i]["ProductQty_Purchase"] == DBNull.Value ? 0 : Convert.ToInt32(dt.Rows[i]["ProductQty_Purchase"]);

                            //Xsj:Style HS Info
                            bo.StyleHSCodeSeq = dt.Rows[i]["StyleHSCodeSeq"] == DBNull.Value ? 0 : Convert.ToInt32(dt.Rows[i]["StyleHSCodeSeq"]);
                            bo.StyleHSName = dt.Rows[i]["StyleHSName"] == DBNull.Value ? "" : dt.Rows[i]["StyleHSName"].ToString();
                            bo.StyleHSDesc = dt.Rows[i]["StyleHSDesc"] == DBNull.Value ? "" : dt.Rows[i]["StyleHSDesc"].ToString();
                            bo.StyleHSUnit = dt.Rows[i]["StyleHSUnit"] == DBNull.Value ? "" : dt.Rows[i]["StyleHSUnit"].ToString();

                            //Xsj:Item HS Info
                            bo.ItemHSCodeSeq = dt.Rows[i]["ItemHSCodeSeq"] == DBNull.Value ? 0 : Convert.ToInt32(dt.Rows[i]["ItemHSCodeSeq"]);
                            bo.ItemHSName = dt.Rows[i]["ItemHSName"] == DBNull.Value ? "" : dt.Rows[i]["ItemHSName"].ToString();
                            bo.ItemHSDesc = dt.Rows[i]["ItemHSDesc"] == DBNull.Value ? "" : dt.Rows[i]["ItemHSDesc"].ToString();
                            bo.ItemHSUnit = dt.Rows[i]["ItemHSUnit"] == DBNull.Value ? "" : dt.Rows[i]["ItemHSUnit"].ToString();

                            rptDataSource.DetailList.Add(bo);
                            #endregion
                        }

                        //Summary 
                        dt = ds2.Tables[1];
                        for (int i = 0; i < ds2.Tables[1].Rows.Count; i++)
                        {
                            #region
                            PH.MR.BO.MRHSCodeSummaryRptBO bo = new MRHSCodeSummaryRptBO();

                            bo.StyleType = dt.Rows[i]["StyleType"] == DBNull.Value ? "" : dt.Rows[i]["StyleType"].ToString();
                            bo.StyleHSCodeSeq = dt.Rows[i]["StyleHSCodeSeq"] == DBNull.Value ? 0 : Convert.ToInt32(dt.Rows[i]["StyleHSCodeSeq"]);
                            bo.StyleHSCode = dt.Rows[i]["StyleHSCode"] == DBNull.Value ? "" : dt.Rows[i]["StyleHSCode"].ToString();
                            bo.StyleHSName = dt.Rows[i]["StyleHSName"] == DBNull.Value ? "" : dt.Rows[i]["StyleHSName"].ToString();
                            bo.StyleHSDesc = dt.Rows[i]["StyleHSDesc"] == DBNull.Value ? "" : dt.Rows[i]["StyleHSDesc"].ToString();
                            //bo.StyleHSUnit = dt.Rows[i]["StyleHSUnit"] == DBNull.Value ? "" : dt.Rows[i]["StyleHSUnit"].ToString();
                            bo.ProductQty = dt.Rows[i]["ProductQty"] == DBNull.Value ? 0 : Convert.ToInt32(dt.Rows[i]["ProductQty"]);
                            //bo.ProductUnit = dt.Rows[i]["ProductUnit"] == DBNull.Value ? "" : dt.Rows[i]["ProductUnit"].ToString();
                            bo.StyleHSUnit = dt.Rows[i]["StyleHSUnit"] == DBNull.Value ? "" : dt.Rows[i]["StyleHSUnit"].ToString();

                            bo.ItemHSCodeSeq = dt.Rows[i]["ItemHSCodeSeq"] == DBNull.Value ? 0 : Convert.ToInt32(dt.Rows[i]["ItemHSCodeSeq"]);
                            bo.ItemHSCode = dt.Rows[i]["ItemHSCode"] == DBNull.Value ? "" : dt.Rows[i]["ItemHSCode"].ToString();
                            bo.ItemHSName = dt.Rows[i]["ItemHSName"] == DBNull.Value ? "" : dt.Rows[i]["ItemHSName"].ToString();
                            bo.ItemHSDesc = dt.Rows[i]["ItemHSDesc"] == DBNull.Value ? "" : dt.Rows[i]["ItemHSDesc"].ToString();
                            bo.ItemHSUnit = dt.Rows[i]["ItemHSUnit"] == DBNull.Value ? "" : dt.Rows[i]["ItemHSUnit"].ToString();

                            bo.SalesOrderItemTotalWeight = dt.Rows[i]["SalesOrderItemTotalWeight"] == DBNull.Value ? 0 : Convert.ToDecimal(dt.Rows[i]["SalesOrderItemTotalWeight"]);
                            bo.SalesOrderWastage = dt.Rows[i]["SalesOrderWastage"] == DBNull.Value ? 0 : Convert.ToDecimal(dt.Rows[i]["SalesOrderWastage"]);

                            bo.SalesOrderItemTotalNetWeight = dt.Rows[i]["SalesOrderItemTotalNetWeight"] == DBNull.Value ? 0 : Convert.ToDecimal(dt.Rows[i]["SalesOrderItemTotalNetWeight"]);
                            bo.SalesOrderItemNetWeightPer = dt.Rows[i]["SalesOrderItemNetWeightPer"] == DBNull.Value ? 0 : Convert.ToDecimal(dt.Rows[i]["SalesOrderItemNetWeightPer"]);
                            bo.SalesOrderItemTotalWeightPer = dt.Rows[i]["SalesOrderItemTotalWeightPer"] == DBNull.Value ? 0 : Convert.ToDecimal(dt.Rows[i]["SalesOrderItemTotalWeightPer"]);

                            rptDataSource.SummaryList.Add(bo);
                            #endregion
                        }
                    }
                    cmd.Connection.Close();
                  
                }
                catch (Exception ex)
                {
                    ServerJob.WriteLog("Running --Error Msg: " + ex.Message);

                    //taskHeaderBO.Status = "Error";
                    remark += ex.Message;
                }
            }

            if (taskHeaderBO.Status == null)
            {
                taskHeaderBO.Status = "OK";
            }

            taskHeaderBO.ActionEndTime = DateTime.Now;
            taskHeaderBO.Remark = remark;

            dct.SubmitChanges();
            dct.Connection.Close();

            ServerJob.WriteLog("Running --Step5: End MR Report Sumarry! ");


            return rptDataSourceList;

        }

        #endregion


      
    }
}
