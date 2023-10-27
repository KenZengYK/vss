using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using System.Windows.Forms;
using System.Threading;
using System.Reflection;
using DevExpress.XtraReports.UI;
using PH.MR.BO;

namespace PH.MR.UI
{
    public partial class GenerateMRForm : DevExpress.XtraEditors.XtraForm
    { 
        
        Thread thread;
        MRHelper _RMRHelper;

        public static void GenerateMR(MRHelper mrHelper)
        {
            GenerateMRForm form = new GenerateMRForm(mrHelper);
            form.ShowDialog();
        }

        private GenerateMRForm(MRHelper mrHelper)
        {
            this._RMRHelper = mrHelper;
            InitializeComponent();
            InitValues();
        }       

        private void InitValues()
        {          

            switch (this._RMRHelper.phReportAction)
            {
                case PHReportAction.None:
                    break;
                case PHReportAction.ShowReport:
                    break;
                case PHReportAction.DesignReport:
                    break;
                case PHReportAction.ExportReport:
                    break;
                case PHReportAction.GenerateMR:
                    marqueeProgressBarControl1.Visible = true;
                    progressBar_main.Visible = progressBar_child.Visible = false;
                    Text = "Generate MR data";
                    break;
                case PHReportAction.MR2Compiere:
                    marqueeProgressBarControl1.Visible = true;
                    progressBar_main.Visible = progressBar_child.Visible = false;
                    Text = "Translate MR data to Compiere";
                    break;
                case PHReportAction.SaveVersion:
                    this.progressBar_main.Properties.Maximum = this._RMRHelper.GenerateMax;
                    marqueeProgressBarControl1.Visible = false;
                    progressBar_main.Visible = progressBar_child.Visible = true;
                    Text = string.Format("Save MR Version {0} for {1}", this._RMRHelper.MaxVersion, this._RMRHelper.Project);
                    break;
                case PHReportAction.CompareVersion:
                    marqueeProgressBarControl1.Visible = true;
                    progressBar_main.Visible = progressBar_child.Visible = false;
                    Text = "Compare Version";
                    //label1.Text = string.Format("Compare {0} for {1}.  Please wait...", this._RMRHelper.CompareOption, this._RMRHelper.Project);
                    break;
                case PHReportAction.GenerateMRHistoryEnquiries:
                    marqueeProgressBarControl1.Visible = true;
                    progressBar_main.Visible = progressBar_child.Visible = false;
                    Text = "Generate MR History Enquiries data";
                    break;
                default:
                    break;
            }            
        }

        private void SetLabelText(string str)
        {
            label1.Text = str;
        }

        private void DoGenerateData()
        {
            switch (this._RMRHelper.phReportAction)
            {
                case PHReportAction.None:
                    break;
                case PHReportAction.ShowReport:
                    break;
                case PHReportAction.DesignReport:
                    break;
                case PHReportAction.ExportReport:
                    break;
                case PHReportAction.GenerateMR:
                    this._RMRHelper.PrepareData();
                    break;
                case PHReportAction.MR2Compiere:
                    this._RMRHelper.MR2Compiere();
                    break;
                case PHReportAction.SaveVersion:
                    this._RMRHelper.SaveVersion();
                    break;
                case PHReportAction.CompareVersion:
                    this._RMRHelper.CompareVersion();
                    break;
                case PHReportAction.GenerateMRHistoryEnquiries:
                    this._RMRHelper.MRHistoryEnquiries();
                    break;
                default:
                    break;
            }
            //Thread.Sleep(0);
        }

        private void ReportCreatorForm_Load(object sender, System.EventArgs e)
        {
            thread = new Thread(new ThreadStart(DoGenerateData));
            thread.Start();
            timerAutoClose.Start();
        }

        private void ReportCreatorForm_FormClosed(object sender, FormClosedEventArgs e)
        {
            if (thread.IsAlive)
            {
                timerAutoClose.Stop();
                thread.Abort(); 
            }
        }       

        private void btnCancel_Click(object sender, System.EventArgs e)
        {
            if (thread.IsAlive)
            {
                switch (this._RMRHelper.phReportAction)
                {
                    case PHReportAction.None:
                        break;
                    case PHReportAction.ShowReport:
                        break;
                    case PHReportAction.DesignReport:
                        break;
                    case PHReportAction.ExportReport:
                        break;
                    case PHReportAction.GenerateMR:
                        break;
                    case PHReportAction.MR2Compiere:
                        break;
                    case PHReportAction.SaveVersion:
                        MRHelper.CancelSaveVersion(this._RMRHelper.FID_Version);
                        break;
                    case PHReportAction.CompareVersion:
                        break;
                    case PHReportAction.GenerateMRHistoryEnquiries:
                        break;
                    default:
                        break;
                }
                this._RMRHelper.GenerateDataStatus = GenerateDataStatus.Cancel;

                timerAutoClose.Stop();
                thread.Abort();
                Close();
            }
        }

        private void timerAutoClose_Tick(object sender, System.EventArgs e)
        {
            SetLabelText(this._RMRHelper.GenerateTips);

            if (this._RMRHelper.phReportAction == PHReportAction.SaveVersion || this._RMRHelper.phReportAction == PHReportAction.CompareVersion)
            {
                progressBar_main.Position = this._RMRHelper.ProgressValue;
                progressBar_child.Visible = this._RMRHelper.ProgressValue_Insert != 0;
                if (progressBar_child.Visible)
                {
                    progressBar_child.Properties.Maximum = this._RMRHelper.GenerateInsertMax;
                    progressBar_child.Position = this._RMRHelper.ProgressValue_Insert;
                }
            }

            if (thread != null && (thread.ThreadState & ThreadState.Stopped) > 0)
            {
                Thread.Sleep(1000);
                timerAutoClose.Stop();
                Close();
                this._RMRHelper.GenerateDataStatus = GenerateDataStatus.Finished;
            }
        }


    }
}