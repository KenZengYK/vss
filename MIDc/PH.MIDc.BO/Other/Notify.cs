using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using PH.Platform.BO;

namespace PH.MIDc.BO
{
    public class Notify
    {

        public static void SendEmail(NotifyStatus notifyStatus, List<PH.MIDc.BO.Detail> confirmDetailList)
        {
            bool isEmailError = false;
            string logMsg = null;
            string subjectStr = "";
            try
            {
                //Xsj20110223:發送郵件通知
                //TMID-WIP(Prepare)         TMID-WIP;Prepare      1
                //TMID-WIP(Audit)           TMID-WIP;Audit        2
                //TMID-WIP(Confirm)         TMID-WIP;Confirm      3
                //TMID-Completed            TMID-Completed        4
                //PMID-WIP                  PMID-WIP              5
                //PMID-Completed            PMID-Completed        6

                string additionStr = "";
                string env = PH.Platform.AuthMgr.BO.Environment.Instance.SysteParameter.Environment;
                if (string.IsNullOrEmpty(env) || env.ToLower() != "live") additionStr = "--------- TESTING ONLY ---------";

                PH.MIDc.BO.MIDcDataContext midcContext = PH.Platform.BO.ContextBuilder.CreateContext<PH.MIDc.BO.MIDcDataContext>();
                //判斷是否需要發送郵件通知
                bool? isNeedEmail = (from val in midcContext.MIDcEmailNotifies
                                     where val.Currt == (int)notifyStatus
                                     select val.Available).FirstOrDefault();
                if (!(isNeedEmail ?? false)) return;

                //to 收件人
                List<string> toUserNameList = (from val in midcContext.MIDcEmailNotifies
                                               where val.Currt == (int)notifyStatus
                                               select val.NotifyUsers).ToList();

                //cc 收件人
                List<string> ccUserNameList = (from val in midcContext.MIDcEmailNotifies
                                               where val.Currt == (int)notifyStatus
                                               select val.ActionUsers).ToList();

                string toUserNameStr = null;
                //bool isNeedCC = false;
                EmailAction emailAction = new EmailAction();
                emailAction.Format = PH.Platform.Email.BO.MailFormat.Html;
                foreach (string val in toUserNameList)
                {
                    toUserNameStr += toUserNameStr == null ? val : "," + val;
                }
                emailAction.ToUserNames = toUserNameStr;
                //CC收件人
                //List<string> ccUserNameList = null;
                //if (isNeedCC)
                //{
                //    ccUserNameList = (from val in midcContext.MIDcEmailNotifies
                //                      where val.Currt == (int)notifyStatus
                //                      select val.ActionUsers).ToList();
                //}
                string currUserId = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserName;
                //  PH.Platform.Common.SysParamHelper.Instance.UserID;

                string ccUserNameStr = null;
                if (ccUserNameList != null && ccUserNameList.Count != 0)
                {
                    foreach (string val in ccUserNameList)
                    {
                        ccUserNameStr += ccUserNameStr == null ? val : "," + val;
                    }
                }
                if (toUserNameStr.IndexOf(currUserId) == -1)//如果action user不存在 to users 
                {
                    if (string.IsNullOrEmpty(ccUserNameStr) || ccUserNameStr.IndexOf(currUserId) == -1)
                    {
                        ccUserNameStr += string.IsNullOrEmpty(ccUserNameStr) ? currUserId : "," + currUserId;
                    }
                }
                emailAction.CCUserNames = ccUserNameStr;
                //郵件標題
                string nextStation = "";
                switch (notifyStatus)
                {
                    case NotifyStatus.TMID_WIP_Prepare:
                        subjectStr = "Prepare (TMID-WIP)";
                        nextStation = "Audit (TMID-WIP)";
                        break;
                    case NotifyStatus.TMID_WIP_Audit:
                        subjectStr = "Audit (TMID-WIP)";
                        nextStation = "Confirm (TMID-WIP)";
                        break;
                    case NotifyStatus.TMID_WIP_Confirm:
                        subjectStr = "Confirm (TMID-WIP)";
                        nextStation = "Approved (TMID-WIP)";
                        break;
                    case NotifyStatus.TMID_Completed:
                        subjectStr = "Approved (TMID-WIP)";
                        nextStation = "PMID-WIP";
                        break;
                    case NotifyStatus.PMID_WIP:
                        subjectStr = "PMID-WIP";
                        nextStation = "Approved (PMID-Completed)";
                        break;
                    case NotifyStatus.PMID_Completed:
                        subjectStr = "Approved (PMID-Completed)";
                        nextStation = "Approved (PMID-Completed)";
                        break;
                }
                if (notifyStatus == NotifyStatus.PMID_Completed || notifyStatus == NotifyStatus.TMID_Completed)
                {
                    emailAction.Subject = string.Format("{0}{1}", additionStr, "Approved MIDc");
                }
                else
                {
                    emailAction.Subject = string.Format("{0}MIDc need you to {1}", additionStr, nextStation);
                }
                //郵件內容
                //提示文字
                string emailContent = "<div style='font-size:14px'>";
                if (toUserNameList.Count == 0) return;
                string noteUser = toUserNameList[0];
                emailContent += "<br />Dear&nbsp;&nbsp;&nbsp" + noteUser.Replace(',', '/') + ":<br /><br />";
                emailContent = string.IsNullOrEmpty(additionStr) ? emailContent : string.Format("{0}<br /><br />{1}", additionStr, emailContent);
                emailContent += string.Format("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Below Dvp Proj No.'s MIDc have {0} by<span style='color:red'> {1} </span> ", subjectStr, PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserName);
                if (notifyStatus == NotifyStatus.PMID_Completed || notifyStatus == NotifyStatus.TMID_Completed)
                {
                    emailContent += string.Format(", please note, Thanks ! <br /><br />");
                }
                else
                {
                    emailContent += string.Format(", Now need you to <span style='color:blue'>{0}  </span> , Thanks ! <br /><br />", nextStation);
                }
                //分組統計
                var dGroup = from val in confirmDetailList
                             group val by new { val.SampleOrderNo, val.Supplier, val.SupplierName } into detailGroups
                             select detailGroups;

                //构建HTML输出样式
                //标题行
                string titleColor = "#f7f7f7";
                emailContent += @"<table style='border: 0px solid #a4e2c6; ;  border-collapse:collapse; font-size:12px;' width=850px>
                <tr style='text-align:center; background-color:" + titleColor + @"; '>
                <td style='border: 1px solid Black;' width=150px>
                   <b>Dvp Proj No</b>
                                </td>
                <td style='border: 1px solid Black;' width=150px>
                    <b>Supplier</b> 
                               </td>
                <td style='border: 1px solid Black;' width=100px>
                    <b>Mat&#39;l Type</b>
                               </td>
                <td style='border: 1px solid Black;' width=230px>
                    <b>Supplier Item Reference</b>
                               </td>
                <td style='border: 1px solid Black;' width=220px>
                    <b>Dvp for Which Cust Code</b>
                               </td>

                </tr> ";

                int rowIndex = 0;
                string rowColor;
                foreach (var p in dGroup)
                {
                    //隔行色
                    rowColor = (rowIndex % 2 == 0) ? "#f1fefd" : "#ffffe6";
                    rowIndex++;
                    //内容行
                    string spanRowCount = p.Count().ToString();
                    emailContent += @"<tr style='background-color:" + rowColor + @";'>
                <td style='border: 1px solid Black;' rowspan='" + spanRowCount + "'>" + p.Key.SampleOrderNo
                        + @"</td>
                <td style='border: 1px solid Black;' rowspan='" + spanRowCount + "'>" + p.Key.Supplier
                        + @"</td>";
                    bool isFirstRow = true;
                    foreach (PH.MIDc.BO.Detail item in p)
                    {
                        if (isFirstRow)
                        {
                            isFirstRow = false;
                            emailContent += @"<td style='border: 1px solid Black;'>" + (item.MaterialType ?? "")
                                            + @"</td>
                                          <td style='border: 1px solid Black;'>" + (item.SuppRef ?? "")
                                            + @"</td>
                                          <td style='border: 1px solid Black;'>" + (item.Customer ?? "")
                                            + @"</td>
                                          </tr>";
                        }
                        else
                        {
                            emailContent += @"<tr style='background-color:" + rowColor + @";'>
                                          <td style='border: 1px solid Black;'>" + (item.MaterialType ?? "")
                                            + @"</td>
                                          <td style='border: 1px solid Black;'>" + (item.SuppRef ?? "")
                                            + @"</td>
                                          <td style='border: 1px solid Black;'>" + (item.Customer ?? "")
                                            + @"</td>
                                          </tr>";
                        }
                    }
                }
                emailContent += @"</table><br /><br />";
                //emailContent += "  &nbsp;Tks!<br /><br />";
                emailContent += "  &nbsp;<br /><br />";
                emailContent += "  &nbsp;This is mail generated by system,please don't reply to this mail directly!<br /><br />";
                emailContent += "  &nbsp;系統自動發送,請勿回復!";
                emailContent += "</div>";
                emailAction.EmailBody = emailContent;
                emailAction.Send();
            }
            catch (Exception ex)
            {
                isEmailError = true;
                logMsg = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserName + "發送[" + subjectStr + "]郵件錯誤：\r\n" + ex.ToString();
            }
            finally
            {
                if (!isEmailError)
                {
                    logMsg = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserName + "成功發送[" + subjectStr + "]郵件。";
                }

                LogRecorder logRecorder = new LogRecorder();
                logRecorder.LogRecord("New MIDc Check Email", logMsg);
            }

        }



        #region Xsj20120301:應Jane Lai和王生的討論結果要求，添加版本控件

        public static void DetailChangeConfirmSendEmail(NotifyStatus notifyStatus, List<PH.MIDc.BO.Detail> confirmDetailList)
        {
            bool isEmailError = false;
            string logMsg = null;
            string subjectStr = "";
            try
            {
                //Xsj20110223:發送郵件通知
                //DetailChangePrepare,  7
                //DetailChangeApproval,  8 

                string additionStr = "";
                string env = PH.Platform.AuthMgr.BO.Environment.Instance.SysteParameter.Environment;
                if (string.IsNullOrEmpty(env) || env.ToLower() != "live") additionStr = "--------- TESTING ONLY ---------";

                PH.MIDc.BO.MIDcDataContext midcContext = PH.Platform.BO.ContextBuilder.CreateContext<PH.MIDc.BO.MIDcDataContext>();
                //判斷是否需要發送郵件通知
                bool? isNeedEmail = (from val in midcContext.MIDcEmailNotifies
                                     where val.Currt == (int)notifyStatus
                                     select val.Available).FirstOrDefault();
                if (!(isNeedEmail ?? false)) return;

                //to 收件人
                List<string> toUserNameList = (from val in midcContext.MIDcEmailNotifies
                                               where val.Currt == (int)notifyStatus
                                               select val.NotifyUsers).ToList();

                //cc 收件人
                List<string> ccUserNameList = (from val in midcContext.MIDcEmailNotifies
                                               where val.Currt == (int)notifyStatus
                                               select val.ActionUsers).ToList();

                string toUserNameStr = null;
                //bool isNeedCC = false;
                EmailAction emailAction = new EmailAction();
                emailAction.Format = PH.Platform.Email.BO.MailFormat.Html;
                foreach (string val in toUserNameList)
                {
                    toUserNameStr += toUserNameStr == null ? val : "," + val;
                }
                emailAction.ToUserNames = toUserNameStr;
                string currUserId = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserName;
                string ccUserNameStr = null;
                if (ccUserNameList != null && ccUserNameList.Count != 0)
                {
                    foreach (string val in ccUserNameList)
                    {
                        ccUserNameStr += ccUserNameStr == null ? val : "," + val;
                    }
                }
                if (toUserNameStr.IndexOf(currUserId) == -1)//如果action user不存在 to users 
                {
                    if (string.IsNullOrEmpty(ccUserNameStr) || ccUserNameStr.IndexOf(currUserId) == -1)
                    {
                        ccUserNameStr += string.IsNullOrEmpty(ccUserNameStr) ? currUserId : "," + currUserId;
                    }
                }
                emailAction.CCUserNames = ccUserNameStr;
                //郵件標題
                //string subjectStr = "";
                string nextStation = "";
                string actionType = "";
                switch (notifyStatus)
                {
                    case NotifyStatus.MIDcUpdatePrepare:
                        subjectStr = "MIDc new price need you to approval"; // "MIDc-Update (Prepare)";
                        actionType = " updated ";
                        nextStation = "approval.(MIDc update-approval)";
                        break;
                    case NotifyStatus.MIDcUpdateApproval:
                        subjectStr = "Approved MIDc new price"; //"MIDc Update (Approval)";
                        actionType = " approved ";
                        break;

                }
                //if (notifyStatus == NotifyStatus.PMID_Completed || notifyStatus == NotifyStatus.TMID_Completed)
                //{
                //    emailAction.Subject = string.Format("{0}{1}", additionStr, "Approved MIDc");
                //}
                //else
                //{
                //    emailAction.Subject = string.Format("{0}MIDc need you to {1}", additionStr, nextStation);
                //}
                emailAction.Subject = subjectStr;
                //郵件內容
                //提示文字
                string emailContent = "<div style='font-size:14px'>";
                if (toUserNameList.Count == 0) return;
                string noteUser = toUserNameList[0];
                emailContent += "<br />Dear&nbsp;&nbsp;&nbsp" + noteUser.Replace(',', '/') + ":<br /><br />";
                //emailContent = string.IsNullOrEmpty(additionStr) ? emailContent : string.Format("{0}<br /><br />{1}", additionStr, emailContent);
                emailContent += string.Format("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Below MIDc's price have {0} by<span style='color:red'> {1} </span> ", actionType, PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserName);
                if (notifyStatus == NotifyStatus.MIDcUpdateApproval) //notifyStatus == NotifyStatus.PMID_Completed || notifyStatus == NotifyStatus.TMID_Completed || 
                {
                    emailContent += string.Format(", please note, Thanks ! <br /><br />");
                }
                else
                {
                    emailContent += string.Format(", Now need you to <span style='color:blue'>{0}  </span> , Thanks ! <br /><br />", nextStation);
                }
                //分組統計
                var dGroup = from val in confirmDetailList
                             group val by new { val.SampleOrderNo, val.Supplier, val.SupplierName } into detailGroups
                             select detailGroups;

                //构建HTML输出样式
                //标题行
                string titleColor = "#f7f7f7";
                emailContent += @"<table style='border: 0px solid #a4e2c6; ;  border-collapse:collapse; font-size:12px;' width=850px>
                <tr style='text-align:center; background-color:" + titleColor + @"; '>
                <td style='border: 1px solid Black;' width=150px>
                   <b>Dvp Proj No</b>
                                </td>
                <td style='border: 1px solid Black;' width=150px>
                    <b>Supplier</b> 
                               </td>
                <td style='border: 1px solid Black;' width=100px>
                    <b>Mat&#39;l Type</b>
                               </td>
                <td style='border: 1px solid Black;' width=230px>
                    <b>Supplier Item Reference</b>
                               </td>
                <td style='border: 1px solid Black;' width=220px>
                    <b>Dvp for Which Cust Code</b>
                               </td>" +

                   //Xsj:更改的類別              

                   @"<td style='border: 1px solid Black;' width=320px>
                    <b>Change Type</b>
                               </td>

                </tr> ";

                int rowIndex = 0;
                string rowColor;
                foreach (var p in dGroup)
                {
                    //隔行色
                    rowColor = (rowIndex % 2 == 0) ? "#f1fefd" : "#ffffe6";
                    rowIndex++;
                    //内容行
                    string spanRowCount = p.Count().ToString();
                    emailContent += @"<tr style='background-color:" + rowColor + @";'>
                <td style='border: 1px solid Black;' rowspan='" + spanRowCount + "'>" + p.Key.SampleOrderNo
                        + @"</td>
                <td style='border: 1px solid Black;' rowspan='" + spanRowCount + "'>" + p.Key.Supplier
                        + @"</td>";
                    bool isFirstRow = true;
                    foreach (PH.MIDc.BO.Detail item in p)
                    {
                        PH.MIDc.BO.DetailChangeConfirm currDetailChangeConfirm = item.DetailChangeConfirms.Where(val => val.Version == val.Detail.Version).FirstOrDefault();

                        if (isFirstRow)
                        {
                            isFirstRow = false;
                            emailContent += @"<td style='border: 1px solid Black;'>" + (item.MaterialType ?? "")
                                            + @"</td>
                                          <td style='border: 1px solid Black;'>" + (item.SuppRef ?? "")
                                            + @"</td>
                                          <td style='border: 1px solid Black;'>" + (item.Customer ?? "")
                                            + @"</td>
                                             
                                         <td style='border: 1px solid Black;'>" + (currDetailChangeConfirm == null ? "" : currDetailChangeConfirm.ChangeTypeMsg) + //Xsj:更改的類別   
                                             @"</td> 
                                          </tr>";
                        }
                        else
                        {
                            emailContent += @"<tr style='background-color:" + rowColor + @";'>
                                          <td style='border: 1px solid Black;'>" + (item.MaterialType ?? "")
                                            + @"</td>
                                          <td style='border: 1px solid Black;'>" + (item.SuppRef ?? "")
                                            + @"</td>
                                          <td style='border: 1px solid Black;'>" + (item.Customer ?? "")
                                            + @"</td>
    
                                          <td style='border: 1px solid Black;'>" + (currDetailChangeConfirm == null ? "" : currDetailChangeConfirm.ChangeTypeMsg) +  //Xsj:更改的類別                                            
                                             @"</td>
                                          </tr>";
                        }
                    }
                }
                emailContent += @"</table><br /><br />";
                emailContent += "  &nbsp;<br /><br />";
                emailContent += "  &nbsp;This is mail generated by system,please don't reply to this mail directly!<br /><br />";
                emailContent += "  &nbsp;系統自動發送,請勿回復!";
                emailContent += "</div>";
                emailAction.EmailBody = emailContent;
                emailAction.Send();

            }
            catch (Exception ex)
            {
                isEmailError = true;
                logMsg = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserName + "發送郵件錯誤：\r\n" + ex.ToString();
            }
            finally
            {
                if (!isEmailError)
                {
                    logMsg = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserName + "成功發送郵件。";
                }

                LogRecorder logRecorder = new LogRecorder();
                logRecorder.LogRecord("MIDc Price Change Email", logMsg);
            }
        }

        #endregion
    }

    public enum NotifyStatus
    {
        None,
        TMID_WIP_Prepare,//      1
        TMID_WIP_Audit,//        2
        TMID_WIP_Confirm,//      3
        TMID_Completed,//       4
        PMID_WIP,//              5
        PMID_Completed,//        6

        #region Xsj20120301:應JaneLai和王生的討論要求，添加版本控制
        MIDcUpdatePrepare, //7
        MIDcUpdateApproval, //8
        #endregion

    }
}
