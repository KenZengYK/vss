using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.LWPM.BO;
using PH.Platform.BO;
using System.IO;
using System.Diagnostics;

namespace PH.LWPM.UI.WF
{
    public partial class OSChartListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public string Flag { get; set; }

        public OSChartListForm()
        {
            InitializeComponent();
        }

        public OSChartListForm(string AFlag)
        {
            InitializeComponent();
            this.Flag = AFlag;
        }

        public override void DataBind()
        {
            RAPLQDataContext context = ContextBuilder.CreateContext<RAPLQDataContext>();
            this.DataContext = context;
            this.BindingSource.DataSource = context.OSCharts.Where(p => p.Flag == this.Flag).OrderByDescending(p => p.UploadTime);
            this.EditorTypeName = typeof(OSChartDetailForm).FullName;

            base.DataBind();
        }

        private void barBtnOSChart_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (this.BindingSource.Current == null) return;

            OSChart obj = this.BindingSource.Current as OSChart;
            string Path = string.Format(@"c:\Temp\{0}_{1}_{2}", PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID,
                DateTime.Now.ToString("yyyyMMdd"), obj.FileName);
            FileStream fs = new FileStream(Path, FileMode.Create, FileAccess.ReadWrite);
            byte[] bytes = obj.OSImg.ToArray();
            fs.Write(bytes, 0, bytes.Length);
            fs.Close();
            fs = null;

            Process.Start(Path);
        }
    }
}
