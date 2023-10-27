using System;
using System.Drawing;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.RWO.BO;

namespace PH.RWO.BackEnd
{
    public partial class SubContractCycleTimeReport : DevExpress.XtraReports.UI.XtraReport
    {
        public SubContractCycleTimeReport()
        {
            InitializeComponent();
            _width = 45;
            _height = 15;
            _height2 = 12;
            _backColors = new Color[5] { Color.Transparent, Color.LavenderBlush, Color.Transparent, Color.Transparent, Color.Transparent };
            _foreColors = new Color[3] { Color.Transparent, Color.Blue, Color.Red };
            _fty1 = "主廠";
            _calcType1 = "FW";
            _fty2 = "";
            _calcType2 = "";
            _printPosition = PrintPosition.Front;
        }

        private void Detail1_AfterPrint(object sender, EventArgs e)
        {
            //int x = xrTable4.Location.X;
            //int y = xrTable4.Location.Y;
            //x += xrTable4.Size.Width;
            //xrTable4.Location = new Point(x, y);
        }

        private void GroupHeader2_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //xrTable4.Location = new Point(0, 0);

            _x = 10;
            _y = 0;
            this.GroupFooter2.Controls.Clear();
            this.GroupFooter2.Height = 10;

            _fty1 = "主廠";
            _calcType1 = "FW";
        }
        int _width;
        int _height, _height2;
        int _x, _y;
        Color[] _backColors, _foreColors;
        string _fty1, _calcType1;
        string _fty2, _calcType2;
        PrintPosition _printPosition;

        private void Detail1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            CycleTimeProcess p = this.DetailReport.GetCurrentRow() as CycleTimeProcess;
            if (p == null) return;

            string directDesc = p.DirectDesc;// Convert.ToString(this.DetailReport.GetCurrentColumnValue("DirectDesc"));
            string process = p.Process; //Convert.ToString(this.DetailReport.GetCurrentColumnValue("Process"));
            int? days = p.Days;// Convert.ToString(this.DetailReport.GetCurrentColumnValue("Days"));
            int width = (days ?? 2) * this._width;
            //if (days == 1) width = (int)(1.5 * this._width);

            #region Caption

            XRLabel lblA = new XRLabel();
            lblA.Name = string.Format("PHLabel_{0}", PH.Platform.Report.ReportHelper.PHControlName);
            GroupFooter2.Controls.Add(lblA);
            lblA.Location = new System.Drawing.Point(_x, _y);
            lblA.Size = new System.Drawing.Size(width, _height * 2);
            lblA.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            lblA.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            lblA.Text = string.Format("{0}\r\n{1}", directDesc, process);
            lblA.Borders = DevExpress.XtraPrinting.BorderSide.None;
            lblA.Multiline = true;
            lblA.CanGrow = false;
            _y += _height * 2;
            #endregion

            #region Days

            XRLabel lblB = new XRLabel();
            lblB.Name = string.Format("PHLabel_{0}", PH.Platform.Report.ReportHelper.PHControlName);
            GroupFooter2.Controls.Add(lblB);
            lblB.Location = new System.Drawing.Point(_x, _y);
            lblB.Size = new System.Drawing.Size(width, _height);
            lblB.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            lblB.ForeColor = this._foreColors[p.IsWorkingDay.HasValue ? ((p.IsWorkingDay ?? false) ? 1 : 2) : 0];// System.Drawing.Color.FromName(scol);
            lblB.BackColor = this._backColors[p.Direct ?? 0];// System.Drawing.Color.FromName(scol);
            lblB.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            lblB.Text = days.HasValue ? (string.Format("{0} {1}{2}", days, (p.IsWorkingDay??false)?"":"calendar ", (days ?? 0) == 1 ? "day" : "days")) : "???";
            lblB.Borders = DevExpress.XtraPrinting.BorderSide.All;
            lblB.CanGrow = false;
            _y += _height;
            #endregion

            #region Process

            if (!string.IsNullOrEmpty(p.Remark))
            {
                XRLabel lblE = new XRLabel();
                lblE.Name = string.Format("PHLabel_{0}", PH.Platform.Report.ReportHelper.PHControlName);
                lblE.Font = new System.Drawing.Font("Arial Unicode MS", 5.5F);
                GroupFooter2.Controls.Add(lblE);
                lblE.Location = new System.Drawing.Point(_x + 10, _y);
                lblE.Size = new System.Drawing.Size(width - 10, _height2);
                lblE.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
                //lblE.ForeColor = this._foreColors[p.IsWorkingDay.HasValue ? ((p.IsWorkingDay ?? false) ? 1 : 2) : 0];// System.Drawing.Color.FromName(scol);
                //lblE.BackColor = this._backColors[p.Direct ?? 0];// System.Drawing.Color.FromName(scol);
                lblE.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
                lblE.Text = "( " + p.Remark + " )";
                lblE.Borders = DevExpress.XtraPrinting.BorderSide.None;
                lblE.CanGrow = true;
            }
            #endregion

            #region Time Elemant Type

            XRLabel lblC, lblD;
            switch (this._printPosition)
            {
                case PrintPosition.Front:
                    lblC = new XRLabel();
                    lblC.Name = string.Format("PHLabel_{0}", PH.Platform.Report.ReportHelper.PHControlName);
                    lblC.Font = new System.Drawing.Font("Arial Unicode MS", 5.5F);
                    GroupFooter2.Controls.Add(lblC);
                    lblC.Location = new System.Drawing.Point(_x - 15, _y);
                    lblC.Size = new System.Drawing.Size(30, _height2 * 2);
                    lblC.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
                    lblC.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
                    lblC.Text = string.Format("{0}\r\n{1}", _fty1, _calcType1);
                    lblC.Borders = DevExpress.XtraPrinting.BorderSide.None;
                    lblC.Multiline = true;
                    lblC.CanGrow = false;
                    _x += width;
                    _y -= _height * 2;
                    break;
                case PrintPosition.Back:
                    _y += _height;
                    _x += width;
                    lblD = new XRLabel();
                    lblD.Name = string.Format("PHLabel_{0}", PH.Platform.Report.ReportHelper.PHControlName);
                    lblD.Font = new System.Drawing.Font("Arial Unicode MS", 5.5F);
                    GroupFooter2.Controls.Add(lblD);
                    lblD.Location = new System.Drawing.Point(_x - 15, _y);
                    lblD.Size = new System.Drawing.Size(30, _height2 * 2);
                    lblD.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
                    lblD.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
                    lblD.Text = string.Format("{0}\r\n{1}", _fty2, _calcType2);
                    lblD.Borders = DevExpress.XtraPrinting.BorderSide.None;
                    lblD.Multiline = true;
                    lblD.CanGrow = false;
                    _y -= _height * 3;
                    break;
                case PrintPosition.Both:
                    lblC = new XRLabel();
                    lblC.Name = string.Format("PHLabel_{0}", PH.Platform.Report.ReportHelper.PHControlName);
                    lblC.Font = new System.Drawing.Font("Arial Unicode MS", 5.5F);
                    GroupFooter2.Controls.Add(lblC);
                    lblC.Location = new System.Drawing.Point(_x - 15, _y);
                    lblC.Size = new System.Drawing.Size(30, _height2 * 2);
                    lblC.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
                    lblC.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
                    lblC.Text = string.Format("{0}\r\n{1}", _fty1, _calcType1);
                    lblC.Borders = DevExpress.XtraPrinting.BorderSide.None;
                    lblC.Multiline = true;
                    lblC.CanGrow = false;

                    _x += width;
                    _y += _height;

                    lblD = new XRLabel();
                    lblD.Name = string.Format("PHLabel_{0}", PH.Platform.Report.ReportHelper.PHControlName);
                    lblD.Font = new System.Drawing.Font("Arial Unicode MS", 5.5F);
                    GroupFooter2.Controls.Add(lblD);
                    lblD.Location = new System.Drawing.Point(_x - 15, _y);
                    lblD.Size = new System.Drawing.Size(30, _height2 * 2);
                    lblD.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
                    lblD.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
                    lblD.Text = string.Format("{0}\r\n{1}", _fty2, _calcType2);
                    lblD.Borders = DevExpress.XtraPrinting.BorderSide.None;
                    lblD.Multiline = true;
                    lblD.CanGrow = false;
                    _y -= _height * 3;
                    break;
                default:
                    break;
            }
            #endregion

            --_x;
            --_y;

            _fty1 = "";
            _calcType1 = "";
            _fty2 = "";
            _calcType2 = "";
        }

        private void GroupFooter1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            CycleTimeProcess p = this.DetailReport.GetCurrentRow() as CycleTimeProcess;
            if (p == null) return;

            switch (p.CalcDateType)
            {
                case "FW":
                    this._printPosition = PrintPosition.Front;

                    _fty1 = "加工廠";
                    _calcType1 = p.RWOIITimeRule.CalcDateType;

                    _fty2 = "";
                    _calcType2 = "";
                    break;
                case "LW":
                    this._printPosition = PrintPosition.Both;

                    _fty1 = "加工廠";
                    _calcType1 = p.RWOIITimeRule.CalcDateType;

                    _fty2 = "加工廠";
                    _calcType2 = "T3";
                    break;
                case "T3":
                    this._printPosition = PrintPosition.Front;

                    _fty1 = "加工廠";
                    _calcType1 = "ExFty";

                    _fty2 = "";
                    _calcType2 = "";
                    break;
                case "ExFty":
                    this._printPosition = PrintPosition.Front;

                    _fty2 = "主廠";
                    _calcType2 = "ExFty";

                    _y += _height * 2;
                    XRLabel lblD = new XRLabel();
                    lblD.Name = string.Format("PHLabel_{0}", PH.Platform.Report.ReportHelper.PHControlName);
                    lblD.Font = new System.Drawing.Font("Arial Unicode MS", 5.5F);
                    GroupFooter2.Controls.Add(lblD);
                    lblD.Location = new System.Drawing.Point(_x - 15, _y);
                    lblD.Size = new System.Drawing.Size(30, _height2 * 2);
                    lblD.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
                    lblD.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
                    lblD.Text = string.Format("{0}\r\n{1}", _fty2, _calcType2);
                    lblD.Borders = DevExpress.XtraPrinting.BorderSide.None;
                    lblD.Multiline = true;
                    lblD.CanGrow = false;
                    break;
                default:
                    break;
            }

        }


    }

    enum PrintPosition
    {
        Front,
        Back,
        Both
    }
}
