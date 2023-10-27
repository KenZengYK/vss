using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.LWPM.BO;
using System.IO;
using System.Diagnostics;

namespace PH.LWPM.UI.ActionLog
{
    public partial class ActionLogDetailListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public ActionLogDetailListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            this.EditorTypeName = typeof(ActionLogDetailDetailForm).FullName;
            base.DataBind();
            this.repositoryAttachmentItemHyperLinkEdit.SingleClick = true;
            this.objListGridView.OptionsBehavior.Editable = true;
        }

        private void repositoryAttachmentItemHyperLinkEdit_OpenLink(object sender, DevExpress.XtraEditors.Controls.OpenLinkEventArgs e)
        {
            if (this.BindingSource.Current == null) return;

            ActionLogDetail obj = this.BindingSource.Current as ActionLogDetail;
            if (this.BindingSource.Current == null || obj.Attachment == null) return;

            string Path = string.Format(@"c:\Temp\{0}_{1}_{2}", PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID,
                DateTime.Now.ToString("yyyyMMdd"), obj.AttFileName);
            FileStream fs = new FileStream(Path, FileMode.Create, FileAccess.ReadWrite);
            byte[] bytes = obj.Attachment.ToArray();
            fs.Write(bytes, 0, bytes.Length);
            fs.Close();
            fs = null;
            Process.Start(Path);
        }

        private void barBtnSendEmail_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (this.BindingSource.Current == null) return;

            SendEmailForm frmSendEmail = new SendEmailForm(this.DataContext as RAPLQDataContext, this.BindingSource.Current as ActionLogDetail);
            frmSendEmail.ShowDialog();
        }



    }
}
