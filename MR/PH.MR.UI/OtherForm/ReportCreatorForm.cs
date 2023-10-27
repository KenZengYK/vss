using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using System.Windows.Forms;
using System.Threading;
using System.Reflection;
using DevExpress.XtraReports.UI;
using DevExpress.XtraPrinting;
using DevExpress.XtraPrinting.Preview;
using DevExpress.XtraPrinting.Control;
using PH.MR.BO;
using System.Collections.Generic;

namespace PH.MR.UI
{
    public partial class ReportCreatorForm : DevExpress.XtraEditors.XtraForm
    {
        public static void CreateReport(MRHelper mrHelper)
        {
            ReportCreatorForm form = new ReportCreatorForm(mrHelper);
            form.ShowDialog();
        }

        //private ReportCreatorForm(MRHelper mrHelper)
        //{
        //    this._RMRHelper = mrHelper;
        //    InitializeComponent();
        //    InitValues();
        //}

        public ReportCreatorForm(MRHelper mrHelper)
        {
            this._RMRHelper = mrHelper;
            InitializeComponent();
            InitValues();
        }

        #region Fields
        Thread thread;
        MRHelper _RMRHelper;
        XtraReport report;

        private DevExpress.XtraPrinting.PrintingSystem printingSystem;
        private DevExpress.XtraEditors.ProgressBarControl progressBar;
        private DevExpress.XtraPrinting.Native.ReflectorBar reflectorBar;

        public XtraReport Report
        {
            get
            {
                if (!IsReportReady)
                    return null;
                return report;
            }
        }

        public bool IsReportReady
        {
            get { return !thread.IsAlive && report != null; }
        }
        #endregion

        #region Init
        private void InitValues()
        {
            Text = this._RMRHelper.dataAction.ToString() + " - " + this._RMRHelper.ReportOption.ToString() + " Report";// Application.ProductName;

            SetLabelText();
            InitProgressBar();
            //SetProgressBarStyle();
            DevExpress.XtraPrinting.ProgressReflector.RegisterReflector(this.reflectorBar);
        }
        private void SetLabelText()
        {
            switch (this._RMRHelper.phReportAction)
            {
                case PHReportAction.None:
                    label1.Text = "";
                    break;
                case PHReportAction.ShowReport:
                    label1.Text = "Creating a report.  Please wait...";
                    break;
                case PHReportAction.DesignReport:
                    label1.Text = "Designing a report.  Please wait...";
                    break;
                case PHReportAction.ExportReport:
                    string sdesc = PHReportHelper.PHReportExportDescript[this._RMRHelper.exportIndex];
                    label1.Text = sdesc + ".  Please wait...";
                    break;
                default:
                    break;
            }
        }
        private void InitProgressBar()
        {
            this.printingSystem = XtraReport.CreatePrintingSystem();
            //this.printingSystem = new DevExpress.XtraPrinting.PrintingSystem(this.components);


            CreateProgressBar();
            this.reflectorBar = new DevExpress.XtraPrinting.Native.ReflectorBar(this.progressBar);
        }
        private void CreateProgressBar()
        {
            if (this.progressBar != null)
            {
                if (this.Controls.Contains(this.progressBar))
                    this.Controls.Remove(this.progressBar);
            }
            this.progressBar = new DevExpress.XtraEditors.ProgressBarControl();
            this.progressBar.Visible = false;
            this.Controls.Add(this.progressBar);
            this.progressBar.BringToFront();
            this.progressBar.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.progressBar.Visible = true;
        }


        #endregion

        #region function
        private void ReportCreatorForm_Load(object sender, System.EventArgs e)
        {
            thread = new Thread(new ThreadStart(CreateReport));
            thread.Start();

            timerAutoClose.Start();
        }
        private void ReportCreatorForm_FormClosed(object sender, FormClosedEventArgs e)
        {
            if (thread.IsAlive)
            {
                timerAutoClose.Stop();
                thread.Abort();
                //Close();
            }
            DevExpress.XtraPrinting.ProgressReflector.UnregisterReflector(this.reflectorBar);
        }

        void CreateReport()
        {
            //ConstructorInfo ci = reportType.GetConstructor(Type.EmptyTypes);
            //if (ci == null)
            //    throw new Exception("The report class does not have a default constructor");
            //XtraReport r = ci.Invoke(null) as XtraReport;

            XtraReport r = this._RMRHelper.CreateReport(this.printingSystem);
            Thread.Sleep(0);
            //r.CreateDocument();

            Thread.Sleep(0);
            report = r;
        }

        private void btnCancel_Click(object sender, System.EventArgs e)
        {
            CancelRun();
        }
        private void CancelRun()
        {
            if (thread.IsAlive)
            {
                timerAutoClose.Stop();
                thread.Abort();
                Close();
                //this.DialogResult = DialogResult.OK;
                this._RMRHelper.GenerateDataStatus = GenerateDataStatus.Finished;
            }
        }

        //public bool IsGetRptSource;
        //public List<MRReport> Alist = new List<MRReport>();
        private void timerAutoClose_Tick(object sender, System.EventArgs e)
        {
            //if (progressBar1.Style == ProgressBarStyle.Blocks)
            //{
            //    progressBar1.Value += (increment) ? 1 : -1;
            //    if (progressBar1.Value == progressBar1.Maximum)
            //        increment = false;
            //    if (progressBar1.Value == progressBar1.Minimum)
            //        increment = true;
            //}
            this.Visible = !this._RMRHelper.SelectRWOQN;

            //if (this._RMRHelper.dataAction == DataAction.RoundMR
            //    && this._RMRHelper.ReportOption == PHPrintReportOption.DetailListing
            //    && this._RMRHelper.PrintAgain == PrintAgainOption.No)

            if ((this._RMRHelper.ReportOption == PHPrintReportOption.DetailListing || this._RMRHelper.ReportOption == PHPrintReportOption.DetailListingCMT)
               && this._RMRHelper.PrintAgain == PrintAgainOption.No)
            {
                CancelRun();
                //this._RMRHelper.GenerateDataStatus = GenerateDataStatus.Finished;
                return;
            }

            if (thread != null && (thread.ThreadState & ThreadState.Stopped) > 0)
            {
                timerAutoClose.Stop();
                Close();
                //this.DialogResult = DialogResult.OK;
                if (Report != null)
                {
                    if (this._RMRHelper.IsGetRptSource)
                    {              
                        this._RMRHelper.GenerateDataStatus = GenerateDataStatus.Finished;
                    }
                    else
                    {
                        this._RMRHelper.DoPHReportAction();
                    }

                    
                }
                else
                    this._RMRHelper.GenerateDataStatus = GenerateDataStatus.Finished;
            }
        }

        #endregion
    }
}