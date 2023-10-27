using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using PH.Platform.Email.BO;

namespace PH.MobileQC.BO
{
    public enum SendMailFlag
    {
        /// <summary>
        /// 系统自动发送
        /// </summary>
        SysAuto,
        /// <summary>
        /// 手动发送
        /// </summary>
        Manual,
    }

    public class EmailHelper
    {
        ///// <summary>
        ///// 发送QC质量警告邮件
        ///// </summary>
        ///// <param name="ASendMailFlag">发送邮件标志</param>
        ///// <param name="ALine">Line</param>
        ///// <param name="AProject">Project</param>
        ///// <param name="AStyle">Style</param>
        ///// <param name="AColor">Color</param>
        ///// <param name="AOPNName">Operation Name</param>
        ///// <param name="ADefect">Send time and defect information</param>
        ///// 

        /// <summary>
        /// 发送QC质量警告邮件
        /// </summary>
        /// <param name="ASendMailFlag">发送邮件的标志</param>
        /// <param name="ATitle">Email Title</param>
        /// <param name="ARemindCount">Remind Count</param>
        /// <param name="ALine">Line</param>
        /// <param name="AProject">Project</param>
        /// <param name="AStyle">Style</param>
        /// <param name="AColor">Color</param>
        /// <param name="AOPNName">Operation Name</param>
        /// <param name="ADefect">Send time and defect information</param>
        public void SendAlertMail(SendMailFlag ASendMailFlag, string ATitle, int ARemindCount, string ALine, string AProject, string AStyle, string AColor, string AOPNName, string ADefect)
        {
            MobileQCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();
            QC_AlertEmail obj = (from a in context.QC_AlertEmails
                                 select a).FirstOrDefault();

            if (obj == null)
            {
                throw new Exception("Alert Email Setup Error!");
            }

            int RemindCount = obj.AlertSwitch ?? 0;
            if ((ASendMailFlag == SendMailFlag.SysAuto && ARemindCount >= RemindCount) || //只有大于或等于设置次数时才自动发邮件
                (ASendMailFlag == SendMailFlag.Manual && ARemindCount < RemindCount))     //只有少于设置工序次数才可以手动发邮件
            {
                string ToEmailAddress = obj.TO;
                string CCEmailAddress = obj.CC;
                string BCCEmailAddress = obj.BCC;

                //string subjectstr = ALine + "  " + AStyle + " " + AOPNName.Trim()+ ADefect.Substring(30).ToString().Replace("Defect Name:",""); //dong

                string Subject = ATitle; // subjectstr;// + ARemindCount.ToString(); //dong
                

                //string Subject = obj.Subject + " " + ARemindCount.ToString();


                string EmailBody = this.GetlEmailBody(ALine, AProject, AStyle, AColor, AOPNName, ADefect);
                NoteMailHelper mail = new NoteMailHelper("", ToEmailAddress, CCEmailAddress, BCCEmailAddress, Subject, EmailBody, "", "", "", true);
                mail.SendMail();
            }
        }



        public void SendAlertMail1(SendMailFlag ASendMailFlag, string ATitle, int ARemindCount, string ALine, string AProject, string AStyle, string AColor, string AOPNName, string ADefect)
        {
            MobileQCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();
            QC_AlertEmail obj = (from a in context.QC_AlertEmails
                                 select a).FirstOrDefault();

            if (obj == null)
            {
                throw new Exception("Alert Email Setup Error!");
            }

            int RemindCount = obj.AlertSwitch ?? 0;
            if ((ASendMailFlag == SendMailFlag.SysAuto && ARemindCount >= RemindCount) || //只有大于或等于设置次数时才自动发邮件
                (ASendMailFlag == SendMailFlag.Manual && ARemindCount < RemindCount))     //只有少于设置工序次数才可以手动发邮件
            {
                string ToEmailAddress = obj.TO;
                string CCEmailAddress = obj.CC;
                string BCCEmailAddress = obj.BCC;

                //string subjectstr = ALine + "  " + AStyle + " " + AOPNName.Trim()+ ADefect.Substring(30).ToString().Replace("Defect Name:",""); //dong

                string Subject = ATitle; // subjectstr;// + ARemindCount.ToString(); //dong


                //string Subject = obj.Subject + " " + ARemindCount.ToString();

                // this.
                string EmailBody = this.GetlEmailBody(ALine, AProject, AStyle, AColor, AOPNName, ADefect);
                NoteMailHelper mail = new NoteMailHelper("", ToEmailAddress, CCEmailAddress, BCCEmailAddress, Subject, EmailBody, "", "", "", true);
                mail.SendMail();
            }
        }

        #region 暂时不用这个方法
        ///// <summary>
        ///// 根据同一款同一工序,如果发现有QC问题则出发警告邮件
        ///// </summary>
        ///// <param name="AStyle">Style</param>
        ///// <param name="AOPNCode">Operation Code</param>
        ///// <param name="AOPNName">Operation Name</param>
        //public void SendAlertMail(string AStyle, string AOPNCode, string AOPNName)
        //{
        //    MobileQCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();
        //    QC_AlertEmail obj = (from a in context.QC_AlertEmails
        //                         select a).FirstOrDefault();

        //    if (obj == null)
        //    {
        //        throw new Exception("Alert Email Setup Error!");
        //    }


        //    string ToEmailAddress = obj.TO;
        //    string CCEmailAddress = obj.CC;
        //    string BCCEmailAddress = obj.BCC;

        //    string Str = "";
        //    var lists = from a in context.QC_AlertMessages
        //                where a.Style == this.Style && a.OPNCode == this.OPNCode
        //                orderby a.SendTime descending
        //                select a;

        //    if (lists.Count == 0) //当前款当前工序如果没有QC问题的时候提示用户
        //    {
        //        string HintStr = "Style: {0} Operation : {1} No QC Problem!";
        //        HintStr = string.Format(HintStr, AStyle, AOPNName);
        //        throw new Exception(HintStr);   
        //    }

        //    QC_AlertMessage lastObj = lists.FirstOrDefault();

        //    string Defect;
        //    foreach (QC_AlertMessage obj in lists)
        //    {
        //        Defect += obj.SendTime.ToString("yyyy-MM-dd HH:mm:ss") + " Defect Name: " + obj.Defect + "  \n" + "     ";
        //    }

        //    string Subject = obj.Subject + " " + lists.Count().ToString();

        //    string EmailBody = this.GetlEmailBody(lastObj.Line, lastObj.Project, AStyle, lastObj.Color, lastObj.OPNName, Defect);
        //    NoteMailHelper mail = new NoteMailHelper("", ToEmailAddress, CCEmailAddress, BCCEmailAddress, Subject, EmailBody, "", "", "", true);
        //    mail.SendMail();
        //}
        #endregion

        private string GetlEmailBody(string ALine, string AProject, string AStyle, string AColor, string AOPNName, string ADefect)
        {
            StringBuilder sb = new StringBuilder();
            sb.AppendLine("Dear All:");
            sb.AppendLine();
            sb.AppendLine("          Line: {0}");
            sb.AppendLine("       Project: {1}");
            sb.AppendLine("         Style: {2}");
            sb.AppendLine("         Color: {3}");
            sb.AppendLine("      OPN Name: {4}");
            sb.AppendLine();
            sb.AppendLine("   Send Time/Defect Qty:");
            sb.AppendLine("     {5}");
            sb.AppendLine();
            sb.AppendLine("Best regards");
            sb.AppendLine("Mobile QC");
            string Str = sb.ToString();
            Str = string.Format(Str, ALine, AProject, AStyle, AColor, AOPNName, ADefect);

            return Str;
        }
    }
}
