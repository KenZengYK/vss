using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using PH.Platform.BO;
using PH.POPC.BO;
using PH.MIDc.BO;

namespace PH.FabricInspection.BO
{
    public partial class BandLaceHeader : BaseEntity
    {
        public string OddEvenRowFlag { get; set; }
        public string PageFlag { get; set; }
        public string Unit { get { return "m"; } }
        public string PatternShapeUnit { get { return "mm"; } }

        public override void Save(System.Data.Linq.DataContext ADataContext, System.Windows.Forms.BindingSource ABindingSource)
        {
            this.CurrentDataContext = ADataContext;
            this.CurrentBindingSource = ABindingSource;
            FabricInspectionDataContext db = this.CurrentDataContext as FabricInspectionDataContext;

            decimal iPackingListLength = this.PackingListLength ?? 0;
            decimal iMeasureLength = this.MeasureLength ?? 0;

            IEnumerable<BandLaceHeader> lists = ABindingSource.List as IEnumerable<BandLaceHeader>;

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

            //计算Audit Qty (AQL Qty 或 Full Qty)
            if ((this.RollQtyByLot ?? 0) == 0)
            {
                this.AuditType = "";
            }
            else
            {
                int InputRollQtyByLot = lists.Where(p => p.AuditNo == this.AuditNo).Count(); //当前这一Lot有多少卷
                if (this.RollQtyByLot > InputRollQtyByLot)
                {
                    this.AuditType = "Random";
                }
                else
                {
                    this.AuditType = "Full";
                }
            }

            //by Lot 计算 Defect Nature   
            //this.StepFlag = this.NeedEvadeMarker == "Y" ? "E. loss" : "Std";
            //this.StepFlag = this.NeedEvadeMarker == "Y" ? "2 steps" : "1st step";

            //计算Defect扣分
            SpotDefectPointQty = BandLaceSpotDefects.Select(p => (p.DefectPointQty ?? 0)).Sum();
            ChainDefectPointQty = Convert.ToInt32(Math.Ceiling(BandLaceChainDefects.Select(p => (p.Length ?? 0)).Sum())) * 4;
            TotalDefectPointQty = SpotDefectPointQty + ChainDefectPointQty;

            //根據2021-10-22 David郵件中Shelley所提要求更新（Defect  Ttl Pts *  =  Defect  Ttl Pts SD *1 +  Defect  Ttl Pts CD *4）
            //TotalDefectPointQty = SpotDefectPointQty + ChainDefectPointQty ;

            //Defect claim** (Spot + Chain Defect)  
            DefectLossQty = TotalDefectPointQty * DeductLengthEachSpot;


            ////计算Spot defect Ttl Pts* (后面王生将layout中的标题改为： Defect Ttl Pts*,所以需要加上Chain Defect的分数 2021-04-21)
            //this.SpotDefectPointQty = this.BandLaceSpotDefects.Select(p => (p.DefectPointQty ?? 0)).Sum() +
            //                          Convert.ToInt32(Math.Ceiling(this.BandLaceChainDefects.Select(p => (p.Length ?? 0)).Sum()));

            //计算每50米的Spot Defect点数  Defect Point/50m
            this.PointQtyPer50M = iMeasureLength == 0 ? 0 : (this.TotalDefectPointQty ?? 0) / iMeasureLength * 50;
            //this.PointQtyPer50M = iMeasureLength == 0 ? 0 : (this.SpotDefectPointQty ?? 0) / iMeasureLength * 50;

            // 应2021-10-22 David邮件中Shelley的公式要求更改 Add by shulin 2021-10-22
            //this.PointQtyPer50M = iMeasureLength == 0 ? 0 : ((this.SpotDefectPointQty ?? 0) + (this.ChainDefectPointQty ?? 0)) / iMeasureLength * 50;



            //计算Length Diff*
            this.LengthDifferent = iMeasureLength == 0 ? 0 : iMeasureLength - iPackingListLength;

            //计算Basic rule - Spot defect Loss Qty
            this.SpotDefectLossQty = (this.SpotDefectPointQty ?? 0) * (this.DeductLengthEachSpot ?? 0);
            if ((this.SpotDefectLossQty ?? 0) > iMeasureLength)
            {
                this.SpotDefectLossQty = this.MeasureLength;
            }

            //计算Spot defect Std Loss% *
            this.SpotDefectLossPercent = iMeasureLength == 0 ? 0 : (this.SpotDefectLossQty ?? 0) / iMeasureLength;

            //计算 C.Defect(m) *
            //ChainDefectLength = this.BandLaceChainDefects.Select(p => p.Length).Sum();

            // add by shulin 2021-11-11 根据 “IMQE - Allover material & Band Lace 没地方备注Cut out 的原因”邮件修改
            ChainDefectLength = this.BandLaceChainDefects.Where(dr => !(dr.IsCutOut ?? false)).Select(p => p.Length).Sum();

            ChainDefectPercent = (PackingListLength ?? 0) == 0 ? 0 : ChainDefectLength / PackingListLength;

            //if ((this.ChainDefectLength ?? 0) > iMeasureLength)
            //{
            //    this.ChainDefectLength = iMeasureLength;
            //}

            //this.ChainDefectPercent = iMeasureLength == 0 ? 0 : this.ChainDefectLength / iMeasureLength;

            //计算Part I - Defect RESULT (1st step) *
            //if ((this.ChainDefectLength ?? 0) > 0) //有Chain Defect为: B
            //{
            //    this.Part1DefectResult = "B";
            //}
            //else //否则按50米的分数来判断等级
            //{
            decimal iPointQtyPer50M = this.PointQtyPer50M ?? 0;
            if (iPointQtyPer50M >= 0 && iPointQtyPer50M <= 1.5m)
            {
                this.Part1DefectResult = "A+";
            }
            else if (iPointQtyPer50M >= 1.6m && iPointQtyPer50M <= 7)
            {
                this.Part1DefectResult = "A";
            }
            else if (iPointQtyPer50M >= 8 && iPointQtyPer50M <= 13)
            {
                this.Part1DefectResult = "B";
            }
            else if (iPointQtyPer50M >= 14)
            {
                this.Part1DefectResult = "C";
            }
            //};

            if (this.NeedShadeGrpg == "N")
            {
                this.ShadeGrpgResult = "n.a.";
            }


            var ByLots = lists.Where(p => p.AuditNo == AuditNo && p.AuditStage == AuditStage);

            int? iDueDay = (!IDCreateDate.HasValue || !IDAuditDate.HasValue) ? 0 :
             db.fn_CalculateDueDay((IDCreateDate ?? DateTime.MinValue), (IDAuditDate ?? DateTime.MinValue), Whse);
            DateTime? dtFWStartDate = (this.CurrentDataContext as FabricInspectionDataContext).fn_CalculateFWStartDate(ProjectNo);

            ////计算 Part I - Defect RESULT (1st step)**    总分数 / Smpl Quantum ** 
            //Part1DefectResultByLot = 0;

            //计算 Part I - Defect RESULT (1st step)**    取Part I - Defect RESULT (1st step) * 中最低的等级
            //string MinPart1DefectResult = "";

            //if (ByLots.FirstOrDefault(p => p.Part1DefectResult == "C") != null)
            //{
            //    MinPart1DefectResult = "C";
            //}
            //else if (ByLots.FirstOrDefault(p => p.Part1DefectResult == "B") != null)
            //{
            //    MinPart1DefectResult = "B";
            //}
            //else if (ByLots.FirstOrDefault(p => p.Part1DefectResult == "A") != null)
            //{
            //    MinPart1DefectResult = "A";
            //}
            //else if (ByLots.FirstOrDefault(p => p.Part1DefectResult == "A+") != null)
            //{
            //    MinPart1DefectResult = "A+";
            //}

            /***************************************************************/
            //應2021-10-22 8:50 David的郵件中，Shelley的需求，更改公式，舊公式見上面 Addby shulin 2021-10-23
            //decimal DefectRESULTGradeBylot = (this.AuditSampleSizeQtyByLot ?? 0) == 0 ? Convert.ToDecimal(0) : Convert.ToDecimal(ByLots.Select(dr => (dr.TotalDefectPointQty ?? 0)).Sum()) / (this.AuditSampleSizeQtyByLot ?? 0);


            ////计算Part I - Defect RESULT (1st step) *
            //if ((this.ChainDefectLength ?? 0) > 0) //有Chain Defect为: B
            //{
            //    MinPart1DefectResult = "B";
            //}
            //else //否则按50米的分数来判断等级
            //{
            //    decimal iPointQtyPer50M = DefectRESULTGradeBylot;
            //    if (iPointQtyPer50M >= 0 && iPointQtyPer50M <= 1.5m)
            //    {
            //        MinPart1DefectResult = "A+";
            //    }
            //    else if (iPointQtyPer50M >= 1.6m && iPointQtyPer50M <= 7)
            //    {
            //        MinPart1DefectResult = "A";
            //    }
            //    else if (iPointQtyPer50M >= 8 && iPointQtyPer50M <= 13)
            //    {
            //        MinPart1DefectResult = "B";
            //    }
            //    else if (iPointQtyPer50M >= 14)
            //    {
            //        MinPart1DefectResult = "C";
            //    }
            //};

            /***************************************************************/

            /*******add  by shulin 2021-11-11*******/
            CutoutDefectDistance = this.BandLaceChainDefects.Where(dr => (dr.IsCutOut ?? false)).Select(dr => dr.Length).Sum();
            /*---------------------------------------*/

            NeedCutoutDefect = (CutoutDefectDistance ?? 0) > 0 ? "Y" : "N";
            CutOutLengthPercent = ((PackingListLength ?? 0) == 0 || (CutoutDefectDistance ?? 0) == 0) ? 0 : (CutoutDefectDistance / PackingListLength);
            CutoutClaim = CutoutDefectDistance;  //(CutoutDefectDistance ?? 0) * (CutOutLengthPercent ?? 0);

            //计算Evade marker loss applicable
            //this.NeedEvadeMarker = this.BandLaceChainDefects.Count() > 0 ? "Y" : "N";
            this.NeedEvadeMarker = this.BandLaceChainDefects.Where(dr => !(dr.IsCutOut ?? false)).Count() > 0 ? "Y" : "N";

            //计算Evade marker loss Claim *
            this.EvadeMarkerLossClaim = (this.EvadeMarkerLossPercent ?? 0) * iPackingListLength;


            //计算Vertical C.Defect Qty *
            AuditVerticalChainDefectQty = (Part1DefectResult == "C" && (EvadeMarkerLossPercent ?? 0) > 0) ? PackingListLength : 0;

            //计算Horizontal C.Defect Qty *
            AuditHorizontalChainDefectQty = (CutoutDefectDistance ?? 0) > 0 ? PackingListLength : 0;

            int iAuditRollQtyByLot = ByLots.Count();
            decimal? iAuditSampleSizeQtyByLot = ByLots.Select(p => p.PackingListLength).Sum();
            decimal? iDefectLossQtyByLot = ByLots.Select(p => p.DefectLossQty).Sum();
            decimal? iPassQtyByLot = ByLots.Where(p => p.Part1DefectResult == "A+" || p.Part1DefectResult == "A").Select(p => p.PackingListLength ?? 0).Sum();
            decimal? iAuditVerticalChainDefectQtyByLot = ByLots.Select(p => (p.AuditVerticalChainDefectQty ?? 0)).Sum();
            decimal? iAuditHorizontalChainDefectQtyByLot = ByLots.Select(p => (p.AuditHorizontalChainDefectQty ?? 0)).Sum();

            int iTotalDefectPointQtyByLot = ByLots.Select(p => p.TotalDefectPointQty ?? 0).Sum();

            //计算Part I Defect Result Grade **   (计算Defect Ttl Pts / Smpl Quantum ** * 50, 然后按分数取得Grade)
            decimal? iPointQtyByLotPer50M = (iAuditSampleSizeQtyByLot ?? 0) == 0 ? 0 : iTotalDefectPointQtyByLot / iAuditSampleSizeQtyByLot * 50.00m;
            string sPart1DefectResultByLot = "";

            if (iPointQtyByLotPer50M >= 0 && iPointQtyByLotPer50M < 1.6m)
            {
                sPart1DefectResultByLot = "A+";
            }
            else if (iPointQtyByLotPer50M >= 1.6m && iPointQtyByLotPer50M < 8)
            {
                sPart1DefectResultByLot = "A";
            }
            else if (iPointQtyByLotPer50M >= 8 && iPointQtyByLotPer50M < 14)
            {
                sPart1DefectResultByLot = "B";
            }
            else if (iPointQtyByLotPer50M >= 14)
            {
                sPart1DefectResultByLot = "C";
            }

            int? iSpotDefectPointQtyByLot = ByLots.Select(p => (p.SpotDefectPointQty ?? 0)).Sum();
            foreach (var o in ByLots)
            {
                o.Status = this.Status;
                o.DueDay = iDueDay;
                o.FWStartDate = dtFWStartDate;

                o.RollQtyByLot = this.RollQtyByLot; //总卷数修改一行时，整Lot修改

                //计算Audit的总卷数
                o.AuditRollQtyByLot = iAuditRollQtyByLot;

                o.OverallAgreedClaimByLot = this.OverallAgreedClaimByLot; //批量修改Agreed Qty

                //计算Basic rule - Defect Loss Qty **
                o.DefectLossQtyByLot = iDefectLossQtyByLot;

                //计算Basic rule - Spot Defect Loss Qty **
                o.SpotDefectLossQty = iSpotDefectPointQtyByLot * o.DeductLengthEachSpot;

                //计算Audit Smpl's qty**
                o.AuditSampleSizeQtyByLot = iAuditSampleSizeQtyByLot;

                //计算 Part I - Defect RESULT (1st step)**
                o.Part1DefectResultByLot = sPart1DefectResultByLot;
                //o.Part1DefectResultByLot = MinPart1DefectResult;




                //计算Spot Defect Loss % **
                o.SpotDefectLossPercent = (o.AuditSampleSizeQtyByLot ?? 0) == 0 ? 0 : o.SpotDefectLossQty / o.AuditSampleSizeQtyByLot;

                //计算Spot Defect Claim ** 
                o.SpotDefectClaimByLot = o.SpotDefectLossPercent * o.PackingListLengthByLot;

                //计算PassQty
                o.PassQty = 0;
                if (o.Part1DefectResult == "A+" || o.Part1DefectResult == "A")
                {
                    o.PassQty = o.PackingListLength;
                }

                //计算Pass Qty By Lot
                o.PassQtyByLot = iPassQtyByLot;

                //计算Spot Defect Qty **
                o.AuditSpotDefectQtyByLot = o.AuditSampleSizeQtyByLot - iPassQtyByLot - iAuditVerticalChainDefectQtyByLot - iAuditHorizontalChainDefectQtyByLot;

            }

            //计算PART I Defect Claim (1st step) **
            decimal? iSpotDefectLossQtyByLot = ByLots.Select(p => p.SpotDefectLossQty).Sum();       //计算出Spot defect Loss Qty ** 
            decimal? iChainDefectLengthByLot = ByLots.Select(p => p.ChainDefectLength).Sum();       //计算出C.Defect (m) **
            decimal? iEvadeMarkerLossClaimByLot = ByLots.Select(p => p.EvadeMarkerLossClaim).Sum(); //计算出Evade marker loss Claim **
            decimal? iCutoutClaimByLot = ByLots.Select(p => p.CutoutClaim).Sum();                   //计算出Cutout claim **

            foreach (var o in ByLots)
            {
                o.SpotDefectLossQtyByLot1 = iSpotDefectLossQtyByLot;     //计算出Spot defect Loss Qty ** 
                o.ChainDefectLengthByLot1 = iChainDefectLengthByLot;      //计算出C.Defect (m) **
                o.EvadeMarkerLossClaimByLot1 = iEvadeMarkerLossClaimByLot; //计算出Evade marker loss Claim **
                o.CutoutClaimByLot1 = iCutoutClaimByLot;                   //计算出Cutout claim **

                o.Part1DefectClaimPercentByLot = (o.AuditSampleSizeQtyByLot ?? 0) == 0 ? 0 : o.DefectLossQtyByLot / o.AuditSampleSizeQtyByLot;
                //o.Part1DefectClaimPercentByLot = (o.PackingListLengthByLot ?? 0) == 0 ? 0 : (o.Part1DefectClaimByLot / o.PackingListLengthByLot);


                if (Part1DefectResultByLot == "A+" || Part1DefectResultByLot == "A")
                {
                    o.Part1DefectClaimByLot = 0;
                }
                else if (Part1DefectResultByLot == "B")
                {
                    o.Part1DefectClaimByLot = o.Part1DefectClaimPercentByLot * o.PackingListLengthByLot;  // /100;
                }
                else if (Part1DefectResultByLot == "C")
                {
                    o.Part1DefectClaimByLot = o.PackingListLengthByLot - o.PassQtyByLot;
                }

                //计算VCD Claim **
                o.VerticalChainDefectClaimByLot = (iAuditVerticalChainDefectQtyByLot ?? 0) == 0 ? 0 :
                    iEvadeMarkerLossClaimByLot / iAuditVerticalChainDefectQtyByLot * (PackingListLengthByLot - AuditSampleSizeQtyByLot + iAuditVerticalChainDefectQtyByLot);

                //计算HCD Loss % **
                o.HorizontalChainDefectLossPerentByLot = (o.AuditSampleSizeQtyByLot ?? 0) == 0 ? 0 : iCutoutClaimByLot / o.AuditSampleSizeQtyByLot;

                //计算HCD Claim **
                o.HorizontalChainDefectClaimByLot = (o.AuditSampleSizeQtyByLot ?? 0) == 0 ? 0 :
                    (iCutoutClaimByLot ?? 0) / o.AuditSampleSizeQtyByLot * (PackingListLengthByLot ?? 0);


                //HorizontalChainDefectClaimByLot = 
                //  case when isnull(TotalActualLengthByLot, 0) = 0 then 0 
                //       else isnull(CutOutClaimQtyByLotCal, 0) / TotalActualLengthByLot * isnull(TotalLengthByLot, 0) 
                //  end,  

            }



            decimal? iEvadeMarkerLossClaim = ByLots.Select(p => p.EvadeMarkerLossClaim).Sum();
            foreach (var o in ByLots)
            {
                //计算PART I Ttl claim (last step) **
                o.Part1DefectTotalClaimByLot = (o.Part1DefectClaimByLot ?? 0) + (o.VerticalChainDefectClaimByLot ?? 0) + (o.HorizontalChainDefectClaimByLot ?? 0);
                //o.Part1DefectTotalClaimByLot = (o.AuditSampleSizeQtyByLot ?? 0) == 0 ? 0 : (iEvadeMarkerLossClaim / o.AuditSampleSizeQtyByLot * o.PackingListLengthByLot);

                //计算 PART I Final Claim **
                o.Part1FinalClaimByLot = (o.Part1DefectClaimByLot ?? 0) + (o.Part1DefectTotalClaimByLot ?? 0);
            }

            //this.Part1DefectTotalClaimByLot = (AuditSampleSizeQtyByLot ?? 0) == 0 ? 0 :
            //                                  (SpotDefectLossQtyByLot1 + EvadeMarkerLossClaimByLot1 + CutoutClaimByLot1) / AuditSampleSizeQtyByLot * PackingListLengthByLot;

            //计算Length Result**
            decimal? SumLengthDifferent = ByLots.Select(p => p.LengthDifferent).Sum();
            foreach (var o in ByLots)
            {
                o.LengthResultByLot = SumLengthDifferent >= 0 ? "A" : "B";
            }

            //计算Final stk-in qty * (Revised ID Qty **)
            this.FinalStockInLength = iMeasureLength == 0 ? 0 : iMeasureLength - (this.CutLengthForTesting ?? 0);

            //计算 PO qty - for ref. **
            POPCDataContext POPCDB = ContextBuilder.CreateContext<POPCDataContext>();
            this.POQtyByLot = POPCDB.POColorSizeDetails.Where(p => p.PONO == this.PONo && (p.VersionFlag ?? false) &&
                p.ItemCode == this.ItemCode && p.ColorCode == this.ColorCode).Select(p => p.Qty).Sum();

            decimal? iAdjustQtyByLot = ByLots.Where(p => p.LengthDifferent < 0).Select(p => p.LengthDifferent).Sum();
            decimal? iLengthDifferentByLot = ByLots.Select(p => p.LengthDifferent).Sum();
            decimal? iFinalStockInLengthByLot = ByLots.Select(p => (p.FinalStockInLength ?? 0)).Sum();
            foreach (var o in ByLots)
            {
                //计算Audited qty diff in% based on pkg list **
                o.AuditLengthDifferentByLot = (o.AuditSampleSizeQtyByLot ?? 0) == 0 ? 0 : iLengthDifferentByLot / o.AuditSampleSizeQtyByLot;

                //计算Revised ID Qty **
                o.FinalStockInLengthByLot = iFinalStockInLengthByLot;
            }

            //计算CLAIM S.L. Qty **        ll=(accu lc / lh)*lk (只計算短碼值）
            foreach (var o in ByLots)
            {
                if (o.LengthResultByLot == "A")  //2021-07-07 Kenny提出, Result ** = A, 不Claimn
                {
                    o.ShortLengthClaimQtyByLot = 0;
                }
                else
                {
                    o.ShortLengthClaimQtyByLot = (o.AuditSampleSizeQtyByLot ?? 0) == 0 ? 0 : iLengthDifferentByLot / o.AuditSampleSizeQtyByLot * o.PackingListLengthByLot;
                    o.ShortLengthClaimQtyByLot = Math.Abs(o.ShortLengthClaimQtyByLot ?? 0);

                    if (o.ShortLengthClaimQtyByLot > o.PackingListLengthByLot)
                    {
                        o.ShortLengthClaimQtyByLot = PackingListLengthByLot;
                    }
                }
            }

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
                GramWeightPerSQMMin = MIDcObj.WeightGmSqmMin.HasValue ? (MIDcObj.WeightGmSqmMin ?? 0) : (MIDcObj.WeightGmSqm ?? 0);
                GramWeightPerSQMMax = MIDcObj.WeightGmSqmMax.HasValue ? (MIDcObj.WeightGmSqmMax ?? 0) : (MIDcObj.WeightGmSqm ?? 0);
                if (!GramWeightPerSQMMin.HasValue && !GramWeightPerSQMMax.HasValue)
                {
                    GramWeightPerSQMRange = null;
                }
                else
                {
                    GramWeightPerSQMRange = string.Format("{0}~{1}", Math.Round((GramWeightPerSQMMin ?? 0.00M), 2), Math.Round((GramWeightPerSQMMax ?? 0.00M), 2));
                }

                //取Pattern shape repeat**
                this.PatternShapeMax = MIDcObj.PatternShapeRepeatMax;
                this.PatternShapeMin = MIDcObj.PatternShapeRepeatMin;
            }

            //计算Width Differcent
            this.WidthDifferent = 0; //在标准值范围内Diff为0
            if (MeasureEdgeToEdgeWidth <= AgreedEdgeToEdgeMinWidthByLot)
            {
                this.WidthDifferent = (MeasureEdgeToEdgeWidth ?? 0) - (AgreedEdgeToEdgeMinWidthByLot ?? 0);
            }
            else if (MeasureEdgeToEdgeWidth >= AgreedEdgeToEdgeMaxWidthByLot)
            {
                this.WidthDifferent = (MeasureEdgeToEdgeWidth ?? 0) - (AgreedEdgeToEdgeMaxWidthByLot ?? 0);
            }

            //计算Narrow-est width **
            decimal? iNarrowestWidthByLot = ByLots.Select(p => p.MeasureWidth).Min();
            foreach (var o in ByLots)
            {
                o.NarrowestWidthByLot = iNarrowestWidthByLot;      //计算Narrow-est width **
                o.NarrowestWidthByBatch = ByLots.Where(p => p.BatchNo == o.BatchNo).Select(p => p.MeasureWidth).Min(); //计算Narrow-est width +
            }

            //计算Width Result **     
            string sWidthResultByLot = ByLots.FirstOrDefault(p => (p.WidthDifferent ?? 0) != 0) != null ? "B" : "A";
            foreach (var o in ByLots)
            {
                o.WidthResult = (o.WidthDifferent ?? 0) == 0 ? "A" : "B";  //计算Width Result *
                o.WidthResultByLot = sWidthResultByLot; //计算Width Result **
                o.WidthResultByBatch = ByLots.FirstOrDefault(p => p.BatchNo == o.BatchNo && (p.WidthDifferent ?? 0) != 0) != null ? "B" : "A";
            }

            //计算CLAIM N.W. Qty **
            foreach (var o in ByLots)
            {
                o.NarrowWidthClaim = o.NarrowWidthMarkeLossPercent * o.PackingListLengthByLot;
                o.NarrowWidthClaimByLot = o.NarrowWidthMarkeLossPercent * o.PackingListLengthByLot;
                o.NarrowWidthClaimByBatch = o.NarrowWidthMarkeLossPercentByBatch * o.PackingListLengthByBatch;
            }

            //计算Weight Different
            this.WeightDifferent = 0; //在标准值范围内Diff为0
            if (this.ActualWeight <= this.GramWeightPerSQMMin)
            {
                this.WeightDifferent = this.ActualWeight - this.GramWeightPerSQMMin;
            }
            else if (this.ActualWeight >= this.GramWeightPerSQMMax)
            {
                this.WeightDifferent = this.ActualWeight - this.GramWeightPerSQMMax;
            }

            //计算Weight Result **
            string sWeightDifferent = ByLots.Where(p => (p.WeightDifferent ?? 0) != 0).Count() > 0 ? "B" : "A";
            foreach (var o in ByLots)
            {
                o.WeightResultByLot = sWeightDifferent;
            }

            //计算 Pattern Shape(range) **
            foreach (var o in ByLots)
            {
                o.PatternShapeRangeByLot = string.Format("{0}~{1}", Math.Round((o.PatternShapeMin ?? 0.00m), 2), Math.Round((o.PatternShapeMax ?? 00.00m), 2));
            }

            //计算 Pattern Shape Diff (+/-)*
            this.PatternShapeDifferent = 0;
            if (this.ActualPatternShape <= this.PatternShapeMin)
            {
                this.PatternShapeDifferent = this.ActualPatternShape - this.PatternShapeMin;
            }
            else if (this.ActualPatternShape >= this.PatternShapeMax)
            {
                this.PatternShapeDifferent = this.ActualPatternShape - this.PatternShapeMax;
            }

            //计算Pattern Shape Result *
            this.PatternShapeResult1 = PatternShapeDifferent == 0 ? "A" : "B";

            //计算Pattern Shape Result **
            string sPatternShapeResultByLot = ByLots.FirstOrDefault(p => p.PatternShapeResult1 == "B") != null ? "B" : "A";
            foreach (var o in ByLots)
            {
                o.PatternShapeResultByLot = sPatternShapeResultByLot;
            }

            //计算CLAIM P.S Qty**
            foreach (var o in ByLots)
            {
                o.PatternShapeClaimByLot = o.PatternShapeMarkerLossPercentByLot * o.PackingListLengthByLot;
            }

            //计算Part II - Measure RESULT **
            foreach (var o in ByLots)
            {
                //if (o.LengthResultByLot == "B" || o.WidthResultByLot == "B" || o.PatternShapeResultByLot == "B")
                if (o.LengthResultByLot == "B" || o.WidthResultByLot == "B")
                {
                    o.Part2MeasureResultByLot = "B";
                }
                else
                {
                    o.Part2MeasureResultByLot = "A";
                }
            }

            //计算PART II Final Claim **
            foreach (var o in ByLots)
            {
                o.Part2FinalClaimByLot = Math.Abs((o.ShortLengthClaimQtyByLot ?? 0)) + (o.NarrowWidthClaimByLot ?? 0); //+ (o.PatternShapeClaimByLot ?? 0);
            }

            //计算纬斜率检查Result
            foreach (var o in ByLots)
            {
                if (o.NeedSkewnessAndBow == "N")
                {
                    o.SkewnessDistanceAB = null;
                    o.SkewnessDistanceCD = null;
                    o.SkewnessAndBowResult = "n.a.";
                }
                else
                {
                    o.SkewnessDistanceAB = o.MeasureEdgeToEdgeWidth;

                    if ((o.SkewnessDistanceAB ?? 0) == 0 || (o.SkewnessDistanceCD ?? 0) == 0)
                    {
                        o.SkewnessAndBowResult = "";
                    }
                    else
                    {
                        o.SkewnessAndBowResult = (o.SkewnessDistanceCD ?? 0) / (o.SkewnessDistanceAB ?? 0) <= 0.05m ? "A" : "B";
                    }
                }

            }

            //计算 Part III - Testing RESULT **
            bool bShadeGrpgResultHasB = ByLots.FirstOrDefault(p => p.ShadeGrpgResult == "B") != null;
            //bool bSkewnessAndBowResultHasB = ByLots.FirstOrDefault(p => p.SkewnessAndBowResult == "B") != null;
            foreach (var o in ByLots)
            {
                o.Part3TestingResultByLot = bShadeGrpgResultHasB ? "B" : "A";
                //o.Part3TestingResultByLot = (bShadeGrpgResultHasB || bSkewnessAndBowResultHasB) ? "B" : "A";
            }

            bool bPatternShapeResultHasB = ByLots.FirstOrDefault(p => p.PatternShapeResult1 == "B") != null;
            bool bSkewnessAndBowResultHasB = ByLots.FirstOrDefault(p => p.SkewnessAndBowResult == "B") != null;
            foreach (var o in ByLots)
            {
                //计算 Part IV - Specific Defects RESULT **
                o.Part4SpecificDefectResultByLot = (bPatternShapeResultHasB || bSkewnessAndBowResultHasB) ? "B" : "A";

                //计算PART IV Final Claim ** 
                if (o.Part4SpecificDefectResultByLot == "A")
                {
                    o.Part4FinalClaimByLot = 0;
                }
                else if (bSkewnessAndBowResultHasB)
                {
                    o.Part4FinalClaimByLot = o.PackingListLengthByLot;
                }
                else if (!bSkewnessAndBowResultHasB && bPatternShapeResultHasB)
                {
                    o.Part4FinalClaimByLot = o.PatternShapeClaimByLot;
                }
            }

            //计算 PART III Final Claim **
            foreach (var o in ByLots)
            {
                o.Part3FinalClaimByLot = o.Part3TestingResultByLot == "A" ? 0 : o.PackingListLengthByLot;
            }


            //计算Overall Claim** (proposal)
            foreach (var o in ByLots)
            {
                o.OverallProposaClaimlByLot = (o.PartIFinalClaimQtyShow ?? 0) + (o.Part2FinalClaimByLot ?? 0) + (o.Part3FinalClaimByLot ?? 0) + (o.Part4FinalClaimByLot ?? 0);

                if (o.OverallProposaClaimlByLot > o.PackingListLengthByLot) //Overall Claim的总数不能超过Packing List Qty **
                {
                    o.OverallProposaClaimlByLot = o.PackingListLengthByLot;
                }
            }

            foreach (var o in ByLots)
            {

                //计算5个Nature
                if (o.PartIFinalClaimQtyShow == 0) { o.Part1Nature = "None"; }
                else if (o.PartIFinalClaimQtyShow >= o.PackingListLengthByLot) { o.Part1Nature = "Return"; }
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
                o.AdjustQty = (FinalNatureCal == "Return" || o.LengthDifferent > 0) ? 0 : o.LengthDifferent; //长码不计入Adjust
                o.AdjustQtyByLot = FinalNatureCal == "Return" ? 0 : iAdjustQtyByLot; //iLengthDifferentByLot;
                o.ReplenishQtyByLot = FinalNatureCal == "Replenish" ? FinalClaimQtyByLotCal : 0;
                o.ReturnQtyByLot = FinalNatureCal == "Return" ? FinalClaimQtyByLotCal : 0;


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
                if (string.IsNullOrEmpty(o.OverallResult)) //已经有值就不用再计算了
                {
                    if (o.OverallResult == "B+")
                    {
                        o.OverallResult = "B+";  //已经手工修改为B+的，不再自动计算
                    }
                    else if (o.Part1DefectResultByLot == "A+" && o.LengthResultByLot == "A" && o.WidthResultByLot == "A" &&
                             o.PatternShapeResultByLot == "A" && o.Part3TestingResultByLot == "A")
                    {
                        o.OverallResult = "A"; //"A+";
                    }
                    else
                    {
                        List<string> AuditResultList = new List<string>();
                        AuditResultList.Add(Part1DefectResultByLot);
                        AuditResultList.Add(LengthResultByLot);
                        AuditResultList.Add(WidthResultByLot);
                        AuditResultList.Add(PatternShapeResultByLot);
                        AuditResultList.Add(Part3TestingResultByLot);

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
                    ((o.OverallResult == "B" || o.OverallResult == "B+" || o.OverallResult == "C") && o.OverallProposaClaimlByLot == o.OverallAgreedClaimByLot)
                    )
                {
                    o.OverallConfirmBy = "n.a.";
                }

                //处理Ia or Ib
                o.PartIFinalClaimafewth = (o.Part1DefectTotalClaimByLot ?? 0) > 0 ? "Ib" : "Ia";

                //2021-06-22 Shelley要求加入：如果Overall Result *等于A+或A时，Core reasons of all PART = 【Good perf. of overall audit】
                if (string.IsNullOrEmpty(o.OverallResultCoreDefecName) && (o.OverallResult == "A+" || o.OverallResult == "A"))
                {
                    o.OverallResultReasonGroup = "--";
                    o.OverallResultCoreDefecName = "--";
                    o.OverallResultReasonPart = "All Part";
                    o.OverallResultDefectKind = "n.a.";
                }

                //计算Overall CLAIM % **
                o.OverallClaimPercentByLot = (o.PackingListLengthByLot ?? 0) == 0 ? 0 :
                    (o.OverallAgreedClaimByLot.HasValue ? o.OverallAgreedClaimByLot : (o.OverallProposaClaimlByLot ?? 0)) / (o.PackingListLengthByLot ?? 0);

                //不需要排避损唛架时，Part I中的Ib栏位不显示
                if (o.NeedEvadeMarker == "N")
                {
                    o.SpotDefectLossQty = null;
                    o.SpotDefectLossPercent = null;
                    o.SpotDefectClaimByLot = null;
                    o.ChainDefectLength = null;
                    o.ChainDefectPercent = null;
                    o.EvadeMarkerLossPercent = null;
                    o.EvadeMarkerLossClaim = null;
                    o.VerticalChainDefectClaimByLot = null;
                }

                //不需要Cut Out时，Part I中的Ib栏位不显示
                if (o.NeedCutoutDefect == "N")
                {
                    o.CutOutLengthPercent = null;
                    o.CutoutClaim = null;
                    o.HorizontalChainDefectLossPerentByLot = null;
                    o.HorizontalChainDefectClaimByLot = null;
                }

                if (o.NeedEvadeMarker == "N" && o.NeedCutoutDefect == "N")
                {
                    o.Part1DefectTotalClaimByLot = null;
                }
            }


            base.Save(ADataContext, ABindingSource);
        }

        public string AuditTypeShow { get { return "4PS"; } }
        public string EvaluatedAreaShow { get { return "50m"; } }
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

        public decimal? PartIFinalClaimQtyShow
        {
            get
            {
                if (string.IsNullOrEmpty(PartIFinalClaimafewth))
                {
                    return null;
                }

                return PartIFinalClaimafewth == "Ib" ? Part1DefectTotalClaimByLot : Part1DefectClaimByLot;

            }
        }

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


        #region 以下属性用于Dashboard

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


        //需要CAD排唛架
        public bool NeedCADMarker
        {
            get
            {
                //有Chain Defect，但CAD没有排唛架的
                if (NeedEvadeMarker == "Y" && (EvadeMarkerLossPercent ?? 0) == 0)
                {
                    return true;
                }

                //有窄封，但CAD没有排唛架的
                if ((WidthDifferent ?? 0) != 0 && (NarrowWidthMarkeLossPercent ?? 0) == 0)
                {
                    return true;
                }

                //花循环有问题，但CAD没有排唛架的
                if ((PatternShapeDifferent ?? 0) != 0 && (PatternShapeMarkerLossPercentByLot ?? 0) == 0)
                {
                    return true;
                }

                return false;
            }
        }

        #endregion


    }

    public partial class BandLaceSpotDefect : BaseEntity
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

    public partial class BandLaceChainDefect : BaseEntity
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

    public partial class BandLandWidth : BaseEntity
    {

    }


    public partial class SupplierBatchInfoBandLace : BaseEntity
    {

    }

    public partial class BandLandPatternShapeRepeat : BaseEntity
    {

    }

    public partial class BandLandSkewnessBow : BaseEntity
    {

    }

}
