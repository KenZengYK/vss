using System;
using System.Collections.Generic;
using System.Windows.Forms;
using System.Text;
using System.Net;
using System.Net.Mail;
using PH.Platform.BO;
using System.Text.RegularExpressions;
using PH.RWO.BO;
using System.Linq;
using System.Data.Linq;
using System.Xml;
using System.Xml.Linq;
using PH.Platform.Email.BO;

namespace PH.RWO.UI
{
    public class MailHelper
    {
        /// <summary>
        /// 發送郵件
        /// </summary>
        /// <param name="ATo">接收人郵箱地址</param>
        /// <param name="ASubject">主題</param>
        /// <param name="ABody">內容</param>
        /// <param name="AFrom">發送人郵箱地址</param>
        /// <param name="AFromPort">發送服務器端口</param>
        /// <param name="AFromPassword">發送人密碼</param>
        /// <param name="AStmpServer">發送人郵箱StmpServer</param>
        /// <param name="AAttachment">附件</param>
        public static void SendMail(IList<string> ATo, string ASubject, string ABody, string AFrom, int AFromPort, string AFromPassword, string AStmpServer, IList<string> ACc)
        {
            SmtpClient client = new SmtpClient(AStmpServer, AFromPort);
            MailAddress from = new MailAddress(AFrom);
            string sto = string.Empty;
            if (ATo.Count != 0)
            {
                sto = ATo[0];
            }
            if (ACc.Count > 0 && sto == string.Empty)
            {
                sto = ACc[0];
            }
            //return;
            MailAddress to = new MailAddress(sto);

            MailMessage message = new MailMessage(from, to);
            ;
            AddToMailTOAddressList(ATo, message.To);
            if (ACc != null)
            {
                AddToMailCCAddressList(ACc, message.CC);
            }
            message.Subject = ASubject;
            message.Body = ABody;
            message.BodyEncoding = System.Text.Encoding.UTF8;
            message.SubjectEncoding = System.Text.Encoding.UTF8;

            #region
            //foreach (string fileName in AAttachment)
            //{
            //    if (fileName.Trim() != "")
            //    {
            //        message.Attachments.Add(new Attachment(fileName));
            //    }
            //}
            #endregion

            client.Credentials = System.Net.CredentialCache.DefaultNetworkCredentials;

            client.Credentials = new System.Net.NetworkCredential(AFrom, AFromPassword);

            try
            {
                client.Send(message);
            }
            catch
            {
                PH.Platform.Email.BO.EmailDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<EmailDataContext>();
                PH.Platform.Email.BO.EmailHistory ehistory = new EmailHistory();
                ehistory.CreateBy = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
                ehistory.CreateDate = System.DateTime.Now;
                ehistory.Subject = ASubject;
                ehistory.EmailTo = message.To.ToString();
                ehistory.EmailCC = message.CC.ToString();
                ehistory.EmailBcc = message.Bcc.ToString();
                ehistory.EmailBody = message.Body.ToString();
                ehistory.EmailFrom = message.From.ToString();
                ehistory.ID = System.Convert.ToInt64(System.DateTime.Now.ToString("yyyyMMddmmss"));
                ehistory.TemplateID = 6;
                // MessageBox.Show(ex.Message, "錯誤", MessageBoxButtons.OK, MessageBoxIcon.Error);
                context.EmailHistories.InsertOnSubmit(ehistory);
                context.SubmitChanges();
            }

        }

        public static void SendMail(string emailbody, IList<string> to, IList<string> cc)
        {
            //string from = "rwoadministrator@phgmt.com.hk";
            //string stmp = "svphhk01.phgmt.com.hk";
            //int port = 25;
            string subject = "Round work orders need you to  confirm,pls check";

            //PH.Platform.Email.BO.NoteMailHelper notehelper = new NoteMailHelper("jiang", TranStringList(to), TranStringList(cc), "", subject, emailbody,"", "", @"mail\rayjiang.nsf", false);
            //notehelper.SendMail();

            string MailTo = TranStringList(to).Replace(" ", "");  //多個郵件中間有空格時，發郵件不成功
            string Mailcc = TranStringList(cc).Replace(" ", "");
            PH.Platform.Email.BO.MailHelper mail = new PH.Platform.Email.BO.MailHelper("WOAdministrator@phgmt.com.hk", "woadmin", MailTo, Mailcc, "", subject, emailbody, "", "svphhk01.phgmt.com.hk", 25, false);
            mail.SendMail("");
        }

        private static string TranStringList(IList<string> list)
        {
            string _str = string.Empty;
            foreach (string str in list)
            {
                _str = string.IsNullOrEmpty(_str) ? str : _str + "," + str;
            }
            return _str;
        }

        private static string EmailBody(string company, string salesorderno, string workorderno, int orderline)
        {
            PH.RWO.BO.RWOSOPCDataContext context = ContextBuilder.CreateContext<RWOSOPCDataContext>();
            var workorders = from w in context.WorkOrders
                             where w.Company == company && w.SalesOrderNo == salesorderno
                             select w;
            string info = "Company:{0}   Sales Order No:{1}   Work Order No:{2} ProjectNo:{3}\n  ";
            StringBuilder sb1 = new StringBuilder("");
            foreach (WorkOrder w in workorders)
            {
                sb1.Append(string.Format(info, w.Company, w.SalesOrderNo, w.WorkOrderNo, w.Project.ProjectNo));
            }
            StringBuilder sb = new StringBuilder();
            sb.Append("Dear ALL:\n");
            sb.Append(" Here have round work orders need you to confirm! Informations follow here!\n");
            sb.Append(sb1.ToString());
            sb.Append("\nTks!");
            sb.Append("\n系統自動發送,請勿回復!");
            return sb.ToString();
        }


        /// <summary>
        /// 
        /// </summary>
        /// <param name="company"></param>
        /// <param name="salesorderno"></param>
        /// <param name="workorderno"></param>
        /// <param name="orderline"></param>
        public static void SendMail(string company, string salesorderno, string workorderno, int orderline, IList<string> to, IList<string> cc)
        {
            //SendMail(EmailBody(company,salesorderno,workorderno,orderline),to,cc);
        }

        /// <summary>
        /// 添加CC地址
        /// </summary>
        /// <param name="maillist">郵箱地址字符串</param>
        /// <param name="cc">cc</param>
        public static void AddToMailCCAddressList(IList<string> maillist, MailAddressCollection cc)
        {
            //string[] list = maillist.Split(',');
            foreach (string mail in maillist)
            {
                if (IsValidEmail(mail))
                {

                    if (!cc.Contains(new MailAddress(mail)))
                    {
                        cc.Add(mail);
                    }
                }
            }
        }

        /// <summary>
        /// 驗證字符串是不是Email地址
        /// </summary>
        /// <param name="strIn">Email</param>
        /// <returns>True or false</returns>
        private static bool IsValidEmail(string strIn)
        {
            // Return true if strIn is in valid e-mail format. 
            if (strIn == null)
            {
                return false;
            }
            return Regex.IsMatch(strIn, @"^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$");
        }

        /// <summary>
        /// 添加接收郵件地址
        /// </summary>
        /// <param name="maillist">郵箱地址字符串</param>
        /// <param name="to">to</param>
        public static void AddToMailTOAddressList(IList<string> maillist, MailAddressCollection to)
        {
            AddToMailCCAddressList(maillist, to);
        }
    }
}
