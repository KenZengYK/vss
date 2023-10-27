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

    public partial class AccessoryHeader : BaseEntity
    {
        public string OddEvenRowFlag { get; set; }

        POPCDataContext POPCdb = ContextBuilder.CreateContext<POPCDataContext>();
        public string GetPOPCUnit
        {
            get
            {
              string PHUnit = POPCdb.PODetails.Where(dr => (dr.VersionFlag??false) && dr.ItemCode == this.ItemCode && dr.PONO == this.PONO).Select(dr=>dr.PHUom).FirstOrDefault();
              return PHUnit;
            }
        }

        public override void Save(System.Data.Linq.DataContext ADataContext, System.Windows.Forms.BindingSource ABindingSource)
        {
            this.CurrentDataContext = ADataContext;
            this.CurrentBindingSource = ABindingSource;
            FabricInspectionDataContext db = this.CurrentDataContext as FabricInspectionDataContext;

            //IEnumerable<AccessoryHeader> lists = ABindingSource.DataSource as IEnumerable<AccessoryHeader>;
            IEnumerable<AccessoryHeader> lists = ABindingSource.List as IEnumerable<AccessoryHeader>;

            if (string.IsNullOrEmpty(this.Status))
            {
                this.Status = "WIP";
            }

            //计算Audit Qty (Random 或 Full)
            this.AuditQty = "Random";

            ////计算Due Day
            //if (!this.IDCreateDate.HasValue || !this.AuditDate.HasValue)
            //{
            //    this.DueDay = 0;
            //}
            //else
            //{
            //    this.DueDay = (this.CurrentDataContext as FabricInspectionDataContext).fn_CalculateDueDay(IDCreateDate, AuditDate, Whse);
            //    //this.DueDay = ((this.AuditDate ?? DateTime.MinValue) - (this.IDCreateDate ?? DateTime.MinValue)).Days;
            //}

            ////计算FW Start Date
            //this.FWStartDate = (this.CurrentDataContext as FabricInspectionDataContext).fn_CalculateFWStartDate(ProjectNO);


            //计算Defect Qty
            this.DefectQty = this.AccessoryDefects.Select(p => p.Qty).Sum();

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

            //计算Spot Defect
            SpotDefectPointQty = this.AccessoryDefects.Select(p => (p.Qty ?? 0)).Sum();

            //计算Part I Result *
            Part1Result = (SpotDefectPointQty ?? 0) > (AQL25StandardQty ?? 0) ? "B" : "A";

            //计算Part I Result **


            decimal iWeightPerPiece = (AQLAuditQty ?? 0) == 0 ? 0 : (SampleQuantumWeight ?? 0) / (AQLAuditQty ?? 0); //计算出每一件多少克

            //计算Pro-Weight Qty(pc) *    (按重量推算出数量)
            ProWeightQty = iWeightPerPiece == 0 ? 0 : (PullBoxWeight ?? 0) / iWeightPerPiece;

            //计算推算出来的数量与PackList数量的差异
            LengthDiff = (ProWeightQty ?? 0) == 0 ? null : (Math.Round(ProWeightQty ?? 0, 0) - PackListQty);



            //从MIDc中取重量作为参考
            MIDcDataContext MIDcDB = ContextBuilder.CreateContext<MIDcDataContext>();
            var MIDcObj = MIDcDB.Details.FirstOrDefault(p => p.SuppRef == SuppRef);
            if (MIDcObj != null)
            {
                //取克重
                WeightMinFromMIDc = MIDcObj.WeightGmSqmMin.HasValue ? (MIDcObj.WeightGmSqmMin ?? 0) : (MIDcObj.WeightGmSqm ?? 0);
                WeightMaxFromMIDc = MIDcObj.WeightGmSqmMax.HasValue ? (MIDcObj.WeightGmSqmMax ?? 0) : (MIDcObj.WeightGmSqm ?? 0);
                if (!WeightMinFromMIDc.HasValue && !WeightMinFromMIDc.HasValue)
                {
                    WeightRange = null;
                }
                else
                {
                    WeightRange = string.Format("{0}~{1}", Math.Round((WeightMinFromMIDc ?? 0.00M), 2), Math.Round((WeightMaxFromMIDc ?? 0.00M), 2));
                }
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
            int iAuditCaseQtyByLot = ByLots.Count();
            int iTotalItemIDNO = ByLots.Select(p => p.ItemIDNO).Distinct().Count();
            int iTotalPONO = ByLots.Select(p => p.PONO).Distinct().Count();

            var DefectTop4 = db.AccessoryDefects.Where(p => p.AccessoryHeader.AuditNo == this.AuditNo && p.AccessoryHeader.AuditType == this.AuditType)
                .OrderByDescending(p => p.Qty).Take(4).Select(p => p.DefectCode).Distinct().ToList();

            var CasingDefectTop2 = db.AccessoryCasingDefects.Where(p => p.AccessoryHeader.AuditNo == this.AuditNo && p.AccessoryHeader.AuditType == this.AuditType)
                .OrderByDescending(p => p.DefectQty).Take(2).Select(p => p.DefectCode).Distinct().ToList();

            //int? iPullIndQtyByLot = ByLots.Where(p => !string.IsNullOrEmpty(p.ItemIDNO) && p.ItemIDNO.EndsWith("00")).Distinct().Count();
            int? iPullIndQtyByLot = ByLots.Count();
            int? iTotalAuditSKUCrossCup = ByLots.Select(p => p.AuditSKUCrossCup).Distinct().Count();
            int? iTotalAuditSKU = ByLots.Select(p => p.AuditSKU).Distinct().Count();
            int? iTotalAuditSample = ByLots.Count();

            string sColorShadeResultByLot = "";
            if (ByLots.Where(p => p.ColorShadeResult == "A").Count() > 0) sColorShadeResultByLot = "A";
            if (ByLots.Where(p => p.ColorShadeResult == "B").Count() > 0) sColorShadeResultByLot = "B";
            //bool bColorShadeResultHasB = ByLots.Where(p => p.ColorShadeResult == "B").Count() > 0;

            int? iCasingPackListQty = ByLots.Where(p => p.ColorShadeResult == "B").Select(p => p.CasingPackListQty).Sum();
            bool bEdgeToEdgeWidthHasDiff = ByLots.Where(p => (p.EdgeToEdgeWidthDiff ?? 0) != 0).Count() > 0;
            int iCasingDiffQtyByLot = ByLots.Select(p => (p.CasingDiffQty ?? 0)).Sum();
            int iCountDiffQtyByLot = ByLots.Select(p => (p.CountDiffQty ?? 0)).Sum();
            //bool bCountResultHasB = ByLots.Where(p => p.CountResult == "B").Count() > 0;
            bool bDefectResultByIDHasB = ByLots.Where(p => p.DefectResultByID == "B").Count() > 0;

            decimal iLengthDiffByLot = ByLots.Select(p => p.LengthDiff ?? 0).Sum();
            decimal iAdjustQtyByLot = ByLots.Where(p => (p.LengthDiff ?? 0) < 0).Select(p => p.LengthDiff ?? 0).Sum();
            int iTotalSpotDefectPointQty = ByLots.Select(p => (p.SpotDefectPointQty ?? 0)).Sum(); //计算Defect总扣分，Accessory中只有Spot Defect

            //2nd 全检时，计算出所有Spot Defect的个数
            int iFullInspectionTotalDefectQty = ByLots.Where(p => p.IsFullInspection ?? false).Sum(p => (p.SpotDefectPointQty ?? 0));

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
                o.Status = this.Status;
                o.DueDay = iDueDay;
                o.FWStartDate = dtFWStartDate;

                //计算Pull Case# 总数
                o.TotalBoxQty = this.TotalBoxQty; //iTotalBoxQty;

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

                //计算Part I Result **
                o.Part1ResultByLot = iTotalSpotDefectPointQty > (o.AQL25StandardQtyByLot ?? 0) ? "B" : "A";

                //计算Part 1 Final Claim Qty **
                if (o.IsFullInspection ?? false)
                {
                    o.Part1FinalClaimByLot = iFullInspectionTotalDefectQty;
                }
                else
                {
                    o.Part1FinalClaimByLot = o.Part1ResultByLot == "B" ? o.PackListQtyByLot : 0;
                }

                //计算数量的差异百分比
                o.LengthPercentByLot = (o.PackListQtyByLot ?? 0) == 0 ? 0 : iLengthDiffByLot / (o.PackListQtyByLot ?? 0);

                //计算Part II Result **
                o.LengthResultByLot = o.LengthPercentByLot < 0 ? "B" : "A";

                //计算Claim Short Qty **
                o.ShortLengthClaim = o.LengthResultByLot == "B" ? (Math.Abs(o.LengthPercentByLot ?? 0)) * (o.PackListQtyByLot ?? 0) : 0;

                ////计算Part II中Qty Comparison - Pro-Weight by electronic scale    Result**
                //o.LengthResultByLot = "A";


                //计算Part II Result**
                o.Part2ResultByLot = o.LengthResultByLot;

                //计算Part II Claim **
                o.Part2FinalClaimByLot = o.ShortLengthClaim;


                //计算Part II - Count RESULT **
                //o.Part2ResultByLot = (o.TotalOffQty ?? 0) > 0 ? "B" : "A";
                //o.Part2ResultByLot = bCountResultHasB ? "B" : "A";

                //PART II Final Claim
                //o.Part2FinalClaimByLot = o.CountDiffQtyByLot; //o.TotalOffQty;

                ////计算TTl Audit Smpl
                //o.TotalAQLAuditQty = iTotalAQLAuditQty;

                //计算Top 1 ~ Top 4中的疵点个数 Ttl Mat'l Defects*
                int? iDefectCount = o.AccessoryDefects.Where(p => DefectTop4.Contains(p.DefectCode)).Count();
                o.DefectCount = iDefectCount;

                //计算Casing Top 1 ~ Top 4中的疵点个数 Ttl Casing Defect *
                o.CasingTotalDefectQty = o.AccessoryCasingDefects.Where(p => CasingDefectTop2.Contains(p.DefectCode)).Count();

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

                //计算Part IV Result**
                o.Part4ResultByLot = o.EdgeToEdgeWidthResultByLot;

                //计算Part IV Final Claim**
                o.Part4ClaimByLot = o.Part4ResultByLot == "B" ? PackListQtyByLot : 0;

                //计算Part1 Defect Result By Lot
                o.Part1DefectResultByLot = sPart1DefectResultByLot;

                //计算Part2 Measure Result By Lot (用于Summary报表, Layout上现在没有这个栏位)
                //o.Part2ResultByLot = sPart2MeasureResultByLot;

                //o.CasingDiffQtyByLot = iCasingDiffQtyByLot;
                //o.CountDiffQtyByLot = iCountDiffQtyByLot;

                //计算Part III - RESULT **
                o.Part3TestingResultByLot = sColorShadeResultByLot;  //bColorShadeResultHasB ? "B" : "A";

                //计算PART III Final Claim **
                o.Part3FinalClaimByLot = o.Part3TestingResultByLot == "B" ? PackListQtyByLot : 0;
                //o.Part3FinalClaimByLot = o.Part3TestingResultByLot == "A" ? 0 : iCasingPackListQty;

                ////计算Overall Claim ** (proposal)
                //o.OverallProposaClaimlByLot = (o.TotalClaimRejectedQty ?? 0) + (o.Part2FinalClaimByLot ?? 0) + (o.Part3FinalClaimByLot ?? 0);
                //o.OverallProposaClaimlByLot = (o.CasingRejectQty ?? 0) + (o.Part2FinalClaimByLot ?? 0) + (o.Part3FinalClaimByLot ?? 0);
                //o.OverallProposaClaimlByLot = o.TotalClaimRejectedQty;
                //o.OverallProposaClaimlByLot = TotalClaimRejectedQty + TotalOffQty;

                ////计算Overall CLAIM % **
                //if ((o.PackListQtyByLot ?? 0) == 0 || !o.OverallProposaClaimlByLot.HasValue || !o.OverallClaimQty.HasValue)
                //{
                //    o.OverallClaimPercentByLot = null;
                //}
                //else
                //{
                //    o.OverallClaimPercentByLot = (o.OverallClaimQty.HasValue ? o.OverallClaimQty : o.OverallProposaClaimlByLot) / o.PackListQtyByLot;
                //}

                //计算Overall Claim ** (proposal)
                o.OverallProposaClaimlByLot = (o.Part1FinalClaimByLot ?? 0) + (o.Part2FinalClaimByLot ?? 0) + (o.Part3FinalClaimByLot ?? 0) + (o.Part4ClaimByLot ?? 0);

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

                if (o.Part4ClaimByLot == 0) { o.Part4Nature = "None"; }
                else if (o.Part4ClaimByLot >= o.PackListQtyByLot) { o.Part4Nature = "Return"; }
                else { o.Part3Nature = "Part4Nature"; }

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
                o.AdjustQty = (FinalNatureCal == "Return" || o.LengthDiff > 0) ? 0 : o.LengthDiff; //长码不计入Adjust
                o.AdjustQtyByLot = FinalNatureCal == "Return" ? 0 : iAdjustQtyByLot;
                o.ReplenishQtyByLot = FinalNatureCal == "Replenish" ? FinalClaimQtyByLotCal : 0;
                o.ReturnQtyByLot = FinalNatureCal == "Return" ? FinalClaimQtyByLotCal : 0;



                ////计算Stk-in Process id Adjust(+/-) *
                //o.AdjustQty = o.LengthDiff;

                ////计算Stk-in Process id Adjust(+/-) **
                //o.AdjustQtyByLot = iLengthDiffByLot;

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
                //if (string.IsNullOrEmpty(o.OverallResult))
                //{
                if (o.OverallResult == "B+")
                {
                    o.OverallResult = "B+";  //已经手工修改为B+的，不再自动计算
                }
                else
                {
                    List<string> AuditResultList = new List<string>();
                    AuditResultList.Add(Part1Result);
                    AuditResultList.Add(Part2ResultByLot);
                    AuditResultList.Add(Part3TestingResultByLot);
                    AuditResultList.Add(Part4ResultByLot);

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
                //}

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
            //    AuditResultList.Add(Part4ResultByLot);

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

        //public string ActionLogIsCompleted
        //{
        //    get
        //    {
        //        if (string.IsNullOrEmpty(this.ActionLogNO)) return null;

        //        if (this.CurrentDataContext == null)
        //        {
        //            this.CurrentDataContext = ContextBuilder.CreateContext<FabricInspectionDataContext>();
        //        }

        //        var obj = (this.CurrentDataContext as FabricInspectionDataContext).ActionLogHeaders.FirstOrDefault(p => p.OID == this.ActionLogOID);
        //        if (obj == null) return null;

        //        //return (obj.IsCompleted ?? false) ? "Y" : "N";
        //        return (obj.LastStageIsCompleted ?? false) ? "Y" : "N";

        //    }
        //}

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

    }

    public partial class AccessoryDefect : BaseEntity
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

    public partial class AccessoryCasingDefect : BaseEntity
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


    #region 暂时不用了
    //public partial class AccessoryAuditHeader : BaseEntity
    //{
    //    public override bool Save()
    //    {
    //        TotalBoxQty = this.AccessoryAuditDetails.Where(p => !string.IsNullOrEmpty(p.ItemIDNO) && p.ItemIDNO.EndsWith("00")).Count();
    //        AuditBoxQty = this.AccessoryAuditCasings.Count();
    //        return base.Save();
    //    }


    //    public int TotalSuppRefShow
    //    {
    //        get
    //        {
    //            return this.AccessoryAuditDetails.Select(p => p.SuppRef).Distinct().Count();
    //        }
    //    }

    //    public int TotalItemCodeShow
    //    {
    //        get
    //        {
    //            return this.AccessoryAuditDetails.Select(p => p.ItemCode).Distinct().Count();
    //        }
    //    }

    //    public int TotalColorCodeShow
    //    {
    //        get
    //        {
    //            return this.AccessoryAuditDetails.Select(p => p.ColorCode).Distinct().Count();
    //        }
    //    }

    //    public int TotalProjectShow
    //    {
    //        get
    //        {
    //            return this.AccessoryAuditDetails.Select(p => p.ProjectNO).Distinct().Count();
    //        }
    //    }

    //    //Ttl Claim Rejected Qty** 
    //    public int TotalClaimRejectedQtyShow
    //    {
    //        get
    //        {
    //            return this.AccessoryAuditDetails.Select(p => p.RejectQtyShow ?? 0).Sum() +
    //                this.AccessoryAuditCasings.Select(p => (p.RejectQtyShow ?? 0)).Sum();
    //        }
    //    }

    //    //Ttl Off Qty**
    //    public int TotalOffQtyShow
    //    {
    //        get
    //        {
    //            return this.AccessoryAuditCasings.Select(p => p.OffQtyShow).Sum();
    //        }
    //    }

    //    //Overall CLAIM Qty** , if any
    //    public int OverallClaimQtyShow
    //    {
    //        get
    //        {
    //            return TotalClaimRejectedQtyShow + TotalOffQtyShow;
    //        }
    //    }

    //    public string ActionLogIsCompleted
    //    {
    //        get
    //        {
    //            if (string.IsNullOrEmpty(this.ActionLogNO)) return null;


    //            if (this.CurrentDataContext == null)
    //            {
    //                this.CurrentDataContext = ContextBuilder.CreateContext<FabricInspectionDataContext>();
    //            }

    //            var obj = (this.CurrentDataContext as FabricInspectionDataContext).ActionLogHeaders.FirstOrDefault(p => p.OID == this.ActionLogOID);
    //            if (obj == null) return null;

    //            return (obj.IsCompleted ?? false) ? "Y" : "N";
    //        }
    //    }

    //    string[] ItemNames = new string[]
    //    { 
    //       // Material 部分
    //        "Supp. Item Ref\r\n ",
    //        "ERP Item Cde",
    //        "Clr cde",
    //        "Proj#",
    //        "Item id# (SKU)\r\n ",
    //        "Ind. pack#",
    //        "SKU based on cross cup grp",
    //        "Audit SKU (filter by cross cup grp)",
    //        "Pkg list Qty (grp by cross cup)",
    //        "Audit Smpl Qty (grp by cross cup)",

    //        "Defect Qty* (For ref.)",
    //        "Mat'l Defect cde* (Top 1)",
    //        "Mat'l Defect cde* (Top 2)",
    //        "Mat'l Defect cde* (Top 3)",
    //        "Mat'l Defect cde* (Top 4)",

    //        "Ttl Mat'l Defects*", 
    //        "Mat'l defect RESULT*",
    //        "Rejected Qty to be Claimed*",

    //         "Part II not applicable",  //New Colum
    //          "Clr Shading Grpg from Color Team, if any",


    //        //Casing 部分
    //        "Pull Case#",
    //        "Casing Defect cde* (Top 1)",
    //        "Casing Defect cde* (Top 2)",
    //        "Ttl Casing Defect*",
    //        "Rejected Qty to be Claimed* (Net)",
    //        "Pkg list Qty* (can be mixed SKU)",
    //        "Casing's labels Qty* (can be mixed SKU)",// "Casing unmatch Qty* (can be mixed SKU)",
    //        "Diff Qty*"//"Shortage Qty*",

    //        //"Agreed usable width**",
    //        //"Edge to Edge* (if necessary)",

    //    };

    //    string[] FieldNames = new string[]
    //    { 

    //        //Material 部分
    //        "SuppRef",
    //        "ItemCode",
    //        "ColorCode",

    //        "ProjectNO",
    //        "ItemIDNOShow",
    //        "IndPackNO",
    //        "AduitSKUCrossCup",

    //        "AuditSKU",
    //        "PackListQty",
    //        "AQLAuditQty",

    //        "TotalDefectShow",
    //        "DefectCodeTop1Show", 
    //        "DefectCodeTop2Show",
    //        "DefectCodeTop3Show",
    //        "DefectCodeTop4Show",

    //        "TotalDefectCountShow",
    //        "DefectResultByID",
    //        "RejectQtyShow",

    //        "PartIInotapplicable",
    //         "ColorShade",

    //        // Casing 部分
    //        "AQLAuditBoxNO",
    //        "CasingDefectCodeTop1Show",
    //        "CasingDefectCodeTop2Show",
    //        "TotalCasingDefect",
    //        "CasingRejectQty",
    //        "CasingPackListQty",
    //        "CasingCountQty",
    //        "CasingOffQty"

    //        //"AgreedUsableWidth",
    //        //"EdgeToEdgeWidth",  
    //    };

    //    string[] DetailDefectItemNames = new string[]
    //    { 
    //        "Item id#\r\n(SKU)",
    //        "1",
    //        "2",
    //        "3",
    //        "4",
    //        "5",
    //        "6",
    //        "Ttl"
    //    };

    //    string[] DetailDefectFieldNames = new string[]
    //    { 
    //        "ItemIDNOShow",
    //        "DefectCodeDetailTop1Show",
    //        "DefectCodeDetailTop2Show",
    //        "DefectCodeDetailTop3Show",
    //        "DefectCodeDetailTop4Show",
    //        "DefectCodeDetailTop5Show",
    //        "DefectCodeDetailTop6Show",
    //        "TotalDefectDetailShow"               
    //    };


    //    string[] CasingDefectItemNames = new string[]
    //    { 
    //        "Case#",
    //        "1",
    //        "2",
    //        "3",       
    //        "Ttl"
    //    };

    //    string[] CasingDefectFieldNames = new string[]
    //    { 
    //        "AQLAuditBoxNO",
    //        "DefectCodeTop1Show",
    //        "DefectCodeTop2Show",
    //        "DefectCodeTop3Show",           
    //        "TotalDefectShow"

    //    };

    //    string[] AItemNames = new string[]
    //    { 
    //        // Material 部分
    //        "Supp. Item Ref\r\n ", 
    //        "ERP Item Cde",
    //        "Clr cde",      
    //        "Proj#",
    //        "Item id# (SKU)\r\n ",
    //        "Ind. pack#",

    //           //与“IMQE Result Sheet - Bra Cup (AQL 2.5) 表格相比”没有该栏位"SKU based on cross cup grp",
    //         "Audited SKU",   //"Audit SKU (filter by cross cup grp)",
    //         "Pkg List Qty" ,    //"Pkg list Qty, grp by cross cup",
    //         "Audit Smpl Qty",      //"Audit Smpl Qty, grp by cross cup",

    //        "Defect Qty* (For ref.)",
    //        "Mat'l Defect cde* (Top 1)",
    //        "Mat'l Defect cde* (Top 2)",
    //        "Mat'l Defect cde* (Top 3)",
    //        "Mat'l Defect cde* (Top 4)",

    //        "Ttl Mat'l Defects*", 
    //        "Mat'l defect RESULT*",
    //        "Rejected Qty to be Claimed*",

    //        "Agreed usable width**", 
    //        "Edge to Edge* (if necessary)",
    //        "Clr Shading Grpg from Color Team, if any",

    //        //Casing 部分
    //        "Pull Case#",
    //        "Casing Defect cde* (Top 1)",
    //        "Casing Defect cde* (Top 2)",
    //        "Ttl Casing Defect*",
    //        "Rejected Qty to be Claimed* (Net)",
    //        "Pkg list Qty* (can be mixed SKU)",
    //        "Casing's labels Qty* (can be mixed SKU)",      //"Casing unmatch Qty* (can be mixed SKU)",
    //        "Diff Qty*" //"Shortage Qty*",



    //    };

    //    string[] AFieldNames = new string[]
    //    { 

    //        //Material 部分
    //        "SuppRef",
    //        "ItemCode",
    //        "ColorCode",

    //        "ProjectNO",
    //        "ItemIDNOShow",
    //        "IndPackNO",

    //        //"AduitSKUCrossCup",
    //        "AuditSKU",
    //        "PackListQty",
    //        "AQLAuditQty",

    //        "TotalDefectShow",
    //        "DefectCodeTop1Show", 
    //        "DefectCodeTop2Show",
    //        "DefectCodeTop3Show",
    //        "DefectCodeTop4Show",

    //        "TotalDefectCountShow",
    //        "DefectResultByID",
    //         "RejectQtyShow",

    //        "AgreedUsableWidthRange",
    //        "EdgeToEdgeWidth",          
    //         "ColorShade",

    //        // Casing 部分
    //        "AQLAuditBoxNO",
    //        "CasingDefectCodeTop1Show",
    //        "CasingDefectCodeTop2Show",
    //        "TotalCasingDefect",
    //        "CasingRejectQty",
    //        "CasingPackListQty",
    //        "CasingCountQty",
    //        "CasingOffQty"


    //    };



    //    /// <summary>
    //    /// 得到IMQE Result Sheet - SubReport CasingDefect
    //    /// </summary>
    //    /// <returns></returns>
    //    public List<AccessoryAuditReportCasingDefectTable> GetAccessoryAuditReportCasingDefectTable()
    //    {
    //        int PageCount = (int)Math.Ceiling(this.AccessoryAuditCasings.Where(dr => !string.IsNullOrEmpty(dr.AQLAuditBoxNO)).Count() / 12m); //每页显示个打横的栏位
    //        List<AccessoryAuditReportCasingDefectTable> Lists = new List<AccessoryAuditReportCasingDefectTable>();

    //        int SkipSize = 0;
    //        int TakeSize = 12;
    //        for (int page = 1; page <= PageCount; page++) //总共有PageCount页
    //        {
    //            var OnePageDetailLists = this.AccessoryAuditCasings.Where(dr => !string.IsNullOrEmpty(dr.AQLAuditBoxNO)).OrderBy(p => p.SeqNO).ThenBy(p => p.OID).Skip(SkipSize).Take(TakeSize).ToList();
    //            SkipSize += 12;

    //            foreach (var detail in OnePageDetailLists)
    //            {
    //                detail.CalculateDefectInfo(); //先計算出每個ID的疵點信息，Top 1 ~ Top 5和疵点总数
    //            }

    //            //新增一页
    //            for (int i = 0; i < CasingDefectItemNames.Count(); i++)
    //            {
    //                AccessoryAuditReportCasingDefectTable obj = new AccessoryAuditReportCasingDefectTable();
    //                obj.PageNO = page;
    //                obj.SeqNo = i + 1;
    //                obj.LeftItemName = CasingDefectItemNames[i];
    //                obj.DataItem1 = OnePageDetailLists.Count >= 1 ? OnePageDetailLists[0].GetType().GetProperty(CasingDefectFieldNames[i]).GetValue(OnePageDetailLists[0], null) : null;
    //                obj.DataItem2 = OnePageDetailLists.Count >= 2 ? OnePageDetailLists[1].GetType().GetProperty(CasingDefectFieldNames[i]).GetValue(OnePageDetailLists[1], null) : null;
    //                obj.DataItem3 = OnePageDetailLists.Count >= 3 ? OnePageDetailLists[2].GetType().GetProperty(CasingDefectFieldNames[i]).GetValue(OnePageDetailLists[2], null) : null;
    //                obj.DataItem4 = OnePageDetailLists.Count >= 4 ? OnePageDetailLists[3].GetType().GetProperty(CasingDefectFieldNames[i]).GetValue(OnePageDetailLists[3], null) : null;
    //                obj.DataItem5 = OnePageDetailLists.Count >= 5 ? OnePageDetailLists[4].GetType().GetProperty(CasingDefectFieldNames[i]).GetValue(OnePageDetailLists[4], null) : null;
    //                obj.DataItem6 = OnePageDetailLists.Count >= 6 ? OnePageDetailLists[5].GetType().GetProperty(CasingDefectFieldNames[i]).GetValue(OnePageDetailLists[5], null) : null;
    //                obj.DataItem7 = OnePageDetailLists.Count >= 7 ? OnePageDetailLists[6].GetType().GetProperty(CasingDefectFieldNames[i]).GetValue(OnePageDetailLists[6], null) : null;
    //                obj.DataItem8 = OnePageDetailLists.Count >= 8 ? OnePageDetailLists[7].GetType().GetProperty(CasingDefectFieldNames[i]).GetValue(OnePageDetailLists[7], null) : null;
    //                obj.DataItem9 = OnePageDetailLists.Count >= 9 ? OnePageDetailLists[8].GetType().GetProperty(CasingDefectFieldNames[i]).GetValue(OnePageDetailLists[8], null) : null;
    //                obj.DataItem10 = OnePageDetailLists.Count >= 10 ? OnePageDetailLists[9].GetType().GetProperty(CasingDefectFieldNames[i]).GetValue(OnePageDetailLists[9], null) : null;
    //                obj.DataItem11 = OnePageDetailLists.Count >= 11 ? OnePageDetailLists[10].GetType().GetProperty(CasingDefectFieldNames[i]).GetValue(OnePageDetailLists[10], null) : null;
    //                obj.DataItem12 = OnePageDetailLists.Count >= 12 ? OnePageDetailLists[11].GetType().GetProperty(CasingDefectFieldNames[i]).GetValue(OnePageDetailLists[11], null) : null;
    //                Lists.Add(obj);
    //            }
    //        }
    //        return Lists;
    //    }



    //    /// <summary>
    //    /// 得到IMQE Result Sheet - SubReport MaterialDefect
    //    /// </summary>
    //    /// <returns></returns>
    //    public List<AccessoryAuditReportMaterialDefectTable> GetAccessoryAuditReportMaterialDefectTable()
    //    {


    //        int PageCount = (int)Math.Ceiling(this._AccessoryAuditDetails.Where(dr => !string.IsNullOrEmpty(dr.SuppRef)).Count() / 12m); //每页显示个打横的栏位
    //        List<AccessoryAuditReportMaterialDefectTable> Lists = new List<AccessoryAuditReportMaterialDefectTable>();

    //        int SkipSize = 0;
    //        int TakeSize = 12;
    //        for (int page = 1; page <= PageCount; page++) //总共有PageCount页
    //        {
    //            var OnePageDetailLists = this._AccessoryAuditDetails.Where(dr => !string.IsNullOrEmpty(dr.SuppRef)).OrderBy(p => p.SeqNO).ThenBy(p => p.OID).Skip(SkipSize).Take(TakeSize).ToList();
    //            SkipSize += 12;

    //            foreach (var detail in OnePageDetailLists)
    //            {
    //                detail.CalculateDefectDetailInfo(); //先計算出每個ID的疵點信息，Top 1 ~ Top 5和疵点总数
    //            }

    //            //新增一页
    //            for (int i = 0; i < DetailDefectItemNames.Count(); i++)
    //            {
    //                AccessoryAuditReportMaterialDefectTable obj = new AccessoryAuditReportMaterialDefectTable();
    //                obj.PageNO = page;
    //                obj.SeqNo = i + 1;
    //                obj.LeftItemName = DetailDefectItemNames[i];
    //                obj.DataItem1 = OnePageDetailLists.Count >= 1 ? OnePageDetailLists[0].GetType().GetProperty(DetailDefectFieldNames[i]).GetValue(OnePageDetailLists[0], null) : null;
    //                obj.DataItem2 = OnePageDetailLists.Count >= 2 ? OnePageDetailLists[1].GetType().GetProperty(DetailDefectFieldNames[i]).GetValue(OnePageDetailLists[1], null) : null;
    //                obj.DataItem3 = OnePageDetailLists.Count >= 3 ? OnePageDetailLists[2].GetType().GetProperty(DetailDefectFieldNames[i]).GetValue(OnePageDetailLists[2], null) : null;
    //                obj.DataItem4 = OnePageDetailLists.Count >= 4 ? OnePageDetailLists[3].GetType().GetProperty(DetailDefectFieldNames[i]).GetValue(OnePageDetailLists[3], null) : null;
    //                obj.DataItem5 = OnePageDetailLists.Count >= 5 ? OnePageDetailLists[4].GetType().GetProperty(DetailDefectFieldNames[i]).GetValue(OnePageDetailLists[4], null) : null;
    //                obj.DataItem6 = OnePageDetailLists.Count >= 6 ? OnePageDetailLists[5].GetType().GetProperty(DetailDefectFieldNames[i]).GetValue(OnePageDetailLists[5], null) : null;
    //                obj.DataItem7 = OnePageDetailLists.Count >= 7 ? OnePageDetailLists[6].GetType().GetProperty(DetailDefectFieldNames[i]).GetValue(OnePageDetailLists[6], null) : null;
    //                obj.DataItem8 = OnePageDetailLists.Count >= 8 ? OnePageDetailLists[7].GetType().GetProperty(DetailDefectFieldNames[i]).GetValue(OnePageDetailLists[7], null) : null;
    //                obj.DataItem9 = OnePageDetailLists.Count >= 9 ? OnePageDetailLists[8].GetType().GetProperty(DetailDefectFieldNames[i]).GetValue(OnePageDetailLists[8], null) : null;
    //                obj.DataItem10 = OnePageDetailLists.Count >= 10 ? OnePageDetailLists[9].GetType().GetProperty(DetailDefectFieldNames[i]).GetValue(OnePageDetailLists[9], null) : null;
    //                obj.DataItem11 = OnePageDetailLists.Count >= 11 ? OnePageDetailLists[10].GetType().GetProperty(DetailDefectFieldNames[i]).GetValue(OnePageDetailLists[10], null) : null;
    //                obj.DataItem12 = OnePageDetailLists.Count >= 12 ? OnePageDetailLists[11].GetType().GetProperty(DetailDefectFieldNames[i]).GetValue(OnePageDetailLists[11], null) : null;
    //                Lists.Add(obj);
    //            }
    //        }
    //        return Lists;
    //    }







    //        List<AccessoryAuditReportDetailTable> Lists = new List<AccessoryAuditReportDetailTable>();

    //        int SkipSize = 0;
    //        int TakeSize = 12;
    //        for (int page = 1; page <= PageCount; page++) //总共有PageCount页
    //        {

    //            var OnePageDetailLists = ALLDetailList.OrderBy(p => p.SeqNO).ThenBy(p => p.OID).Skip(SkipSize).Take(TakeSize).ToList();

    //            SkipSize += 12;

    //            //新增一页
    //            for (int i = 0; i < ItemNameType.Count(); i++)
    //            {
    //                AccessoryAuditReportDetailTable obj = new AccessoryAuditReportDetailTable();
    //                obj.PageNO = page;
    //                obj.SeqNo = i + 1;
    //                obj.Flag = i < AType ? 1 : 2;
    //                obj.LeftItemName = ItemNameType[i];
    //                obj.DataItem1 = OnePageDetailLists.Count >= 1 ? OnePageDetailLists[0].GetType().GetProperty(FieldNamesType[i]).GetValue(OnePageDetailLists[0], null) : null;
    //                obj.DataItem2 = OnePageDetailLists.Count >= 2 ? OnePageDetailLists[1].GetType().GetProperty(FieldNamesType[i]).GetValue(OnePageDetailLists[1], null) : null;
    //                obj.DataItem3 = OnePageDetailLists.Count >= 3 ? OnePageDetailLists[2].GetType().GetProperty(FieldNamesType[i]).GetValue(OnePageDetailLists[2], null) : null;
    //                obj.DataItem4 = OnePageDetailLists.Count >= 4 ? OnePageDetailLists[3].GetType().GetProperty(FieldNamesType[i]).GetValue(OnePageDetailLists[3], null) : null;
    //                obj.DataItem5 = OnePageDetailLists.Count >= 5 ? OnePageDetailLists[4].GetType().GetProperty(FieldNamesType[i]).GetValue(OnePageDetailLists[4], null) : null;
    //                obj.DataItem6 = OnePageDetailLists.Count >= 6 ? OnePageDetailLists[5].GetType().GetProperty(FieldNamesType[i]).GetValue(OnePageDetailLists[5], null) : null;
    //                obj.DataItem7 = OnePageDetailLists.Count >= 7 ? OnePageDetailLists[6].GetType().GetProperty(FieldNamesType[i]).GetValue(OnePageDetailLists[6], null) : null;
    //                obj.DataItem8 = OnePageDetailLists.Count >= 8 ? OnePageDetailLists[7].GetType().GetProperty(FieldNamesType[i]).GetValue(OnePageDetailLists[7], null) : null;
    //                obj.DataItem9 = OnePageDetailLists.Count >= 9 ? OnePageDetailLists[8].GetType().GetProperty(FieldNamesType[i]).GetValue(OnePageDetailLists[8], null) : null;
    //                obj.DataItem10 = OnePageDetailLists.Count >= 10 ? OnePageDetailLists[9].GetType().GetProperty(FieldNamesType[i]).GetValue(OnePageDetailLists[9], null) : null;
    //                obj.DataItem11 = OnePageDetailLists.Count >= 11 ? OnePageDetailLists[10].GetType().GetProperty(FieldNamesType[i]).GetValue(OnePageDetailLists[10], null) : null;
    //                obj.DataItem12 = OnePageDetailLists.Count >= 12 ? OnePageDetailLists[11].GetType().GetProperty(FieldNamesType[i]).GetValue(OnePageDetailLists[11], null) : null;

    //                Lists.Add(obj);
    //            }
    //        }
    //        return Lists;
    //    }
    //}

    //public partial class AccessoryAuditDetail : BaseEntity
    //{

    //    public string PartIInotapplicable { get; set; }

    //    //Defect Qty * (For ref.) 有疵点的件数
    //    public int? HasDefectQty
    //    {
    //        get
    //        {
    //            return this.AccessoryAuditDetailDefects.Select(p => p.Qty).Sum();
    //        }
    //    }

    //    //Rejected Qty to be Claimed
    //    public int? RejectQtyShow
    //    {
    //        get
    //        {
    //            if (this.DefectResultByID == "Pass")
    //            {
    //                return this.HasDefectQty;
    //            }
    //            else if (this.DefectResultByID == "Fail")
    //            {
    //                return this.PackListQty;
    //            }

    //            return null;
    //        }
    //    }


    //    //一个ID对应的疵点个数
    //    public int? TotalDefectShow
    //    {
    //        get
    //        {
    //            return this.AccessoryAuditDetailDefects.Select(p => p.Qty).Sum();
    //        }
    //    }


    //    //public void CalculateDefectInfo()
    //    //{
    //    //    //TotalDefectShow = this.AccessoryAuditDetailDefects.Select(p => p.DefectCode).Distinct().Count();

    //    //    var DefectLists = this.AccessoryAuditDetailDefects.GroupBy(p => p.DefectCode)
    //    //                        .Select(g => new
    //    //                           {
    //    //                               DefectCode = g.Key,
    //    //                               SumDefectQty = g.Sum(p => p.Qty)
    //    //                           })
    //    //                         .OrderByDescending(p => p.SumDefectQty).ToList();

    //    //    for (int i = 1; i <= DefectLists.Count(); i++)
    //    //    {
    //    //        if (i == 1) DefectCodeTop1Show = DefectLists[i - 1].DefectCode;
    //    //        else if (i == 2) DefectCodeTop2Show = DefectLists[i - 1].DefectCode;
    //    //        else if (i == 3) DefectCodeTop3Show = DefectLists[i - 1].DefectCode;
    //    //        else if (i == 4) DefectCodeTop4Show = DefectLists[i - 1].DefectCode;
    //    //        else if (i == 5) DefectCodeTop5Show = DefectLists[i - 1].DefectCode;
    //    //    }
    //    //}

    //    ////public int TotalDefectShow { get; set; }
    //    //public string DefectCodeTop1Show { get; set; }
    //    //public string DefectCodeTop2Show { get; set; }
    //    //public string DefectCodeTop3Show { get; set; }
    //    //public string DefectCodeTop4Show { get; set; }
    //    //public string DefectCodeTop5Show { get; set; }


    //    public void CalculateDefectInfo()
    //    {

    //        TotalDefectCountShow = this.AccessoryAuditDetailDefects.Select(p => p.DefectCode).Distinct().Count().ToString();

    //        var DefectLists = this.AccessoryAuditDetailDefects.GroupBy(p => p.DefectCode)
    //                            .Select(g => new
    //                            {
    //                                DefectCode = g.Key,
    //                                SumDefectQty = g.Sum(p => p.Qty)
    //                            })
    //                             .OrderByDescending(p => p.SumDefectQty).ToList();

    //        DefectCodeTop1Show = "Non";
    //        for (int i = 1; i <= DefectLists.Count(); i++)
    //        {
    //            if (i == 1) DefectCodeTop1Show = DefectLists[i - 1].DefectCode;
    //            else if (i == 2) DefectCodeTop2Show = DefectLists[i - 1].DefectCode;
    //            else if (i == 3) DefectCodeTop3Show = DefectLists[i - 1].DefectCode;
    //            else if (i == 4) DefectCodeTop4Show = DefectLists[i - 1].DefectCode;
    //            else if (i == 5) DefectCodeTop5Show = DefectLists[i - 1].DefectCode;
    //        }

    //        if (!string.IsNullOrEmpty(this.ItemIDNO))
    //        {
    //            int Location = this.ItemIDNO.IndexOf('-', 0);
    //            if (Location != -1 && (Location + 1) < ItemIDNO.Length)
    //            {
    //                string FirstStr = ItemIDNO.Substring(0, Location + 1);
    //                string LastStr = ItemIDNO.Substring(Location + 1, ItemIDNO.Length - (Location + 1));
    //                ItemIDNOShow = FirstStr + "\r\n" + LastStr;
    //            }
    //            else
    //            {
    //                ItemIDNOShow = this.ItemIDNO;
    //            }
    //        }


    //    }

    //    public string TotalDefectCountShow { get; set; }
    //    public string DefectCodeTop1Show { get; set; }
    //    public string DefectCodeTop2Show { get; set; }
    //    public string DefectCodeTop3Show { get; set; }
    //    public string DefectCodeTop4Show { get; set; }
    //    public string DefectCodeTop5Show { get; set; }


    //    public void CalculateDefectDetailInfo()
    //    {
    //        var DefectLists = this.AccessoryAuditDetailDefects.GroupBy(p => new { p.DefectCode, p.DefectName })
    //                            .Select(g => new
    //                            {
    //                                DefectCode = g.Key.DefectCode,
    //                                DefectName = g.Key.DefectName,
    //                                SumDefectQty = g.Sum(p => p.Qty)
    //                            })
    //                             .OrderByDescending(p => p.SumDefectQty).ToList();

    //        DefectCodeDetailTop1Show = "Non";
    //        for (int i = 1; i <= DefectLists.Count(); i++)
    //        {
    //            if (i == 1) DefectCodeDetailTop1Show = DefectLists[i - 1].DefectCode + "\r\n" + DefectLists[i - 1].DefectName;
    //            else if (i == 2) DefectCodeDetailTop2Show = DefectLists[i - 1].DefectCode + "\r\n" + DefectLists[i - 1].DefectName;
    //            else if (i == 3) DefectCodeDetailTop3Show = DefectLists[i - 1].DefectCode + "\r\n" + DefectLists[i - 1].DefectName;
    //            else if (i == 4) DefectCodeDetailTop4Show = DefectLists[i - 1].DefectCode + "\r\n" + DefectLists[i - 1].DefectName;
    //            else if (i == 5) DefectCodeDetailTop5Show = DefectLists[i - 1].DefectCode + "\r\n" + DefectLists[i - 1].DefectName;
    //            else if (i == 6) DefectCodeDetailTop6Show = DefectLists[i - 1].DefectCode + "\r\n" + DefectLists[i - 1].DefectName;
    //        }

    //        if (!string.IsNullOrEmpty(this.ItemIDNO))
    //        {
    //            int Location = this.ItemIDNO.IndexOf('-', 0);
    //            if (Location != -1 && (Location + 1) < ItemIDNO.Length)
    //            {
    //                string FirstStr = ItemIDNO.Substring(0, Location + 1);
    //                string LastStr = ItemIDNO.Substring(Location + 1, ItemIDNO.Length - (Location + 1));
    //                ItemIDNOShow = FirstStr + "\r\n" + LastStr;
    //            }
    //            else
    //            {
    //                ItemIDNOShow = this.ItemIDNO;
    //            }
    //        }

    //    }
    //    public string ItemIDNOShow { get; set; }


    //    public int TotalDefectDetailShow
    //    {
    //        get
    //        {
    //            return this.AccessoryAuditDetailDefects.Select(p => p.DefectCode).Distinct().Count();
    //        }
    //    }
    //    public string DefectCodeDetailTop1Show { get; set; }
    //    public string DefectCodeDetailTop2Show { get; set; }
    //    public string DefectCodeDetailTop3Show { get; set; }
    //    public string DefectCodeDetailTop4Show { get; set; }
    //    public string DefectCodeDetailTop5Show { get; set; }
    //    public string DefectCodeDetailTop6Show { get; set; }

    //    public void CalculateCasingInfo()
    //    {
    //        List<AccessoryAuditCasing> CasingList = this.AccessoryAuditHeader.AccessoryAuditCasings.ToList();

    //        if (CasingList.Count == 0 || string.IsNullOrEmpty(this.IndPackNO)) return;
    //        var CasingID = CasingList.Where(dr => dr.AQLAuditBoxNO == this.IndPackNO.Substring(0, dr.AQLAuditBoxNO.Length)).ToList();

    //        if (CasingID.Count() == 0) return;
    //        AccessoryAuditCasing CasingObj = new AccessoryAuditCasing();
    //        foreach (var aa in CasingID)
    //        {
    //            CasingObj = aa;
    //        }

    //        //this.CasingTotalDefectShow = CasingObj.AccessoryAuditCasingDefects.Select(p => p.DefectCode).Distinct().Count();
    //        //this.CasingAQLAuditBoxNO = CasingObj.AQLAuditBoxNO;
    //        //this.CasingPackListQty = CasingObj.PackListQty.ToString();
    //        //this.CasingRejectQty = "";
    //        //this.CasingCountQty = CasingObj.CountQty.ToString();
    //        //this.CasingOffQtyShow = CasingObj.OffQtyShow.ToString();
    //        CasingDefectCodeTop1Show = "Non";
    //        var DefectLists = CasingObj.AccessoryAuditCasingDefects.GroupBy(p => p.DefectCode)
    //                            .Select(g => new
    //                            {
    //                                DefectCode = g.Key,
    //                                SumDefectQty = g.Sum(p => p.DefectQty)
    //                            })
    //                             .OrderByDescending(p => p.SumDefectQty).ToList();

    //        for (int i = 1; i <= DefectLists.Count(); i++)
    //        {
    //            if (i == 1) CasingDefectCodeTop1Show = DefectLists[i - 1].DefectCode;
    //            else if (i == 2) CasingDefectCodeTop1Show = DefectLists[i - 1].DefectCode;
    //        }

    //    }

    //    //public string CasingAQLAuditBoxNO { get; set; }
    //    public string CasingDefectCodeTop1Show { get; set; }
    //    public string CasingDefectCodeTop2Show { get; set; }
    //    //public int? CasingTotalDefectShow { get; set; }
    //    //public string CasingRejectQty { get; set; }
    //    //public string CasingPackListQty { get; set; }
    //    //public string CasingCountQty { get; set; }
    //    //public string CasingOffQtyShow { get; set; }





    //    #region 用于IMQE Processing Control Summary Report - Incoming Mat'l unit by pc中的字段

    //    //public string Whse
    //    //{
    //    //    get { return "RM"; }
    //    //}

    //    public string AduitNO
    //    {
    //        get { return this.AccessoryAuditHeader.AuditNO; }
    //    }

    //    public int? TotalCaseQtyByLot
    //    {
    //        get { return this.AccessoryAuditHeader.TotalBoxQty; }
    //    }

    //    public string SuppCode
    //    {
    //        get { return this.AccessoryAuditHeader.SuppCode; }
    //    }

    //    public string PONO
    //    {
    //        get { return this.AccessoryAuditHeader.PONO; }
    //    }

    //    public string HDONO
    //    {
    //        get { return this.AccessoryAuditHeader.HDONO; }
    //    }

    //    public DateTime? IDCreateDate
    //    {
    //        get { return this.AccessoryAuditHeader.IDCreateDate; }
    //    }

    //    //id Audit dd
    //    public DateTime? AuditDate
    //    {
    //        get { return this.AccessoryAuditHeader.AuditDate; }
    //    }

    //    public int? DueDays
    //    {
    //        get
    //        {
    //            if ((!this.AccessoryAuditHeader.AuditDate.HasValue) || (!this.AccessoryAuditHeader.IDCreateDate.HasValue))
    //                return null;

    //            return ((this.AccessoryAuditHeader.AuditDate ?? DateTime.MinValue) - (this.AccessoryAuditHeader.IDCreateDate ?? DateTime.MinValue)).Days;
    //        }
    //    }

    //    public string AuditStage
    //    {
    //        get { return this.AccessoryAuditHeader.AuditStage; }
    //    }

    //    public int? TotalPackListQty
    //    {
    //        get { return this.AccessoryAuditHeader.PacklistQty; }
    //    }

    //    //Ttl Audit Smpl
    //    public int? AuditBoxQty
    //    {
    //        get { return this.AccessoryAuditHeader.AuditBoxQty; }
    //    }

    //    //Ttl Final stk in qty
    //    public int? TotalStockInQty
    //    {
    //        get { return this.AccessoryAuditHeader.TotalStockInQty; }
    //    }

    //    //Ttl Claim Rejected Qty** 
    //    public int? TotalClaimRejectedQty
    //    {
    //        get { return this.AccessoryAuditHeader.TotalClaimRejectedQtyShow; }
    //    }

    //    //Ttl Off Qty**
    //    public int? TotalOffQty
    //    {
    //        get { return this.AccessoryAuditHeader.TotalOffQtyShow; }
    //    }

    //    //Overall CLAIM Qty**, if any
    //    public int OverallClaimQty
    //    {
    //        get { return this.AccessoryAuditHeader.OverallClaimQtyShow; }
    //    }

    //    public string Auditor
    //    {
    //        get { return this.AccessoryAuditHeader.Auditor; }
    //    }

    //    public int SuppRefTtl
    //    {
    //        get { return this.AccessoryAuditHeader.AccessoryAuditDetails.Select(p => p.SuppRef).Distinct().Count(); }
    //    }

    //    public int ItemCodeTtl
    //    {
    //        get { return this.AccessoryAuditHeader.AccessoryAuditDetails.Select(p => p.ItemCode).Distinct().Count(); }
    //    }

    //    public int ProjectTtl
    //    {
    //        get { return this.AccessoryAuditHeader.AccessoryAuditDetails.Select(p => p.ProjectNO).Distinct().Count(); }
    //    }

    //    public int ColorCodeTtl
    //    {
    //        get { return this.AccessoryAuditHeader.AccessoryAuditDetails.Select(p => p.ColorCode).Distinct().Count(); }
    //    }

    //    public int? TotalBoxQty
    //    {
    //        get { return this.AccessoryAuditHeader.TotalBoxQty; }
    //    }

    //    //Shade Grpg from Clr Team, if any
    //    public int? TotalAuditBoxQty
    //    {
    //        get { return this.AccessoryAuditHeader.AuditBoxQty; }
    //    }

    //    //Audit SKU (filter by grp cross cup) Total
    //    public int TotalAduitSKUCrossCup
    //    {
    //        get { return this.AccessoryAuditHeader.AccessoryAuditDetails.Select(p => p.AduitSKUCrossCup).Distinct().Count(); }
    //    }

    //    //Audit SKU (filter by grp cross cup) Total
    //    public int TotalAduitSKU
    //    {
    //        get { return this.AccessoryAuditHeader.AccessoryAuditDetails.Select(p => p.AuditSKU).Distinct().Count(); }
    //    }

    //    //Casing Audit-------------------------------------------------

    //    //Ttl Case
    //    public int? TotalCase
    //    {
    //        get { return this.AccessoryAuditHeader.TotalBoxQty; }
    //    }

    //    //Pull Case#
    //    public string AQLAuditBoxNO { get; set; }

    //    //Pull Ttl
    //    public int? AQLQty
    //    {
    //        get { return this.AccessoryAuditHeader.AccessoryAuditCasings.Select(p => p.AQLAuditBoxNO).Distinct().Count(); }
    //    }

    //    //Ttl Casing Defect*
    //    public int? TotalCasingDefect
    //    {

    //        get
    //        {
    //            string CasingNO = this.AQLAuditBoxNO;
    //            if (string.IsNullOrEmpty(CasingNO)) return null;

    //            var obj = this.AccessoryAuditHeader.AccessoryAuditCasings.FirstOrDefault(p => p.AQLAuditBoxNO == CasingNO);
    //            if (obj == null) return null;

    //            return obj.TotalCasingDefectShow;
    //        }
    //    }

    //    //Rejected Qty to be Claimed* (Net)
    //    public int? CasingRejectQty
    //    {
    //        get
    //        {
    //            string CasingNO = this.AQLAuditBoxNO;
    //            if (string.IsNullOrEmpty(CasingNO)) return null;

    //            var obj = this.AccessoryAuditHeader.AccessoryAuditCasings.FirstOrDefault(p => p.AQLAuditBoxNO == CasingNO);
    //            if (obj == null) return null;

    //            return obj.RejectQtyShow;
    //        }
    //    }

    //    //Pkg list Qty* (can be mixed SKU)
    //    public int? CasingPackListQty
    //    {
    //        get
    //        {
    //            string CasingNO = this.AQLAuditBoxNO;
    //            if (string.IsNullOrEmpty(CasingNO)) return null;

    //            var obj = this.AccessoryAuditHeader.AccessoryAuditCasings.FirstOrDefault(p => p.AQLAuditBoxNO == CasingNO);
    //            if (obj == null) return null;

    //            return obj.PackListQty;
    //        }
    //    }

    //    //Counted Qty* (can be mixed SKU)
    //    public int? CasingCountQty
    //    {
    //        get
    //        {
    //            string CasingNO = this.AQLAuditBoxNO;
    //            if (string.IsNullOrEmpty(CasingNO)) return null;

    //            var obj = this.AccessoryAuditHeader.AccessoryAuditCasings.FirstOrDefault(p => p.AQLAuditBoxNO == CasingNO);
    //            if (obj == null) return null;

    //            return obj.CountQty;
    //        }
    //    }

    //    //Off Qty*
    //    public int? CasingOffQty
    //    {
    //        get
    //        {
    //            string CasingNO = this.AQLAuditBoxNO;
    //            if (string.IsNullOrEmpty(CasingNO)) return null;

    //            var obj = this.AccessoryAuditHeader.AccessoryAuditCasings.FirstOrDefault(p => p.AQLAuditBoxNO == CasingNO);
    //            if (obj == null) return null;

    //            return obj.OffQtyShow;
    //        }
    //    }

    //    //Action log#
    //    public string ActionLogNO
    //    {
    //        get { return this.AccessoryAuditHeader.ActionLogNO; }
    //    }

    //    //Completed ?
    //    public string ActionLogIsCompleted
    //    {
    //        get
    //        {
    //            return this.AccessoryAuditHeader.ActionLogIsCompleted;
    //        }
    //    }

    //    public decimal? OverallProposaClaimlByLot
    //    {
    //        get { return this.AccessoryAuditHeader.OverallProposaClaimlByLot; }
    //    }

    //    public decimal? OverallClaimPercentByLot
    //    {
    //        get { return this.AccessoryAuditHeader.OverallClaimPercentByLot; }
    //    }

    //    #endregion

    //}

    //public partial class AccessoryAuditCasing : BaseEntity
    //{

    //    public int OffQtyShow
    //    {
    //        get
    //        {
    //            return (this.PackListQty ?? 0) - (this.CountQty ?? 0);
    //        }
    //    }

    //    public int? TotalCasingDefectShow
    //    {
    //        get
    //        {
    //            return this.AccessoryAuditCasingDefects.Select(p => p.DefectQty).Sum();
    //        }
    //    }

    //    public int? RejectQtyShow
    //    {
    //        get
    //        {
    //            if (this.ResultByID == "Pass")
    //            {
    //                return this.AccessoryAuditCasingDefects.Select(p => p.DefectQty).Sum();
    //            }
    //            else if (this.ResultByID == "Fail")
    //            {
    //                return this.PackListQty;
    //            }

    //            return null;
    //        }
    //    }


    //    public void CalculateDefectInfo()
    //    {
    //        TotalDefectShow = this.AccessoryAuditCasingDefects.Select(p => p.DefectCode).Distinct().Count();

    //        var DefectLists = this.AccessoryAuditCasingDefects.GroupBy(p => p.DefectCode)
    //                            .Select(g => new
    //                            {
    //                                DefectCode = g.Key,
    //                                SumDefectQty = g.Sum(p => p.DefectQty)
    //                            })
    //                             .OrderByDescending(p => p.SumDefectQty).ToList();


    //        //if (obj == null) return "";

    //        ////string LangID = SysParamHelper.Instance.LangID;
    //        //string DefectName = null;
    //        //DefectName = obj.DefectEnglishName + "\r\n" + obj.DefectChineseName + "\r\n" + obj.DefectThaiName;
    //        FabricInspectionDataContext db = ContextBuilder.CreateContext<FabricInspectionDataContext>();

    //        for (int i = 1; i <= DefectLists.Count(); i++)
    //        {
    //            if (i == 1)
    //            {
    //                var obj = db.PHQCDefects.Where(p => p.PHDefectCode == DefectLists[i - 1].DefectCode)
    //                .Select(p => new { p.DefectThaiName, p.DefectEnglishName, p.DefectChineseName }).FirstOrDefault();

    //                string ADefectName = "";
    //                if (obj != null)
    //                {
    //                    ADefectName = "\r\n" + obj.DefectEnglishName + "\r\n" + obj.DefectChineseName;
    //                }
    //                DefectCodeTop1Show = DefectLists[i - 1].DefectCode + ADefectName;

    //            }
    //            else if (i == 2)
    //            {
    //                var obj = db.PHQCDefects.Where(p => p.PHDefectCode == DefectLists[i - 1].DefectCode)
    //                .Select(p => new { p.DefectThaiName, p.DefectEnglishName, p.DefectChineseName }).FirstOrDefault();

    //                string ADefectName = "";
    //                if (obj != null)
    //                {
    //                    ADefectName = "\r\n" + obj.DefectEnglishName + "\r\n" + obj.DefectChineseName;
    //                }
    //                DefectCodeTop1Show = DefectLists[i - 1].DefectCode + ADefectName;

    //            }
    //            else if (i == 3)
    //            {
    //                var obj = db.PHQCDefects.Where(p => p.PHDefectCode == DefectLists[i - 1].DefectCode)
    //                .Select(p => new { p.DefectThaiName, p.DefectEnglishName, p.DefectChineseName }).FirstOrDefault();

    //                string ADefectName = "";
    //                if (obj != null)
    //                {
    //                    ADefectName = "\r\n" + obj.DefectEnglishName + "\r\n" + obj.DefectChineseName;
    //                }
    //                DefectCodeTop1Show = DefectLists[i - 1].DefectCode + ADefectName;
    //            }

    //        }
    //    }

    //    public int TotalDefectShow { get; set; }
    //    public string DefectCodeTop1Show { get; set; }
    //    public string DefectCodeTop2Show { get; set; }
    //    public string DefectCodeTop3Show { get; set; }

    //    //public string AgreedUsableWidth
    //    //{
    //    //    get
    //    //    {
    //    //        //return this.AccessoryAuditHeader.AccessoryAuditDetails.Where(dr => dr.SeqNO == this.SeqNO).Select(dr => dr.AgreedUsableWidth.ToString()).FirstOrDefault();
    //    //    }
    //    //}

    //    public string AgreedUsableWidth
    //    {
    //        get
    //        {
    //            //return this.AccessoryAuditHeader.AccessoryAuditDetails.Where(dr => dr.SeqNO == this.SeqNO).Select(dr => dr.AgreedUsableWidth.ToString()).FirstOrDefault();
    //            return this.AccessoryAuditHeader.AccessoryAuditDetails.Where(dr => dr.SeqNO == this.SeqNO).Select(dr => dr.AgreedUsableWidthRange.ToString()).FirstOrDefault();
    //        }
    //    }

    //    public string EdgeToEdgeWidth
    //    {
    //        get
    //        {
    //            return this.AccessoryAuditHeader.AccessoryAuditDetails.Where(dr => dr.SeqNO == this.SeqNO).Select(dr => dr.EdgeToEdgeWidth.ToString()).FirstOrDefault();
    //        }
    //    }

    //}

    //public partial class AccessoryAuditDetailDefect : BaseEntity
    //{
    //    public string DefectName
    //    {
    //        get
    //        {
    //            if (this.CurrentDataContext == null)
    //            {
    //                this.CurrentDataContext = ContextBuilder.CreateContext<FabricInspectionDataContext>();
    //            }

    //            var obj = (this.CurrentDataContext as FabricInspectionDataContext).PHQCDefects.Where(p => p.PHDefectCode == this.DefectCode)
    //                .Select(p => new { p.DefectThaiName, p.DefectEnglishName, p.DefectChineseName }).FirstOrDefault();

    //            if (obj == null) return "";

    //            //string LangID = SysParamHelper.Instance.LangID;
    //            string DefectName = null;
    //            DefectName = obj.DefectEnglishName + "\r\n" + obj.DefectChineseName;
    //            //string DefectName = null;
    //            //if (LangID == "TW" || LangID == "CN")
    //            //    DefectName = obj.DefectChineseName;
    //            //else if (LangID == "TH")
    //            //    DefectName = obj.DefectThaiName;
    //            //else
    //            //    DefectName = obj.DefectEnglishName;

    //            return DefectName;
    //        }
    //    }


    //}

    //public partial class AccessoryAuditCasingDefect : BaseEntity
    //{
    //    public string DefectName
    //    {
    //        get
    //        {
    //            if (this.CurrentDataContext == null)
    //            {
    //                this.CurrentDataContext = ContextBuilder.CreateContext<FabricInspectionDataContext>();
    //            }

    //            var obj = (this.CurrentDataContext as FabricInspectionDataContext).PHQCDefects.Where(p => p.PHDefectCode == this.DefectCode)
    //                .Select(p => new { p.DefectThaiName, p.DefectEnglishName, p.DefectChineseName }).FirstOrDefault();

    //            if (obj == null) return "";

    //            //string LangID = SysParamHelper.Instance.LangID;

    //            string DefectName = null;
    //            DefectName = obj.DefectEnglishName + "\r\n" + obj.DefectChineseName;
    //            ////if (LangID == "TW" || LangID == "CN")
    //            //    DefectName = obj.DefectChineseName;
    //            //else if (LangID == "TH")
    //            //    DefectName = obj.DefectThaiName;
    //            //else
    //            //    DefectName = obj.DefectEnglishName;

    //            return DefectName;
    //        }
    //    }
    //}

    //public class AccessoryAuditReportDetailTable
    //{
    //    public int Flag { get; set; } //用来区分Casing（）与Material（）

    //    //Material
    //    public int PageNO { get; set; }
    //    public int SeqNo { get; set; }
    //    public string LeftItemName { get; set; }
    //    public object DataItem1 { get; set; }
    //    public object DataItem2 { get; set; }
    //    public object DataItem3 { get; set; }
    //    public object DataItem4 { get; set; }
    //    public object DataItem5 { get; set; }
    //    public object DataItem6 { get; set; }
    //    public object DataItem7 { get; set; }
    //    public object DataItem8 { get; set; }
    //    public object DataItem9 { get; set; }
    //    public object DataItem10 { get; set; }
    //    public object DataItem11 { get; set; }
    //    public object DataItem12 { get; set; }


    //}


    //public class AccessoryAuditReportMaterialDefectTable
    //{
    //    public int PageNO { get; set; }
    //    public int SeqNo { get; set; }
    //    public string LeftItemName { get; set; }
    //    public object DataItem1 { get; set; }
    //    public object DataItem2 { get; set; }
    //    public object DataItem3 { get; set; }
    //    public object DataItem4 { get; set; }
    //    public object DataItem5 { get; set; }
    //    public object DataItem6 { get; set; }
    //    public object DataItem7 { get; set; }
    //    public object DataItem8 { get; set; }
    //    public object DataItem9 { get; set; }
    //    public object DataItem10 { get; set; }
    //    public object DataItem11 { get; set; }
    //    public object DataItem12 { get; set; }
    //}

    //public class AccessoryAuditReportCasingDefectTable
    //{
    //    public int PageNO { get; set; }
    //    public int SeqNo { get; set; }
    //    public string LeftItemName { get; set; }
    //    public object DataItem1 { get; set; }
    //    public object DataItem2 { get; set; }
    //    public object DataItem3 { get; set; }
    //    public object DataItem4 { get; set; }
    //    public object DataItem5 { get; set; }
    //    public object DataItem6 { get; set; }
    //    public object DataItem7 { get; set; }
    //    public object DataItem8 { get; set; }
    //    public object DataItem9 { get; set; }
    //    public object DataItem10 { get; set; }
    //    public object DataItem11 { get; set; }
    //    public object DataItem12 { get; set; }
    //}


    //public class AccessoryAuditReportMaterialTable
    //{
    //    public int PageNO { get; set; }
    //    public int SeqNo { get; set; }
    //    public string LeftItemName { get; set; }
    //    public object DataItem1 { get; set; }
    //    public object DataItem2 { get; set; }
    //    public object DataItem3 { get; set; }
    //    public object DataItem4 { get; set; }
    //    public object DataItem5 { get; set; }
    //    public object DataItem6 { get; set; }
    //    public object DataItem7 { get; set; }
    //    public object DataItem8 { get; set; }
    //    public object DataItem9 { get; set; }
    //    public object DataItem10 { get; set; }
    //    public object DataItem11 { get; set; }
    //    public object DataItem12 { get; set; }
    //}
    #endregion





}
