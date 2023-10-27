using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.FabricInspection.BO;
using System.Collections.Generic;
using System.Linq;
using PH.Platform.BO;

namespace PH.FabricInspection.UI.Report.ElasticReport
{
    public partial class iAuditResultFormElasticResultReport : DevExpress.XtraReports.UI.XtraReport
    {

        List<DefectList> ALLDefectDataList = new List<DefectList>();
        List<ElasticHeader> BandlcaeCountList = new List<ElasticHeader>();

        public iAuditResultFormElasticResultReport(ElasticHeader Aobj)
        {
            InitializeComponent();

            string AMM = DateTime.Now.ToString("MMMM", new System.Globalization.CultureInfo("en-us")).Substring(0, 3);
            string Add = DateTime.Now.Day.ToString();
            xrLabel2.Text = "Version: 7.7 " + "dd " + AMM + " " + Add;

            CalculateDefectInfo(Aobj);
            this.bindingSource1.DataSource = BandlcaeCountList;
        }

        void CalculateDefectInfo(ElasticHeader Aobj)
        {
            FabricInspectionDataContext db = ContextBuilder.CreateContext<FabricInspectionDataContext>();
            var ABandLaceHeader = db.ElasticHeaders.Where(dr => dr.AuditNo == Aobj.AuditNo).ToList();
            foreach (var obj in ABandLaceHeader)
            {
                List<DefectList> DefectList = new List<DefectList>();
                List<ElasticChainDefect> ChainDefectList = new List<ElasticChainDefect>();
                                                      ChainDefectList = obj.ElasticChainDefects.ToList();

                //ChainDefect
                List<DefectList> AllChainDefectList = ChainDefectList.Select(dr => new DefectList
                {
                    LotID = obj.LotID,
                    DefectCode = dr.DefectCode,
                    DefectNameShow = dr.DefectCode + "/" + dr.DefectNameEN,
                    DefectChainPoints = Math.Round(dr.Length ?? 0, 0).ToString(),
                    ADefectChainPoints = Math.Round(dr.Length ?? 0, 0),
                    DefectSpotPoints = "--",
                    DefectFrom = Math.Round(dr.DefectFrom ?? 0, 2).ToString(),
                    DefectTo = Math.Round(dr.DefectTo ?? 0, 2).ToString(),
                    //EvadeLossPer = (obj.EvadeMarkerLossPercent ?? 0).ToString("P"),
                    DefectFlag = "2",

                }).ToList();

                DefectList.AddRange(AllChainDefectList.Where(dr => !string.IsNullOrEmpty(dr.DefectCode)));

                //SpotDefect
                var SpotDefectList = obj.ElasticSpotDefects.GroupBy(p => new { p.DefectCode, p.DefectNameEN }).Select(dr => new
                {
                    DefectCode = dr.Key.DefectCode,
                    DefectNameEN = dr.Key.DefectNameEN,
                    DefectPointQty = dr.Sum(t => t.DefectPointQty)
                }).ToList();

                foreach (var Sportobj in SpotDefectList)
                {
                    DefectList DefectObj = new DefectList();
                    DefectObj.LotID = obj.LotID;
                    DefectObj.DefectChainPoints = "--";
                    DefectObj.DefectCode = Sportobj.DefectCode;
                    DefectObj.DefectNameShow = Sportobj.DefectCode + "/" + Sportobj.DefectNameEN;
                    DefectObj.DefectSpotPoints = Sportobj.DefectPointQty.ToString();
                    DefectObj.ADefectSpotPoints = Sportobj.DefectPointQty;

                    DefectObj.DefectFlag = "1";
                    DefectList.Add(DefectObj);
                }

                //爲了循環GroupHeader
                int PageCount = (int)Math.Ceiling(DefectList.Where(dr => !string.IsNullOrEmpty(dr.DefectCode)).Count() / 6m); //每页显示个打横的栏位

                for (int aa = 0; aa < (PageCount == 0 ? 1 : PageCount); aa++)
                {
                    ElasticHeader BandLaceObj = new ElasticHeader();
                    BandLaceObj.PageFlag = (aa + 1).ToString();
                    BandLaceObj.ItemCode = obj.ItemCode;
                    BandLaceObj.ColorCode = obj.ColorCode;
                    BandLaceObj.SuppCode = obj.SuppCode;
                    BandLaceObj.SuppItemRef = obj.SuppItemRef;
                    BandLaceObj.LotID = obj.LotID;
                    BandLaceObj.AuditNo = obj.AuditNo;
                    BandLaceObj.AuditNo1 = obj.AuditNo1;

                    BandLaceObj.IDCreateDate = obj.IDCreateDate;
                    BandLaceObj.IDAuditDate = obj.IDAuditDate;
                    BandLaceObj.BoxNo = obj.BoxNo;
                    BandLaceObj.InvoiceNo = obj.InvoiceNo;
                    BandLaceObj.AuditStage = obj.AuditStage;
                    BandLaceObj.PackingListLength = obj.PackingListLength;
                    BandLaceObj.AuditSampleSizeQty = obj.AuditSampleSizeQty;
                    BandLaceObj.AuditType = obj.AuditType;
                    BandLaceObj.ActualWeight = obj.ActualWeight;
                    BandLaceObj.AuditType = obj.AuditType;
                    BandLaceObj.AgreedEdgeToEdgeWidthRangeByLot = obj.AgreedEdgeToEdgeWidthRangeByLot;
                    BandLaceObj.MeasureEdgeToEdgeWidth = obj.MeasureEdgeToEdgeWidth;
                    BandLaceObj.WidthDifferent = obj.WidthDifferent;
                    BandLaceObj.PatternShapeRangeByLot = obj.PatternShapeRangeByLot;
                    BandLaceObj.ActualPatternShape = obj.ActualPatternShape;
                    BandLaceObj.Part4SpecificDefectResultByLot = obj.Part4SpecificDefectResultByLot;
                    BandLaceObj.AQL25StandardQty = obj.AQL25StandardQty;
                    
                    
                    
                    //该值为计算值
                    //BandLaceObj.Part3TestingResultByLot = ( (obj.ElongationResult == "A" && obj.ShadeGrpgResult == "A") || (obj.ElongationResult == "A" && obj.ShadeGrpgResult == "n.a.") || (obj.ElongationResult == "n.a." && obj.ShadeGrpgResult == "A") ) ? "A" : ((obj.ElongationResult == "B" || obj.ShadeGrpgResult == "B") ? "B" : "n.a.");
                    BandLaceObj.Part3TestingResultByLot = obj.Part3TestingResultByLot;
                    BandLaceObj.NeedElongation = obj.NeedElongation;
                    BandLaceObj.ElongationResult = obj.ElongationResult;
                    BandLaceObj.ChainDefectResult = obj.ChainDefectResult;
                    BandLaceObj.SpotDefectResult = obj.SpotDefectResult;
                    BandLaceObj.NeedPatternShape = obj.NeedPatternShape;
                    //BandLaceObj.SkewnessDistanceAB = obj.SkewnessDistanceAB;
                    //BandLaceObj.SkewnessDistanceAB = obj.SkewnessDistanceAB;
                    BandLaceObj.Part1DefectResultByLot = obj.Part1DefectResultByLot;
                    BandLaceObj.GramWeightPer100CMRange = obj.GramWeightPer100CMRange;

                    BandLaceObj.Part1DefectResult = obj.Part1DefectResult;
                    BandLaceObj.PackingListLengthByLot = obj.PackingListLengthByLot;
                    BandLaceObj.AuditSampleSizeQtyByLot = obj.AuditSampleSizeQtyByLot;
                    
                    

                    //该值为计算值
                    BandLaceObj.Part2MeasureResultByLot = obj.Part2MeasureResultByLot;

                    //BandLaceObj.LengthDifferent = obj.LengthDifferent;
                    BandLaceObj.ShadeGrpgResult = obj.ShadeGrpgResult;
                    BandLaceObj.Part3TestingResultByLot = obj.Part3TestingResultByLot;
                    BandLaceObj.SpotDefectPointQty = obj.SpotDefectPointQty;

                    BandLaceObj.HDONo = obj.HDONo;                    
                    BandLaceObj.PONo = obj.PONo;
                    BandLaceObj.Auditor = obj.Auditor;
                    //BandLaceObj.BatchNo = obj.BatchNo;

                    BandLaceObj.AuditBoxQtyByLot = obj.AuditBoxQtyByLot;
                    BandLaceObj.PatternShapeResult = obj.PatternShapeResult;
                    BandLaceObj.WeightDifferent = obj.WeightDifferent;
                    BandLaceObj.TotalBoxQtyByLot = obj.TotalBoxQtyByLot;
                    BandLaceObj.ChainDefectLength = obj.ChainDefectLength;
                    BandLaceObj.ProjectNo = obj.ProjectNo;
                    BandLaceObj.Whse = obj.Whse;
                    BandLaceObj.ChainDefectResult = obj.ChainDefectResult;

                    BandLaceObj.ProWeightQty = obj.ProWeightQty;
                    BandLaceObj.PullBoxWeight = obj.PullBoxWeight;
                    BandLaceObj.LengthDiff = obj.LengthDiff;
                    BandLaceObj.SampleQuantumWeight = obj.SampleQuantumWeight;
                    //BandLaceObj.PatternShapeUnitShow = obj.PatternShapeUnitShow;
                    //BandLaceObj.PatternShapeRepeatQtyShow = obj.PatternShapeRepeatQtyShow;
                    
                    BandlcaeCountList.Add(BandLaceObj);
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
                        ALLDefectDataList.Add(DefectObj);
                    }
                }

            }

        }


        private void GroupHeader1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            string APageFlag = this.GetCurrentColumnValue("PageFlag").ToString();
            string ALotID = this.GetCurrentColumnValue("LotID").ToString();
            
            //欄位 改的面目全非了，xrDefectPoints的欄位變成 Defect Pt - Spot，xrIsNY的欄位變成 Defect Pt - Chain
            List<DefectList> ADataList = ALLDefectDataList.Where(dr => dr.Page == APageFlag && dr.LotID == ALotID).ToList();
            for (int a = 0; a < 4; a++)
            {
                this.FindControl("xrDefPointCde" + (a + 1).ToString(), false).Text =ADataList.Count>a? ADataList[a].DefectNameShow:"";
                this.FindControl("xrDefectPoints" + (a + 1).ToString(), false).Text =ADataList.Count>a? ADataList[a].DefectSpotPoints.ToString():"";
                this.FindControl("xrIsNY" + (a + 1).ToString(), false).Text = ADataList.Count>a?ADataList[a].DefectChainPoints:"";
                this.FindControl("xrFrom" + (a + 1).ToString(), false).Text = ADataList.Count>a?ADataList[a].DefectFrom:"";
                this.FindControl("xrTo" + (a + 1).ToString(), false).Text = ADataList.Count > a ? ADataList[a].DefectTo : "";
                //this.FindControl("xrEvadeLoss" + (a + 1).ToString(), false).Text = ADataList[a].EvadeLossPer;
            }

            xrDefectPoints5.Text = ADataList.Select(dr => dr.ADefectSpotPoints).Sum().ToString();
            xrChainDefectTtl.Text = ADataList.Select(dr => dr.ADefectChainPoints).Sum().ToString();
            xrDefectPoints6.Text = (ADataList.Select(dr => dr.ADefectSpotPoints).Sum() + ADataList.Select(dr => dr.ADefectChainPoints).Sum()).ToString();


            var BandlaceObj = BandlcaeCountList.Where(dr => dr.PageFlag == APageFlag && dr.LotID == ALotID).ToList();
            foreach (var Aobj in BandlaceObj)
            {
                this.xrCheckBox5.Checked = Aobj.AuditType.Trim() == "Random";
                this.xrCheckBox4.Checked = Aobj.AuditType.Trim() == "Full";

                //this.xrSaidIdQEResult.Text = (Aobj.ChainDefectResult == "A" && Aobj.SpotDefectResult == "A") ? "A" : "B";

                //this.xrDefectStdLoss.Text = this.xrSaidIdQEResult.Text =="B"? "100.00%" : "0.00%";
            }

            //this.xrADefectPoints.Text = ALLDefectDataList.Where(dr => dr.LotID == ALotID).Sum(dr => dr.DefectPoints).ToString();


            //string ANeedElongation = this.GetCurrentColumnValue("NeedElongation") == null ? "N" : this.GetCurrentColumnValue("NeedElongation").ToString();

            //if (ANeedElongation == "N")
            //{
            //    this.xrP3RESULT.Text = "n.a.";
            //}

            //FabricInspectionDataContext db = ContextBuilder.CreateContext<FabricInspectionDataContext>();
            //var ABandLaceHeader = db.ElasticHeaders.Where(dr =>dr.LotID == ALotID).FirstOrDefault();
            //string  ChaindefectResult =  ABandLaceHeader.ElasticChainDefects.Select(dr=>(dr.Length??0)).Sum()>0?"B":"A";
            //xrChaindefectResult.Text = ChaindefectResult;

            //xrPart1DefectResult.Text = this.GetCurrentColumnValue("ChainDefectResult").ToString() == "B" ? "B" : (this.GetCurrentColumnValue("SpotDefectResult")==null ? "" :this.GetCurrentColumnValue("SpotDefectResult").ToString());

            
        }


        public class DefectList
        {
            public string LotID { get; set; }
            public string DefectCode { get; set; }
            public string DefectNameShow { get; set; }
            public string DefectSpotPoints { get; set; }            
            public string DefectChainPoints { get; set; }

            public decimal? ADefectSpotPoints { get; set; }
            public decimal? ADefectChainPoints { get; set; }

            public string DefectFrom { get; set; }
            public string DefectTo { get; set; }
            public string EvadeLossPer { get; set; }
            public string Page { get; set; }
            public string DefectFlag { get; set; }//用于判断相同Defect时，SoptDefect排ChainDefect后面(SoptDefect: 1  ChainDefect:2)
        }

        private void xrP3RESULT_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //string ANeedElongation = this.GetCurrentColumnValue("NeedElongation") == null ? "N" : this.GetCurrentColumnValue("NeedElongation").ToString();

            //if (ANeedElongation == "N")
            //{
            //    this.xrP3RESULT.Text = "n.a.";
            //}
        }




    }
}
