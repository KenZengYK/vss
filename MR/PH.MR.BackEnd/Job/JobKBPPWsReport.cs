using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MR.BO;
using DevExpress.XtraReports.UI;

namespace PH.MR.BackEnd.Job
{
    public partial class JobKBPPWsReport : UserControl, PH.Platform.BackEnd.BO.IServerReport, PH.Platform.BackEnd.BO.IParameterSetControl
    {
        public JobKBPPWsReport()
        {
            InitializeComponent();
            if (System.Diagnostics.Process.GetCurrentProcess().ProcessName == "devenv") return;

            this._dept = PH.MR.BO.Config.GetUserCodeDept(PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID, "Department"); //z..r this._dept = PH.AuthManage.Utils.AuthController.User.Department;
            _reportOption = PHPrintReportOption.None;
            this.bindSource = new BindingSource();
            WoRwoQns = new List<WoRwoQn>();
            this.bindSource.DataSource = WoRwoQns;
            this.gridWO.DataSource = bindSource;
        }

        public System.Windows.Forms.BindingSource bindSource { get; set; }
        public List<WoRwoQn> WoRwoQns { get; set; }

        public string Company { get { return this.editCompany.Text; } }
        public string ProjectNo { get { return this.editProject.Text; } }
        public int ReportType { get { return Convert.ToInt32(this.groupReportType.EditValue); } }
        public string Dept { get { return this.editDept.Text; } }
        public PHPrintReportOption ReportOption
        {
            get { return (PHPrintReportOption)ReportType; }
        }

        private string _company;
        private string _project;
        private int _reportType;
        private PHPrintReportOption _reportOption;
        private string _dept;
        private string _wos;

        private string _Preparedby;
        private string _Confirmedby;
        private string _Approvedby;

        private bool _Draft = false;

        public void GetValues(string parameters)
        {
            if (string.IsNullOrEmpty(parameters)) return;

            string[] c = new string[1] { ";" };
            string[] ss = parameters.Split(c, StringSplitOptions.None);
            _company = ss[0];
            _project = ss[1];
            _reportType = Convert.ToInt32(ss[2]);
            _dept = ss[3];
            _wos = ss[4];
            _reportOption = (PHPrintReportOption)_reportType;
        }

        private void SplitWOs(string wos)
        {
            //List<WoRwoQn> woRwoQns = new List<WoRwoQn>();
            WoRwoQns.Clear();
            string[] paras = wos.Split(',');
            foreach (string wo in paras)
            {
                WoRwoQn w = new WoRwoQn { WORKORDER = wo };
                WoRwoQns.Add(w);
            }
            //return woRwoQns;
        }
        #region IServerReport Members

        public int CheckDataSource(string parameters)
        {
            return 0;
        }

        public DevExpress.XtraReports.UI.XtraReport CreateReport(string parameters)
        {
            GetValues(parameters);
            XtraReport report;
            switch (this._reportOption)
            {
                default:
                    report = new PH.MR.BackEnd.DetailListingPPWs();
                    break;
            }
            report.BeforePrint += new System.Drawing.Printing.PrintEventHandler(report_BeforePrint);

            //BandingReport(_report);
            //SetReportHeaderBand(_report);

            //printingSystem.ClearContent();
            //printingSystem.PageSettings.Landscape = _report.Landscape;

            //printingSystem.PageSettings.Assign(_report.Margins, _report.PaperKind, _report.Landscape);

            //_report.PrintingSystem = printingSystem;

            //_report.ExportOptions.PrintPreview.SaveMode = SaveMode.UsingSaveFileDialog;
            //_report.ExportOptions.PrintPreview.ShowOptionsBeforeExport = false;

            return report;
        }

        void report_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            SetReportHeaderBand((XtraReport)sender);
        }

        public object GetReportDataSource(string parameters)
        {
            ReportHelper helper = new ReportHelper();
            //---1. generate data on as400
            helper.DT = Convert.ToInt32(DateTime.Now.ToString("yyyyMMdd"));
            helper.TM = DateTime.Now.ToString("HHmmssfff");
            helper.JOBN = string.Format("{0}{1}.{2}", helper.DT, helper.TM.Substring(0, 2), helper.TM.Substring(2, 4));
            helper.phReportAction = PHReportAction.GenerateMR;
            helper.dataAction = DataAction.None;
            helper.ReportOption = PHPrintReportOption.None;
            helper.Dept = this._dept;
            helper.CONO = this._company;
            helper.Project = this._project;

            helper.PrepareData();

            //---2. get report data ----------------
            helper.dataAction = DataAction.RoundMR;
            //helper.Assign(this.Cur_MRHelper);
            //CheckHasPrinted(helper);
            helper.PrintVersion = -1;
            helper.ReportOption = this._reportOption;
            helper.PrintAgain = PrintAgainOption.No;
            helper.Dept = this._dept;
            helper.phReportAction = PHReportAction.ShowReport;
            helper.WorkOrders = this._wos;

            object obj = helper.GenerateMRData();
            _Preparedby = helper.Preparedby;
            _Confirmedby = helper.Confirmedby;
            _Approvedby = helper.Approvedby;

            return obj;

        }

        #endregion

        #region IParameterSetControl Members

        public string GetParameter()
        {
            string wos = "";
            for (int i = 0; i < this.gridView1.RowCount; i++)
            {
                WoRwoQn item = this.gridView1.GetRow(i) as WoRwoQn;
                if (item != null && item.WORKORDER != null)
                {
                    wos += string.Format("{0},", item.WORKORDER);
                }
            }
            return string.Format("{0};{1};{2};{3};{4}", this.Company, this.ProjectNo, this.ReportType, this.Dept, wos);
        }

        public UserControl ParameterControl(string parameters)
        {
            JobKBPPWsReport ctl = new JobKBPPWsReport();
            if (!string.IsNullOrEmpty(parameters))
            {
                string[] paras = parameters.Split(';');
                ctl.editCompany.EditValue = paras[0];
                ctl.editProject.EditValue = paras[1];
                ctl.groupReportType.EditValue = Convert.ToInt32(paras[2]);
                ctl.editDept.EditValue = paras[3];
                ctl.SplitWOs(paras[4]);
                ctl.gridWO.DataSource = null;
                ctl.gridWO.DataSource = ctl.bindSource;
            }
            return ctl;
        }

        #endregion

        #region Banding DataField
        #region share
        private void BandingReportControl(XtraReport report, string controlName, string fieldName)
        {
            BandingReportControl(report, controlName, fieldName, "");
        }
        private void BandingReportControl(XtraReport report, string controlName, string fieldName, string formatString)
        {
            XRBinding banding = null;
            XRControl control = report.FindControl(controlName, false);
            if (control == null) return;

            if (formatString == null || formatString == "")
                banding = new XRBinding("Text", report.DataSource, fieldName);
            else
                banding = new XRBinding("Text", report.DataSource, fieldName, formatString);

            if (control is XRTableCell)
                ((XRTableCell)control).DataBindings.Add(banding);
            else if (control is XRLabel)
                ((XRLabel)control).DataBindings.Add(banding);
        }
        private void SetReportControlText(XtraReport report, string controlName, string text)
        {
            XRControl control = report.FindControl(controlName, false);
            if (control == null) return;
            control.Text = text;
        }
        private void SetReportHeaderBand(XtraReport report)
        {
            SetReportControlText(report, "lbVersion", "");
            SetReportControlText(report, "lbPreparedby", string.Format("{0}\r\n{1}\r\n{2}", _Preparedby, _Confirmedby, _Approvedby));
            //SetReportControlText(report, "lbApprovedby", _Approvedby);
            SetReportControlText(report, "lbWorkOrder", this._wos);
            if (this._reportOption != PHPrintReportOption.HSCodeDetailListing && this._reportOption != PHPrintReportOption.HSCodeSummaryListing)
                SetReportControlText(report, "lbReportTitle", string.Format("Final M.R. Against Project ({0}Summary Breakdown Listing)", this._Draft ? "Draft " : ""));
            else
                SetReportControlText(report, "lbReportTitle", string.Format("Final M.R.-H.S Code by Project"));

        }
        #endregion
        #endregion
        private void groupReportType_SelectedIndexChanged(object sender, EventArgs e)
        {
            label4.Visible = this.gridWO.Visible = ReportType == 3;
        }
    }


}
