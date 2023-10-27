using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.FabricInspection.BO;
using System.Collections.Generic;
using System.Linq;
using PH.Platform.BO;

namespace PH.FabricInspection.UI.Report.BandLaceReport
{
    public partial class IMQEIndividualAuditBandLaceResultReport : DevExpress.XtraReports.UI.XtraReport
    {


        List<DefectList> SoprtDataList = new List<DefectList>();
        List<BandLaceHeader> NewList = new List<BandLaceHeader>();
        public IMQEIndividualAuditBandLaceResultReport(BandLaceHeader Aobj)
        {
            InitializeComponent();

            string AMM = DateTime.Now.ToString("MMMM", new System.Globalization.CultureInfo("en-us")).Substring(0, 3);
            string Add = DateTime.Now.Day.ToString();
            xrLabel2.Text = "Version: 7.7 " + "dd " + AMM + " " + Add;
            CalculateDefectInfo(Aobj);

            this.bindingSource1.DataSource = NewList;
        }

        void CalculateDefectInfo(BandLaceHeader Aobj)
        {
            FabricInspectionDataContext db = ContextBuilder.CreateContext<FabricInspectionDataContext>();
            var ABandLaceHeader = db.BandLaceHeaders.Where(dr => dr.AuditNo == Aobj.AuditNo).ToList();
            foreach (var obj in ABandLaceHeader)
            {
                List<DefectList> DefectList = new List<DefectList>();
                List<BandLaceChainDefect> ChainDefectList = new List<BandLaceChainDefect>();
                ChainDefectList = obj.BandLaceChainDefects.ToList();

                //ChainDefect
                List<DefectList> AllChainDefectList = ChainDefectList.Select(dr => new DefectList
                {
                    LotID = obj.LotID,
                    DefectCode = dr.DefectCode,
                    DefectNameShow = dr.DefectCode + "/" + dr.DefectNameEN,
                    DefectPoints = Math.Round(dr.Length ?? 0, 0),
                    DefectIsYN = "Chain",
                    DefectFrom = Math.Round(dr.DefectFrom ?? 0, 2).ToString(),
                    DefectTo = Math.Round(dr.DefectTo ?? 0, 2).ToString(),
                    //EvadeLossPer = (obj.EvadeMarkerLossPercent ?? 0).ToString("P"),
                    DefectFlag = "2",

                }).ToList();

                DefectList.AddRange(AllChainDefectList.Where(dr => !string.IsNullOrEmpty(dr.DefectCode)));

                //SpotDefect
                var SpotDefectList = obj.BandLaceSpotDefects.GroupBy(p => new { p.DefectCode, p.DefectNameEN }).Select(dr => new
                {
                    DefectCode = dr.Key.DefectCode,
                    DefectNameEN = dr.Key.DefectNameEN,
                    DefectPointQty = dr.Sum(t => t.DefectPointQty)
                }).ToList();

                foreach (var Sportobj in SpotDefectList)
                {
                    DefectList DefectObj = new DefectList();
                    DefectObj.LotID = obj.LotID;
                    DefectObj.DefectIsYN = "Spot";
                    DefectObj.DefectCode = Sportobj.DefectCode;
                    DefectObj.DefectNameShow = Sportobj.DefectCode + "/" + Sportobj.DefectNameEN;
                    DefectObj.DefectPoints = Sportobj.DefectPointQty;
                    DefectObj.DefectFlag = "1";
                    DefectList.Add(DefectObj);
                }

                //爲了循環GroupHeader
                int PageCount = (int)Math.Ceiling(DefectList.Where(dr => !string.IsNullOrEmpty(dr.DefectCode)).Count() / 6m); //每页显示个打横的栏位
                


                for (int aa = 0; aa < (PageCount == 0 ? 1 : PageCount); aa++)
                {
                    BandLaceHeader BandLaceObj = new BandLaceHeader();
                    BandLaceObj.PageFlag = Convert.ToString(aa + 1);
                    BandLaceObj.ItemCode = obj.ItemCode;
                    BandLaceObj.ColorCode = obj.ColorCode;
                    BandLaceObj.SuppCode = obj.SuppCode;
                    BandLaceObj.SuppItemRef = obj.SuppItemRef;
                    BandLaceObj.LotID = obj.LotID;
                    BandLaceObj.AuditNo = obj.AuditNo;
                    BandLaceObj.AuditNo1 = obj.AuditNo1;

                    BandLaceObj.IDCreateDate = obj.IDCreateDate;
                    BandLaceObj.IDAuditDate = obj.IDAuditDate;
                    BandLaceObj.RollNo = obj.RollNo;
                    BandLaceObj.InvoiceNo = obj.InvoiceNo;
                    BandLaceObj.AuditStage = obj.AuditStage;
                    BandLaceObj.PackingListLength = obj.PackingListLength;
                    BandLaceObj.MeasureLength = obj.MeasureLength;
                    BandLaceObj.FinalStockInLength = obj.FinalStockInLength;
                    BandLaceObj.PointQtyPer50M = obj.PointQtyPer50M;
                    BandLaceObj.Part1DefectResult = obj.Part1DefectResult;
                    BandLaceObj.AgreedEdgeToEdgeWidthRangeByLot = obj.AgreedEdgeToEdgeWidthRangeByLot;
                    BandLaceObj.MeasureEdgeToEdgeWidth = obj.MeasureEdgeToEdgeWidth;
                    BandLaceObj.WidthDifferent = obj.WidthDifferent;
                    BandLaceObj.PatternShapeRangeByLot = obj.PatternShapeRangeByLot;
                    BandLaceObj.ActualPatternShape = obj.ActualPatternShape;
                    BandLaceObj.PatternShapeDifferent = obj.PatternShapeDifferent;
                    BandLaceObj.NeedSkewnessAndBow = obj.NeedSkewnessAndBow;
                    BandLaceObj.SkewnessDistanceCD = obj.SkewnessDistanceCD;
                    BandLaceObj.SkewnessDistanceAB = obj.SkewnessDistanceAB;
                    BandLaceObj.SkewnessAndBowResult = obj.SkewnessAndBowResult;
                    BandLaceObj.AuditType = obj.AuditType;
                    BandLaceObj.CutLengthForTesting = obj.CutLengthForTesting;
                    BandLaceObj.PackingListLength = obj.PackingListLength;
                    BandLaceObj.DeductLengthEachSpot = obj.DeductLengthEachSpot;
                    BandLaceObj.EvadeMarkerLossPercent = obj.EvadeMarkerLossPercent;
                    BandLaceObj.ActualWeight = obj.ActualWeight;

                    BandLaceObj.Part1DefectResultByLot = obj.Part1DefectResultByLot;
                    BandLaceObj.GramWeightPerSQMRange = obj.GramWeightPerSQMRange;

                    //该值为计算值
                    BandLaceObj.Part2MeasureResultByLot = (    ( (obj.WidthDifferent >= 0 ? "A" : "B") =="A" ) &&   ( (obj.LengthDifferent >= 0 ? "A" : "B") =="A")    )?"A":"B";

                    BandLaceObj.LengthDifferent = obj.LengthDifferent;
                    BandLaceObj.ShadeGrpgResult = obj.ShadeGrpgResult;
                    //BandLaceObj.Part3TestingResultByLot = obj.Part3TestingResultByLot;
                    BandLaceObj.ShadeGrpgResult = obj.ShadeGrpgResult;

                    BandLaceObj.PointQtyPer50M = obj.PointQtyPer50M;
                    BandLaceObj.SpotDefectPointQty = obj.SpotDefectPointQty;                   
                    

                    BandLaceObj.HDONo = obj.HDONo;
                    BandLaceObj.PONo = obj.PONo;
                    BandLaceObj.Auditor = obj.Auditor;
                    BandLaceObj.BatchNo = obj.BatchNo;

                    BandLaceObj.AuditRollQtyByLot = obj.AuditRollQtyByLot;

                    //该值为计算值
                    BandLaceObj.Part4SpecificDefectResultByLot = (obj.PatternShapeResult1 == "A" && obj.SkewnessAndBowResult == "A") ? "A" : "B";
                    BandLaceObj.WeightDifferent = obj.WeightDifferent;
                    BandLaceObj.NarrowWidthMarkeLossPercent = obj.NarrowWidthMarkeLossPercent;
                    BandLaceObj.PatternShapeMarkerLossPercentByLot = obj.PatternShapeMarkerLossPercentByLot;

                    BandLaceObj.Whse = obj.Whse;
                    BandLaceObj.RollQtyByLot = obj.RollQtyByLot;
                    BandLaceObj.DueDay = obj.DueDay;
                    BandLaceObj.ProjectNo = obj.ProjectNo;
                    BandLaceObj.MeasureWidth = obj.MeasureWidth;
                    BandLaceObj.NarrowestWidthByLot = obj.NarrowestWidthByLot;
                    BandLaceObj.AuditSampleSizeQtyByLot = obj.AuditSampleSizeQtyByLot;

                    BandLaceObj.NarrowWidthMarkeLossPercentByBatch = obj.NarrowWidthMarkeLossPercentByBatch;

                    BandLaceObj.NeedCutoutDefect = obj.NeedCutoutDefect;
                    
                    
                  
                    
                    NewList.Add(BandLaceObj);
                }

                //每十條紀錄爲一頁
                int SkipSize = 0;
                int TakeSize = 6;
                for (int page = 1; page <= PageCount; page++)
                {
                    List<DefectList> OnePageDetailLists = DefectList.Where(dr => !string.IsNullOrEmpty(dr.DefectCode)).OrderBy(p => p.DefectCode).ThenBy(p => p.DefectFlag).Skip(SkipSize).Take(TakeSize).ToList();
                    SkipSize += 6;
                    foreach (DefectList DefectObj in OnePageDetailLists)
                    {
                        DefectObj.Page = page.ToString();
                        SoprtDataList.Add(DefectObj);
                    }

                }

            }

        }

        private void GroupHeader1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            string APageFlag = this.GetCurrentColumnValue("PageFlag").ToString();
            string ALotID = this.GetCurrentColumnValue("LotID").ToString();
            List<DefectList> ADataList = SoprtDataList.Where(dr => dr.Page == APageFlag && dr.LotID == ALotID).ToList();
            for (int a = 0; a < 5; a++)
            {
                this.FindControl("xrDefPointCde" + (a + 1).ToString(), false).Text = ADataList.Count > a ? ADataList[a].DefectNameShow : "";
                this.FindControl("xrDefectPoints" + (a + 1).ToString(), false).Text = ADataList.Count > a ? ADataList[a].DefectPoints.ToString() : "";
                this.FindControl("xrIsNY" + (a + 1).ToString(), false).Text = ADataList.Count > a ? ADataList[a].DefectIsYN : "";
                this.FindControl("xrFrom" + (a + 1).ToString(), false).Text = ADataList.Count > a ? ADataList[a].DefectFrom : "";
                this.FindControl("xrTo" + (a + 1).ToString(), false).Text = ADataList.Count > a ? ADataList[a].DefectTo : "";
                //this.FindControl("xrEvadeLoss" + (a + 1).ToString(), false).Text = ADataList.Count > a ? ADataList[a].EvadeLossPer : "";
            }

            FabricInspectionDataContext db = ContextBuilder.CreateContext<FabricInspectionDataContext>();
           var BandHead = db.BandLaceHeaders.Where(dr => dr.LotID == ALotID).FirstOrDefault();
           List<BandLandWidth> BWidthList = BandHead.BandLandWidths.ToList();
            int Aresult ;
            int NoofWidth = 0;
            for(int AA = 0;AA<BWidthList.Count;AA++)
            {
                int SectionNo =(  ( BWidthList[AA].SectionNo??0) + 5) /10;
                if (SectionNo == 0) return;
                if(int.TryParse(SectionNo.ToString(),out Aresult))
                {
                    NoofWidth++;
                    this.FindControl("xrEdgetoEdge" + SectionNo.ToString(), false).Text = Math.Round((BWidthList[AA].SideToSideWidth ?? 0), 2).ToString();
                    this.FindControl("xrUsablewidth" + SectionNo.ToString(), false).Text = Math.Round((BWidthList[AA].UsableWidth ?? 0), 2).ToString(); 
                }               
            }
            xrNoofWidth.Text = NoofWidth.ToString();
            //foreach(BandLandWidth)



            List<BandLandPatternShapeRepeat> BPatternShapeRepeat = BandHead.BandLandPatternShapeRepeats.ToList();
            int Presult;
            //int PNoofWidth = 0;
            for (int AA = 0; AA < BPatternShapeRepeat.Count; AA++)
            {
                int SectionNo = ((BPatternShapeRepeat[AA].SectionNo ?? 0) + 5) / 10;
                if (int.TryParse(SectionNo.ToString(), out Presult))
                {
                    
                    //PNoofWidth++;
                    this.FindControl("xrMShapeRepeat" + SectionNo.ToString(), false).Text = Math.Round((BPatternShapeRepeat[AA].MeasurePatternShapeRepeat?? 0), 2).ToString();
                    //this.FindControl("xrUsablewidth" + SectionNo.ToString(), false).Text = Math.Round((BWidthList[AA].UsableWidth ?? 0), 2).ToString();
                }
            }


            var BandlaceObj = NewList.Where(dr => dr.PageFlag.ToString() == APageFlag && dr.LotID == ALotID).ToList();
            foreach (var Aobj in BandlaceObj)
            {
                this.xrCheckBox5.Checked = Aobj.AuditType.Trim() == "Random";
                this.xrCheckBox4.Checked = Aobj.AuditType.Trim() == "Full";
                this.xrChkCutoutlength.Checked = Aobj.NeedCutoutDefect == "Y";
                this.xrChkEvademarker.Checked = !string.IsNullOrEmpty(Aobj.NarrowWidthMarkeLossPercentByBatch.ToString());

                this.xrASkewPer.Text = (Aobj.SkewnessDistanceAB ?? 0) == 0 ? "0" : Math.Round((((Aobj.SkewnessDistanceCD ?? 0) / (Aobj.SkewnessDistanceAB ?? 0))), 4).ToString("P");

                string CutLengthForTesting = (Aobj.CutLengthForTesting ?? 0) == 0 ? "0 %" : Math.Round(((Aobj.CutLengthForTesting ?? 0) / ((Aobj.PackingListLength ?? 0))), 4).ToString("P");
                this.xrACutLengthForTesting.Text = (Aobj.CutLengthForTesting ?? 0).ToString("N2") + " / " + CutLengthForTesting;
                decimal aa = ADataList.Where(dr => dr.DefectIsYN == "N").Sum(dr => dr.DefectPoints ?? 0);
                decimal SpotDefect = ADataList.Where(dr => dr.DefectIsYN == "N").Select(dr => dr.DefectPoints ?? 0).Sum();
                decimal SpotDefectLength = (Aobj.DeductLengthEachSpot ?? 0) * SpotDefect;
                decimal ChainDefectLength = ADataList.Where(dr => dr.DefectIsYN == "Y").Count() > 0 ? (Aobj.PackingListLength ?? 0) * (Aobj.EvadeMarkerLossPercent ?? 0) : 0;

                //this.xrDefectStdLoss.Text = (SpotDefectLength + ChainDefectLength) == 0 ? "0%" : Math.Round(((SpotDefectLength + ChainDefectLength) / (Aobj.PackingListLength ?? 0)), 4).ToString("P");
            }

            //this.xrADefectPoints.Text = SoprtDataList.Where(dr => dr.LotID == ALotID).Sum(dr => dr.DefectPoints).ToString();





        }

        private void xrTableCell117_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

            string ANeedSkewnessAndBow = this.GetCurrentColumnValue("NeedSkewnessAndBow") == null ? "N" : this.GetCurrentColumnValue("NeedSkewnessAndBow").ToString();
            if (ANeedSkewnessAndBow == "N")
            {
                this.xrcell.Text = "n.a.";
                this.xrASkewPer.Text = "n.a.";
                this.xrEdgetoEdgeA.Text = "n.a.";
                this.xrP3Result.Text = "n.a.";
            }

        }


        public class DefectList
        {
            public string DefectCode { get; set; }
            public string LotID { get; set; }
            public string DefectNameShow { get; set; }
            public decimal? DefectPoints { get; set; }
            public string DefectIsYN { get; set; }
            public string DefectFrom { get; set; }
            public string DefectTo { get; set; }
            public string EvadeLossPer { get; set; }
            public string Page { get; set; }
            public string DefectFlag { get; set; }//用于判断相同Defect时，SoptDefect排ChainDefect后面(SoptDefect: 1  ChainDefect:2)
        }





    }
}
