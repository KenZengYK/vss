using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.Platform.BackEnd.BO;
using PH.Platform.UI.CS.UI0;

namespace PH.HDO.UI
{
    public partial class GRNReportFrm : BlankForm
    {
        public GRNReportFrm()
        {
            InitializeComponent();
        }

        private void PrintReport()
        {
            PH.Platform.BackEnd.BO.ServerJobData data = new PH.Platform.BackEnd.BO.ServerJobData();
            data.AssemblyName = "PH.HDO.BackEnd.DLL";//
            data.ClassFullName = typeof(PH.HDO.BackEnd.JOB.JobGRNReport).FullName;//全名
            data.UserID = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;//用户
            data.Parameter = this.jobGRNReport1.GetParameter();
            //if (string.IsNullOrEmpty(data.Parameter)) 
            //{
            //    MessageBox.Show("请输入条件");
            //    return;
            //}
#if Platform2014
            PH.Platform.UI.CS.WaitFormHelper.ShowWaitForm(this);
#else
            this.Cursor = Cursors.WaitCursor;
#endif
            try
            {
                PH.Platform.BackEnd.BO.SReport.InsertData(data, "EN");
            }
            finally
            {
#if Platform2014
                PH.Platform.UI.CS.WaitFormHelper.CloseWaitForm();
#else
                this.Cursor = Cursors.Default;
#endif
            }
        }

        private void btnPrint_Click(object sender, EventArgs e)
        {

            DateTime _runStart;
            DateTime _runEnd;
            _runStart = DateTime.Now;

            PrintReport();

            _runEnd = DateTime.Now;

            TimeSpan ts = (_runEnd - _runStart);
            string s = string.Format("[Time Span - {0:hh\\:mm\\:ss\\.fff}]", ts);

            this.label1.Text = s;
        }
    }
}
