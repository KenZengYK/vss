using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using PH.Platform.BackEnd.BO;
using PH.Platform.BO;
using PH.Platform.BO.Interface;
using PH.MR.BO;


namespace PH.MR.BackEnd.Job
{
    public class JobPackingWithMR : PH.Platform.BackEnd.BO.IServerJob
    {
        //MRHelper MRHelper_GetData;

        public void Testing(string parameters)
        {
            BackEndJob(parameters);
        }


        #region IServerJob 成员

        public void BackEndJob(string parameters)
        {
            PH.MR.BO.MRDataContext dcon = PH.Platform.BO.ContextBuilder.CreateContext<PH.MR.BO.MRDataContext>();
            dcon.CommandTimeout = 30000;

            //Xsj:Fetch MR Data From Erp TO Local Saql DataBase
            ServerJob.WriteLog("Running --Step3: GetReportDataSource");

            string[] pars = parameters.Split(','); 

            List<string> salseOrderList = new List<string>();
            List<PH.MR.BO.MRHSCodeRptBO> rptDataSourceList = new List<PH.MR.BO.MRHSCodeRptBO>();
            PH.MR.BO.MRHSCodeRptBO rptDataSource = new PH.MR.BO.MRHSCodeRptBO();
            rptDataSourceList.Add(rptDataSource);
            List<string> conditions = new List<string>();
            try
            {
                if (pars[0] == "bydate")
                {
                    string fromDay = pars[1];
                    string toDay = pars[2];
                    string sqlString = string.Format(@"SELECT  DISTINCT ordn55
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

                    DataTable dt = new DataTable();
                    dt = dcon.ExecuteDataTable(sqlString, "OrdnList");

                    if (dt.Rows.Count > 0)
                    {
                        for (int i = 0; i < dt.Rows.Count; i++)
                        {
                            conditions.Add(dt.Rows[i][0].ToString());
                        }
                    }
                }
                else if (pars[0] == "byprojectno")
                {
                    for (int i = 1; i < pars.Length; i++)
                    {
                        conditions.Add(pars[i]);
                    }
                }


                if (conditions.Count > 0)
                {
                    //Xsj20150822:One by One to get Mr Info.
                    foreach (string item in conditions)
                    {
                        ReportHelper helper = new ReportHelper();
                        string dept = "Packing";
                        helper.DT = Convert.ToInt32(DateTime.Now.ToString("yyyyMMdd"));
                        helper.TM = DateTime.Now.ToString("HHmmssfff");
                        helper.JOBN = string.Format("{0}{1}.{2}", helper.DT, helper.TM.Substring(0, 2), helper.TM.Substring(2, 4));

                        ServerJob.WriteLog("Running --Step4: Create ERP Data JobNO:" + helper.JOBN + "  Order NO:" + item);

                        helper.phReportAction = PHReportAction.GenerateMR;
                        helper.dataAction = DataAction.None;
                        helper.ReportOption = PHPrintReportOption.None;
                        helper.Dept = dept;
                        helper.CONO = "P1";
                        if (pars[0] == "bydate")
                        {
                            helper.Ordn = item;
                            helper.IsOrdnAlive = true;
                        }
                        else if (pars[0] == "byprojectno")
                        {
                            helper.Project = item;
                        }
                        helper.PrepareData();

                        salseOrderList.Add(helper.Ordn);

                        //-------------2 
                        string sqlcmd = string.Format("exec [PH.MR].dbo.[sp_AnticipatedMR_Packing] {0}0,'{1}' ", helper.JOBN, PH.Platform.Common.SysParamHelper.Instance.UserID);

                        try
                        {
                            //Xsj:只能執行Erp Live的數據
                            PH.MR.BO.DB.SQL2000DB.Execute(sqlcmd);
                        }
                        catch (Exception ex)
                        {
                            ServerJob.WriteLog("Error --Step4: Create ERP Data JobNO:" + helper.JOBN + "  Order NO:" + item + " \r\n " + ex.Message);  
                        }
                    }
                }


                //Xsj:Create Compare Record
                try
                {
                    PH.MR.BO.MRDataContext dct = PH.Platform.BO.ContextBuilder.CreateContext<PH.MR.BO.MRDataContext>();
                    List<string> projectNOs = dct.AnticipantMR_Packings.Where(p => salseOrderList.Contains(p.Salesorder)).Select(p => p.Projectno).Distinct().ToList();

                    foreach (string projectItem in projectNOs)
                    {
                        dct.P_GenerateStyle_Packing(projectItem, PH.Platform.Common.SysParamHelper.Instance.UserID);
                    }
                    ServerJob.WriteLog("Running --Step4: Create Compare Data  Finished! ");
                }
                catch (Exception ex)
                {
                    ServerJob.WriteLog("Running --Error Msg: " + ex.Message);
                }
            }
            catch (Exception ex)
            {
                //ServerJob.WriteLog("Running --Error Msg: " + ex.Message);
            }
            finally
            {
               // ServerJob.WriteLog("Running --Step4: Create ERP Data  Finished! ");
            }
            ServerJob.WriteLog("Running --Step5: End MR Report Sumarry! ");

        }

        //private List<string> GetWorkOrders()
        //{
        //}

        //private void GetMRDataFromERP(List<string> WorkOrders)
        //{
        //    //Xsj20150822:One by One to get Mr Info.
        //    foreach (string item in WorkOrders)
        //    {
        //        ReportHelper helper = new ReportHelper();
        //        string dept = "Packing";
        //        helper.DT = Convert.ToInt32(DateTime.Now.ToString("yyyyMMdd"));
        //        helper.TM = DateTime.Now.ToString("HHmmssfff");
        //        helper.JOBN = string.Format("{0}{1}.{2}", helper.DT, helper.TM.Substring(0, 2), helper.TM.Substring(2, 4));

        //        ServerJob.WriteLog("Running --Step4: Create ERP Data JobNO:" + helper.JOBN + "  Order NO:" + item);

        //        helper.phReportAction = PHReportAction.GenerateMR;
        //        helper.dataAction = DataAction.None;
        //        helper.ReportOption = PHPrintReportOption.None;
        //        helper.Dept = dept;
        //        helper.CONO = "P1";
        //        helper.Ordn = item;
        //        helper.IsOrdnAlive = true;
        //        helper.PrepareData();

        //        salseOrderList.Add(helper.Ordn);

        //        //-------------2 
        //        string sqlcmd = string.Format("exec [PH.MR].dbo.[sp_AnticipatedMR_Packing] {0}0,'{1}' ", helper.JOBN, PH.Platform.Common.SysParamHelper.Instance.UserID);

        //        try
        //        {
        //            //Xsj:只能執行Erp Live的數據
        //            PH.MR.BO.DB.SQL2000DB.Execute(sqlcmd);
        //        }
        //        catch (Exception ex)
        //        {
        //            ServerJob.WriteLog("Error --Step4: Create ERP Data JobNO:" + helper.JOBN + "  Order NO:" + item + " \r\n " + ex.Message);

        //            remark += "Error --Step4: Create ERP Data JobNO:" + helper.JOBN + "  Order NO:" + item + " \r\n " + ex.Message + "\r\n";

        //        }
        //    }
        //}

        //private void GenerateCompareData()
        //{
        //    PH.MR.BO.MRDataContext dct = PH.Platform.BO.ContextBuilder.CreateContext<PH.MR.BO.MRDataContext>();
        //    List<string> projectNOs = dct.AnticipantMR_Packings.Where(p => salseOrderList.Contains(p.Salesorder)).Select(p => p.Projectno).Distinct().ToList();
        //    foreach (string projectItem in projectNOs)
        //    {
        //        dct.P_GenerateStyle(projectItem, PH.Platform.Common.SysParamHelper.Instance.UserID);
        //    }
        //}

        #endregion
    }

}
