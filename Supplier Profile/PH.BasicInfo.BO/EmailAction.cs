using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using PH.Platform.Email.BO;
using System.Net.Mail;

namespace PH.BasicInfo.BO
{
    public class EmailAction
    {
        public string PassWord { get; set; }
        public string ToUserNames { get; set; }
        public string ToEmailAddress { get; set; }
        public string CCEmailAddress { get; set; }
        public string CCUserNames { get; set; }
        public string BCCEmailAddress { get; set; }
        public string Subject { get; set; }
        public string EmailBody { get; set; }
        public string Attachments { get; set; }
        public string ServerName { get; set; }
        public MailFormat Format { get; set; }

        private PH.Platform.AuthMgr.BO.AuthMgrDataContext authMgrContext = PH.Platform.BO.ContextBuilder.CreateContext<PH.Platform.AuthMgr.BO.AuthMgrDataContext>();
        //獲取郵件的接收(TO)地址
        private void GetToEmailAddress()
        {
            if (string.IsNullOrEmpty(ToUserNames)) return;
            ToEmailAddress = GetEmailAddress(ToUserNames);
        }
        //獲取郵件CC地址
        private void GetCCEmailAddress()
        {
            CCEmailAddress = CCEmailAddress == null ? "" : CCEmailAddress;
            if (string.IsNullOrEmpty(CCUserNames)) return;
            CCEmailAddress = GetEmailAddress(CCUserNames);
            CCEmailAddress = CCEmailAddress == null ? "" : CCEmailAddress;
        }
        //獲取郵件地址
        private string GetEmailAddress(string UserNames)
        {
            string[] userNameArray = UserNames.Split(',');
            for (int i = 0; i < userNameArray.Length; i++)
            {
                userNameArray[i] = userNameArray[i].Trim();
            }
            List<string> emailAddressList = (from val in authMgrContext.Auth_User
                                             where val.UserName != null && userNameArray.Contains(val.UserName.Trim())
                                             select val.Email).ToList();
            if (emailAddressList.Count == 0) return null;
            string emailAddressStr = null;
            foreach (string val in emailAddressList)
            {
                emailAddressStr += emailAddressStr == null ? val : "," + val;
            }
            return emailAddressStr;
        }

        //檢查郵件輸入
        private void CheckInputContent()
        {
            if (Subject == null)
            {
                throw new Exception("郵件標題不能為空!");
            }
            if (string.IsNullOrEmpty(EmailBody))
            {
                throw new Exception("郵件內容不能為空!");
            }
            if (string.IsNullOrEmpty(ToEmailAddress))
            {
                throw new Exception("找不到收件用戶的Email地址!");
            }
        }

        public bool Send()
        {
            GetToEmailAddress();
            GetCCEmailAddress();
            CheckInputContent();
            EmailHelper helper = new EmailHelper();

            helper.EmailFrom = "PH_POPC@phgmt.com.hk";
            helper.EmailFromNe = "PH_POPC";
            helper.UserName = "PH_POPC";

            helper.Password = "654321";
            helper.Host = "svphhk01.phgmt.com.hk";

            helper.EmailTo = ToEmailAddress;
            helper.EmailCC = CCEmailAddress;
            helper.Subject = Subject;
            helper.Body = EmailBody;
            bool bOK =helper.SendEmail();
            return bOK;
        }

        public void SendEamil(string msg)
        {
            MailAddress from = new MailAddress("PH_POPC@phgmt.com.hk", "PH_POPC"); //邮件的发件人

            MailMessage mail = new MailMessage();

            //设置邮件的标题
            mail.Subject = Subject;

            //设置邮件的发件人
            //Pass:如果不想显示自己的邮箱地址，这里可以填符合mail格式的任意名称，真正发mail的用户不在这里设定，这个仅仅只做显示用
            mail.From = from;

            //设置邮件的收件人
            string address = "jiangjohn@126.com";
            string displayName = "jiangchengbo";

            mail.To.Add(new MailAddress(address, displayName));

            //设置邮件的抄送收件人
            //mail.CC.Add(new MailAddress("Manage@hotmail.com", "尊敬的领导"));

            //设置邮件的内容
            mail.Body = msg;

            //设置邮件的格式
            mail.BodyEncoding = System.Text.Encoding.UTF8;
            mail.IsBodyHtml = true;
            //设置邮件的发送级别
            mail.Priority = MailPriority.Normal;



            mail.DeliveryNotificationOptions = DeliveryNotificationOptions.OnSuccess;

            SmtpClient client = new SmtpClient();
            //设置用于 SMTP 事务的主机的名称，填IP地址也可以了
            client.Host = "smtp.163.com";

            //设置用于 SMTP 事务的端口，默认的是 25
            //client.Port = 25;
            client.UseDefaultCredentials = false;
            //这里才是真正的邮箱登陆名和密码，比如我的邮箱地址是 hbgx@hotmail， 我的用户名为 hbgx ，我的密码是 xgbh
            //client.Credentials = new System.Net.NetworkCredential("jiangjohn@163.com", "chengbo135");
            client.Credentials = new System.Net.NetworkCredential("WaveJiang@phgmt.com.hk", "jiang");
            client.DeliveryMethod = SmtpDeliveryMethod.Network;
            //都定义完了，正式发送了，很是简单吧！
            client.Send(mail);
        }
    }
}
