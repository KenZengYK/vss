using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Linq;
using PH.FabricInspection.BO;
using PH.Platform.BO;
using System.Collections.Generic;
using System.Data;

namespace PH.FabricInspection.UI.Report.BraCupReport
{
    public partial class iAuditFormBraCupReport : DevExpress.XtraReports.UI.XtraReport
    {

        //string AuditType = "";

        List<BraCupiAuditFormReportResult> DataList;
        public iAuditFormBraCupReport(BraCupHeader obj)
        {
            InitializeComponent();
            DataList = GetBraCupiAuditFormDataList(obj.AuditNo);
            this.bindingSource1.DataSource = DataList;

            string AMM = DateTime.Now.ToString("MMMM", new System.Globalization.CultureInfo("en-us")).Substring(0, 3);
            string Add = DateTime.Now.Day.ToString();
            xrLabel2.Text = "Version: 7.7.1 " + "dd " + AMM + " " + Add;

            xrTableCell2.Text = obj.Whse;
            xrTableCell33.Text = obj.SuppRef;
            xrTableCell43.Text = obj.SuppCode;
            xrTableCell53.Text = obj.HDONO;


            xrLabel3.Text = obj.Auditor;
            xrLabel5.Text = obj.ReviewedByShow;
            xrLabel7.Text = obj.ApprovedByShow;

            xrTableCell3.Text = obj.AuditNo1.ToString();
            xrTableCell35.Text = obj.MaterialType;
            xrTableCell45.Text = obj.IDCreateDate == null ? "" : Convert.ToDateTime(obj.IDCreateDate).ToString("yyyyMM");
            xrTableCell55.Text = obj.AuditStage;

            xrTableCell27.Text = obj.AuditCaseQtyByLot.ToString();
            xrTableCell37.Text = obj.ItemCode;
            xrTableCell47.Text =obj.AuditDate==null?"": Convert.ToDateTime(obj.AuditDate).ToString("yyyyMM");
            xrTableCell57.Text = obj.AuditTypeShow;

            xrTableCell29.Text = obj.TotalBoxQty.ToString();
            xrTableCell8.Text = obj.ColorCode;
            xrTableCell40.Text = obj.DueDay.ToString();
            xrTableCell59.Text = obj.Auditor;






            //DataSource1(obj);

            // this.bindingSource1.DataSource = obj;
            //FabricInspectionDataContext db = ContextBuilder.CreateContext<FabricInspectionDataContext>();
            //int? TotalStockInQty = db.AccessoryHeaders.Where(dr => dr.AuditNo == obj.AuditNo &&  dr.AuditType == obj.AuditType).Select(dr=>dr.TotalStockInQty).Sum();
            //xrTotalStockInQty.Text = TotalStockInQty.ToString();
        }


        List<BraCupHeader> HeaderList = new List<BraCupHeader>();

        public List<BraCupiAuditFormReportResult> GetBraCupiAuditFormDataList(int? AAuditNo)
        {
            FabricInspectionDataContext db = ContextBuilder.CreateContext<FabricInspectionDataContext>();
            var AHeaderList = db.BraCupHeaders.Where(dr => dr.AuditNo == AAuditNo).ToList();

             HeaderList = db.BraCupHeaders.Where(dr => dr.AuditNo == AAuditNo).ToList();

            int PageCount = (int)Math.Ceiling(AHeaderList.Count() / 12m); 

            List<BraCupiAuditFormReportResult> Lists = new List<BraCupiAuditFormReportResult>();
            int PageNo = 1;
            int RecordNo = 1;

            foreach (var obj in AHeaderList)
            {

                BraCupiAuditFormReportResult iAuditResultObj = new BraCupiAuditFormReportResult();
                iAuditResultObj.PageNO = PageNo;
                iAuditResultObj.RecordNO = RecordNo;
                iAuditResultObj.BraCupHeaderObj = obj;
                iAuditResultObj.CalculateDefectInfo();
                //iAuditResultObj.TotalShow = 

                RecordNo++;
                if (RecordNo == 12)
                {
                    PageNo++;
                    RecordNo = 1;
                }

                Lists.Add(iAuditResultObj);
            }

            return Lists;
        }

        private void GroupHeader1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            int PageNo = Convert.ToInt32(this.GetCurrentColumnValue("PageNO"));
            string RecordNo;
            //List<BraCupHeader> BraCupList = DataList.Where(dr => dr.PageNO == PageNo).ToList();
            var lists = DataList.Where(dr => dr.PageNO == PageNo);
            List<BraCupiAuditFormReportResult> Alist = DataList.Where(dr => dr.PageNO == PageNo).ToList();
            for (int i = 0; i <= Alist.Count; i++) 
            {
                RecordNo = i ==Alist.Count?"13": Alist[i].RecordNO.ToString();
                // Audit info.
                this.FindControl("xrItemid" + RecordNo, true).Text = RecordNo == "13" ? Alist[i - 1].TotalShow("ItemIDNOShow", HeaderList) : Alist[i].ItemIDNOShow;
                this.FindControl("xrProject" + RecordNo, true).Text = RecordNo == "13" ? Alist[i - 1].TotalShow("ProjectNO", HeaderList) : Alist[i].ProjectNO;
                this.FindControl("xrPO" + RecordNo, true).Text = RecordNo == "13" ? Alist[i - 1].TotalShow("PONO", HeaderList) : Alist[i].PONO;
                this.FindControl("xrPullCase" + RecordNo, true).Text = RecordNo == "13" ? Alist[i - 1].TotalShow("CasingPullCaseNo", HeaderList) : Alist[i].CasingPullCaseNo;
                this.FindControl("xrPulliPack" + RecordNo, true).Text = RecordNo == "13" ? Alist[i - 1].TotalShow("IndPackNO", HeaderList) : Alist[i].IndPackNO;
                this.FindControl("xrAuditQtySize" + RecordNo, true).Text = RecordNo == "13" ? Alist[i - 1].TotalShow("AuditQty", HeaderList) : Alist[i].AuditQty;

                // I
                this.FindControl("xrAuditFull" + RecordNo, true).Text = RecordNo == "13" ? Alist[i - 1].TotalShow("AuditFullSizeDiffByLotShow", HeaderList) : Alist[i].AuditFullSizeDiffByLotShow.ToString();
                this.FindControl("xrCupSzunder" + RecordNo, true).Text = RecordNo == "13" ? Alist[i - 1].TotalShow("AuditSKUCrossCup", HeaderList) : Alist[i].AuditSKUCrossCup;
                this.FindControl("xrSzGrpg" + RecordNo, true).Text = RecordNo == "13" ? Alist[i - 1].TotalShow("SimpleCupORCrossCupShow", HeaderList) : Alist[i].SimpleCupORCrossCupShow;
                this.FindControl("xrPkglistQty" + RecordNo, true).Text = RecordNo == "13" ? Alist[i - 1].TotalShow("PackListQtyByCrossCup", HeaderList) : Alist[i].PackListQtyByCrossCup.ToString();
                this.FindControl("xrAuditSingle" + RecordNo, true).Text = RecordNo == "13" ? Alist[i - 1].TotalShow("AuditSKU", HeaderList) : Alist[i].AuditSKU;
                this.FindControl("xrAuditSmplQuantum" + RecordNo, true).Text = RecordNo == "13" ? Alist[i - 1].TotalShow("AQLAuditQty", HeaderList) : Alist[i].AQLAuditQty.ToString();
                this.FindControl("xrAccLimit" + RecordNo, true).Text = RecordNo == "13" ? Alist[i - 1].TotalShow("AQL25StandardQty", HeaderList) : Alist[i].AQL25StandardQty.ToString();
                this.FindControl("xrDefect13PtsByPr" + RecordNo, true).Text = RecordNo == "13" ? Alist[i - 1].TotalShow("SpotDefectPointQty", HeaderList) : Alist[i].SpotDefectPointQty.ToString();
                this.FindControl("xrSeq" + RecordNo, true).Text = RecordNo == "13" ? Alist[i - 1].TotalShow("DefectCodeTop1Show", HeaderList) : Alist[i].DefectCodeTop1Show;
                this.FindControl("xr2Seq" + RecordNo, true).Text = RecordNo == "13" ? Alist[i - 1].TotalShow("DefectCodeTop2Show", HeaderList) : Alist[i].DefectCodeTop2Show;
                this.FindControl("xr3Seq" + RecordNo, true).Text = RecordNo == "13" ? Alist[i - 1].TotalShow("DefectCodeTop3Show", HeaderList) : Alist[i].DefectCodeTop3Show;
                this.FindControl("xr4Seq" + RecordNo, true).Text = RecordNo == "13" ? Alist[i - 1].TotalShow("DefectCodeTop4Show", HeaderList) : Alist[i].DefectCodeTop4Show;
                this.FindControl("xr5Seq" + RecordNo, true).Text = RecordNo == "13" ? Alist[i - 1].TotalShow("DefectCodeTop5Show", HeaderList) : Alist[i].DefectCodeTop5Show;
                this.FindControl("xr6Seq" + RecordNo, true).Text = RecordNo == "13" ? Alist[i - 1].TotalShow("DefectCodeTop6Show", HeaderList) : Alist[i].DefectCodeTop6Show;
                this.FindControl("xrDefect13Pts" + RecordNo, true).Text = RecordNo == "13" ? Alist[i - 1].TotalShow("TotalDefectCountShow", HeaderList) : Alist[i].TotalDefectCountShow;
                this.FindControl("xrDefectExamRESULT" + RecordNo, true).Text = RecordNo == "13" ? Alist[i - 1].TotalShow("Part1Result", HeaderList) : Alist[i].Part1Result;
                this.FindControl("xrPullcasepkglistQty" + RecordNo, true).Text = RecordNo == "13" ? Alist[i - 1].TotalShow("PackListQty", HeaderList) : Alist[i].PackListQty.ToString();
                this.FindControl("xrPartIRESULTByLot" + RecordNo, true).Text = RecordNo == "13" ? Alist[i - 1].TotalShow("Part1ResultByLot", HeaderList) : Alist[i].Part1ResultByLot;
             
                // II
                this.FindControl("xrLabeledQty" + RecordNo, true).Text = RecordNo == "13" ? Alist[i - 1].TotalShow("CasingLabelQty", HeaderList) : Alist[i].CasingLabelQty.ToString();
                this.FindControl("xrDiff" + RecordNo, true).Text = RecordNo == "13" ? Alist[i - 1].TotalShow("CasingDiffQty", HeaderList) : Alist[i].CasingDiffQty.ToString();
                this.FindControl("xrQtyfigureComparsionResult" + RecordNo, true).Text = RecordNo == "13" ? Alist[i - 1].TotalShow("CasingResultByLot", HeaderList) : Alist[i].CasingResultByLot;
                this.FindControl("xrPartIICountRESULTByLot" + RecordNo, true).Text = RecordNo == "13" ? Alist[i - 1].TotalShow("Part2ResultByLot", HeaderList) : Alist[i].Part2ResultByLot;

                // III
                this.FindControl("xrShadeGrpgfromColor" + RecordNo, true).Text = RecordNo == "13" ? Alist[i - 1].TotalShow("ColorShade", HeaderList) : Alist[i].ColorShade;
                this.FindControl("xrOtherTestRESULT" + RecordNo, true).Text = RecordNo == "13" ? Alist[i - 1].TotalShow("ColorShadeResult", HeaderList) : Alist[i].ColorShadeResult;
                this.FindControl("xrPartIIIOther" + RecordNo, true).Text = RecordNo == "13" ? Alist[i-1].TotalShow("Part3TestingResultByLot", HeaderList) : Alist[i].Part3TestingResultByLot;
             
                //RESULT为B或C的，把B或C显示为红色字
                if (RecordNo != "13")
                {
                    this.FindControl("xrDefectExamRESULT" + RecordNo, true).ForeColor = (Alist[i].Part1Result == "B" || Alist[i].Part1Result == "C") ? System.Drawing.Color.Red : System.Drawing.Color.Black;
                }

                if (RecordNo == "13")
                {
                    this.FindControl("xrPartIRESULTByLot" + RecordNo, true).ForeColor = (Alist[i - 1].TotalShow("Part1ResultByLot", HeaderList) == "B" || Alist[i - 1].TotalShow("Part1ResultByLot", HeaderList) == "C") ? System.Drawing.Color.Red : System.Drawing.Color.Black;
                }
                
                 if (RecordNo != "13")
                {
                    this.FindControl("xrQtyfigureComparsionResult" + RecordNo, true).ForeColor = (Alist[i].CasingResultByLot == "B" || Alist[i].CasingResultByLot == "C") ? System.Drawing.Color.Red : System.Drawing.Color.Black;
                }

                 if (RecordNo == "13")
                 {
                     this.FindControl("xrPartIICountRESULTByLot" + RecordNo, true).ForeColor = (Alist[i - 1].TotalShow("Part2ResultByLot", HeaderList) == "B" || Alist[i - 1].TotalShow("Part2ResultByLot", HeaderList) == "C") ? System.Drawing.Color.Red : System.Drawing.Color.Black;
                 }
                
                 if (RecordNo != "13")
                {
                    this.FindControl("xrOtherTestRESULT" + RecordNo, true).ForeColor = (Alist[i].ColorShadeResult == "B" || Alist[i].ColorShadeResult == "C") ? System.Drawing.Color.Red : System.Drawing.Color.Black;
                }
                
                 if (RecordNo == "13")
                 {
                     this.FindControl("xrPartIIIOther" + RecordNo, true).ForeColor = (Alist[i - 1].TotalShow("Part3TestingResultByLot", HeaderList) == "B" || Alist[i - 1].TotalShow("Part3TestingResultByLot", HeaderList) == "C") ? System.Drawing.Color.Red : System.Drawing.Color.Black;
                 }
                

            }


            

                //foreach (var obj in lists)
                //{
                //    RecordNo = obj.RecordNO.ToString();
                //    // Audit info.
                //    this.FindControl("xrItemid" + RecordNo, true).Text = obj.RecordNO == 13 ? obj.TotalShow("ItemIDNOShow", HeaderList) : obj.ItemIDNOShow;
                //    this.FindControl("xrProject" + RecordNo, true).Text = obj.RecordNO == 13 ? obj.TotalShow("ProjectNO", HeaderList) : obj.ProjectNO;
                //    this.FindControl("xrPO" + RecordNo, true).Text = obj.RecordNO == 13 ? obj.TotalShow("PONO", HeaderList) : obj.PONO;
                //    this.FindControl("xrPullCase" + RecordNo, true).Text = obj.RecordNO == 13 ? obj.TotalShow("CasingPullCaseNo", HeaderList) : obj.CasingPullCaseNo;
                //    this.FindControl("xrPulliPack" + RecordNo, true).Text = obj.RecordNO == 13 ? obj.TotalShow("IndPackNO", HeaderList) : obj.IndPackNO;
                //    this.FindControl("xrAuditQtySize" + RecordNo, true).Text = obj.RecordNO == 13 ? obj.TotalShow("AuditQty", HeaderList) : obj.AuditQty;

                //    // I
                //    this.FindControl("xrAuditFull" + RecordNo, true).Text = obj.RecordNO == 13 ? obj.TotalShow("AuditFullSizeDiffByLotShow", HeaderList) : obj.AuditFullSizeDiffByLotShow.ToString();
                //    this.FindControl("xrCupSzunder" + RecordNo, true).Text = obj.RecordNO == 13 ? obj.TotalShow("AuditSKUCrossCup", HeaderList) : obj.AuditSKUCrossCup;
                //    this.FindControl("xrSzGrpg" + RecordNo, true).Text = obj.RecordNO == 13 ? obj.TotalShow("SimpleCupORCrossCupShow", HeaderList) : obj.SimpleCupORCrossCupShow;
                //    this.FindControl("xrPkglistQty" + RecordNo, true).Text = obj.RecordNO == 13 ? obj.TotalShow("PackListQtyByLot", HeaderList) : obj.PackListQtyByLot.ToString();
                //    this.FindControl("xrAuditSingle" + RecordNo, true).Text = obj.RecordNO == 13 ? obj.TotalShow("AuditSKU", HeaderList) : obj.AuditSKU;
                //    this.FindControl("xrAuditSmplQuantum" + RecordNo, true).Text = obj.RecordNO == 13 ? obj.TotalShow("AQLAuditQty", HeaderList) : obj.AQLAuditQty.ToString();
                //    this.FindControl("xrAccLimit" + RecordNo, true).Text = obj.RecordNO == 13 ? obj.TotalShow("AQL25StandardQty", HeaderList) : obj.AQL25StandardQty.ToString();
                //    this.FindControl("xrDefect13PtsByPr" + RecordNo, true).Text = obj.RecordNO == 13 ? obj.TotalShow("SpotDefectPointQty", HeaderList) : obj.SpotDefectPointQty.ToString();
                //    this.FindControl("xrSeq" + RecordNo, true).Text = obj.RecordNO == 13 ? obj.TotalShow("DefectCodeTop1Show", HeaderList) : obj.DefectCodeTop1Show;
                //    this.FindControl("xr2Seq" + RecordNo, true).Text = obj.RecordNO == 13 ? obj.TotalShow("DefectCodeTop2Show", HeaderList) : obj.DefectCodeTop2Show;
                //    this.FindControl("xr3Seq" + RecordNo, true).Text = obj.RecordNO == 13 ? obj.TotalShow("DefectCodeTop3Show", HeaderList) : obj.DefectCodeTop3Show;
                //    this.FindControl("xr4Seq" + RecordNo, true).Text = obj.RecordNO == 13 ? obj.TotalShow("DefectCodeTop4Show", HeaderList) : obj.DefectCodeTop4Show;
                //    this.FindControl("xr5Seq" + RecordNo, true).Text = obj.RecordNO == 13 ? obj.TotalShow("DefectCodeTop5Show", HeaderList) : obj.DefectCodeTop5Show;
                //    this.FindControl("xr6Seq" + RecordNo, true).Text = obj.RecordNO == 13 ? obj.TotalShow("DefectCodeTop6Show", HeaderList) : obj.DefectCodeTop6Show;
                //    this.FindControl("xrDefect13Pts" + RecordNo, true).Text = obj.RecordNO == 13 ? obj.TotalShow("TotalDefectCountShow", HeaderList) : obj.TotalDefectCountShow;
                //    this.FindControl("xrDefectExamRESULT" + RecordNo, true).Text = obj.RecordNO == 13 ? obj.TotalShow("Part1Result", HeaderList) : obj.Part1Result;
                //    this.FindControl("xrPullcasepkglistQty" + RecordNo, true).Text = obj.RecordNO == 13 ? obj.TotalShow("PackListQtyByCrossCup", HeaderList) : obj.PackListQtyByCrossCup.ToString();
                //    this.FindControl("xrPartIRESULTByLot" + RecordNo, true).Text = obj.RecordNO == 13 ? obj.TotalShow("Part1ResultByLot", HeaderList) : obj.Part1ResultByLot;

                //    // II
                //    this.FindControl("xrLabeledQty" + RecordNo, true).Text = obj.RecordNO == 13 ? obj.TotalShow("CasingLabelQty", HeaderList) : obj.CasingLabelQty.ToString();
                //    this.FindControl("xrDiff" + RecordNo, true).Text = obj.RecordNO == 13 ? obj.TotalShow("CasingDiffQty", HeaderList) : obj.CasingDiffQty.ToString();
                //    this.FindControl("xrQtyfigureComparsionResult" + RecordNo, true).Text = obj.RecordNO == 13 ? obj.TotalShow("CasingResultByLot", HeaderList) : obj.CasingResultByLot;
                //    this.FindControl("xrPartIICountRESULTByLot" + RecordNo, true).Text = obj.RecordNO == 13 ? obj.TotalShow("Part2ResultByLot", HeaderList) : obj.Part2ResultByLot;

                //    // III
                //    this.FindControl("xrShadeGrpgfromColor" + RecordNo, true).Text = obj.RecordNO == 13 ? obj.TotalShow("ColorShade", HeaderList) : obj.ColorShade;
                //    this.FindControl("xrOtherTestRESULT" + RecordNo, true).Text = obj.RecordNO == 13 ? obj.TotalShow("ColorShadeResult", HeaderList) : obj.ColorShadeResult;
                //    this.FindControl("xrPartIIIOther" + RecordNo, true).Text = obj.RecordNO == 13 ? obj.TotalShow("Part3TestingResultByLot", HeaderList) : obj.Part3TestingResultByLot;
                //}
        }
    }
}
