using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;

namespace PH.MIDc.BackEnd
{
    public partial class WipWeightReport : DevExpress.XtraReports.UI.XtraReport
    {
        public WipWeightReport(string cust, string project, DateTime dt1, DateTime dt2, bool isStyle)
        {
            InitializeComponent();
            _cust = cust;
            _projectNo = project;
            _dateBegin = dt1;
            _dateEnd = dt2;
            _isStyle = isStyle;

            InitValues();
        }


        string _cust;
        string _projectNo;
        DateTime _dateBegin;
        DateTime _dateEnd;
        bool _isStyle;

        public void InitValues()
        {
            string s0 = _isStyle ? "by Style" : "by Material";
            string s1 = string.IsNullOrEmpty(this._cust) ? "" : string.Format("Customer: {0}", this._cust);
            string s2 = string.IsNullOrEmpty(this._projectNo) ? "" : string.Format("Project No: {0}", this._projectNo);
            string s3 = _dateBegin == DateTime.MinValue ? "" : string.Format("Delivery Date from: {0:yyyy/MM/dd}     to: {1:yyyy/MM/dd}", this._dateBegin, this._dateEnd);

            this.lbTips.Text = string.Format("{3}\r\n{0}            {1}\r\n{2}", s1, s2, s3, s0);

            this.lbName.Text = _isStyle ? "Style Name" : "Material Name";
            this.lbHSCode.Text = _isStyle ? "Style HS Code" : "Material HS Code";
            this.lbQty.Visible = (_isStyle);
            if (!_isStyle) this.lbQty.BackColor = Color.Transparent;
        }

        private void WipWeightReport_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            object ds = this.DataSource;

            this.tcName.DataBindings.Add(new XRBinding("Text", ds, _isStyle ? "StyleName" : "MaterialName"));
            this.tcHSCode.DataBindings.Add(new XRBinding("Text", ds, _isStyle ? "StyleHSCode" : "MaterialHSCode"));
            this.tcWeight.DataBindings.Add(new XRBinding("Text", ds, "Weight52", "{0:N2}"));

            DevExpress.XtraReports.UI.XRSummary xrSummary1 = new DevExpress.XtraReports.UI.XRSummary();
            xrSummary1.FormatString = "{0:N2}";
            xrSummary1.Running = DevExpress.XtraReports.UI.SummaryRunning.Group;
            this.tcWeight.Summary = xrSummary1;

            if (_isStyle)
                this.tcQty.DataBindings.Add(new XRBinding("Text", ds, "Qty52", "{0:N0}"));

            this.GroupHeader1.GroupFields.Clear();
            this.GroupHeader1.GroupFields.AddRange(
            new DevExpress.XtraReports.UI.GroupField[] {
            new DevExpress.XtraReports.UI.GroupField( _isStyle ? "StyleSeq" : "MaterialSeq", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending)});
        }


    }
}
