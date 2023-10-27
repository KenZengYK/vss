using System;
using System.Drawing;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.RWO.BO;

namespace PH.RWO.BackEnd
{
    public partial class WOStatusReport : DevExpress.XtraReports.UI.XtraReport
    {
        public WOStatusReport(string customer, DateTime woCompletedFrom, DateTime woCompletedTo, DateTime deliveryFrom, DateTime deliveryTo, ProjectStatusGroupby statusGroupBy)
        {
            InitializeComponent();
            this._customer = customer;
            this._woCompletedFrom = woCompletedFrom;
            this._woCompletedTo = woCompletedTo;
            this._statusGroupBy = statusGroupBy;
            this._deliveryFrom = deliveryFrom;
            this._deliveryTo = deliveryTo;

            SetArrayCell();
            SetHeaderCaption();

            _ttlWOCount = 0;
            _ttlNonWOCount = 0;
            _ttlCompetedProjectCount = 0;
        }

        private string _customer;
        private DateTime _woCompletedFrom;
        private DateTime _woCompletedTo;
        private DateTime _deliveryFrom;
        private DateTime _deliveryTo;
        private ProjectStatusGroupby _statusGroupBy;


        private int _ttlWOCount;
        private int _ttlNonWOCount;
        private int _ttlCompetedProjectCount;

        private XRTableCell[] _woCells;
        private XRTableCell[] _statusCells;
        private void SetArrayCell()
        {
            _woCells = new XRTableCell[] { cellWO01, cellWO02, cellWO03, cellWO04, cellWO05, cellWO06, cellWO07, cellWO08, cellWO09, cellWO10, cellWO11, cellWO12, cellWO13 };
            _statusCells = new XRTableCell[] { cellWO01S, cellWO02S, cellWO03S, cellWO04S, cellWO05S, cellWO06S, cellWO07S, cellWO08S, cellWO09S, cellWO10S, cellWO11S, cellWO12S, cellWO13S };

        }
        private void SetHeaderCaption()
        {
            string title = string.Format("How to monitor Project completed - {0}", _statusGroupBy);
            //string title = string.Format("How to monitor Project completed in our POPC program - {0}", _statusGroupBy);
            this.lbTitle.Text = title;
            string c = string.IsNullOrEmpty(this._customer) ? "" : string.Format("Customer:- {0}", this._customer);
            string woc = this._woCompletedFrom == DateTime.MinValue ? "" : string.Format("Recent WO Completed date:- {0:yyyy/MM/dd} to {1:yyyy/MM/dd}", this._woCompletedFrom, this._woCompletedTo);
            string del = this._deliveryFrom == DateTime.MinValue ? "" : string.Format("SO Delivery date:- {0:yyyy/MM/dd} to {1:yyyy/MM/dd}", this._deliveryFrom, this._deliveryTo);

            this.lbTips.Text = string.Format("{0}{1}{2}\r\n{3}", c, string.IsNullOrEmpty(c) ? "" : "    ", woc, del);

            this.ExportOptions.PrintPreview.DefaultFileName = string.Format("{0}{1}", title, string.IsNullOrEmpty(this._customer) ? "" : "(" + this._customer + ")");
        }
        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            Project p = this.GetCurrentRow() as Project;
            if (p == null) return;

            #region Init value: clear

            foreach (var item in _woCells)
            {
                item.Text = "";
            }
            foreach (var item in _statusCells)
            {
                item.Text = "";
            }
            #endregion

            WorkOrder[] wos = p.WOs;
            int woCount = wos.Length;
            int nonCompletedWOCount = 0;
            DateTime recentWOCompletedDate = DateTime.MinValue;
            DateTime? projectCompletedDate;
            string projectStauts = "";
            DateTime? exftyDateMax = null;
            DateTime? exftyDateMin = null;

            #region WO

            for (int i = 0; i < wos.Length; i++)
            {
                int j = i % _woCells.Length;
                SetCellValue(_woCells[j], wos[i].WorkOrderNo);

                if (wos[i].Status2 == "Y" && ((wos[i].CompletedDate ?? DateTime.MinValue) > (recentWOCompletedDate)))
                    recentWOCompletedDate = wos[i].CompletedDate ?? DateTime.MinValue;
                if (wos[i].Status2 == "N")
                {
                    if ((exftyDateMin ?? DateTime.MaxValue) > (wos[i].LCLExFtyShipCompleted ?? DateTime.MinValue))
                        exftyDateMin = wos[i].LCLExFtyShipCompleted;
                    if ((exftyDateMax ?? DateTime.MinValue) < (wos[i].LCLExFtyShipCompleted ?? DateTime.MinValue))
                        exftyDateMax = wos[i].LCLExFtyShipCompleted;
                }
            }
            for (int i = 0; i < _woCells.Length; i++)
            {
                int j = i % _woCells.Length;
                SetCellNullValue(_woCells[j]);
            }

            #endregion

            #region Y/N

            for (int i = 0; i < wos.Length; i++)
            {
                int j = i % _woCells.Length;
                SetCellValue(_statusCells[j], wos[i].Status2);
                if (wos[i].Status2 == "N") nonCompletedWOCount++;
            }
            projectStauts = nonCompletedWOCount == 0 ? "Y" : "N";
            projectCompletedDate = projectStauts == "Y" ? recentWOCompletedDate : (DateTime?)null;

            if (projectStauts == "Y") _ttlCompetedProjectCount++;

            #endregion

            _ttlWOCount += woCount;
            _ttlNonWOCount += nonCompletedWOCount;

            this.cellWOCount.Text = string.Format("{0}", woCount);
            this.cellNonCompletedWOCount.Text = string.Format("{0}", nonCompletedWOCount);

            this.cellWODate.Text = recentWOCompletedDate == DateTime.MinValue ? (projectStauts == "Y" ? "--" : "") : string.Format("{0:yyyy/MM/dd}", recentWOCompletedDate);
            this.cellProjectDate.Text = projectCompletedDate == DateTime.MinValue ? (projectStauts == "Y" ? "--" : "") : string.Format("{0:yyyy/MM/dd}", projectCompletedDate);
            this.cellProjectStatus.Text = string.Format("{0}", projectStauts);

            this.cellExftyRange.Text = exftyDateMin.HasValue ? string.Format("{0:yy/MM/dd}-{1:yy/MM/dd}", exftyDateMin, exftyDateMax) : "--";

        }

        private void SetCellValue(XRTableCell cell, string value)
        {
            if (string.IsNullOrEmpty(value))
            {
                cell.Text = "--";
            }
            else
            {
                string s = cell.Text;
                if (string.IsNullOrEmpty(s)) s = value;
                else s += string.Format("\r\n{0}", value);
                cell.Text = s;
            }
        }
        private void SetCellNullValue(XRTableCell cell)
        {
            string s = cell.Text;
            if (string.IsNullOrEmpty(s))
                cell.Text = "--";

        }

        private void GroupFooter1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            this.sumWOCount.Text = string.Format("{0}", _ttlWOCount);
            this.sumNonCompletedWOCount.Text = string.Format("{0}", _ttlNonWOCount);
            this.sumProjectStatus.Text = string.Format("{0}", _ttlCompetedProjectCount);
            
        }

    }
}
