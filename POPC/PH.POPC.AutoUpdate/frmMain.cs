using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Reflection;
using System.IO;
using System.Data;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Text;
using System.Windows.Forms;
using System.Diagnostics;
using DevExpress.Utils;
using DevExpress.Utils.Drawing;
using DevExpress.XtraEditors.Repository;
using DevExpress.XtraReports.Native;
using DevExpress.XtraGrid.Views.Grid;
using DevExpress.XtraGrid.Views.Base.ViewInfo;
using DevExpress.XtraGrid.Views.Grid.Customization;
using DevExpress.XtraGrid.Views.Grid.Drawing;
using DevExpress.XtraGrid.Views.Grid.ViewInfo;

namespace PH.POPC.AutoUpdate.UI
{
    public partial class frmMain : PH.Platform.UI.CS.UI0.BlankForm
    {
        public frmMain()
        {
            //if ((PH.AuthManage.Utils.AuthController.UserRole & PH.AuthManage.BO.PHUserRole.SuperAdmin) != PH.AuthManage.BO.PHUserRole.SuperAdmin)
            //{
            //    Application.Exit();
            //    return;
            //}

            //CreateWaitDialog("starting PH.POPC.AutoUpdate.UI System .....", "please wait");
            InitializeComponent();
            InitValue();

            InitUpdateValue();
        }


        #region Fields

        private UpdateHelper MRHelper_GetData;
        //ProgressForm progressForm = null;

        #endregion

        #region Init Value
        private void InitValue()
        {
            //InitialRemotingServer();

            //this._FTPIP = UISetting.AS400DBIP;// POPCSetting.AS400DBIP;

            MRHelper_GetData = new UpdateHelper();

        }
        #endregion


        #region Auto Update PO

        private bool _isStart;
        public bool IsStart
        {
            get
            {
                return _isStart;
            }
            set
            {
                _isStart = value;
                btnStartTimer.Enabled = !_isStart;
                btnStopTimer.Enabled = _isStart;
                groupTimer.Enabled = !_isStart;
            }
        }

        private readonly int _interval = 30000;//30 seconds

        private void timer_update_Tick(object sender, EventArgs e)
        {
            DoUpdateRPG();
        }

        private void InitUpdateValue()
        {
            this.editLogs.Text = "";
            this.timer_update.Interval = _interval;
            this.editSecond.Value = _interval / 1000;
            this.label10.Text = string.Format("Current interval:  {0} 秒 or {1:F2} 分", _interval / 1000, (_interval / 60000F));

            IsStart = true;
            this.timer_update.Start();
        }

        private void DoUpdateRPG()
        {
            IsStart = false;
            this.timer_update.Stop();
            MRHelper_GetData.GenerateFinish = false;

            //PH.Common.UI.App.StatusBar.PHProgressBar.Value = 0;
            //SetProgressBarStyle();

            //cbbColorShade.Items.Clear();
            //ribbonControl1.Enabled = false;
            //btnSavePOPC1.Enabled = false;
            //btnSave.Enabled = false;
            //btnExport.Enabled = false;

            //increment = true;
            this.timer_update.Enabled = true;
            //this.GridPOPC.DataSource = null;
            //this.gridView.FocusedRowChanged -= new DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventHandler(gridView_FocusedRowChanged);
            //this._popcBS = new BindingSource();
            //if (this.MRHelper_GetData.dtPOPC != null) this.MRHelper_GetData.dtPOPC.Rows.Clear();
            //System.Threading.ThreadPool.QueueUserWorkItem(new System.Threading.WaitCallback(POPCGetData), null);
            POPCGetData_Update();
        }
        public void POPCGetData_Update()
        {
            MRHelper_GetData.phReportAction = PHReportAction.GeneratePOPC;
            MRHelper_GetData.ShowProcessForm = editShowFrom.Checked;
            GeneratePOPCForm.GeneratePOPC(MRHelper_GetData);
        }

        private void editIntervalIsSecond_CheckedChanged(object sender, EventArgs e)
        {
            bool isCheck = editIntervalIsSecond.Checked;
            editSecond.Enabled = label11.Enabled = isCheck;
            editMinute.Enabled = label12.Enabled = !isCheck;
        }

        private void btnStartTimer_Click(object sender, EventArgs e)
        {
            IsStart = true;
            this.timer_update.Start();
        }

        private void btnStopTimer_Click(object sender, EventArgs e)
        {
            IsStart = false;
            this.timer_update.Stop();
        }

        private void btnSetTimer_Click(object sender, EventArgs e)
        {
            bool isCheck = editIntervalIsSecond.Checked;
            int i = 0;
            if (isCheck)//second
            {
                i = Convert.ToInt32(this.editSecond.Value) * 1000;
            }
            else//minute
            {
                i = Convert.ToInt32(this.editMinute.Value) * 1000 * 60;
            }
            this.timer_update.Interval = i;
            this.label10.Text = string.Format("Current interval:  {0} 秒 or {1:F2} 分", i / 1000, i / 60000F);

        }

        private void timer1_update_Tick(object sender, EventArgs e)
        {
            if (MRHelper_GetData.GenerateFinish)//(_finished)
            {
                timer1.Enabled = false;

                this.Cursor = Cursors.Default;

                IsStart = true;
                this.timer_update.Start();

            }
            else
            {
                if (MRHelper_GetData.CanRefreshTips)
                {
                    try
                    {
                        MRHelper_GetData.CanRefreshTips = false;
                        this.editLogs.Text += string.Format("{0}\r\n", MRHelper_GetData.ProcessingPO);
                        this.editLogs.SelectionStart = this.editLogs.Text.Length;
                        this.editLogs.ScrollToCaret();
                    }
                    catch { }
                }
            }
        }

        #endregion

    }
}