using System;
using System.Collections.Generic;
using System.Text;
using System.Net.Mail;
using System.Windows.Forms;

namespace PH.POPC.BackEnd.Job
{
    public class AutoEmailHelper
    {
        public AutoEmailHelper()
        {

        }

        public string EmailFrom { get; set; }
        public string EmailFromNe { get; set; }
        public string EmailTo { get; set; }
        public string EmailCC { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
        public string Host { get; set; }
        public bool EnableSsl { get; set; }
        public int Port { get; set; }

        public string Subject { get; set; }
        public string Body { get; set; }
        public string[] Files { get; set; }

        public MailPriority Priority { get; set; }
        //public RichEditControl RichEditor { get; set; }
        public SmtpClient Smtp { get; set; }

        public SendMailStatus _sendStatus;
        public SendMailStatus SendStatus { get { return this._sendStatus; } }


        public bool SendEmail()
        {
            _sendStatus = SendMailStatus.None;

            string[] tos = EmailTo.Split(new string[] { "," }, StringSplitOptions.RemoveEmptyEntries);//目標郵件地址。
            string[] ccs = EmailCC.Split(new string[] { "," }, StringSplitOptions.RemoveEmptyEntries);//目標郵件地址。
            //string sender = "RWOAdministrator@phgtm.com.hk";//目標郵件地址。
            //string ne = "RWO";
            //string username = "RWOAdministrator";
            //string pwd = "654321";
            //string smtpHost = "svphhk01.phgmt.com.hk";
            try
            {

                MailMessage mailMessage = new MailMessage();

                if (string.IsNullOrEmpty(EmailFromNe))
                    mailMessage.To.Add(new MailAddress(EmailFrom));
                else
                    mailMessage.From = new MailAddress(EmailFrom, EmailFromNe);

                foreach (var t in tos)
                {
                    string[] to1s = t.Split(new string[] { ";" }, StringSplitOptions.RemoveEmptyEntries);
                    if (to1s[0].Trim() == "") continue;

                    if (to1s.Length > 1)
                        mailMessage.To.Add(new MailAddress(to1s[0], to1s[1])); // the email you want to send email to
                    else
                        mailMessage.To.Add(new MailAddress(t)); // the email you want to send email to
                }
                foreach (var c in ccs)
                {
                    string[] cc1s = c.Split(new string[] { ";" }, StringSplitOptions.RemoveEmptyEntries);
                    if (cc1s[0].Trim() == "") continue;

                    if (cc1s.Length > 1)
                        mailMessage.CC.Add(new MailAddress(cc1s[0], cc1s[1])); // the email you want to send email to
                    else
                        mailMessage.CC.Add(new MailAddress(c)); // the email you want to send email to
                }
                mailMessage.Subject = this.Subject;

                mailMessage.IsBodyHtml = true;
                mailMessage.BodyEncoding = System.Text.Encoding.UTF8;
                //mailMessage.Priority = this.Priority;
                mailMessage.Body = this.Body;

                if (Files != null)
                    foreach (var f in Files)
                    {
                        Attachment att = new Attachment(f);
                        mailMessage.Attachments.Add(att);
                    }
                //RichEditMailMessageExporter exporter = new RichEditMailMessageExporter(this.RichEditor, mailMessage);
                //exporter.Export();

                #region SMTP

                Smtp = new SmtpClient();
                Smtp.Host = Host;
                if (this.EnableSsl)
                    Smtp.Port = this.Port;
                Smtp.Credentials = new System.Net.NetworkCredential(this.UserName, this.Password); // Your user name & password
                Smtp.EnableSsl = this.EnableSsl; //經過ssl加密 
                Smtp.DeliveryMethod = SmtpDeliveryMethod.Network;　//使用網絡傳送
                Smtp.Timeout = 100000;

                //Smtp.SendCompleted += new SendCompletedEventHandler(smtp_SendCompleted);

                object userState = "PH Notify Supp to Send Email";
 
                //Smtp.SendAsync(mailMessage, userState);

                Smtp.Send(mailMessage);
                return true;
                //if (mailSent)
                //    MessageBox.Show("發送成功！", "SendMail", MessageBoxButtons.OK, MessageBoxIcon.Information);
                #endregion


            }
            catch (Exception exc)
            {
                //_sendStatus = SendMailStatus.Error;
                MessageBox.Show(exc.Message, "POPC Notify...");
                return false;
            }

        }

        public void CancelSendEmail()
        {
            if (this.Smtp != null)
                this.Smtp.SendAsyncCancel();
        }
        void smtp_SendCompleted(object sender, System.ComponentModel.AsyncCompletedEventArgs e)
        {
            // Get the unique identifier for this asynchronous operation.
            String token = (string)e.UserState;

            if (e.Cancelled)
            {
                _sendStatus = SendMailStatus.Cancelled;
                //MessageBox.Show(string.Format("[{0}] has been cancelled！", token), "Send Mail", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            if (e.Error != null)
            {
                _sendStatus = SendMailStatus.Error;
                //MessageBox.Show(string.Format("[{0}] {1}", token, e.Error.ToString()), "Send Mail", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            else if (!e.Cancelled && e.Error == null)
            {
                _sendStatus = SendMailStatus.Successed;
                //MessageBox.Show("發送成功！！！", "SendMail", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            //mailSent = true;

        }

    }
    public enum SendMailStatus
    {
        None,
        Cancelled,
        Error,
        Successed
    }
}
