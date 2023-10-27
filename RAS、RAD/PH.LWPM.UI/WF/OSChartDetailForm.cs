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

namespace PH.LWPM.UI.WF
{
    public partial class OSChartDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public OSChartDetailForm()
        {
            InitializeComponent();
        }

        public override void EditCurrent()
        {
            if (this.IsNew)
            {
                OSChart obj = this.BindingSource.Current as OSChart;
                obj.Uploader = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
                obj.UploadTime = DateTime.Now;
            }
            base.EditCurrent();
        }

        private void txtFileName_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            OpenFileDialog dialog = new OpenFileDialog();
            if (dialog.ShowDialog() == DialogResult.OK)
            {
                FileStream fs = new FileStream(dialog.FileName, FileMode.Open, FileAccess.Read);
                byte[] bytes = new byte[fs.Length];
                fs.Read(bytes, 0, (int)fs.Length);
                fs.Close();
                fs = null;

                OSChart obj = this.BindingSource.Current as OSChart;
                obj.FileName = Path.GetFileName(dialog.FileName);
                obj.Uploader = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
                obj.UploadTime = DateTime.Now;
                obj.OSImg = bytes;
            }
        }

        protected override void SaveCurrent()
        {
            OSChart obj = this.BindingSource.Current as OSChart;
            if (obj != null)
            {
                obj.Flag = (this.ListForm as OSChartListForm).Flag;
            }
            base.SaveCurrent();
        }


    }
}
