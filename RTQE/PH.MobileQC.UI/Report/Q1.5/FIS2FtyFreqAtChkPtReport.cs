using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.MobileQC.BO;
using System.Data;
using PH.Platform.BO;
using System.Collections.Generic;
using System.Linq;

namespace PH.MobileQC.UI.FullInspection
{
    public partial class FIS2FtyFreqAtChkPtReport : DevExpress.XtraReports.UI.XtraReport
    {

        List<WIPSummaryResult> Alist = new List<WIPSummaryResult>();
        public FIS2FtyFreqAtChkPtReport(string Fty, string ADate)
        {
            InitializeComponent();

            ReportHelper reportHelper = new ReportHelper("00000038");         
            DateTime calDate = Convert.ToDateTime(ADate);
            title_En.Text =string.Format( reportHelper.ReportInfo.ReportName_EN, " " + MonthEn(calDate.Month) + " " + calDate.Day.ToString() );
            title_Cn.Text = string.Format(reportHelper.ReportInfo.ReportName_CN, calDate.Month + "ÔÂ" + calDate.Day+ "ÈÕ");
            xrRptCode.Text = reportHelper.ReportInfo.ReportCode;

            MobileQCDataContext db = ContextBuilder.CreateContext<MobileQCDataContext>();

            FIS2ReportHelper FIS2RptHelper = new FIS2ReportHelper();
            Alist = FIS2RptHelper.GetWIPSummaryDataList(db, Fty, ADate);
            this.bindingSource1.DataSource = Alist;

            
            //string str ="exec XXX '{0}','{1}','{2}'";
            //str = string.Format(str,Fty,WS, ADate);

            // MobileQCDataContext db = ContextBuilder.CreateContext<MobileQCDataContext>();

            // DataSet ds = db.ExecuteDataSet(str, new DataSet(), "Opt");
            // List<FIS2ReworkGmtAtEndPhaseClass> AList = ds.Tables[0].AsEnumerable().Select(dr => new FIS2ReworkGmtAtEndPhaseClass 
            // {
            //     Cust = dr[""].ToString(),
            //     CustomerPO = dr[""].ToString(),
            //     CustStyle = dr[""].ToString(),
            //     ProjectNo = dr[""].ToString(),
            //     QNNo = dr[""].ToString(),
            //     ColorCode = dr[""].ToString(),
            //     Fty = dr[""].ToString(),
            //     Ws = dr[""].ToString(),
            //     Line = dr[""].ToString(),
            //     InspectionDate = dr[""].ToString(),
            //     Inspector = dr[""].ToString(),
            //     QNQty = Convert.ToInt32( dr[""].ToString() ),
            //     InspectedQty = Convert.ToInt32( dr[""].ToString()),
            //     NonInspectedPer = Convert.ToDecimal( dr[""].ToString() ),
            //     ReworkedQty = Convert.ToInt32( dr[""].ToString()),
            //     ReworkedPer = Convert.ToDecimal( dr[""].ToString() ),
            //     FreqChkPt = Convert.ToInt32(dr[""].ToString() ),
            //     Teamleader = dr[""].ToString()
                
            // }).ToList();



        }

        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            WIPSummaryResult obj = this.bindingSource1.Current as WIPSummaryResult;
            if (obj == null) return;
            this.xrReInspected.ForeColor = Convert.ToDecimal(this.GetCurrentColumnValue("ReInspectedPercent").ToString()) > Convert.ToDecimal(1.5) ? Color.Red : Color.Black;

            this.xAngle1.ForeColor = Convert.ToDecimal(this.GetCurrentColumnValue("Angle1").ToString()) < Convert.ToDecimal(4) ? Color.Red : Color.Black;
            this.xAngle2.ForeColor = Convert.ToDecimal(this.GetCurrentColumnValue("Angle2").ToString()) < Convert.ToDecimal(4) ? Color.Red : Color.Black;
            this.xAngle3.ForeColor = Convert.ToDecimal(this.GetCurrentColumnValue("Angle3").ToString()) < Convert.ToDecimal(4) ? Color.Red : Color.Black;

        }

        private void ReportFooter_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            int InspectedQtyS = Alist.Select(dr => dr.InspectedQty ?? 0).Sum();
            int ReInspectedQtyS = Alist.Select(dr => dr.ReInspectionedQty??0).Sum();

            if (InspectedQtyS + ReInspectedQtyS == 0)
            { 
                this.xrReInspectedPercent.Text = "0.00%"; 
            }
            else
            {
                this.xrReInspectedPercent.Text = Convert.ToDecimal(ReInspectedQtyS * 1.00 / (InspectedQtyS + ReInspectedQtyS)).ToString("P2");
                this.xrReInspectedPercent.ForeColor = Convert.ToDecimal(ReInspectedQtyS * 1.00 / (InspectedQtyS + ReInspectedQtyS)) > Convert.ToDecimal(0.015) ? Color.Red : Color.Black;

            }   
            int TotalCheckPointS = Alist.Select(dr => dr.TotalCheckPoint ?? 0).Sum();
            int QNCountS = Alist.Select(dr => dr.QNCount ?? 0).Sum();

            if (QNCountS == 0)
            { this.xrAngle1.Text = "0.00"; }
            else
            {
                this.xrAngle1.Text = Convert.ToDecimal(TotalCheckPointS * 1.00 / QNCountS).ToString("N2");
                this.xrAngle1.ForeColor = Convert.ToDecimal(TotalCheckPointS * 1.00 / QNCountS) < Convert.ToDecimal(4) ? Color.Red : Color.Black;
            }


            int LineCCountS = Alist.Select(dr => dr.LineCCount ?? 0).Sum();
            if (LineCCountS == 0)
            { this.xrAngle2.Text = "0.00"; }
            else
            {
                this.xrAngle2.Text = Convert.ToDecimal(TotalCheckPointS * 1.00 / LineCCountS).ToString("N2");
                this.xrAngle2.ForeColor = Convert.ToDecimal(TotalCheckPointS * 1.00 / LineCCountS) < Convert.ToDecimal(4) ? Color.Red : Color.Black;
            }

            int InspectorCountS = Alist.Select(dr => dr.InspectorCount ?? 0).Sum();
            if (InspectorCountS == 0)
            { this.xrAngle3.Text = "0.00"; }
            else
            { 
                this.xrAngle3.Text = Convert.ToDecimal(TotalCheckPointS * 1.00 / InspectorCountS).ToString("N2");
                this.xrAngle3.ForeColor = Convert.ToDecimal(TotalCheckPointS * 1.00 / InspectorCountS) < Convert.ToDecimal(4) ? Color.Red : Color.Black;
            }

        }

        public string MonthEn(int AMonth) 
        {
            if (AMonth == 1)
                return "Jan";
            else if (AMonth == 2)
                return "Feb";
            else if (AMonth == 3)
                return "Mar";
            else if (AMonth == 4)
                return "Apr";
            else if (AMonth == 5)
                return "May";
            else if (AMonth == 6)
                return "Jun";
            else if (AMonth == 7)
                return "Jul";
            else if (AMonth == 8)
                return "Aug";
            else if (AMonth == 9)
                return "Sep";
            else if (AMonth == 10)
                return "Oct";
            else if (AMonth == 11)
                return "Nov";
            else
                return "Dec";

        }

        string FtyFirst = "", FtySecomd = "";
        int CheckLastData = 0;
        private void xrTableRow4_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

            //WIPSummaryResult obj = this.bindingSource1.Current as WIPSummaryResult;
            //if(obj == null)return;
            //this.xrReInspected.ForeColor = (obj.ReInspectedPercent??0) >Convert.ToDecimal(1.5) ? Color.Red : Color.Black;

            //this.xAngle1.ForeColor = (obj.Angle1 ?? 0) < Convert.ToDecimal(4) ? Color.Red : Color.Black;
            //this.xAngle2.ForeColor = (obj.Angle2 ?? 0) < Convert.ToDecimal(4) ? Color.Red : Color.Black;
            //this.xAngle3.ForeColor = (obj.Angle2 ?? 0) < Convert.ToDecimal(4) ? Color.Red : Color.Black;



            /*
            int DtataCount = Alist.Count;
            if (DtataCount == 0) return;
            if (DtataCount == 1) return;
            FtyFirst = this.GetCurrentColumnValue("WorkShop").ToString();

            if (FtyFirst != "" && FtySecomd == "")
            {
                this.xrTableCell32.Borders = ((DevExpress.XtraPrinting.BorderSide)(
                    (DevExpress.XtraPrinting.BorderSide.Left 
                    | DevExpress.XtraPrinting.BorderSide.Right | 
                    DevExpress.XtraPrinting.BorderSide.Top)));
            }
            else
            {
                //this.xrTableCell31.Borders = FtyFirst == FtySecomd ?
                //    ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right))) :
                //    ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left
                //        | DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));

                //this.xrTableCell31.Text = FtyFirst == FtySecomd ? "" : this.GetCurrentColumnValue("Factory").ToString();



                this.xrTableCell32.Borders = FtyFirst == FtySecomd ?
                    ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left |
                                                        DevExpress.XtraPrinting.BorderSide.Right))) :

                    ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left
                        | DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Top)));

                this.xrTableCell32.Text = FtyFirst == FtySecomd ? "" : this.GetCurrentColumnValue("WorkShop").ToString();

                


            }
            
            CheckLastData++;
            if (CheckLastData == DtataCount) 
            {
                //this.xrTableCell31.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left
                //        | DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));

                this.xrTableCell32.Borders = FtySecomd == FtyFirst ?
                ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left
                | DevExpress.XtraPrinting.BorderSide.Right ))) :
                 ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top
                | DevExpress.XtraPrinting.BorderSide.Right )));

            }

            FtySecomd = FtyFirst;
            */



            //if (Alist.Count == 0) return;
            //if ((FtyFirst != "" || FtySecomd != ""))
            //{

            //    FtySecomd = FtyFirst;
            //    FtyFirst = this.GetCurrentColumnValue("Factory").ToString();

            //    if (FtyFirst == FtySecomd)
            //    {
            //        this.xrTableCell31.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right )));
            //        this.xrTableCell31.Text = "";
            //    }

            //    else
            //    {
            //        this.xrTableCell31.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom | DevExpress.XtraPrinting.BorderSide.Right)));
            //    }
            //}
            //else
            //{

            //    FtyFirst = this.GetCurrentColumnValue("Factory").ToString();

            //}
        }

    }
}
