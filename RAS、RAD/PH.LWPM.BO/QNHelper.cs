using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using PH.Platform.BO;
using PH.Platform.Email.BO;

namespace PH.LWPM.BO
{
    public class QNHelper
    {

        static DataTable dtShift = null;

        /// <summary>
        /// CL廠是否為齋戒月，齋戒月7點上班，其他月份8點上班
        /// </summary>
        /// <param name="ADB"></param>
        /// <param name="AQNStartDate">QN Start Date</param>
        /// <returns></returns>
        public static bool IsFastMonth(RAPLQDataContext ADB, WPMaster AWPMaster)
        {
            if (AWPMaster.Factory.Trim() != "CL")
            {
                return false;
            }

            if (dtShift == null)
            {
                string SqlStr = "select EFM, EED from openquery(INTERBASE,'select * from tbl_shift where efm is not null')";
                dtShift = ADB.ExecuteDataTable(SqlStr, "tbl_shift");
            }

            DateTime StartDate = (AWPMaster.StartTime ?? DateTime.MinValue).Date;

            return (dtShift != null && dtShift.Rows.Count > 0 &&
                    StartDate >= Convert.ToDateTime(dtShift.Rows[0]["EFM"].ToString()) &&
                    StartDate <= Convert.ToDateTime(dtShift.Rows[0]["EED"].ToString()));
        }

        /// <summary>
        /// 按F、A、E三個工場排序
        /// </summary>
        /// <param name="AFEA"></param>
        /// <returns></returns>
        public static int GetFAESort(string AFEA)
        {
            //if (AFEA == "F") return 1;
            //else if (AFEA == "A") return 2;
            //else if (AFEA == "E") return 3;
            //else return 9;
            if (AFEA == "P") return 0;
            else if (AFEA == "B") return 1;
            else if (AFEA == "F") return 2;
            else if (AFEA == "A") return 3;
            else if (AFEA == "E") return 4;
            else return 9;
        }


        /// <summary>
        /// QN選車時，即時檢查衣車的狀態
        /// </summary>
        /// <param name="ADB">當前DataContext</param>
        /// <param name="ACurrentWPMaster">當前QN的WPMaster對象</param>
        /// <param name="AMachineID">當前選擇的衣車ID</param>
        /// <returns></returns>
        public static ChoiceMachineResult CheckMachineStatus(RAPLQDataContext ADB, WPMaster ACurrentWPMaster, string AMachineID)
        {
            //ALTER PROCEDURE [dbo].[sp_GetMachineStandbyStatus]
            //@Factory  nchar(5),     -- 工廠
            //@Line     varchar(50),  -- 生產線
            //@Project  nchar(15),    -- 工程號
            //@WO       nchar(15),    -- 制單號
            //@RWO      nchar(10),    -- 輪制單號
            //@QN       nchar(10),    -- QN號
            //@BColor   nchar(10),    -- 顏色
            //@MachineID varchar(20)  -- 衣車ID

            ChoiceMachineResult result = new ChoiceMachineResult();

            string SqlStr = "exec sp_GetMachineStandbyStatus '{0}', '{1}', '{2}', '{3}', '{4}', '{5}', '{6}', '{7}'";
            SqlStr = string.Format(SqlStr, ACurrentWPMaster.Factory.Trim(), ACurrentWPMaster.LineCode.Trim(), ACurrentWPMaster.j_NO.Trim(), ACurrentWPMaster.J2_job.Trim(),
                ACurrentWPMaster.Rwo.Trim(), ACurrentWPMaster.Qn.Trim(), ACurrentWPMaster.Bcolor.Trim(), AMachineID.Trim());

            DataSet ds = ADB.ExecuteDataSet(SqlStr, new DataSet(), "dtQN");
            if (ds.Tables[0].Rows.Count > 0) //有Step5 使用這臺衣車
            {
                result.QN = string.Format("{0} - {1} - {2}", ds.Tables[0].Rows[0]["J2_job"].ToString().Trim(),
                    ds.Tables[0].Rows[0]["Rwo"].ToString().Trim(), ds.Tables[0].Rows[0]["Qn"].ToString().Trim());
                result.Status = ChoiceMachineStatus.Lock;
            }
            else if (ds.Tables[1].Rows.Count > 0) //有Step4 使用這臺衣車
            {
                result.QN = string.Format("{0} - {1} - {2}", ds.Tables[1].Rows[0]["J2_job"].ToString().Trim(),
                    ds.Tables[1].Rows[0]["Rwo"].ToString().Trim(), ds.Tables[1].Rows[0]["Qn"].ToString().Trim());

                result.Status = ChoiceMachineStatus.Reserve;
            }
            else
            {
                result.QN = "";
                result.Status = ChoiceMachineStatus.Open;
            }

            return result;
        }

        #region 紅色QN發送郵件

        /// <summary>
        /// 紅色QN發送郵件給相關用戶
        /// </summary>
        public static void RedQNSendEMail()
        {
            string From = "PH_PDN@phgmt.com.hk"; //真正在后台发邮件的邮箱地址
            string Password = "phpdn";
            string SmtpServer = "svphhk01.phgmt.com.hk";  //"10.1.1.236";

            RAPLQDataContext db = ContextBuilder.CreateContext<RAPLQDataContext>();
            List<WPMaster> AllDataList = db.ExecuteQuery<WPMaster>(string.Format("exec sp_Get10QNPerLine")).ToList();

            //因為每個工廠的工作天安排不同，需要分別按lwpm_calendar來確定不同工廠需要提示哪一天的QN
            //如：CL每周五休息，所以周四警示周六的QN,  SL每周日休息，所以周六警示周一的QN
            List<WPMaster> lists = new List<WPMaster>();
            var AllFactory = AllDataList.Select(p => p.Factory).Distinct();
            foreach (var factory in AllFactory)
            {
                DateTime NeedAlertWorkDay = NextWorkDay(db, factory);
                lists.AddRange(AllDataList.Where(p => p.Factory == factory && p.StartTime <= NeedAlertWorkDay && p.Step != "Step5").ToList());
            }

            //List<WPMaster> lists = AllDataList.Where(p => p.StartTime <= DateTime.Now.AddDays(1) && p.Step != "Step5").ToList();
            //List<WPMaster> lists = AllDataList.Where(p => !(p.Flag.Contains("s") && (p.IsConfirmed ?? false) == true) && p.StartTime <= DateTime.Now.AddDays(1)).ToList();

            InsertRedQNAlertMessage(db, lists);

            RedQNSendEmailConfig config = db.RedQNSendEmailConfigs.FirstOrDefault();
            string Subject = "RAA System Red QN Hint " + DateTime.Now.ToString("yyyy-MM-dd HH:mm");

            MailHelper mail = new MailHelper(From, Password, config.From, config.cc, "", Subject, GetEmailBody(lists), "", SmtpServer, 25);
            //MailHelper mail = new MailHelper(From, Password, "", config.cc, "", Subject, GetEmailBody(lists), "", SmtpServer, 25);

            mail.IsBodyHtml = true;
            mail.SendMail("RAA System");
        }

       public static DateTime NextWorkDay(RAPLQDataContext ADB, string AFactory)
        {
            try
            {
                string SqlStr = @"select top 1 Date1 from [PH.RWO1]..lwpm_calendar
                                  where Date1 > getdate() and Tplant = '{0}' and (SECTO + SECTT + SECTT1 + OSECT) > 0
                                  order by Date1";
                SqlStr = string.Format(SqlStr, AFactory);
                DataTable dtCalendar = ADB.ExecuteDataTable(SqlStr, "dtCalendar");
                if (dtCalendar == null || dtCalendar.Rows.Count == 0)
                {
                    return DateTime.Now.AddDays(1);
                }
                else
                {
                    return Convert.ToDateTime(dtCalendar.Rows[0]["Date1"].ToString());
                }
            }
            catch
            {
                return DateTime.Now.AddDays(1);
            }

        }

        static string GetEmailBody(List<WPMaster> ALists)
        {
            //RAPLQDataContext db = ContextBuilder.CreateContext<RAPLQDataContext>();
            //List<WPMaster> AllDataList = db.ExecuteQuery<WPMaster>(string.Format("exec sp_Get10QNPerLine")).ToList();
            //List<WPMaster> lists = new List<WPMaster>();
            //lists = AllDataList.Where(p => !(p.Flag.Contains("s") && (p.IsConfirmed ?? false) == true) && p.StartTime <= DateTime.Now.AddDays(1)).ToList();

            StringBuilder sb = new StringBuilder();
            sb.AppendLine("<html>");

            sb.AppendLine("<style>");
            sb.AppendLine("table,table tr th, table tr td { border:1px solid #0094ff; }");
            sb.AppendLine("table { min-height: 25px; line-height: 25px; text-align: center; border-collapse: collapse; padding:2px; font-size:14px; font-family:宋体}");
            sb.AppendLine("p {font-size:14px; font-family:宋体}");
            sb.AppendLine("</style>");

            sb.AppendLine("<p>Dear All:</p>");
            sb.AppendLine("  <p>請您留意以下QN，需要儘快進入RAA系統調兵遣將!</p>");

            InsertFactoryGridInfo(ALists, sb, "SL");
            InsertFactoryGridInfo(ALists, sb, "GG");
            InsertFactoryGridInfo(ALists, sb, "RX");
            InsertFactoryGridInfo(ALists, sb, "CL");

            sb.AppendLine("<p>from RAA System</p>");
            sb.AppendLine("</html>");

            return sb.ToString();
        }

        static void InsertFactoryGridInfo(List<WPMaster> ALists, StringBuilder AStringBuilder, string AFactory)
        {
            var lists = ALists.Where(p => p.Factory.Trim() == AFactory);
            if (lists.Count() == 0)
            {
                return;
            }

            AStringBuilder.AppendLine(string.Format("<h5>{0} Red QN List<h5>", AFactory));
            AStringBuilder.AppendLine("<table>");
            AStringBuilder.AppendLine("<tr>");
            AStringBuilder.AppendLine("<th>Workshop</th><th>Line</th><th>PH Style</th><th>Cust Style</th><th>Start Time</th><th>End Time</th><th>Proj No</th><th>WO</th><th>WOc</th><th>RWO</th><th>QN</th><th>Color</th><th>QN Qty</th><th>Version</th>");
            AStringBuilder.AppendLine("</tr>");
            foreach (var obj in lists)
            {
                AStringBuilder.AppendLine("<tr>");
                AStringBuilder.Append("<td>" + obj.Location.Trim() + "</td>");
                AStringBuilder.Append("<td>" + obj.LineCode.Trim() + "</td>");
                AStringBuilder.Append("<td>" + obj.PHStyleCode.Trim() + "</td>");
                AStringBuilder.Append("<td>" + obj.CustStyleCode.Trim() + "</td>");
                AStringBuilder.Append("<td>" + obj.StartTimeShow + "</td>");
                AStringBuilder.Append("<td>" + obj.EndTime + "</td>");
                AStringBuilder.Append("<td>" + obj.j_NO.Trim() + "</td>");
                AStringBuilder.Append("<td>" + obj.J2_job.Trim() + "</td>");
                AStringBuilder.Append("<td>" + obj.Woc.Trim() + "</td>");
                AStringBuilder.Append("<td>" + obj.Rwo.Trim() + "</td>");
                AStringBuilder.Append("<td>" + obj.Qn.Trim() + "</td>");
                AStringBuilder.Append("<td>" + obj.Bcolor.Trim() + "</td>");
                AStringBuilder.Append("<td>" + obj.QNQty.ToString() + "</td>");
                AStringBuilder.Append("<td>" + obj.Version.ToString() + "</td>");
                AStringBuilder.AppendLine("</tr>");
            }
            AStringBuilder.AppendLine("</table>");
        }


        public static void InsertRedQNAlertMessage()
        {
            RAPLQDataContext db = ContextBuilder.CreateContext<RAPLQDataContext>();
            List<WPMaster> AllDataList = db.ExecuteQuery<WPMaster>(string.Format("exec sp_Get10QNPerLine")).ToList();
            //List<WPMaster> lists = AllDataList.Where(p => p.StartTime <= DateTime.Now.AddDays(1) && p.Step != "Step5").ToList();

            //因為每個工廠的工作天安排不同，需要分別按lwpm_calendar來確定不同工廠需要提示哪一天的QN
            //如：CL每周五休息，所以周四警示周六的QN,  SL每周日休息，所以周六警示周一的QN
            List<WPMaster> lists = new List<WPMaster>();
            var AllFactory = AllDataList.Select(p => p.Factory).Distinct();
            foreach (var factory in AllFactory)
            {
                DateTime NeedAlertWorkDay = NextWorkDay(db, factory);
                lists.AddRange(AllDataList.Where(p => p.Factory == factory && p.StartTime <= NeedAlertWorkDay && p.Step != "Step5").ToList());
            }

            InsertRedQNAlertMessage(db, lists);
        }

        static void InsertRedQNAlertMessage(RAPLQDataContext ADB, List<WPMaster> ALists)
        {
            //刪除三天前的記錄
            ADB.ExecuteCommand("delete from RedQN where UpdateTime < convert(varchar(10), dateadd(day, -2, getdate()), 120)");

            //刪除當天的記錄
            //ADB.ExecuteCommand("delete from RedQN where convert(varchar(10), UpdateTime, 120) = convert(varchar(10), getdate(), 120)");

            List<RedQN> AllRedQNList = ADB.RedQNs.Where(p => p.UpdateTime >= DateTime.Parse("2019-03-21")).ToList();

            DateTime updateTime = DateTime.Now;
            foreach (var obj in ALists) //QN
            {
                if (obj.Step == "Step5")
                {
                    continue;
                }

                List<RedQN> QNWsList = new List<RedQN>();

                var WsLists = obj.Matchings.Select(p => p.FAE).Distinct();
                int TotalWs = obj.Matchings.Select(p => p.FAE).Distinct().Count();
                int TotalDesk = 0;

                foreach (var Ws in WsLists) //Ws
                {
                    RedQN AlertQN = new RedQN();
                    AlertQN.Factory = obj.Factory.Trim();
                    AlertQN.LineCode = obj.LineCode.Trim();
                    AlertQN.j_NO = obj.j_NO.Trim();
                    AlertQN.J2_job = obj.J2_job.Trim();
                    AlertQN.Rwo = obj.Rwo.Trim();
                    AlertQN.Qn = obj.Qn.Trim();
                    AlertQN.Bcolor = obj.Bcolor.Trim();
                    AlertQN.RDProcessing = "";
                    AlertQN.Woc = obj.Woc.Trim();
                    AlertQN.WsLocation = obj.Location.Trim();
                    AlertQN.PHStyleCode = obj.PHStyleCode.Trim();
                    AlertQN.CustStyleCode = obj.CustStyleCode.Trim();
                    AlertQN.QNQty = obj.QNQty;
                    AlertQN.Version = obj.Version;
                    AlertQN.OptWs = Ws;
                    AlertQN.WDeskQty = GetWsDeskQty(obj, Ws, obj.Step);
                    AlertQN.WsRDProcessing_WF = GetWsRDProcessing(obj, Ws, "WF", obj.Step);
                    AlertQN.WsRDProcessing_HW = GetWsRDProcessing(obj, Ws, "HW", obj.Step);
                    AlertQN.StartTime = obj.StartTimeShow;
                    AlertQN.EndTime = (obj.EndTime.HasValue) ? (obj.EndTime ?? DateTime.MinValue).ToString("yy-MM-dd") : "";
                    AlertQN.Step = obj.Step;
                    AlertQN.UpdateTime = updateTime;
                    AlertQN.StartAlertTime = GetStartAlertTime(AllRedQNList, obj, updateTime);
                    AlertQN.TotalWs = TotalWs;
                    AlertQN.Class = GetClass(obj.ZH);
                    TotalDesk += AlertQN.WDeskQty ?? 0;
                    QNWsList.Add(AlertQN);

                    //ADB.RedQNs.InsertOnSubmit(AlertQN);
                }



                foreach (var o in QNWsList) //計算一個QN的總工作位
                {
                    o.TotalDesk = TotalDesk;
                }

                ADB.RedQNs.InsertAllOnSubmit(QNWsList);
            }

            ADB.SubmitChanges();

            //當天只保留最后一次生成的記錄
            string SqlStr = @"delete from RedQN 
                              where convert(varchar(10), UpdateTime, 120) = convert(varchar(10), getdate(), 120) and 
                                    convert(varchar(19), UpdateTime, 120) <> convert(datetime, '{0}')";
            SqlStr = string.Format(SqlStr, updateTime);
            ADB.ExecuteCommand(SqlStr);
        }

        static int GetWsDeskQty(WPMaster AWPMaster, string AFAE, string AStep)
        {
            if (AFAE == "A") //按拆夾計算
            {
                if (AStep == "Step4")
                {
                    return AWPMaster.Matchings.Where(p => p.FAE == "A" && (p.MachineId != null && p.MachineId != "")).Select(p => p.MachineId).Distinct().Count() +
                           AWPMaster.Matchings.Where(p => p.FAE == "A" && (p.addMachineId1 != null && p.addMachineId1 != "")).Select(p => p.addMachineId1).Distinct().Count() +
                           AWPMaster.Matchings.Where(p => p.FAE == "A" && (p.addMachineId2 != null && p.addMachineId2 != "")).Select(p => p.addMachineId2).Distinct().Count();
                }
                else //Step 3
                {
                    return AWPMaster.Matchings.Where(p => p.FAE == "A" && (p.JFlag == null || p.JFlag == "")).Count() +
                           AWPMaster.Matchings.Where(p => p.FAE == "A" && (p.JFlag != null && p.JFlag != "")).Select(p => p.JFlag).Distinct().Count();
                }
            }
            else //其他Ws按工序計算工作位(因為沒有做拆夾)
            {
                return AWPMaster.Matchings.Where(p => p.FAE == AFAE).Select(p => p.OperationCode).Distinct().Count();
            }
        }

        static string GetWsRDProcessing(WPMaster AWPMaster, string AFAE, string AType, string AStep)
        {
            if (AStep == "Step4")
            {
                return "RD confirmed & QN waiting to start";//"RD completed";
            }

            if (AType == "WF")
            {
                if (AWPMaster.ToBeConfirmedFlag ?? false) //QN 已經Completed
                {
                    return "RD completed & waiting to be confirmed";
                }
                else //QN沒有Completed
                {
                    //QN下的Ws工序全部安排了人，則認為這個Ws已經Completed，則不顯示在alert中
                    return AWPMaster.Matchings.Where(p => p.FAE == AFAE && (p.WorkerId == null || p.WorkerId == "")).Count() == 0 ? "0" : "RD incomplete";
                }

                //return (AWPMaster.ToBeConfirmedFlag ?? false) == true ? "RD completed" : "RD incomplete";
                //return AWPMaster.Matchings.Where(p => p.FAE == AFAE && (p.WorkerId == null || p.WorkerId == "")).Count() == 0 ? "RD completed" : "RD incomplete";
            }
            else //HW
            {
                if (AWPMaster.ToBeConfirmedFlag_MC ?? false) //QN 已經Completed
                {
                    return "RD completed & waiting to be confirmed";
                }
                else //QN沒有Completed
                {
                    //QN下的Ws衣車全部安排好了，則認為這個Ws已經Completed，則不顯示在alert中
                    return AWPMaster.Matchings.Where(p => p.FAE == AFAE && (p.MachineId == null || p.MachineId == "")).Count() == 0 ? "0" : "RD incomplete";
                }

                //return (AWPMaster.ToBeConfirmedFlag_MC ?? false) == true ? "RD completed" : "RD incomplete";
                //return AWPMaster.Matchings.Where(p => p.FAE == AFAE && (p.MachineId == null || p.MachineId == "")).Count() == 0 ? "RD completed" : "RD incomplete";
            }
        }

        static DateTime GetStartAlertTime(List<RedQN> AAllRedQNList, WPMaster AWPMaster, DateTime AUpdateTime)
        {
            DateTime? dt = AAllRedQNList.Where(p => p.Factory == AWPMaster.Factory.Trim() && p.LineCode == AWPMaster.LineCode.Trim() && p.j_NO == AWPMaster.j_NO.Trim() &&
                p.J2_job == AWPMaster.J2_job.Trim() && p.Rwo == AWPMaster.Rwo.Trim() && p.Qn == AWPMaster.Qn.Trim() && p.Bcolor == AWPMaster.Bcolor.Trim())
                .Select(p => p.StartAlertTime).Min();

            return dt.HasValue ? (dt ?? DateTime.MinValue) : AUpdateTime;
        }

        static string GetClass(string AZH)
        {
            try
            {
                if (string.IsNullOrEmpty(AZH) || AZH.Length <= 4)
                {
                    return "";
                }

                return AZH.Replace("(", "").Replace(")", "").Substring(0, 2).ToUpper();

            }
            catch
            {
                return "";
            }
        }

        #endregion 紅色QN發送郵件

    }

    /// <summary>
    /// 選定衣車的狀態
    /// </summary>
    public enum ChoiceMachineStatus
    {
        /// <summary>
        /// 可用狀態
        /// </summary>
        Open,
        /// <summary>
        /// 保留狀態，有在Step 4狀態的QN選用，可由用戶決定是否選擇
        /// </summary>
        Reserve,
        /// <summary>
        /// 鎖定狀態，有在Step 5的QN正在使用，不能選擇
        /// </summary>
        Lock
    }

    public class ChoiceMachineResult
    {
        public ChoiceMachineStatus Status { get; set; }
        public string QN { get; set; }
    }


}
