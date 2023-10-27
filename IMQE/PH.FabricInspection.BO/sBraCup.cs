using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using PH.Platform.BO;
using PH.POPC.BO;
using PH.MIDc.BO;
using System.Text.RegularExpressions;

namespace PH.FabricInspection.BO
{
    public partial class sBraCupHeader : BaseEntity
    {
        public string OddEvenRowFlag { get; set; }
        public string SimpleCupORCrossCupShow
        {
            get
            {
                if (string.IsNullOrEmpty(AuditSKUCrossCup))
                {
                    return "";
                }

                return AuditSKUCrossCup.Contains("/") ? "C" : "S";
            }
        }

        //抽查的Size/Cup(有多个Cross Cup时计算多个)与整批Packlist下所有Size/Cup的差异数
        public int AuditFullSizeDiffByLotShow
        {
            get
            {
                return (UnderPackingListSizeCupQtyByLot ?? 0) - (UnderPullSizeCupQtyByLot ?? 0);
                //return (UnderPullSizeCupQtyByLot ?? 0) - (UnderPackingListSizeCupQtyByLot ?? 0);
            }
        }

        //是否为Full Size/Cup检查 (这个字段的算法改为是否omit, 与之前的Full Size/Cup刚好相反)
        public string IsAuditFullSizeByLotShow
        {
            get
            {
                return AuditFullSizeDiffByLotShow > 0 ? "Y" : "N";
            }
        }

        public override void Save(System.Data.Linq.DataContext ADataContext, System.Windows.Forms.BindingSource ABindingSource)
        {
            this.CurrentDataContext = ADataContext;
            this.CurrentBindingSource = ABindingSource;
            FabricInspectionDataContext db = this.CurrentDataContext as FabricInspectionDataContext;

            //IEnumerable<AccessoryHeader> lists = ABindingSource.DataSource as IEnumerable<AccessoryHeader>;
            IEnumerable<sBraCupHeader> lists = ABindingSource.List as IEnumerable<sBraCupHeader>;

            ////计算Due Day
            //if (!this.IDCreateDate.HasValue || !this.AuditDate.HasValue)
            //{
            //    this.DueDay = 0;
            //}
            //else
            //{
            //    this.DueDay = ((this.AuditDate ?? DateTime.MinValue) - (this.IDCreateDate ?? DateTime.MinValue)).Days;
            //}

            //计算Audit Qty (Random 或 Full)
            this.AuditQty = "Random";

            //计算Defect Qty
            this.DefectQty = this.sBraCupDefects.Select(p => p.Qty).Sum();

            //计算Reject Qty
            if (this.DefectResultByID == "A")
            {
                this.RejectQty = this.DefectQty;
            }
            else if (this.DefectResultByID == "B")
            {
                this.RejectQty = this.PackListQty;
            }

            if (this.ColorShade == "N")
            {
                this.ColorShadeResult = "n.a.";
            }

            //计算Rejected Qty to be Claimed* (Net)
            this.CasingRejectQty = DefectResultByID == "A" ? 0 : CasingPackListQty;

            //计算Casing Diff Qty*
            if (CasingPackListQty.HasValue && CasingLabelQty.HasValue)
            {
                CasingDiffQty = (CasingPackListQty ?? 0) - (CasingLabelQty ?? 0);
            }
            else
            {
                CasingDiffQty = null;
            }

            //计算b) Pull case's counted pcs. * Diff Qty
            if (CasingPackListQty.HasValue && CountQty.HasValue)
            {
                CountDiffQty = (CasingPackListQty ?? 0) - (CountQty ?? 0);
            }
            else
            {
                CountDiffQty = null;
            }

            //计算Count Result *
            CountResult = (CountDiffQty ?? 0) >= 0 ? "A" : "B";

            //计算Meas. usable width Different
            EdgeToEdgeWidthDiff = 0.00m;
            if (EdgeToEdgeWidth <= AgreedUsableWidthMin)
            {
                EdgeToEdgeWidthDiff = (EdgeToEdgeWidth ?? 0) - (AgreedUsableWidthMin ?? 0);
            }
            else if (EdgeToEdgeWidth >= AgreedUsableWidthMax)
            {
                EdgeToEdgeWidthDiff = (EdgeToEdgeWidth ?? 0) - (AgreedUsableWidthMax ?? 0);
            }

            //计算Overall RESULT *
            //this.OverallResult = this.DefectResultByID;

            //计算Part 2 Measure Result (用于Summary报表, Layout上现在没有这个栏位)
            if ((this.AuditType == "BraCup") || (this.AuditType == "Accessories" && !this.EdgeToEdgeWidth.HasValue))
            {
                Part2Result = null;
            }
            else
            {
                if (EdgeToEdgeWidth >= (AgreedUsableWidthMin ?? 0) && EdgeToEdgeWidth <= (AgreedUsableWidthMax ?? 0))
                {
                    Part2Result = "A";
                }
                else
                {
                    Part2Result = "B";
                }
            }

            SpotDefectPointQty = sBraCupDefects.Select(p => (p.Qty ?? 0)).Sum();

            //Labeled Qty* 默认等于PackListByCrossCup
            if (!CasingLabelQty.HasValue)
            {
                CasingLabelQty = PackListQtyByCrossCup;
            }

            //计算Part II Qty Comparison Diff *
            CasingDiffQty = CasingLabelQty - PackListQtyByCrossCup;


            if (string.IsNullOrEmpty(this.ColorShade))
            {
                this.ColorShade = "Y";
            }


            var ByLots = lists.Where(p => p.AuditNo == this.AuditNo && p.AuditStage == this.AuditStage);
            //int? iTotalBoxQty = ByLots.Where(p => !string.IsNullOrEmpty(p.CasingPullCaseNo)).Distinct().Count();
            //int? iTotalBoxQty = ByLots.Where(p => !string.IsNullOrEmpty(p.ItemIDNO) && p.ItemIDNO.EndsWith("00")).Count();

            //int? iAuditBoxQty = this.AccessoryCasings.Count();

            int? iDueDay = (!IDCreateDate.HasValue || !AuditDate.HasValue) ? 0 :
             db.fn_CalculateDueDay((IDCreateDate ?? DateTime.MinValue), (AuditDate ?? DateTime.MinValue), Whse);
            DateTime? dtFWStartDate = (this.CurrentDataContext as FabricInspectionDataContext).fn_CalculateFWStartDate(ProjectNO);

            int? iTotalSuppRef = ByLots.Select(p => p.SuppRef).Distinct().Count();
            int? iTotalSuppCode = ByLots.Select(p => p.SuppCode).Distinct().Count();
            int? iTotalItemCode = ByLots.Select(p => p.ItemCode).Distinct().Count();
            int? iTotalColorCode = ByLots.Select(p => p.ColorCode).Distinct().Count();
            int? iTotalProject = ByLots.Select(p => p.ProjectNO).Distinct().Count();
            int? iTotalClaimRejectedQty = ByLots.Select(p => (p.RejectQty ?? 0) + (p.CasingRejectQty ?? 0)).Sum();
            int? iTotalAQLAuditQty = ByLots.Select(p => p.AQLAuditQty).Sum();
            int? iTotalOffQty = ByLots.Select(p => (p.CasingPackListQty ?? 0) - (p.CasingLabelQty ?? 0)).Sum();
            int iAuditCaseQtyByLot = ByLots.Select(p => p.CasingPullCaseNo).Distinct().Count();
            int iTotalItemIDNO = ByLots.Select(p => p.ItemIDNO).Distinct().Count();
            int iTotalPONO = ByLots.Select(p => p.PONO).Distinct().Count();

            var DefectTop4 = db.BraCupDefects.Where(p => p.BraCupHeader.AuditNo == this.AuditNo && p.BraCupHeader.AuditType == this.AuditType)
                .OrderByDescending(p => p.Qty).Take(4).Select(p => p.DefectCode).Distinct().ToList();

            var CasingDefectTop2 = db.BraCupCasingDefects.Where(p => p.BraCupHeader.AuditNo == this.AuditNo && p.BraCupHeader.AuditType == this.AuditType)
                .OrderByDescending(p => p.DefectQty).Take(2).Select(p => p.DefectCode).Distinct().ToList();

            int? iPullIndQtyByLot = ByLots.Select(p => p.IndPackNO).Distinct().Count(); //ByLots.Count();
            int? iTotalAuditSKUCrossCup = ByLots.Select(p => p.AuditSKUCrossCup).Distinct().Count();
            int? iTotalAuditSKU = ByLots.Select(p => p.AuditSKU).Distinct().Count();
            int? iTotalAuditSample = ByLots.Count();
            bool bColorShadeResultHasB = ByLots.Where(p => p.ColorShadeResult == "B").Count() > 0;
            int? iCasingPackListQty = ByLots.Where(p => p.ColorShadeResult == "B").Select(p => p.CasingPackListQty).Sum();
            bool bEdgeToEdgeWidthHasDiff = ByLots.Where(p => (p.EdgeToEdgeWidthDiff ?? 0) != 0).Count() > 0;
            //int iCasingDiffQtyByLot = ByLots.Select(p => (p.CasingDiffQty ?? 0)).Sum();
            int iCountDiffQtyByLot = ByLots.Select(p => (p.CountDiffQty ?? 0)).Sum();
            //bool bCountResultHasB = ByLots.Where(p => p.CountResult == "B").Count() > 0;
            //bool bDefectResultByIDHasB = ByLots.Where(p => p.DefectResultByID == "B").Count() > 0;
            int iAQLAuditQtyByLot = ByLots.Select(p => (p.AQLAuditQty ?? 0)).Sum();
            int iUnderPullSizeCupQtyByLot = GetTotalAuditSKUCrossCup(ByLots.Select(p => p.AuditSKUCrossCup).ToList());


            int iAdjustQtyByLot = ByLots.Where(p => p.CasingDiffQty < 0).Select(p => p.CasingDiffQty ?? 0).Sum(); //Adjust只计短码，长码不计
            int iCasingDiffQtyByLot = ByLots.Select(p => p.CasingDiffQty ?? 0).Sum();
            //int iCasingDiffQtyByLot = ByLots.GroupBy(p => new { p.AuditSKUCrossCup, p.CasingDiffQty })
            //                                .Select(g => g.Sum(x => (x.CasingDiffQty ?? 0)) / g.Count()).Sum();



            string sPart1DefectResultByLot = ByLots.Where(p => p.DefectResultByID == "B").Count() > 0 ? "B" : "A";
            if (ByLots.Where(p => p.DefectResultByID == "A" || p.DefectResultByID == "B").Count() == 0) //DefectResultByID全部为空的情况
            {
                sPart1DefectResultByLot = null;
            }

            //string sPart2MeasureResultByLot = "";
            //if (this.AuditType == "BraCup")
            //{
            //    sPart2MeasureResultByLot = null;
            //}
            //else if (this.AuditType == "Accessories")
            //{
            //    sPart2MeasureResultByLot = ByLots.Where(p => p.Part2Result == "B").Count() > 0 ? "B" : "A";
            //    if (ByLots.Where(p => p.Part2Result == "A" || p.Part2Result == "B").Count() == 0)
            //    {
            //        sPart2MeasureResultByLot = null;
            //    }
            //}

            foreach (var o in ByLots)
            {
                o.DueDay = iDueDay;
                o.FWStartDate = dtFWStartDate;

                //计算Pull Case# 总数
                o.TotalBoxQty = this.TotalBoxQty;  //iTotalBoxQty;

                o.OverallClaimQty = this.OverallClaimQty; //批量修改Agreed Qty

                //计算Audit的总箱数
                o.AuditCaseQtyByLot = iAuditCaseQtyByLot;

                //计算Pull Ind. Pack convered full Sz /Clr **
                o.PullIndQtyByLot = iPullIndQtyByLot;

                //计算Ttl Final stk-in qty **
                o.TotalStockInQty = (o.PackListQtyByLot ?? 0) - (o.TotalClaimRejectedQty ?? 0);

                //AuditBoxQty = iAuditBoxQty;
                o.TotalSuppRef = iTotalSuppRef;
                o.TotalSuppCode = iTotalSuppCode;
                o.TotalItemCode = iTotalItemCode;
                o.TotalColorCode = iTotalColorCode;
                o.TotalProject = iTotalProject;
                o.TotalItemIDNO = iTotalItemIDNO;
                o.TotalPONO = iTotalPONO;

                //Ttl Claim Rejected Qty** 
                o.TotalClaimRejectedQty = iTotalClaimRejectedQty;

                //Ttl Diff Qty**
                o.TotalOffQty = iTotalOffQty;

                //Accu. Smpl Quantum ** (for ref.)
                o.AQLAuditQtyByLot = iAQLAuditQtyByLot;

                //抽检了多少个Size Cup (有Cross cup时，一个Size Cup 计一个)
                o.UnderPullSizeCupQtyByLot = iUnderPullSizeCupQtyByLot;

                //计算Part I Result *
                var Part1ResultList = ByLots.Where(p => p.AuditSKUCrossCup == o.AuditSKUCrossCup);
                o.Part1Result = Part1ResultList.Select(p => (p.SpotDefectPointQty ?? 0)).Sum() > Part1ResultList.Select(p => (p.AQL25StandardQty ?? 0)).Sum() ? "B" : "A";

                //计算Part II 数量的差异百分比
                o.CasingDiffPercent = (o.PackListQtyByLot ?? 0) == 0 ? 0 : 1.000m * iCasingDiffQtyByLot / (o.PackListQtyByLot ?? 0);

                //计算Part II Result **
                o.CasingResultByLot = o.CasingDiffPercent < 0 ? "B" : "A";

                //计算Part II - Count RESULT **
                //o.Part2ResultByLot = bCountResultHasB ? "B" : "A";

                //PART II Final Claim
                o.Part2FinalClaimByLot = o.CountDiffQtyByLot; //o.TotalOffQty;

                //计算TTl Audit Smpl
                o.TotalAQLAuditQty = iTotalAQLAuditQty;

                //计算Top 1 ~ Top 4中的疵点个数 Ttl Mat'l Defects*
                int? iDefectCount = o.sBraCupDefects.Where(p => DefectTop4.Contains(p.DefectCode)).Count();
                o.DefectCount = iDefectCount;

                //计算Casing Top 1 ~ Top 4中的疵点个数 Ttl Casing Defect *
                o.CasingTotalDefectQty = o.sBraCupCasingDefects.Where(p => CasingDefectTop2.Contains(p.DefectCode)).Count();

                //计算Ttl SKU based on cross cup grp
                o.TotalAuditSKUCrossCup = iTotalAuditSKUCrossCup;

                //计算Ttl Audit SKU (filter by grp cross cup)
                o.TotalAuditSKU = iTotalAuditSKU;

                //计算Ttl Audit Smpl
                o.TotalAuditSample = iTotalAuditSample;


                //计算Agreed edge to edge width **
                o.AgreedUsableWidthRange = string.Format("{0}~{1}", Math.Round((o.AgreedUsableWidthMin ?? 0.00m), 2), Math.Round((o.AgreedUsableWidthMax ?? 0.00m), 2));

                //计算Meas. usable width result By Lot
                o.EdgeToEdgeWidthResultByLot = bEdgeToEdgeWidthHasDiff ? "B" : "A";

                //计算Part1 Defect Result By Lot
                o.Part1DefectResultByLot = sPart1DefectResultByLot;

                //计算Part2 Measure Result By Lot (用于Summary报表, Layout上现在没有这个栏位)
                //o.Part2ResultByLot = sPart2MeasureResultByLot;

                o.CasingDiffQtyByLot = iCasingDiffQtyByLot;
                o.CountDiffQtyByLot = iCountDiffQtyByLot;

                //计算Part III - Testing RESULT **
                o.Part3TestingResultByLot = bColorShadeResultHasB ? "B" : "A";

                //计算PART III Final Claim **
                o.Part3FinalClaimByLot = o.Part3TestingResultByLot == "A" ? 0 : iCasingPackListQty;

                //计算Overall Claim ** (proposal)
                o.OverallProposaClaimlByLot = (o.TotalClaimRejectedQty ?? 0) + (o.Part2FinalClaimByLot ?? 0) + (o.Part3FinalClaimByLot ?? 0);
                //o.OverallProposaClaimlByLot = (o.CasingRejectQty ?? 0) + (o.Part2FinalClaimByLot ?? 0) + (o.Part3FinalClaimByLot ?? 0);
                //o.OverallProposaClaimlByLot = o.TotalClaimRejectedQty;
                //o.OverallProposaClaimlByLot = TotalClaimRejectedQty + TotalOffQty;

                //计算Overall CLAIM % **
                if ((o.PackListQtyByLot ?? 0) == 0 || !o.OverallProposaClaimlByLot.HasValue || !o.OverallClaimQty.HasValue)
                {
                    o.OverallClaimPercentByLot = null;
                }
                else
                {
                    o.OverallClaimPercentByLot = (o.OverallClaimQty.HasValue ? o.OverallClaimQty : o.OverallProposaClaimlByLot) / o.PackListQtyByLot;
                }

            }

            decimal iPart1FinalClaimByLot = ByLots.Where(p => p.Part1Result == "B")
                                                  .GroupBy(p => new { p.AuditSKUCrossCup, p.PackListQtyByCrossCup })
                                                  .Select(g => g.Sum(x => (x.PackListQtyByCrossCup ?? 0)) / g.Count()).Sum() +

                                            ByLots.Where(p => p.Part1Result == "A").Select(p => p.SpotDefectPointQty ?? 0).Sum(); //如果是A，有Spot Defect的也要Claim.

            string sPart1ResultByLot = ByLots.Where(p => p.Part1Result == "B").Count() > 0 ? "B" : "A";

            int iCasingShortLengthClaim = ByLots.Where(p => (p.CasingDiffQty ?? 0) < 0)
                                .GroupBy(p => new { p.AuditSKUCrossCup })
                                .Select(g => g.Sum(x => (x.CasingDiffQty ?? 0)) / g.Count()).Sum();

            int iPart3FinalClaimByLot = ByLots.Where(p => p.ColorShadeResult == "B")
                                .GroupBy(p => new { p.AuditSKUCrossCup })
                                .Select(g => g.Sum(x => (x.PackListQtyByCrossCup ?? 0)) / g.Count()).Sum();

            foreach (var o in ByLots)
            {
                //计算Part I Result **
                o.Part1ResultByLot = sPart1ResultByLot;

                //计算Part I Final Claim Qty **
                o.Part1FinalClaimByLot = iPart1FinalClaimByLot;

                //计算Part II Claim Short qty **
                o.CasingShortLengthClaim = iCasingShortLengthClaim;

                //计算Part II - RESULT **
                o.Part2ResultByLot = o.CasingShortLengthClaim < 0 ? "B" : "A";

                //计算Part II Final Claim **
                o.Part2FinalClaimByLot = o.CasingShortLengthClaim;

                //计算Part III Final Claim **
                o.Part3FinalClaimByLot = iPart3FinalClaimByLot;

                //计算Overall Claim ** (proposal)
                o.OverallProposaClaimlByLot = (o.Part1FinalClaimByLot ?? 0) + (o.Part2FinalClaimByLot ?? 0) + (o.Part3FinalClaimByLot ?? 0);

                if (o.OverallProposaClaimlByLot > o.PackListQtyByLot)
                {
                    o.OverallProposaClaimlByLot = o.PackListQtyByLot;
                }

                //计算Overall CLAIM % **
                if ((o.PackListQtyByLot ?? 0) == 0)
                {
                    o.OverallClaimPercentByLot = null;
                }
                else
                {
                    o.OverallClaimPercentByLot = (o.OverallClaimQty.HasValue ? (o.OverallClaimQty ?? 0) : (o.OverallProposaClaimlByLot ?? 0)) / o.PackListQtyByLot;
                }


                //计算4个Nature
                if (o.Part1FinalClaimByLot == 0) { o.Part1Nature = "None"; }
                else if (o.Part1FinalClaimByLot >= o.PackListQtyByLot) { o.Part1Nature = "Return"; }
                else { o.Part1Nature = "Replenish"; }

                if (o.Part2FinalClaimByLot == 0) { o.Part2Nature = "None"; }
                else if (o.Part2FinalClaimByLot >= o.PackListQtyByLot) { o.Part2Nature = "Return"; }
                else { o.Part2Nature = "Replenish"; }

                if (o.Part3FinalClaimByLot == 0) { o.Part3Nature = "None"; }
                else if (o.Part3FinalClaimByLot >= o.PackListQtyByLot) { o.Part3Nature = "Return"; }
                else { o.Part3Nature = "Replenish"; }

                if (o.OverallProposaClaimlByLot == 0) { o.OverallNature = "None"; }
                else if (o.OverallProposaClaimlByLot >= o.PackListQtyByLot) { o.OverallNature = "Return"; }
                else { o.OverallNature = "Replenish"; }

                //计算出Final Nature
                string FinalNatureCal = o.OverallNature;
                if (o.OverallClaimQty.HasValue)
                {
                    if (o.OverallClaimQty == 0) FinalNatureCal = "None";
                    else if (o.OverallClaimQty >= o.PackListQtyByLot) FinalNatureCal = "Return";
                    else if (o.OverallClaimQty < o.PackListQtyByLot) FinalNatureCal = "Replenish";
                }

                decimal? FinalClaimQtyByLotCal = o.OverallClaimQty.HasValue ? o.OverallClaimQty : o.OverallProposaClaimlByLot;
                o.AdjustQty = (FinalNatureCal == "Return" || o.CasingDiffQty > 0) ? 0 : o.CasingDiffQty; //多的数量不计入Adjust
                o.AdjustQtyByLot = FinalNatureCal == "Return" ? 0 : iAdjustQtyByLot; //iCasingDiffQtyByLot;
                o.ReplenishQtyByLot = FinalNatureCal == "Replenish" ? FinalClaimQtyByLotCal : 0;
                o.ReturnQtyByLot = FinalNatureCal == "Return" ? FinalClaimQtyByLotCal : 0;

                ////计算Stk-in Process id Adjust(+/-) *
                //o.AdjustQty = o.CasingDiffQty;

                ////计算Stk-in Process id Adjust(+/-) **
                //o.AdjustQtyByLot = iCasingDiffQtyByLot;

                ////计算Stk-in Process id Replenish Requisition (-) **
                //o.ReplenishQtyByLot = o.OverallNature == "Replenish" ? o.OverallProposaClaimlByLot : 0;

                ////计算Stk-in Process id Return(-) **
                //o.ReturnQtyByLot = o.OverallNature == "Return" ? o.OverallProposaClaimlByLot : 0;

                ////处理手工输入了Agreed Qty后的两种情况
                //if (o.OverallClaimQty.HasValue) //输入了Over Claim Agreed Qty
                //{
                //    if (o.OverallClaimQty >= o.PackListQtyByLot) //Agreed全Claim, Return的情况
                //    {
                //        o.ReturnQtyByLot = o.OverallClaimQty;
                //        o.AdjustQty = 0;
                //        o.AdjustQtyByLot = 0;
                //        o.ReplenishQtyByLot = 0;
                //    }
                //    else if (o.OverallClaimQty == 0) //Agreed Claim = 0, 同意不Claim
                //    {
                //        o.ReplenishQtyByLot = 0;
                //        o.ReturnQtyByLot = 0;
                //    }
                //}

                //计算Overall RESULT *
                if (string.IsNullOrEmpty(o.OverallResult))
                {
                    if (o.OverallResult == "B+")
                    {
                        o.OverallResult = "B+";  //已经手工修改为B+的，不再自动计算
                    }
                    else
                    {
                        List<string> AuditResultList = new List<string>();
                        AuditResultList.Add(o.Part1Result);
                        AuditResultList.Add(o.Part2ResultByLot);
                        AuditResultList.Add(o.Part3TestingResultByLot);

                        if (AuditResultList.Contains("C"))
                        {
                            o.OverallResult = "C";
                        }
                        else if (AuditResultList.Contains("B"))
                        {
                            o.OverallResult = "B";
                        }
                        else
                        {
                            o.OverallResult = "A";
                        }
                    }
                }

                //处理Cfmd by
                if ((o.OverallResult == "A") || (o.OverallResult == "A+") ||
                    ((o.OverallResult == "B" || o.OverallResult == "B+" || o.OverallResult == "C") && o.OverallProposaClaimlByLot == o.OverallClaimQty)
                    )
                {
                    o.OverallConfirmBy = "n.a.";
                }

                //2021-06-22 Shelley要求加入：如果Overall Result *等于A+或A时，Core reasons of all PART = 【Good perf. of overall audit】
                if (string.IsNullOrEmpty(o.OverallResultCoreDefecName) && (o.OverallResult == "A+" || o.OverallResult == "A"))
                {
                    o.OverallResultReasonGroup = "--";
                    o.OverallResultCoreDefecName = "--";
                    o.OverallResultReasonPart = "All Part";
                    o.OverallResultDefectKind = "n.a.";
                }
            }


            ////计算Overall RESULT *
            //if (this.OverallResult == "B+")
            //{
            //    this.OverallResult = "B+";  //已经手工修改为B+的，不再自动计算
            //}
            //else
            //{
            //    List<string> AuditResultList = new List<string>();
            //    AuditResultList.Add(Part1Result);
            //    AuditResultList.Add(Part2ResultByLot);
            //    AuditResultList.Add(Part3TestingResultByLot);

            //    if (AuditResultList.Contains("C"))
            //    {
            //        this.OverallResult = "C";
            //    }
            //    else if (AuditResultList.Contains("B"))
            //    {
            //        this.OverallResult = "B";
            //    }
            //    else
            //    {
            //        this.OverallResult = "A";
            //    }
            //}


            base.Save(ADataContext, ABindingSource);
        }

        public string AuditTypeShow { get { return "AQL"; } }
        public string MaterialType { get { return string.IsNullOrEmpty(ItemCode) ? "" : ItemCode.Substring(0, 3); } }

        public string ActionLogIsCompleted
        {
            get
            {
                if (string.IsNullOrEmpty(this.ActionLogNO)) return null;

                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<FabricInspectionDataContext>();
                }

                var obj = (this.CurrentDataContext as FabricInspectionDataContext).ActionLogHeaders.FirstOrDefault(p => p.OID == this.ActionLogOID);
                if (obj == null) return null;

                //return (obj.IsCompleted ?? false) ? "Y" : "N";
                return (obj.LastStageIsCompleted ?? false) ? "Y" : "N";
            }
        }

        //是否为过期的Event Log
        public bool IsOverDueEventLog
        {
            get
            {
                if (string.IsNullOrEmpty(this.ActionLogNO))
                {
                    return false;
                }

                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<FabricInspectionDataContext>();
                }

                //return (this.CurrentDataContext as FabricInspectionDataContext).ActionLogHeaders.Where
                //    (p =>
                //         p.OID == this.ActionLogOID &&
                //         ((!(p.IsCompleted ?? false) && p.PlanEndDate.HasValue && p.PlanEndDate < DateTime.Now.Date) ||
                //          (!(p.LastStageIsCompleted ?? false) && p.LastStageCompletedDate.HasValue && p.LastStageCompletedDate < DateTime.Now.Date))
                //    ).Count() > 0;

                return (this.CurrentDataContext as FabricInspectionDataContext).ActionLogHeaders.
                    Where(p => p.OID == this.ActionLogOID && !(p.IsCompleted ?? false) && p.PlanEndDate.HasValue && p.PlanEndDate < DateTime.Now.Date).Count() > 0;
            }
        }

        //是否为1st Stage Outstanding的Action Log
        public bool IsOutstandingEventLog
        {
            get
            {
                if (string.IsNullOrEmpty(this.ActionLogNO))
                {
                    return false;
                }

                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<FabricInspectionDataContext>();
                }

                //return (this.CurrentDataContext as FabricInspectionDataContext).ActionLogHeaders
                //    .Where(p => p.OID == this.ActionLogOID && !(p.LastStageIsCompleted ?? false)).Count() > 0;

                return (this.CurrentDataContext as FabricInspectionDataContext).ActionLogHeaders.
                    Where(p => p.OID == this.ActionLogOID && !(p.IsCompleted ?? false)).Count() > 0;
            }
        }

        //是否为Last Stage Outstanding的Action Log
        public bool IsLastStageOutstandingEventLog
        {
            get
            {
                if (string.IsNullOrEmpty(this.ActionLogNO))
                {
                    return false;
                }

                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<FabricInspectionDataContext>();
                }

                return (this.CurrentDataContext as FabricInspectionDataContext).ActionLogHeaders
                    .Where(p => p.OID == this.ActionLogOID && !(p.LastStageIsCompleted ?? false)).Count() > 0;
            }
        }

        /// <summary>
        /// 是否为Part I是B或C，并且超过三天没有出Action Log的
        /// </summary>
        public bool IsPartIGradeBC
        {
            get
            {
                return ((Part1ResultByLot == "B" || Part1ResultByLot == "C") &&
                         string.IsNullOrEmpty(ActionLogNO) &&
                         (AuditDate ?? DateTime.MinValue).Date <= DateTime.Now.Date.AddDays(-3));
            }
        }

        int GetTotalAuditSKUCrossCup(List<string> AAuditSKUCrossCup)
        {
            if (AAuditSKUCrossCup.Count == 0) return 0;

            List<string> List = new List<string>();
            foreach (var obj in AAuditSKUCrossCup)
            {
                List.AddRange(obj.Split(new string[] { "/" }, StringSplitOptions.RemoveEmptyEntries).ToList());
            }

            return List.Distinct().Count();
        }

    }

    public partial class sBraCupDefect : BaseEntity
    {
        private PHQCDefect QCDefect
        {
            get
            {
                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<FabricInspectionDataContext>();
                }
                return (this.CurrentDataContext as FabricInspectionDataContext).PHQCDefects.FirstOrDefault(p => p.PHDefectCode == this.DefectCode);
            }
        }

        public string DefectName
        {
            get
            {
                //    if (this.CurrentDataContext == null)
                //    {
                //        this.CurrentDataContext = ContextBuilder.CreateContext<FabricInspectionDataContext>();
                //    }

                //    var obj = (this.CurrentDataContext as FabricInspectionDataContext).PHQCDefects.Where(p => p.PHDefectCode == this.DefectCode)
                //        .Select(p => new { p.DefectThaiName, p.DefectEnglishName, p.DefectChineseName }).FirstOrDefault();

                //    if (obj == null) return "";

                //    string DefectName = null;
                //    DefectName = obj.DefectEnglishName + "\r\n" + obj.DefectChineseName;

                //    return DefectName;

                return DefectNameEN + "\r\n" + DefectNameCN;
            }
        }

        public string DefectNameEN
        {
            get
            {
                return QCDefect == null ? "" : QCDefect.DefectEnglishName;
            }
        }
        public string DefectNameCN
        {
            get
            {
                return QCDefect == null ? "" : QCDefect.DefectChineseName;
            }
        }
        public string DefectNameBD
        {
            get
            {
                return QCDefect == null ? "" : QCDefect.DefectThaiName;
            }
        }

    }

    public partial class sBraCupCasingDefect : BaseEntity
    {
        private PHQCDefect QCDefect
        {
            get
            {
                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<FabricInspectionDataContext>();
                }
                return (this.CurrentDataContext as FabricInspectionDataContext).PHQCDefects.FirstOrDefault(p => p.PHDefectCode == this.DefectCode);
            }
        }

        public string DefectNameEN
        {
            get
            {
                return QCDefect == null ? "" : QCDefect.DefectEnglishName;
            }
        }
        public string DefectNameCN
        {
            get
            {
                return QCDefect == null ? "" : QCDefect.DefectChineseName;
            }
        }
        public string DefectNameBD
        {
            get
            {
                return QCDefect == null ? "" : QCDefect.DefectThaiName;
            }
        }
    }
}
