using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using System.Windows.Forms;
using System.Threading;
using System.Reflection;
using DevExpress.XtraReports.UI;

namespace PH.POPC.AutoUpdate.UI
{
    public partial class GeneratePOPCForm : Form
    {
        public static void GeneratePOPC(UpdateHelper mrHelper)
        {
            GeneratePOPCForm form = new GeneratePOPCForm(mrHelper);
            if (!mrHelper.ShowProcessForm)
            {
                form.WindowState = FormWindowState.Minimized;
                form.FormBorderStyle = FormBorderStyle.None;
            }
            //form.ShowDialog();
            form.Show();
        }

        public GeneratePOPCForm(UpdateHelper mrHelper)
        {
            this._RMRHelper = mrHelper;
            InitializeComponent();
            InitValues();
        }

        #region Fields
        Thread thread;
        UpdateHelper _RMRHelper;

        private bool isXPVersion;
        //private bool increment = true;

        #endregion

        #region Init
        private void InitValues()
        {
            this.isXPVersion = (Environment.OSVersion.Platform == PlatformID.Win32NT)
                       && (Environment.OSVersion.Version.Major == 5)
                       && (Environment.OSVersion.Version.Minor > 0);
            progressBar_main.Properties.Maximum = this._RMRHelper.GenerateMax;
            progressBar_child.Visible = false;
            //Text =  "POPC - " + this._RMRHelper.ReportOption.ToString()+" Report";// Application.ProductName;
            //SetLabelText();
            //InitProgressBar();
            //SetProgressBarStyle();
            //DevExpress.XtraPrinting.ProgressReflector.RegisterReflector(this.reflectorBar);
        }
        private void SetLabelText(string str)
        {
            label1.Text = str;
        }

        private void SetProgressBarStyle()
        {
            //progressBar_main.Style = this.isXPVersion ? ProgressBarStyle.Marquee : ProgressBarStyle.Blocks;
        }
        #endregion

        #region function
        private void ReportCreatorForm_Load(object sender, System.EventArgs e)
        {
            thread = new Thread(new ThreadStart(PreparePOPCData_Update));
            thread.Start();
            //increment = true;
            timerAutoClose.Start();
        }
        private void ReportCreatorForm_FormClosed(object sender, FormClosedEventArgs e)
        {
            if (thread.IsAlive)
            {
                timerAutoClose.Stop();
                thread.Abort();
                this._RMRHelper.GenerateFinish = true;
                this._RMRHelper.StopRun = false;
            }
        }

        void PreparePOPCData_Update()
        {
            this._RMRHelper.PrepareData_Update();
            //Thread.Sleep(0);
        }
        private void btnCancel_Click(object sender, System.EventArgs e)
        {
            StopRunning();
        }
        public void StopRunning()
        {
            if (thread.IsAlive)
            {
                this._RMRHelper.StopRun = false;
                timerAutoClose.Stop();
                thread.Abort();
                Close();
                this._RMRHelper.GenerateFinish = true;
            }
        }
        private void timerAutoClose_Tick(object sender, System.EventArgs e)
        {
            if (this._RMRHelper.StopRun)
            {
                this.StopRunning();
                return;
            }
            this.Text = this._RMRHelper.TitleTips;
            SetLabelText(this._RMRHelper.GenerateTips);
            progressBar_main.Position = this._RMRHelper.ProgressValue;
            progressBar_child.Visible = this._RMRHelper.ProgressValue_Insert != 0;
            marqueeProgressBarControl1.Visible = !progressBar_child.Visible;
            if (progressBar_child.Visible)
            {
                progressBar_child.Properties.Maximum = this._RMRHelper.GenerateInsertMax;
                progressBar_child.Position = this._RMRHelper.ProgressValue_Insert;
            }
            if (thread != null && (thread.ThreadState & ThreadState.Stopped) > 0)
            {
                Thread.Sleep(1000);
                timerAutoClose.Stop();
                Close();
                this._RMRHelper.GenerateFinish = true;
            }
        }


        #endregion
    }
}