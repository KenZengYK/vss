using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using PH.Platform.BO;
using PH.POPC.BO;
using PH.MIDc.BO;
using PH.MobileQC.BO;

namespace PH.FabricInspection.BO
{

    public partial class ElasticHeader : BaseEntity
    {
        public string OddEvenRowFlag { get; set; }
        public string PageFlag { get; set; }
        public string UnitShow { get { return "m"; } }
        public string PatternShapeUnitShow { get { return "mm"; } }

        //# of report (Pattern Shape)
        public int PatternShapeRepeatQtyShow
        {
            get
            {
                decimal AveragePatternShape = ((PatternShapeMax ?? 0) + (PatternShapeMin ?? 0)) / 2;
                if (AveragePatternShape == 0)
                {
                    return 0;
                }

                return Convert.ToInt32(Math.Floor((this.PackingListLength ?? 0) * 1000 / AveragePatternShape));
            }
        }


        public override void Save(System.Data.Linq.DataContext ADataContext, System.Windows.Forms.BindingSource ABindingSource)
        {
            this.CurrentDataContext = ADataContext;
            this.CurrentBindingSource = ABindingSource;
            FabricInspectionDataContext db = this.CurrentDataContext as FabricInspectionDataContext;

            //decimal iPackingListLength = this.PackingListLength ?? 0;
            //decimal iMeasureLength = this.MeasureLength ?? 0;

            //IEnumerable<ElasticHeader> lists = ABindingSource.DataSource as IEnumerable<ElasticHeader>;
            IEnumerable<ElasticHeader> lists = ABindingSource.List as IEnumerable<ElasticHeader>;

            if (string.IsNullOrEmpty(this.Status))
            {
                this.Status = "WIP";
            }


            ////计算Due Day
            //if (!this.IDCreateDate.HasValue || !this.IDAuditDate.HasValue)
            //{
            //    this.DueDay = 0;
            //}
            //else
            //{
            //    this.DueDay = ((this.IDAuditDate ?? DateTime.MinValue) - (this.IDCreateDate ?? DateTime.MinValue)).Days;
            //}

            //计算Audit Qty (Random 或 Full)
            this.AuditType = "Random";

            //计算Spot defect Ttl Pts*
            SpotDefectPointQty = this.ElasticSpotDefects.Select(p => p.DefectPointQty).Sum();

            //计算Chain Defect Ttl Pts*
            ChainDefectPointQty = Convert.ToInt32(Math.Ceiling(this.ElasticChainDefects.Select(p => (p.Length ?? 0)).Sum()));

            //计算总扣分*
            TotalDefectPointQty = (SpotDefectPointQty ?? 0) + (ChainDefectPointQty ?? 0);

            //计算Part I Result *
            Part1DefectResult = TotalDefectPointQty > AQL25StandardQty ? "B" : "A";


            //计算 C.Defect (Y/N）*
            this.HasChainDefect = this.ElasticChainDefects.Count() > 0 ? "Y" : "N";

            //计算 Chain Defect RESULT*
            this.ChainDefectResult = this.HasChainDefect == "Y" ? "B" : "A";

            //计算 PO qty - for ref. **
            POPCDataContext POPCDB = ContextBuilder.CreateContext<POPCDataContext>();
            this.POQtyByLot = POPCDB.POColorSizeDetails.Where(p => p.PONO == this.PONo && (p.VersionFlag ?? false) &&
                p.ItemCode == this.ItemCode && p.ColorCode == this.ColorCode).Select(p => p.Qty).Sum();


            decimal iWeightPerPiece = (AuditSampleSizeQty ?? 0) == 0 ? 0 : (SampleQuantumWeight ?? 0) / (AuditSampleSizeQty ?? 0); //计算出每一件多少克

            //计算Pro-Weight Qty(pc) *    (按重量推算出数量)
            ProWeightQty = iWeightPerPiece == 0 ? 0 : (PullBoxWeight ?? 0) / iWeightPerPiece;

            //计算推算出来的数量与PackList数量的差异
            LengthDiff = (ProWeightQty ?? 0) == 0 ? null : (ProWeightQty - PackingListLength);

            //计算Actual Weight*
            ActualWeight = (AuditSampleSizeQty ?? 0) == 0 ? 0 : 1000.00m * (SampleQuantumWeight ?? 0) / (AuditSampleSizeQty ?? 0);

            //计算 Pattern Shape Diff (+/-)*
            PatternShapeDifferent = 0;
            if (ActualPatternShape < (PatternShapeMin ?? 0))
            {
                PatternShapeDifferent = ActualPatternShape - (PatternShapeMin ?? 0);
            }
            else if (ActualPatternShape > (PatternShapeMax ?? 0))
            {
                PatternShapeDifferent = ActualPatternShape - (PatternShapeMax ?? 0);
            }

            ////计算Pattern Shape Result
            if (NeedPatternShape == "N")
            {
                PatternShapeResult = "n.a.";
            }
            else
            {
                PatternShapeResult = (PatternShapeDifferent ?? 0) == 0 ? "A" : "B";
            }

            //计算Width Differcent
            WidthDifferent = 0; //在标准值范围内Diff为0
            if (MeasureEdgeToEdgeWidth <= AgreedEdgeToEdgeMinWidthByLot)
            {
                WidthDifferent = (MeasureEdgeToEdgeWidth ?? 0) - (AgreedEdgeToEdgeMinWidthByLot ?? 0);
            }
            else if (MeasureEdgeToEdgeWidth >= AgreedEdgeToEdgeMaxWidthByLot)
            {
                WidthDifferent = (MeasureEdgeToEdgeWidth ?? 0) - (AgreedEdgeToEdgeMaxWidthByLot ?? 0);
            }

            //计算Weight Different
            WeightDifferent = 0;
            if (ActualWeight <= GramWeightPer100CMMin)
            {
                WeightDifferent = ActualWeight - GramWeightPer100CMMin;
            }
            else if (ActualWeight >= GramWeightPer100CMMax)
            {
                WeightDifferent = ActualWeight - GramWeightPer100CMMax;
            }



            var ByLots = lists.Where(p => p.AuditNo == this.AuditNo && p.AuditStage == this.AuditStage);

            int? iDueDay = (!IDCreateDate.HasValue || !IDAuditDate.HasValue) ? 0 :
                           db.fn_CalculateDueDay((IDCreateDate ?? DateTime.MinValue), (IDAuditDate ?? DateTime.MinValue), Whse);
            DateTime? dtFWStartDate = (this.CurrentDataContext as FabricInspectionDataContext).fn_CalculateFWStartDate(ProjectNo);

            //计算Part I - Defect RESULT **
            bool bSpotDefectResultHasB = ByLots.Where(p => p.SpotDefectResult == "B").Count() > 0;
            bool bChainDefectResultHasB = ByLots.Where(p => p.ChainDefectResult == "B").Count() > 0;
            int iAuditBoxQtyByLot = ByLots.Count();
            int iTotalDefectPointQty = ByLots.Select(p => (p.TotalDefectPointQty ?? 0)).Sum();
            decimal iLengthDiffByLot = ByLots.Select(p => p.LengthDiff ?? 0).Sum();
            decimal iAdjustQtyByLot = ByLots.Where(p => (p.LengthDiff ?? 0) < 0).Select(p => (p.LengthDiff ?? 0)).Sum();

            bool bShadeGrpgResultHasB = ByLots.Where(p => p.ShadeGrpgResult == "B").Count() > 0;
            bool bElongationResultHasB = ByLots.Where(p => p.ElongationResult == "B").Count() > 0;
            string sPatternShapeResultByLot = ByLots.Where(p => (p.PatternShapeDifferent ?? 0) != 0).Count() > 0 ? "B" : "A";
            string sWidthResultByLot = ByLots.Where(p => (p.WidthDifferent ?? 0) != 0).Count() > 0 ? "B" : "A";
            string sWeigthDifferent = ByLots.Where(p => (p.WeightDifferent ?? 0) != 0).Count() > 0 ? "B" : "A";
            string sPart4ResultByLot = (sPatternShapeResultByLot == "B" || sWidthResultByLot == "B" || sWeigthDifferent == "B") ? "B" : "A";
            //string sPart4ResultByLot = ByLots.Where(p => p.PatternShapeRangeByLot == "B" || p.WidthResultByLot == "B" || p.WeightResultByLot == "B").Count() > 0 ? "B" : "A";

            //2nd 全检时，计算出所有Spot Defect和 Chain Defect的个数
            int iFullInspectionTotalDefectQty = ByLots.Where(p => p.IsFullInspection ?? false).Sum(p => (p.SpotDefectPointQty ?? 0) + (p.ChainDefectPointQty ?? 0));

            foreach (var o in ByLots)
            {
                o.Status = this.Status;
                o.DueDay = iDueDay;
                o.FWStartDate = dtFWStartDate;

                o.OverallAgreedClaimByLot = this.OverallAgreedClaimByLot; //批量修改Agreed Qty

                o.Part1DefectResultByLot = (bSpotDefectResultHasB || bChainDefectResultHasB) ? "B" : "A";

                //计算PART I Defect Ttl claim **
                o.Part1DefectTotalClaimByLot = o.Part1DefectResultByLot == "B" ? o.PackingListLengthByLot : 0;

                ////计算PART I Final Claim**
                //o.Part1FinalClaimByLot = o.Part1DefectTotalClaimByLot;

                //计算Ttl boxes **
                o.TotalBoxQtyByLot = this.TotalBoxQtyByLot;

                //计算Audit的总盒数
                o.AuditBoxQtyByLot = iAuditBoxQtyByLot;

                //计算Part I Result **
                o.Part1DefectResultByLot = iTotalDefectPointQty > (o.AQL25StandardQtyByLot ?? 0) ? "B" : "A";

                //计算PART I Final Claim**
                if (o.IsFullInspection ?? false)
                {
                    o.Part1FinalClaimByLot = iFullInspectionTotalDefectQty;
                }
                else
                {
                    o.Part1FinalClaimByLot = o.Part1DefectResultByLot == "B" ? PackingListLengthByLot : 0;
                }


                //计算数量的差异百分比
                o.LengthPercentByLot = (o.PackingListLengthByLot ?? 0) == 0 ? 0 : iLengthDiffByLot / (o.PackingListLengthByLot ?? 0);

                //计算Part II Result **
                o.LengthResultByLot = o.LengthPercentByLot < 0 ? "B" : "A";

                //计算Claim Short Qty **
                o.ShortLengthClaim = (Math.Abs(o.LengthPercentByLot ?? 0)) * (o.PackingListLengthByLot ?? 0);

                //计算Part II Result **
                o.Part2MeasureResultByLot = o.LengthResultByLot;

                //计算Part II Claim **
                o.Part2FinalClaimByLot = o.ShortLengthClaim;

                //计算 Part III - Testing RESULT
                o.Part3TestingResultByLot = (bShadeGrpgResultHasB || bElongationResultHasB) ? "B" : "A";

                //计算PART III Final Claim **
                o.Part3FinalClaimByLot = o.Part3TestingResultByLot == "B" ? PackingListLengthByLot : 0;

                //计算Part IV Pattern Shape Result **
                o.PatternShapeResultByLot = sPatternShapeResultByLot;

                //计算Part IV Width Result **     
                o.WidthResultByLot = sWidthResultByLot;

                //计算Part IV Weight Result **
                o.WeightResultByLot = sWeigthDifferent;

                //计算Part IV RESULT **
                o.Part4SpecificDefectResultByLot = sPart4ResultByLot;

                //计算PART IV Final Claim **
                o.Part4FinalClaimByLot = o.Part4SpecificDefectResultByLot == "B" ? PackingListLengthByLot : 0;

                //计算Overall Claim ** (proposal)
                o.OverallProposaClaimlByLot = (o.Part1FinalClaimByLot ?? 0) + (o.Part2FinalClaimByLot ?? 0) + (o.Part3FinalClaimByLot ?? 0) + (o.Part4FinalClaimByLot ?? 0);

                if (o.OverallProposaClaimlByLot > o.PackingListLengthByLot)
                {
                    o.OverallProposaClaimlByLot = o.PackingListLengthByLot;
                }

                //计算Overall CLAIM % **
                if ((o.PackingListLengthByLot ?? 0) == 0)
                {
                    o.OverallClaimPercentByLot = null;
                }
                else
                {
                    o.OverallClaimPercentByLot = (o.OverallAgreedClaimByLot.HasValue ? (o.OverallAgreedClaimByLot ?? 0) : (o.OverallProposaClaimlByLot ?? 0)) / o.PackingListLengthByLot;
                }

                //计算5个Nature
                if (o.Part1FinalClaimByLot == 0) { o.Part1Nature = "None"; }
                else if (o.Part1FinalClaimByLot >= o.PackingListLengthByLot) { o.Part1Nature = "Return"; }
                else { o.Part1Nature = "Replenish"; }

                if (o.Part2FinalClaimByLot == 0) { o.Part2Nature = "None"; }
                else if (o.Part2FinalClaimByLot >= o.PackingListLengthByLot) { o.Part2Nature = "Return"; }
                else { o.Part2Nature = "Replenish"; }

                if (o.Part3FinalClaimByLot == 0) { o.Part3Nature = "None"; }
                else if (o.Part3FinalClaimByLot >= o.PackingListLengthByLot) { o.Part3Nature = "Return"; }
                else { o.Part3Nature = "Replenish"; }

                if (o.Part4FinalClaimByLot == 0) { o.Part4Nature = "None"; }
                else if (o.Part4FinalClaimByLot >= o.PackingListLengthByLot) { o.Part4Nature = "Return"; }
                else { o.Part4Nature = "Replenish"; }

                if (o.OverallProposaClaimlByLot == 0) { o.OverallNature = "None"; }
                else if (o.OverallProposaClaimlByLot >= o.PackingListLengthByLot) { o.OverallNature = "Return"; }
                else { o.OverallNature = "Replenish"; }

                //计算出Final Nature
                string FinalNatureCal = o.OverallNature;
                if (o.OverallAgreedClaimByLot.HasValue)
                {
                    if (o.OverallAgreedClaimByLot == 0) FinalNatureCal = "None";
                    else if (o.OverallAgreedClaimByLot >= o.PackingListLengthByLot) FinalNatureCal = "Return";
                    else if (o.OverallAgreedClaimByLot < o.PackingListLengthByLot) FinalNatureCal = "Replenish";
                }

                decimal? FinalClaimQtyByLotCal = o.OverallAgreedClaimByLot.HasValue ? o.OverallAgreedClaimByLot : o.OverallProposaClaimlByLot;
                o.AdjustQty = (FinalNatureCal == "Return" || o.LengthDiff > 0) ? 0 : o.LengthDiff; //长码不计入Adjust
                o.AdjustQtyByLot = FinalNatureCal == "Return" ? 0 : iAdjustQtyByLot; //iLengthDiffByLot;
                o.ReplenishQtyByLot = FinalNatureCal == "Replenish" ? FinalClaimQtyByLotCal : 0;
                o.ReturnQtyByLot = FinalNatureCal == "Return" ? FinalClaimQtyByLotCal : 0;


                //计算Stk-in Process id Adjust(+/-) *
                //o.AdjustQty = o.LengthDiff;

                //计算Stk-in Process id Adjust(+/-) **
                //o.AdjustQtyByLot = iLengthDiffByLot;

                //计算Stk-in Process id Replenish Requisition (-) **
                //o.ReplenishQtyByLot = o.OverallNature == "Replenish" ? o.OverallProposaClaimlByLot : 0;

                //计算Stk-in Process id Return(-) **
                //o.ReturnQtyByLot = o.OverallNature == "Return" ? o.OverallProposaClaimlByLot : 0;

                ////处理手工输入了Agreed Qty后的两种情况
                //if (o.OverallAgreedClaimByLot.HasValue) //输入了Over Claim Agreed Qty
                //{
                //    if (o.OverallAgreedClaimByLot >= o.PackingListLengthByLot) //Agreed全Claim, Return的情况
                //    {
                //        o.ReturnQtyByLot = o.OverallAgreedClaimByLot;
                //        o.AdjustQty = 0;
                //        o.AdjustQtyByLot = 0;
                //        o.ReplenishQtyByLot = 0;
                //    }
                //    else if (o.OverallAgreedClaimByLot == 0) //Agreed Claim = 0, 同意不Claim
                //    {
                //        o.ReplenishQtyByLot = 0;
                //        o.ReturnQtyByLot = 0;
                //    }
                //}

                //计算Overall RESULT *
                //if (string.IsNullOrEmpty(o.OverallResult)) //已经有值就不再计算了
                //{
                if (o.OverallResult == "B+")
                {
                    o.OverallResult = "B+";  //已经手工修改为B+的，不再自动计算
                }
                else
                {
                    List<string> AuditResultList = new List<string>();
                    //AuditResultList.Add(Part1DefectResultByLot);
                    AuditResultList.Add(Part1DefectResult);
                    AuditResultList.Add(Part2MeasureResultByLot);
                    AuditResultList.Add(Part3TestingResultByLot);
                    AuditResultList.Add(Part4SpecificDefectResultByLot);

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
                    ((o.OverallResult == "B" || o.OverallResult == "B+" || o.OverallResult == "C") && o.OverallProposaClaimlByLot == o.OverallAgreedClaimByLot)
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
            //if (OverallResult == "B+")
            //{
            //    OverallResult = "B+";  //已经手工修改为B+的，不再自动计算
            //}
            //else
            //{
            //    List<string> AuditResultList = new List<string>();
            //    AuditResultList.Add(Part1DefectResult);
            //    AuditResultList.Add(Part2MeasureResultByLot);
            //    AuditResultList.Add(Part3TestingResultByLot);
            //    AuditResultList.Add(Part4SpecificDefectResultByLot);

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


            ////计算 Audit sample size*
            //decimal? SumPackingListQty = ByLots.Select(p => p.PackingListLength).Sum();
            //int? BalanceQty = this.AuditSampleSizeQtyByLot;
            //foreach (var o in ByLots)
            //{
            //    decimal? Qty = (SumPackingListQty ?? 0) == 0 ? 0 : 1.00M * o.PackingListLength / SumPackingListQty * o.AuditSampleSizeQtyByLot;
            //    if (Qty > BalanceQty)
            //    {
            //        Qty = BalanceQty;
            //    }
            //    o.AuditSampleSizeQty = Convert.ToInt32(Math.Round(Qty ?? 0));
            //    BalanceQty -= o.AuditSampleSizeQty;
            //}

            ////计算Spot defect RESULT *
            //if ((this.AuditSampleSizeQtyByLot ?? 0) == 0)
            //{
            //    SpotDefectResult = "";
            //}
            //else
            //{
            //    SpotDefectResult = SpotDefectPointQty > (AuditSampleSizeQty / AuditSampleSizeQtyByLot * AQL25StandardQty) ? "B" : "A";
            //}

            //计算 C.Defect(m) *
            ChainDefectLength = this.ElasticChainDefects.Select(p => p.Length).Sum();
            ChainDefectLengthPercent = (PackingListLength ?? 0) == 0 ? 0 : ChainDefectLength / PackingListLength;

            //从MIDc中取布封 
            MIDcDataContext MIDcDB = ContextBuilder.CreateContext<MIDcDataContext>();
            var MIDcObj = MIDcDB.Details.FirstOrDefault(p => p.SuppRef == SuppItemRef);
            if (MIDcObj != null)
            {
                AgreedEdgeToEdgeMinWidthByLot = MIDcObj.SupplierWidthMin.HasValue ? MIDcObj.SupplierWidthMin : MIDcObj.SupplierWidth;
                AgreedEdgeToEdgeMaxWidthByLot = MIDcObj.SupplierWidthMax.HasValue ? MIDcObj.SupplierWidthMax : MIDcObj.SupplierWidth;

                //计算 Agreed edge to edge width **
                if (AgreedEdgeToEdgeMinWidthByLot == AgreedEdgeToEdgeMaxWidthByLot)
                {
                    AgreedEdgeToEdgeWidthRangeByLot = Math.Round((AgreedEdgeToEdgeMinWidthByLot ?? 0.00M), 2).ToString();
                }
                else
                {
                    AgreedEdgeToEdgeWidthRangeByLot = string.Format("{0}~{1}",
                        Math.Round((AgreedEdgeToEdgeMinWidthByLot ?? 0.00M), 2), Math.Round((AgreedEdgeToEdgeMaxWidthByLot ?? 0.00M), 2));
                }

                //取克重
                GramWeightPer100CMMin = MIDcObj.WeightGmSqmMin.HasValue ? (MIDcObj.WeightGmSqmMin ?? 0.00M) : (MIDcObj.WeightGmSqm ?? 0.00M);
                GramWeightPer100CMMax = MIDcObj.WeightGmSqmMax.HasValue ? (MIDcObj.WeightGmSqmMax ?? 0.00M) : (MIDcObj.WeightGmSqm ?? 0.00M);
                if (!GramWeightPer100CMMin.HasValue && !GramWeightPer100CMMax.HasValue)
                {
                    GramWeightPer100CMRange = null;
                }
                else
                {
                    GramWeightPer100CMRange = string.Format("{0}~{1}", Math.Round((GramWeightPer100CMMin ?? 0.00M), 2), Math.Round((GramWeightPer100CMMax ?? 0.00M), 2));
                }

                //取Pattern shape repeat**
                PatternShapeMax = MIDcObj.PatternShapeRepeatMax;
                PatternShapeMin = MIDcObj.PatternShapeRepeatMin;


                NeedPatternShape = PatternShapeMax.HasValue || PatternShapeMin.HasValue ? "Y" : "N";
            }

            ////计算Width Differcent
            //this.WidthDifferent = 0; //在标准值范围内Diff为0
            //if (MeasureEdgeToEdgeWidth <= AgreedEdgeToEdgeMinWidthByLot)
            //{
            //    this.WidthDifferent = (MeasureEdgeToEdgeWidth ?? 0) - (AgreedEdgeToEdgeMinWidthByLot ?? 0);
            //}
            //else if (MeasureEdgeToEdgeWidth >= AgreedEdgeToEdgeMaxWidthByLot)
            //{
            //    this.WidthDifferent = (MeasureEdgeToEdgeWidth ?? 0) - (AgreedEdgeToEdgeMaxWidthByLot ?? 0);
            //}

            ////计算Width Result **     
            //string sWidthResultByLot = ByLots.Where(p => (p.WidthDifferent ?? 0) != 0).Count() > 0 ? "B" : "A";
            //foreach (var o in ByLots)
            //{
            //    o.WidthResultByLot = sWidthResultByLot;
            //}

            //计算 Pattern shape repeat (range) **
            foreach (var o in ByLots)
            {
                o.PatternShapeRangeByLot = string.Format("{0}~{1}", Math.Round((o.PatternShapeMin ?? 0.00M), 2), Math.Round((o.PatternShapeMax ?? 0.00M), 2));
            }

            //计算Pattern shape
            if (this.NeedPatternShape == "N")
            {
                this.ActualPatternShape = null;
            }

            ////计算 Pattern Shape Diff (+/-)*
            //this.PatternShapeDifferent = 0;
            //if (this.ActualPatternShape < (this.PatternShapeMin ?? 0))
            //{
            //    this.PatternShapeDifferent = this.ActualPatternShape - (this.PatternShapeMin ?? 0);
            //}
            //else if (this.ActualPatternShape > (this.PatternShapeMax ?? 0))
            //{
            //    this.PatternShapeDifferent = this.ActualPatternShape - (this.PatternShapeMax ?? 0);
            //}

            //////计算Pattern Shape Result
            //if (NeedPatternShape == "N")
            //{
            //    this.PatternShapeResult = "n.a.";
            //}
            //else
            //{
            //    this.PatternShapeResult = (this.PatternShapeDifferent ?? 0) == 0 ? "A" : "B";
            //}

            ////计算Pattern Shape Result **
            //string sPatternShapeResultByLot = ByLots.Where(p => (p.PatternShapeDifferent ?? 0) != 0).Count() > 0 ? "B" : "A";
            //foreach (var o in ByLots)
            //{
            //    o.PatternShapeResultByLot = sPatternShapeResultByLot;
            //}

            ////计算Weight Different
            //this.WeightDifferent = 0;
            //if (this.ActualWeight <= this.GramWeightPer100CMMin)
            //{
            //    this.WeightDifferent = this.ActualWeight - this.GramWeightPer100CMMin;
            //}
            //else if (this.ActualWeight >= this.GramWeightPer100CMMax)
            //{
            //    this.WeightDifferent = this.ActualWeight - this.GramWeightPer100CMMax;
            //}

            ////计算Weight Result **
            //string sWidthDifferent = ByLots.Where(p => (p.WidthDifferent ?? 0) != 0).Count() > 0 ? "B" : "A";
            //foreach (var o in ByLots)
            //{
            //    o.WeightResultByLot = sWidthDifferent;
            //}

            ////计算Part II Measure Result **
            //foreach (var o in ByLots)
            //{
            //    o.Part2MeasureResultByLot = o.WidthResultByLot;  //直接取Width Result，与重量无关
            //}

            //foreach (var o in ByLots)
            //{
            //    if (o.WidthResultByLot == "B" || o.PatternShapeResultByLot == "B")
            //    {
            //        o.Part2MeasureResultByLot = o.WidthResultByLot = "B";
            //    }
            //    else
            //    {
            //        o.Part2MeasureResultByLot = o.WidthResultByLot = "A";
            //    }
            //}

            ////计算PART II Final Claim **
            //foreach (var o in ByLots)
            //{
            //    o.Part2FinalClaimByLot = o.Part2MeasureResultByLot == "A" ? 0 : o.PackingListLengthByLot;
            //}

            //bool bWidthResultHasB = ByLots.Where(p => p.WidthResultByLot == "B").Count() > 0;
            //bool bPatternShapeResultByLotHasB = ByLots.Where(p => p.PatternShapeResultByLot == "B").Count() > 0;
            //foreach (var o in ByLots)
            //{
            //    o.Part2FinalClaimByLot = (bWidthResultHasB || bPatternShapeResultByLotHasB) ? o.PackingListLengthByLot : 0;
            //}

            //计算Shade Group
            if (this.NeedShadeGrpg == "N")
            {
                this.ShadeGrpgResult = "n.a.";
            }

            //计算Elongation
            if (this.NeedElongation == "N")
            {
                this.ElongationResult = "n.a.";
            }

            ////计算 Part III - Testing RESULT ** 和 PART III Final Claim **
            //bool bShadeGrpgResultHasB = ByLots.Where(p => p.ShadeGrpgResult == "B").Count() > 0;
            //bool bElongationResultHasB = ByLots.Where(p => p.ElongationResult == "B").Count() > 0;
            //foreach (var o in ByLots)
            //{
            //    //计算 Part III - Testing RESULT
            //    o.Part3TestingResultByLot = (bShadeGrpgResultHasB || bElongationResultHasB) ? "B" : "A";

            //    //计算 PART III Final Claim **
            //    o.Part3FinalClaimByLot = o.Part3TestingResultByLot == "A" ? 0 : o.PackingListLengthByLot;
            //}

            //foreach (var o in ByLots)
            //{
            //    //计算Part IV - Specific Defects RESULT **
            //    o.Part4SpecificDefectResultByLot = o.PatternShapeResultByLot;

            //    //计算PART IV Final Claim **
            //    o.Part4FinalClaimByLot = o.Part4SpecificDefectResultByLot == "A" ? 0 : o.PackingListLengthByLot;
            //}

            ////计算Overall RESULT *
            //if (this.OverallResult == "B+")
            //{
            //    this.OverallResult = "B+";  //已经手工修改为B+的，不再自动计算
            //}
            //else if (this.Part1DefectResultByLot == "A+" && this.Part2MeasureResultByLot == "A" && this.Part3TestingResultByLot == "A")
            //{
            //    this.OverallResult = "A+";
            //}
            //else
            //{
            //    List<string> AuditResultList = new List<string>();
            //    AuditResultList.Add(Part1DefectResultByLot);
            //    AuditResultList.Add(Part2MeasureResultByLot);
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

            ////计算Overall Claim** (proposal)
            //foreach (var o in ByLots)
            //{
            //    o.OverallProposaClaimlByLot = (o.Part1FinalClaimByLot ?? 0) + (o.Part2FinalClaimByLot ?? 0) + (o.Part3FinalClaimByLot ?? 0) + (o.Part4FinalClaimByLot ?? 0);

            //    //o.OverallProposaClaimlByLot = (o.Part1DefectTotalClaimByLot ?? 0) + (o.Part2FinalClaimByLot ?? 0) + (o.Part3FinalClaimByLot ?? 0);
            //}

            ////计算Overall CLAIM % **
            //foreach (var o in ByLots)
            //{
            //    o.OverallClaimPercentByLot = (o.PackingListLengthByLot ?? 0) == 0 ? 0 : (o.OverallAgreedClaimByLot ?? 0) / (o.PackingListLengthByLot ?? 0);
            //}



            base.Save(ADataContext, ABindingSource);
        }

        public string AuditTypeShow { get { return "AQL"; } }
        public string MaterialType { get { return string.IsNullOrEmpty(ItemCode) ? "" : ItemCode.Substring(0, 3); } }

        //public string Cal_ActionLogIsCompleted
        //{
        //    get
        //    {
        //        if (this.ActionLogOID == null) return "";

        //        if (this.CurrentDataContext == null)
        //        {
        //            this.CurrentDataContext = ContextBuilder.CreateContext<FabricInspectionDataContext>();
        //        }

        //        var obj = (CurrentDataContext as FabricInspectionDataContext).ActionLogHeaders.FirstOrDefault(p => p.OID == this.ActionLogOID);

        //        //return (obj.IsCompleted ?? false) ? "Y" : "N";
        //        return (obj.LastStageIsCompleted ?? false) ? "Y" : "N";
        //    }
        //}


        //是否为过期的Event Log
        public bool IsOverDueEventLog
        {
            get
            {
                if (string.IsNullOrEmpty(this.ActionLogSeqNo))
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
                if (string.IsNullOrEmpty(this.ActionLogSeqNo))
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
                if (string.IsNullOrEmpty(this.ActionLogSeqNo))
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
                return ((Part1DefectResultByLot == "B" || Part1DefectResultByLot == "C") &&
                         string.IsNullOrEmpty(ActionLogSeqNo) &&
                         (IDAuditDate ?? DateTime.MinValue).Date <= DateTime.Now.Date.AddDays(-3));
            }
        }

    }

    public partial class ElasticSpotDefect : BaseEntity
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

    public partial class ElasticChainDefect : BaseEntity
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
