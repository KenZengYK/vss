using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.LWPM.BO;
using PH.Platform.Email.BO;
using DevExpress.XtraEditors.Controls;
using System.IO;

namespace PH.LWPM.UI.LB4
{
    public partial class SendEmailForm : DevExpress.XtraEditors.XtraForm
    {
        AlertLogDetail CurrentAlertLogDetail;
        RedQN CurrentRedQN;
        RAPLQDataContext db;
        public SendEmailForm(RAPLQDataContext ADB, AlertLogDetail AAlertLogDetail, RedQN ARedQN)
        {
            InitializeComponent();
            db = ADB;
            this.CurrentAlertLogDetail = AAlertLogDetail;
            this.CurrentRedQN = ARedQN;

            this.GenerateEmailData();
        }

        void GenerateEmailData()
        {
            cbTo.Properties.Items.Clear();
            cbcc.Properties.Items.Clear();
            var lists = db.Emails.Select(p => p.EmailAddress);
            foreach (var o in lists)
            {
                cbTo.Properties.Items.Add(new CheckedListBoxItem(o));
                cbcc.Properties.Items.Add(new CheckedListBoxItem(o));
            }

            AlertLogHeader header = this.CurrentAlertLogDetail.AlertLogHeader;

            ActionLogEmail obj = this.bsActionLogEmail.AddNew() as ActionLogEmail;
            //obj.ActionLogDetail = this.CurrentActionLogDetail;
            obj.From = "PH_RAA@phgmt.com.hk";  //虚拟的邮箱
            obj.To = "";
            //obj.cc = "DavidJiang@phgmt.com.hk";
            obj.Subject = string.Format("{0} - {1} on [{2}, Line: {3}, QN: {4}]", header.ItemNo, header.ItemSubject,
                this.CurrentRedQN.Step, this.CurrentRedQN.LineCode, this.CurrentRedQN.QNShow);

            obj.Message = System.Environment.NewLine +
                          "Sender: " + this.CurrentAlertLogDetail.Sender + System.Environment.NewLine +
                          "Date: " + (this.CurrentAlertLogDetail.StartFollowDate ?? DateTime.MinValue).ToString("MM-dd HH:mm") + System.Environment.NewLine +
                          this.CurrentAlertLogDetail.FollowSummary;
        }

        public void SendMail()
        {
            //string From = "PH_PDN@phgmt.com.hk"; //真正在后台发邮件的邮箱地址
            string From = "PH_RAA@phgmt.com.hk"; //真正在后台发邮件的邮箱地址
            string Password = "phpdn";
            string SmtpServer = "svphhk01.phgmt.com.hk";  //"10.1.1.236";

            ActionLogEmail obj = this.bsActionLogEmail.Current as ActionLogEmail;
            string To = string.IsNullOrEmpty(obj.To) ? "" : obj.To.Replace(" ", "");  //多個郵件中間有空格時，發郵件不成功
            string cc = string.IsNullOrEmpty(obj.cc) ? "" : obj.cc.Replace(" ", "");

            MailHelper mail = new MailHelper(From, Password, To, cc, "", obj.Subject, obj.Message, this.edtAttachment.Text, SmtpServer, 25);
            //mail.IsBodyHtml = true;
            mail.SendMail("RAA");
        }

        private void btnSend_Click(object sender, EventArgs e)
        {
            this.SendMail();
            this.DialogResult = DialogResult.OK;
        }

        private void edtAttachment_ButtonClick(object sender, ButtonPressedEventArgs e)
        {
            OpenFileDialog dialog = new OpenFileDialog();
            if (dialog.ShowDialog() == DialogResult.OK)
            {
                //FileStream fs = new FileStream(dialog.FileName, FileMode.Open, FileAccess.Read);
                //byte[] bytes = new byte[fs.Length];
                //fs.Read(bytes, 0, (int)fs.Length);
                //fs.Close();
                //fs = null;

                //ActionLogDetail obj = this.BindingSource.Current as ActionLogDetail;
                //obj.Attachment = bytes;
                //obj.AttFileName = Path.GetFileName(dialog.FileName);
                this.edtAttachment.Text = dialog.FileName;
            }
        }
    }
}