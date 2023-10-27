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

namespace PH.LWPM.UI.ActionLog
{
    public partial class ActionLogDetailDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public ActionLogDetailDetailForm()
        {
            InitializeComponent();
        }

        public override void EditCurrent()
        {
            if (this.IsNew)
            {
                ActionLogDetail obj = this.BindingSource.Current as ActionLogDetail;
                obj.Sender = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
                obj.StartDate = DateTime.Now;
            }
            base.EditCurrent();
        }


        private void edtAttachment_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            OpenFileDialog dialog = new OpenFileDialog();
            if (dialog.ShowDialog() == DialogResult.OK)
            {
                FileStream fs = new FileStream(dialog.FileName, FileMode.Open, FileAccess.Read);
                byte[] bytes = new byte[fs.Length];
                fs.Read(bytes, 0, (int)fs.Length);
                fs.Close();
                fs = null;

                ActionLogDetail obj = this.BindingSource.Current as ActionLogDetail;
                obj.Attachment = bytes;
                obj.AttFileName = Path.GetFileName(dialog.FileName);
            }
        }
    }
}
