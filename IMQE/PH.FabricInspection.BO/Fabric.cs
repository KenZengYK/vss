using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using PH.Platform.BO;
using System.Drawing;
using System.Data;
using PH.Platform.Common;

namespace PH.FabricInspection.BO
{
    partial class Fabric_Insp_Header : PH.Platform.BO.BaseEntity
    {
        public string OddEvenRowFlag { get; set; }
        public string AuditTypeShow { get { return "4PS"; } }
        public string EvaluatedAreaShow { get { return "100m2"; } }
        public string Unit { get { return "m"; } }
        public string MaterialType { get { return string.IsNullOrEmpty(Item_No) ? "" : this.Item_No.Substring(0, 3); } }

        public DateTime? ActionLog1stStageTargetAgreedDate
        {
            get
            {
                if (string.IsNullOrEmpty(this.MissingAudit))
                {
                    return null;
                }

                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<FabricInspectionDataContext>();
                }

                ActionLogHeader obj = (this.CurrentDataContext as FabricInspectionDataContext).ActionLogHeaders.FirstOrDefault(p => p.OID == this.ActionLogOID);
                if (obj == null) return null;

                return obj.PlanEndDate;
            }
        }

        public DateTime? ActionLogLastStageTargetCompletedDate
        {
            get
            {
                if (string.IsNullOrEmpty(this.MissingAudit))
                {
                    return null;
                }

                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<FabricInspectionDataContext>();
                }

                ActionLogHeader obj = (this.CurrentDataContext as FabricInspectionDataContext).ActionLogHeaders.FirstOrDefault(p => p.OID == this.ActionLogOID);
                if (obj == null) return null;

                return obj.LastStageTargetCompleteDate;
            }
        }

        /// <summary>
        /// 是否为Part I是B或C，并且超过三天没有出Action Log的
        /// </summary>
        public bool IsPartIGradeBC
        {
            get
            {
                return ((Step1DefectResultByLot == "B" || Step1DefectResultByLot == "C") &&
                         string.IsNullOrEmpty(MissingAudit) &&
                         (Create_Date ?? DateTime.MinValue).Date <= DateTime.Now.Date.AddDays(-3));
            }
        }

        /// <summary>
        /// 是否为PlanEndDate已经过期的Action Log
        /// </summary>
        public bool IsOverDueEventLog
        {
            get
            {
                if (string.IsNullOrEmpty(this.MissingAudit))
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

        /// <summary>
        /// 是否为1st Stage 没有Completed的Action Log
        /// </summary>
        public bool IsOutstandingEventLog
        {
            get
            {
                if (string.IsNullOrEmpty(this.MissingAudit))
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

        /// <summary>
        /// 是否为Last Stage 没有Complete的Action Log
        /// </summary>
        public bool IsLastStageOutstandingEventLog
        {
            get
            {
                if (string.IsNullOrEmpty(this.MissingAudit))
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
        /// 是否为加工物料供应商
        /// </summary>
        public bool IsConvertedSupp
        {
            get
            {
                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<FabricInspectionDataContext>();
                }
                var SuppCodeList = (this.CurrentDataContext as FabricInspectionDataContext).ConvertSupps.Select(p => p.SuppCode).ToList();
                return SuppCodeList.Contains(this.Supplier_Code);
            }
        }

        public string Step1DefectScoreShow
        {
            get
            {
                return Convert.ToString(this.Step1DefectScore1 ?? 0) + " / " + Convert.ToString(this.Step1DefectScore2 ?? 0);
            }
        }

        public int? TotalDefectPointLevel1Show { get { return this.Step1DefectScore1; } }
        public string TotalDefectPointSeparateLine { get { return "/"; } }
        public int? TotalDefectPointLevel2Show { get { return (this.Step1DefectScore2 ?? 0) * 4; } }

        public string Step2IrregularScoreShow
        {
            get
            {
                //if (this.Step2HaveRegular != "Y") return "";

                //if (this.Step1DefectResultByLot == "A") return null;

                return Convert.ToString(this.Step2IrregularScore1 ?? 0) + " / " + Convert.ToString(this.Step2IrregularScore2 ?? 0);
            }
        }

        public int? SpotDefectPointLeve1Show { get { return this.Step2IrregularScore1; } }
        public string SpotDefectPointSeparateLine { get { return "/"; } }
        public int? SpotDefectPointLeve2Show { get { return this.Step2IrregularScore2 * 4; } }


        public string ItemCodeShow
        {
            get
            {
                return string.IsNullOrEmpty(this.Item_No) ? "" : this.Item_No.Substring(0, 9);
            }
        }

        public string ColorCodeShow
        {
            get
            {
                return string.IsNullOrEmpty(this.Item_No) ? "" : this.Item_No.Substring(9, 3);
            }
        }


        //克重显示一个Range, 如：100-120
        public string GmSqmShow
        {
            get
            {
                if (!this.StandardWeightGmSqm.HasValue)
                {
                    return "n.a.";
                }

                return Math.Round(this.StandardWeightGmSqmMin ?? 0, 2).ToString() + "-" + Math.Round(this.StandardWeightGmSqmMax ?? 0, 2).ToString();
            }
        }


        // di.f) ClaimIr.D. Qty vs Full audit
        public string ClaimIrregularDefectQtyFullShow
        {
            get
            {
                if (SampleSize == "Full")
                {
                    return Convert.ToString(Math.Round(Deductive_Qty ?? 0, 2));
                }
                return "- -";
            }
        }

        // di.a) Claim Ir.D. Qty vs AQL audit
        public string ClaimIrregularDefectQtyAQL
        {
            get
            {
                if (SampleSize == "AQL")
                {
                    var obj = (Wastage ?? 0) * (TotalLengthByLot ?? 0);
                    return Convert.ToString(Math.Round(obj, 2));
                }
                return "- -";
            }
        }

        /// <summary>
        /// 生成最大System_Install_No的算法，以前的算法经常会报主键重复的问题  由David增加 2020-10-19
        /// </summary>
        /// <returns></returns>
        public int GetMaxInstallNo()
        {
            if (this.CurrentDataContext == null)
            {
                this.CurrentDataContext = ContextBuilder.CreateContext<FabricInspectionDataContext>();
            }

            string SqlStr = "exec Sp_GetAutoNumber";
            DataTable dt = (CurrentDataContext as FabricInspectionDataContext).ExecuteDataTable(SqlStr, "dtAutoNumber");
            if (dt == null || dt.Rows.Count == 0) return -1;

            return Convert.ToInt32(dt.Rows[0][0]);
        }


        //partial void OnColorMatchingChanging(string value);
        partial void OnColorMatchingChanged()
        {
            if (this.ColorMatching == "N")
                this.ColorMatchingResult = "n.a.";
        }

        //tc)Diff%
        //改为克重差异值 david 2020-10-23
        public decimal? DiffWeightPercentShow
        {
            get
            {
                if (!this.StandardWeightGmSqm.HasValue)
                {
                    return 0.00M;
                }

                decimal tempActual_Weight = this.Actual_Weight ?? 0;
                decimal tempStandardWeightGmSqmMin = this.StandardWeightGmSqmMin ?? 0;
                decimal tempSStandardWeightGmSqmMax = this.StandardWeightGmSqmMax ?? 0;

                //如果实际重量在最小值和最大值之间，显示为：0.00
                if (tempActual_Weight >= tempStandardWeightGmSqmMin && tempActual_Weight <= tempSStandardWeightGmSqmMax)
                {
                    return 0.00M;
                }
                else if (tempActual_Weight < tempStandardWeightGmSqmMin) //如果实际重量小于最小值，显示负数
                {
                    return tempActual_Weight - tempStandardWeightGmSqmMin;
                }
                else if (tempActual_Weight > tempSStandardWeightGmSqmMax) //如果实际重量大于最小值，显示正数
                {
                    return tempActual_Weight - tempSStandardWeightGmSqmMax;
                }

                return null;

                //if (this.StandardWeightGmSqm == 0) return 0.00M;
                //return 100.00M * (this.Actual_Weight - this.StandardWeightGmSqm) / this.StandardWeightGmSqm;
            }
        }


        //public string IsSplitIDShow
        //{
        //    get
        //    {
        //        if (this.CurrentDataContext == null) this.CurrentDataContext = ContextBuilder.CreateContext<FabricInspectionDataContext>();
        //        string PreLotID = this.Lot_Id.Substring(0, 13);  //取Item ID的前13位，如：201012-S5224-00，取得201012-S5224-
        //        int ItemCount = (this.CurrentDataContext as FabricInspectionDataContext).Fabric_Insp_Headers.Where(p => p.Lot_Id.StartsWith(PreLotID)).Count();
        //        return ItemCount > 1 ? "Y" : "";
        //    }
        //}

        //lj) Length diff Loss (m) by clr/lot", the calculation is lj=lh*li.
        //public decimal? LengthDiffLossByLotShow
        //{
        //    get
        //    {
        //        if ((DiffLengthAveByLot ?? 0) > 0) return 0.00M;  //只计负数，正数不计

        //        return -1 * Math.Round((TotalLengthByLot ?? 0) * (DiffLengthAveByLot ?? 0) * 0.01M, 4);
        //    }
        //}

        //wi) Claim narrow width by batch 窄封损耗的长度  
        public decimal NarrowWidthLossLengthShow
        {
            get
            {
                return Math.Round((this.PackageListlengthByBatch ?? 0) * (this.DiffWidthPercent ?? 0) / 100.00M, 4);
                //return Math.Round((this.Actual_Length ?? 0) * (this.DiffWidthPercent ?? 0) / 100.00M, 4);
                //return Math.Round((this.MeasLengthShow ?? 0) * (this.DiffWidthPercent ?? 0) / 100.00M, 4);
            }
        }



        ////Evade Marker Wast% 从Regular Defect中取， 只会有一行大于0
        //public double Special_MarkerShow
        //{
        //    get
        //    {
        //        var obj = this.Fabric_Insp_SpreadDefects.FirstOrDefault(p => p.AddtionalPercent > 0);
        //        return obj == null ? 0.00 : Math.Round((obj.AddtionalPercent ?? 0), 2);
        //    }
        //}


        public decimal ShortLengthShow
        {
            get
            {
                return (this.MeasLengthShow ?? 0) - (this.Actual_Length ?? 0);
                //return (this.Actual_Length ?? 0) - (this.MeasLengthShow ?? 0);
            }
        }


        public decimal ShortLengthPercent
        {
            get
            {
                if (this.ShortLengthShow == 0) return 0.00M;
                if ((this.Actual_Length ?? 0) == 0) return 0.00M;

                return Math.Round(Convert.ToDecimal(ShortLengthShow) * 100.00M / (this.Actual_Length ?? 0), 2);
            }
        }

        public decimal ShortWidthShow
        {
            get
            {
                if ((this.Usable_Width ?? 0) == 0) return 0;

                //decimal StandardWidth = GetStandardWidthFromMIDc(this.Supplier_Item_No);
                //if (StandardWidth == 0) return 0;
                if ((this.StandardWidth ?? 0) == 0) return 0;
                return Math.Round((this.Usable_Width ?? 0) - (this.StandardWidth ?? 0), 4);
            }
        }

        public decimal ShortWidthPercent
        {
            get
            {
                if ((this.StandardWidth ?? 0) == 0) return 0;

                return Math.Round(100.00M * this.ShortWidthShow / (this.StandardWidth ?? 0), 2);
                //return Math.Round(100.00M * this.ShortWidthShow / GetStandardWidthFromMIDc(this.Supplier_Item_No), 2);
            }
        }

        ////从MIDc从取标准布封
        //decimal GetStandardWidthFromMIDc(string ASuppRef)
        //{
        //    var obj = (ContextBuilder.CreateContext<PH.MIDc.BO.MIDcDataContext>()).Details.FirstOrDefault(p => p.SuppRef == ASuppRef);
        //    if (obj != null)
        //    {
        //        if ((obj.UsableWidth ?? 0) == 0) return 0;

        //        return (obj.UsableWidth ?? 0) / 1000;
        //    }
        //    return 0;
        //}

        ////Smpl Sz
        //public string AuditType //Full or AQL
        //{
        //    get
        //    {
        //        if (this.RollQty == 0 || (this.RefNo ?? 0) == 0) return "";

        //        if (this.CurrentDataContext == null)
        //        {
        //            this.CurrentDataContext = ContextBuilder.CreateContext<FabricInspectionDataContext>();
        //        }

        //        int ItemCount = (this.CurrentDataContext as FabricInspectionDataContext).Fabric_Insp_Headers.Where(p => p.RefNo == this.RefNo).Count();
        //        if (this.RollQty > ItemCount)
        //        {
        //            return "AQL";
        //        }
        //        else
        //        {
        //            return "Full";
        //        }
        //    }
        //}

        //R.D.Loss (m)
        public decimal RegularLossLength
        {
            get
            {
                if (this.Special_Marker == 0) return 0;

                return Convert.ToDecimal(this.Special_Marker) * (this.Actual_Length ?? 0) / 100.00M;  //因为Special_Marker是百分比数，所以要除100
                //return Convert.ToDecimal(this.Special_MarkerShow) * (this.MeasLengthShow ?? 0) / 100.00M;  //因为Special_Marker是百分比数，所以要除100
            }
        }

        //R.D.Width
        public string RegularLossWidth
        {
            get
            {
                //if (MarkerType == "Cut-out") return null;
                if (string.IsNullOrEmpty(MarkerType)) return null;

                //var lists = this.Fabric_Insp_SpreadDefects.Where(p => p.AddtionalPercent > 0);
                var lists = this.Fabric_Insp_SpreadDefects.Where(p => p.AddtionalPercent > 0 && !(p.IsCutOut ?? false));


                if (lists.Count() == 0) return null;

                string Str = "";
                foreach (var obj in lists)
                {
                    Str += string.Format("{0}-{1}/",
                        obj.From_Place == 0 ? 0 : Math.Round(obj.From_Place * 1.0000, 2),
                        obj.To_Place == 0 ? 0 : Math.Round(obj.To_Place * 1.0000, 2));
                }
                return Str.TrimEnd('/');
            }
        }

        public decimal? MeasLengthShow
        {
            get
            {
                return (this.Insp_Length ?? 0) + (this.PH_Sample ?? 0);
            }
        }



        public decimal ShowSize3
        {
            get { return Math.Round((Panel_Size2 ?? 0) * (Panel_Size1 ?? 0), 4); }
        }

        //public string ShowSpread_Defect_Exist
        //{

        //    get
        //    {
        //        if (Spread_Defect_Exist == "Y")
        //            return "Regular";
        //        else if (Spread_Defect_Exist == "N")
        //            return "Irregular";
        //        else
        //            return Spread_Defect_Exist;

        //    }
        //}

        //public int OverallQEResultofSaidIdShow 
        //{
        //    get {
        //                 if (this.ColorMatchingResult == 2 || this.MouldTrialResult == 2 || this.ElongationResult == 2 || this.LaminationResult == 2 || this.BondingResult == 2)
        //                 {
        //                    return 2;
        //                 }
        //                 else 
        //               {
        //                  return 1;
        //               }

        //          }
        //}

        public string ShowScoreGrpQty
        {
            get
            {
                int Degree = this.Fabric_Insp_PartDefects.Where(dr => dr.Defect_Degree != 4).Select(dr => dr.Defect_Degree * (dr.Defect_Degree_Count ?? 0)).Sum();
                int Acount = this.Fabric_Insp_PartDefects.Where(dr => dr.Defect_Degree == 4).Select(dr => dr.Defect_Degree_Count ?? 0).Sum();
                //Defect_Degree,Defect_Degree_Count
                return Degree.ToString() + "/" + Acount.ToString();

            }
        }
        public string Stock_In_DateShow
        {
            get
            {
                if (string.IsNullOrEmpty(this.Stock_In_Date))
                {
                    return "";
                }

                DateTime dt = DateTime.ParseExact((Convert.ToInt32(this.Stock_In_Date) + 20000000).ToString(), "yyyyMMdd", System.Globalization.CultureInfo.CurrentCulture);
                return dt.ToString("yyyy/MM/dd");
            }
        }

        //public int DueDay
        //{
        //    get
        //    {
        //        if (string.IsNullOrEmpty(this.Stock_In_Date))
        //        {
        //            return 0;
        //        }

        //        DateTime StockInDate = DateTime.ParseExact((Convert.ToInt32(this.Stock_In_Date) + 20000000).ToString(), "yyyyMMdd", System.Globalization.CultureInfo.CurrentCulture);
        //        //DateTime AuditDate = dt;
        //        if ((this.Create_Date ?? DateTime.MinValue) == DateTime.MinValue)
        //        {
        //            return 0;
        //        }

        //        // id Audit dd - id Create dd
        //        return ((this.Create_Date ?? DateTime.MinValue) - StockInDate).Days;
        //    }
        //    //    if ((this.Create_Date ?? DateTime.MinValue) == DateTime.MinValue || (this.Change_Date ?? DateTime.MinValue) == DateTime.MinValue)
        //    //    {
        //    //        return 0;
        //    //    }

        //    //    return ((this.Change_Date ?? DateTime.MinValue) - (this.Create_Date ?? DateTime.MinValue)).Days + 1;
        //    //}
        //}


        #region
        private const string MOULD_TRIAL_OK_DESCRIPTION = "OK";
        private const string MOULD_TRIAL_REJECT_DESCRIPTION = "Reject";
        private const string MOULD_TRIAL_NOMOULDTRIAL_DESCRIPTION = "No Mould Trial";

        public string Mould_Trial_Result_Desc
        {
            get
            {
                if (this.Mould_Trial_Result == "1")
                {
                    return MOULD_TRIAL_OK_DESCRIPTION;
                }
                else if (this.Mould_Trial_Result == "2")
                {
                    return MOULD_TRIAL_REJECT_DESCRIPTION;
                }
                else if (this.Mould_Trial_Result == "3")
                {
                    return MOULD_TRIAL_NOMOULDTRIAL_DESCRIPTION;
                }
                else
                {
                    return "";
                }

            }
        }

        /// <summary>
        /// Party_Insp_Result	varchar	    1	Party defect Insp result '1'= OK, '2'= Deductive,'3'=Reject
        /// </summary>
        public string Party_Insp_Result_Desc
        {
            get
            {
                //OK 		改为	Pass 
                //Deduct 	改为	Mar. Pass
                //Reject 	改为	Fail 

                if (Party_Insp_Result == "1")
                {
                    return "Pass";
                    //return "OK";
                }
                else if (Party_Insp_Result == "2")
                {
                    return "M. Pass"; //"Mar. Pass";
                    //return "Deduct";
                }
                else if (Party_Insp_Result == "3")
                {
                    return "Fail";
                    //return "Reject";
                }
                else
                {
                    return "";
                }
            }

        }
        /// <summary>
        /// Party_Insp_Result	varchar	    1	Party defect Insp result '1'= OK, '2'= Deductive,'3'=Reject
        /// </summary>
        public string Spread_Insp_Result_Desc
        {
            get
            {
                if (Spread_Insp_Result == "1")
                {
                    return "OK";
                }
                else if (Spread_Insp_Result == "2")
                {
                    return "Deduct";
                }
                else if (Spread_Insp_Result == "3")
                {
                    return "Reject";
                }
                else
                {
                    return "";
                }
            }

        }


        public string WeftYarnStatusDesc
        {
            get
            {
                if (WeftYarnStatus == "0")
                {
                    return "No Weft Yarn";

                }
                else if (WeftYarnStatus == "1")
                {
                    return "OK";
                }
                else if (WeftYarnStatus == "2")
                {
                    return "Deduct";
                }
                else if (WeftYarnStatus == "3")
                {
                    return "Reject";
                }
                else
                {
                    return "";
                }
            }

        }



        public string ElongationStatusDesc
        {
            get
            {
                if (ElongationStatus == "0")
                {
                    return "No Elongation";

                }
                else if (ElongationStatus == "1")
                {
                    return "OK";
                }
                else if (ElongationStatus == "2")
                {
                    return "Deduct";
                }
                else if (ElongationStatus == "3")
                {
                    return "Reject";
                }
                else
                {
                    return "";
                }
            }

        }

        public decimal Insp_LengthAddPH_Sample
        {
            get { return (this.Insp_Length ?? 0) + (this.PH_Sample ?? 0); }
        }

        public decimal LengthActualInsp
        {
            get { return (this.Actual_Length ?? 0) - (this.Insp_Length ?? 0); }
        }

        // begin 20100326 sharly 
        public decimal MIDC_MIN_UsabelWidth
        {
            get
            {
                PH.MIDc.BO.MIDcDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.MIDc.BO.MIDcDataContext>();
                var objs = from c in context.Details where c.SuppRef == Supplier_Item_No select c;

                if (objs.Count() != 0)
                {

                    PH.MIDc.BO.Detail detail = objs.First<PH.MIDc.BO.Detail>();

                    if ((detail.UsableWidthMin ?? 0) != 0)
                        return Convert.ToDecimal(detail.UsableWidthMin);
                    else
                        return Convert.ToDecimal(detail.UsableWidth);
                }
                else
                    return 0;

            }

        }

        public decimal MIDC_MAX_UsabelWidth
        {
            get
            {
                PH.MIDc.BO.MIDcDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.MIDc.BO.MIDcDataContext>();
                var objs = from c in context.Details where c.SuppRef == Supplier_Item_No select c;

                if (objs.Count() != 0)
                {

                    PH.MIDc.BO.Detail detail = objs.First<PH.MIDc.BO.Detail>();

                    if ((detail.UsableWidthMax ?? 0) != 0)
                        return Convert.ToDecimal(detail.UsableWidthMax);
                    else
                        return Convert.ToDecimal(detail.UsableWidth);
                }
                else
                    return 0;

            }

        }
        public decimal MIDC_MIN_WeightGmSqm
        {
            get
            {
                PH.MIDc.BO.MIDcDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.MIDc.BO.MIDcDataContext>();
                var objs = from c in context.Details where c.SuppRef == Supplier_Item_No select c;

                if (objs.Count() != 0)
                {

                    PH.MIDc.BO.Detail detail = objs.First<PH.MIDc.BO.Detail>();

                    if ((detail.WeightGmSqmMin ?? 0) != 0)
                        return Convert.ToDecimal(detail.WeightGmSqmMin);
                    else
                        return Convert.ToDecimal(detail.WeightGmSqm);
                }
                else
                    return 0;

            }

        }

        public decimal MIDC_MAX_WeightGmSqm
        {
            get
            {
                PH.MIDc.BO.MIDcDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.MIDc.BO.MIDcDataContext>();
                var objs = from c in context.Details where c.SuppRef == Supplier_Item_No select c;

                if (objs.Count() != 0)
                {

                    PH.MIDc.BO.Detail detail = objs.First<PH.MIDc.BO.Detail>();

                    if ((detail.WeightGmSqmMax ?? 0) != 0)
                        return Convert.ToDecimal(detail.WeightGmSqmMax);
                    else
                        return Convert.ToDecimal(detail.WeightGmSqm);
                }
                else
                    return 0;

            }

        }

        public string ActualUsableWidthtStatus1
        {
            get
            {
                if (Usable_Width >= MIDC_MIN_UsabelWidth && Usable_Width <= MIDC_MAX_UsabelWidth)
                { return "OK"; }
                else if (Usable_Width < MIDC_MIN_UsabelWidth)
                { return "Narrow"; }
                else if (Usable_Width > MIDC_MAX_UsabelWidth)
                { return "Wider"; }
                else
                { return ""; }

            }

        }

        public string ActualWeightStatus1
        {
            get
            {
                if (Actual_Weight >= MIDC_MIN_WeightGmSqm && Actual_Weight <= MIDC_MAX_WeightGmSqm)
                { return "OK"; }
                else if (Actual_Weight < MIDC_MIN_WeightGmSqm)
                { return "Light"; }
                else if (Actual_Weight > MIDC_MAX_WeightGmSqm)
                { return "Heavy"; }
                else { return ""; }
            }

        }
        // end 20100326 sharly

        //public decimal Column_V
        //{
        //    get { return (this.Special_Marker ?? 0) + (this.Actual_Length ?? 0); }
        //}
        public decimal SpecialMarkerDeductiveQty
        {
            get
            {
                return Math.Round((decimal)((this.Special_Marker ?? 0) * (this.Actual_Length ?? 0)), 2);
            }
        }


        #region Xsj20111216:添加Act.Measure Length字段，用於批量獲取顏色組時，顯示相關資料

        public decimal ActualMeasureLength
        {
            get
            {
                return (decimal)(this.Insp_Length + this.PH_Sample);
            }
        }

        #endregion

        #region

        //public int RollQty
        //{
        //    get
        //    {
        //        if (this.CurrSuppBInfo != null)
        //        {
        //            this._rollQty = (this.CurrSuppBInfo.RollQty ?? 0);
        //        }
        //        return this._rollQty;
        //    }
        //}
        //private int _rollQty;

        public decimal TotalLength
        {
            get
            {
                if (this.CurrSuppBInfo != null)
                {
                    this._totalLength = (this.CurrSuppBInfo.TotalLength ?? 0);
                }
                return this._totalLength;
            }
        }
        private decimal _totalLength;

        public PH.FabricInspection.BO.FabricInspectionDataContext FISDc
        {
            get
            {
                if (this._fisDc == null)
                {
                    this._fisDc = PH.Platform.BO.ContextBuilder.CreateContext<PH.FabricInspection.BO.FabricInspectionDataContext>();
                }
                return this._fisDc;
            }
        }
        private PH.FabricInspection.BO.FabricInspectionDataContext _fisDc;

        public PH.FabricInspection.BO.SupplierBatchInfo CurrSuppBInfo
        {
            get
            {
                if (this._currSupplierBatchInfo == null)
                {
                    //PH.FabricInspection.BO.FabricInspectionDataContext fisDc = this.CurrentDataContext as PH.FabricInspection.BO.FabricInspectionDataContext;
                    this._currSupplierBatchInfo = this.FISDc.SupplierBatchInfos.Where(p => p.Supplich_Batch == this.Supplich_Batch
                                                                             && p.Item_No == this.Item_No
                                                                             && p.Stock_In_Date == this.Stock_In_Date).FirstOrDefault();
                }
                return this._currSupplierBatchInfo;
            }
        }
        private PH.FabricInspection.BO.SupplierBatchInfo _currSupplierBatchInfo;
        #endregion

        #endregion


        //public string ActionLogIsCompleted
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

        //dl)No. of C.Defect (2-level) * 计算Chain的分数
        public string ChainDefectScoreShow
        {
            get
            {
                return string.Format("0 / {0}", (this.Step2HaveRegular == "Y" ? 1 : 0) * Math.Ceiling((this.Insp_Length ?? 0) + (this.PH_Sample ?? 0)));
            }
        }

        public int? ChainDefectPointLevel1Show { get { return 0; } }
        public string ChainDefectPointSeparateLine { get { return "/"; } }
        public int? ChainDefectPointLevel2Show
        {
            get
            {
                return (Step2HaveRegular == "Y" ? 1 : 0) * Convert.ToInt32(Math.Ceiling((this.Insp_Length ?? 0) + (this.PH_Sample ?? 0))) * 4;
            }
        }



        //Chain Defect Width Percent
        public string ChainDefectWidthPercentShow
        {
            get
            {
                //if (MarkerType == "Cut-out") return "";
                if (string.IsNullOrEmpty(MarkerType)) return "";

                if (!this.Usable_Width.HasValue || (this.Fabric_Insp_SpreadDefects.Where(p => (p.AddtionalPercent ?? 0) > 0).Count() == 0))
                {
                    return "";
                }

                //int ChainDefectWidth = this.Fabric_Insp_SpreadDefects.Select(p => p.To_Place).Max() - this.Fabric_Insp_SpreadDefects.Select(p => p.From_Place).Min();

                //decimal ChainDefectWidth = this.Fabric_Insp_SpreadDefects.Where(p => (p.AddtionalPercent ?? 0) > 0)
                //    .Select(p => new { Qty = p.To_Place - p.From_Place }).Sum(p => p.Qty);

                decimal ChainDefectWidth = this.Fabric_Insp_SpreadDefects.Where(p => (p.AddtionalPercent ?? 0) > 0 && !(p.IsCutOut ?? false))
                    .Select(p => new { Qty = p.To_Place - p.From_Place }).Sum(p => p.Qty);

                if (ChainDefectWidth > (this.Usable_Width ?? 0))
                {
                    ChainDefectWidth = (this.Usable_Width ?? 0);
                }
                return Math.Round(ChainDefectWidth / (this.Usable_Width ?? 0) * 100.00M, 2).ToString() + "%";

            }
        }

        //dn) C.Defect length distance (m) *
        public string ChainDefectLengthShow
        {
            get
            {
                //if (MarkerType == "Cut-out") return "";
                if (string.IsNullOrEmpty(MarkerType)) return "";

                //var lists = this.Fabric_Insp_SpreadDefects.Where(p => p.AddtionalPercent > 0);
                var lists = this.Fabric_Insp_SpreadDefects.Where(p => p.AddtionalPercent > 0 && !(p.IsCutOut ?? false));
                if (lists.Count() == 0) return null;

                string Str = "";
                foreach (var obj in lists)
                {
                    if ((obj.From_Place_Length ?? 0) != 0 || (obj.To_Place_Length ?? 0) != 0)
                    {
                        Str += string.Format("{0}-{1}/",
                            Math.Round((obj.From_Place_Length ?? 0) * 1.0000m, 2),
                            Math.Round((obj.To_Place_Length ?? 0) * 1.0000m, 2));
                    }
                }
                return Str.TrimEnd('/');
            }
        }

        public string ChainDefectLengthPercentShow
        {
            get
            {
                //if (MarkerType == "Cut-out") return "";
                if (string.IsNullOrEmpty(MarkerType)) return "";

                if (!this.MeasLengthShow.HasValue || (this.Fabric_Insp_SpreadDefects.Where(p => (p.AddtionalPercent ?? 0) > 0).Count() == 0))
                {
                    return "";
                }

                //decimal ChainDefectLength = this.Fabric_Insp_SpreadDefects.Where(p => (p.AddtionalPercent ?? 0) > 0)
                //    .Select(p => new { Qty = (p.To_Place_Length ?? 0) - (p.From_Place_Length ?? 0) }).Sum(p => p.Qty);

                decimal ChainDefectLength = this.Fabric_Insp_SpreadDefects.Where(p => (p.AddtionalPercent ?? 0) > 0 && !(p.IsCutOut ?? false))
                    .Select(p => new { Qty = (p.To_Place_Length ?? 0) - (p.From_Place_Length ?? 0) }).Sum(p => p.Qty);

                if (ChainDefectLength == 0) //以前的记录，没有输入From_Place_Length、To_Place_Length这两个栏位的值
                {
                    return "";
                }

                if (ChainDefectLength > (this.MeasLengthShow ?? 0))
                {
                    ChainDefectLength = (this.MeasLengthShow ?? 0);
                }
                return Math.Round(ChainDefectLength / (this.MeasLengthShow ?? 0) * 100.00M, 2).ToString() + "%";
            }
        }

        ////Last step Ttl claim = S.D.Claim + C.D.Claim / lh * lk + Cutout Claim
        //public decimal? PartITotalClaimQtyShow  //已经在存储过程中计算到字段 PartITotalClaimQty
        //{
        //    get
        //    {
        //        //Spot Defect Claim Qty + Cut Out Claim Qty + Chain Defect Claim Qty
        //        decimal? CalValue =
        //            //Spot Defect Claim Qty 
        //            (Step2ClaimQtyFull ?? 0) +

        //            //Cut Out Claim Qty
        //            (CutOutClaimQty ?? 0) +

        //            //Chain Defect Claim Qty
        //             TotalStep2ClaimRegularQtyHasEvadeLossMarker + (TotalStep2ClaimRegularQtyHasEvadeLossMarker / TotalActualLengthHasEvadeLossMarker) * (TotalLengthByLot - TotalActualLengthByLot);


        //        if (CalValue > (this.TotalLengthByLot ?? 0))
        //        {
        //            return this.TotalLengthByLot;
        //        }

        //        return CalValue;


        //        //decimal? CalValue = (this.Step2ClaimQtyFull ?? 0) +
        //        //       ((this.TotalActualLengthByLot ?? 0) == 0 ? 0 : ((this.Step2ClaimRegularQtyByLot ?? 0) / (this.TotalActualLengthByLot ?? 0) * (this.TotalLengthByLot ?? 0))) +
        //        //       (this.CutOutClaimQty ?? 0);

        //        //if (CalValue > (this.TotalLengthByLot ?? 0))
        //        //{
        //        //    return this.TotalLengthByLot;
        //        //}

        //        //return CalValue;
        //    }
        //}


        //PART I Final Claim **       PART I Final Claim = D.Claim (1st step) or Ttl claim (last step)
        //public decimal? PartIFinalClaimQtyShow
        //{
        //    get
        //    {
        //        //return this.PartITotalClaimQtyShow.HasValue ? this.PartITotalClaimQtyShow : this.Step1ClaimQtyFull;
        //        //return (this.PartITotalClaimQtyShow ?? 0) > 0 ? this.PartITotalClaimQtyShow : this.Step1ClaimQtyFull;
        //        //return (this.PartITotalClaimQty ?? 0) > 0 ? this.PartITotalClaimQty : this.Step1ClaimQtyFull;

        //        if (string.IsNullOrEmpty(PartIFinalClaimafewth))
        //        {
        //            return null;
        //        }

        //        return PartIFinalClaimafewth == "Ib" ? PartITotalClaimQty : Step1ClaimQtyFull; //Step2ClaimQtyFull;

        //    }
        //}

        //P2a) Part II - Measure RESULT ** (取Length Result、Width Result和Thickness Result的最小值)
        public string PartII_MeasureResultShow
        {
            get
            {
                if (this.LengthResultByLot == "B" || this.WidthResultByLot == "B" || this.ThicknessResultByLot == "B")
                {
                    return "B";
                }

                return "A";
            }
        }

        //PART II Final Claim **    (PART II Claim = lm + wh)
        //public decimal? PartII_FinalClaimQtyShow
        //{
        //    get
        //    {
        //        //if (this.CurrentDataContext == null)
        //        //{
        //        //    this.CurrentDataContext = ContextBuilder.CreateContext<FabricInspectionDataContext>();
        //        //}

        //        ////NarrowWidthLossLengthShow是by Batch计算的，要转换为by Lot计算
        //        //var lists = (this.CurrentDataContext as FabricInspectionDataContext).Fabric_Insp_Headers
        //        //    .Where(p => p.Stock_In_Date == this.Stock_In_Date && p.Item_No == this.Item_No)
        //        //    .Select(p => new { p.Supplich_Batch, p.NarrowWidthLossLengthShow }).ToList();

        //        //return (this.LengthDiffLossByLotShow ?? 0) + lists.Distinct().Select(p => p.NarrowWidthLossLengthShow).Sum();

        //        //用上面的方法计算，性能很差，界面上经常卡死，所以改为在存储过程中计算出：NarrowWidthClaimQtyByLot (by Lot计算因窄封引起的损耗长度)
        //        return Math.Round((this.LengthDiffLossByLotShow ?? 0) + (this.NarrowWidthClaimQtyByLot ?? 0), 4);
        //    }
        //}

        ////已放到存储过程中计算，因为报表中需要用到本栏位
        //public decimal? OverAllClaimLengthShow
        //{
        //    get
        //    {
        //        decimal? CalValue = (this.PartIFinalClaimQtyShow ?? 0) + (this.PartII_FinalClaimQtyShow ?? 0) + (this.PARTIIIFinalClaimQty ?? 0);
        //        if ((this.TotalLengthByLot ?? 0) > 0 && CalValue > (this.TotalLengthByLot ?? 0))
        //        {
        //            return this.TotalLengthByLot;
        //        }

        //        return CalValue;
        //    }
        //}

        ////已放到存储过程中计算
        //public decimal? OverallClaimPercentShow
        //{
        //    get
        //    {
        //        if ((TotalLengthByLot ?? 0) == 0) return 0.00M;

        //        if ((OverallClaimQtyAgreed ?? 0) == 0)
        //        {
        //            return Math.Round((OverAllClaimLengthShow ?? 0) / (TotalLengthByLot ?? 0) * 100.00M, 2);
        //        }
        //        else
        //        {
        //            return Math.Round((OverallClaimQtyAgreed ?? 0) / (TotalLengthByLot ?? 0) * 100.00M, 2);
        //        }
        //    }
        //}

        public string NeedCutOutShow
        {
            get
            {
                //return string.IsNullOrEmpty(this.CutOutLength) ? "N" : "Y";
                //decimal ChainDefectLength = this.Fabric_Insp_SpreadDefects.Where(p => (p.AddtionalPercent ?? 0) > 0 && (p.IsCutOut ?? false))
                //  .Select(p => new { Qty = (p.To_Place_Length ?? 0) - (p.From_Place_Length ?? 0) }).Sum(p => p.Qty);
                //this.CutOutLength = ChainDefectLength;
                CalCutOutLength();
                return (this.CutOutLength ?? 0) == 0 ? "N" : "Y";
            }
        }

        public void CalCutOutLength()
        {
            decimal ChainDefectLength = this.Fabric_Insp_SpreadDefects.Where(p => (p.AddtionalPercent ?? 0) > 0 && (p.IsCutOut ?? false))
                  .Select(p => new { Qty = (p.To_Place_Length ?? 0) - (p.From_Place_Length ?? 0) }).Sum(p => p.Qty);
            this.CutOutLength = ChainDefectLength;

        }



    }

    partial class Fabric_Insp_PartDefect : PH.Platform.BO.BaseEntity
    {
        public string Lot_Id
        {
            get
            {
                if (this.Fabric_Insp_Header != null)
                {
                    return this.Fabric_Insp_Header.Lot_Id;
                }
                else
                {
                    return "";
                }
            }

        }

        public string Defect_NameName
        {

            get
            {
                PH.FabricInspection.BO.FabricInspectionDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>(); //new PH.FabricInspection.BO.FabricInspectionDataContext();
                //var objs = (from c in context.PHQCDefects where c.PHDefectCode == this._Defect_Name select c).FirstOrDefault();

                var objs = (from c in context.PHQCDefects
                            where c.PHDefectCode == this._Defect_Name
                            select new { c.DefectEnglishName, c.DefectChineseName, c.DefectThaiName }).FirstOrDefault();


                SysParamHelper sph = SysParamHelper.Instance;
                if (objs == null)
                    return "";
                else
                {
                    string DefectName = null;
                    if (sph.LangID == "TW" || sph.LangID == "CN")
                        DefectName = objs.DefectChineseName;
                    if (sph.LangID == "TH")
                        DefectName = objs.DefectThaiName;
                    if (sph.LangID != "TH" && sph.LangID != "TW" && sph.LangID != "CN")
                        DefectName = objs.DefectEnglishName;
                    return DefectName;
                }

            }
        }


        public string Defect_NameCode
        {
            get
            {
                if (this.Defect_NameName != null && this.Defect_NameName != "")
                    return this.Defect_NameName + "(" + this.Defect_Name + ")";
                else
                    return this.Defect_Name;

            }
        }

        public Nullable<decimal> Actual_Length
        {
            get
            {
                return this.Fabric_Insp_Header.Actual_Length;
            }
        }

        public string Supplier_Length_Unit
        {
            get
            {
                return this.Fabric_Insp_Header.Supplier_Length_Unit;
            }
        }

        public string Roll_No
        {
            get
            {
                return this.Fabric_Insp_Header.Roll_No;
            }
        }

        public string Supplich_Batch
        {
            get
            {
                return this.Fabric_Insp_Header.Supplich_Batch;
            }
        }

        //public int System_Install_No_ForUpdate
        //{
        //    get
        //    {
        //        return this._System_Install_No;
        //    }
        //    set
        //    {
        //        if ((this._System_Install_No != value))
        //        {
        //            if (this.Fabric_Insp_Header != null)
        //            {
        //                if (this.Fabric_Insp_Header.System_Install_No != value)
        //                {
        //                    throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
        //                }
        //            }

        //            //						throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
        //            this.OnSystem_Install_NoChanging(value);
        //            this.SendPropertyChanging();
        //            this._System_Install_No = value;
        //            this.SendPropertyChanged("System_Install_No");
        //            this.OnSystem_Install_NoChanged();
        //        }
        //    }
        //}



        #region Xsj:add 20111027 用於定位和顯示保存於硬盤中的圖片
        private static bool isErrorHappen = false;

        /// <summary>
        /// Xsj:通過上傳圖片程序的FabricInspectPicTransferBO獲取圖片保存的位置
        /// </summary>
        private List<string> ServerPathList
        {
            get
            {
                if (this._serverPathList.Count == 0)
                {
                    try
                    {
                        PH.FabricInspectPicTransferBO.DbConnectInfo dbconStr = new PH.FabricInspectPicTransferBO.DbConnectInfo();

                        //System.Windows.Forms.MessageBox.Show(dbconStr.CurrDataContext.Connection.ConnectionString );
                        PH.FabricInspectPicTransferBO.FabricInspectionPhotoTransferDataContext dc = dbconStr.CurrDataContext;
                        foreach (PH.FabricInspectPicTransferBO.IQCClientPC itemIQCClient in dc.IQCClientPCs)
                        {
                            this._serverPathList.Add(itemIQCClient.ServerNetPath);
                        }
                        isErrorHappen = false;
                    }
                    catch (Exception ex)
                    {
                        if (!isErrorHappen)
                        {
                            System.Windows.Forms.MessageBox.Show("連接數據庫[FabricInspectPhotoTransfer]失敗,你將不能瀏覽到Defect的照片,其它操作不受影響!", "讀取照片路徑失敗");
                            isErrorHappen = true;
                        }
                    }
                }
                return this._serverPathList;
            }
        }
        private List<string> _serverPathList = new List<string>();


        /// <summary>
        /// Xsj:獲取圖片A所在服務器的路徑
        /// </summary>
        public ImgMsg Photo_A
        {
            get
            {

                ImgMsg imgMsg = null;

                string itemNo = this.Fabric_Insp_Header.Item_No.Substring(0, 12);
                string lotId = this.Fabric_Insp_Header.Lot_Id;
                string imgPath = null;
                imgPath = itemNo + lotId + " B" + this.Detect_Turn_No.ToString("000") + "A.jpg";
                foreach (string itemServerPath in this.ServerPathList)
                {
                    if (itemServerPath == null) continue;
                    imgPath = itemServerPath + "\\" + itemNo + "\\" + lotId.Substring(0, lotId.IndexOf('-')) + "\\" + lotId + "\\" + imgPath;

                    if (System.IO.File.Exists(imgPath))
                    {
                        imgMsg = new ImgMsg();
                        imgMsg.DisplayText = "顯示";
                        imgMsg.PicPath = imgPath;
                        break;
                    }
                }
                /* * */
                return imgMsg;
            }
        }

        /// <summary>
        /// Xsj:獲取圖片B所在服務器的路徑
        /// </summary>
        public ImgMsg Photo_B
        {
            get
            {
                ImgMsg imgMsg = null;

                string itemNo = this.Fabric_Insp_Header.Item_No.Substring(0, 12);
                string lotId = this.Fabric_Insp_Header.Lot_Id;
                string imgPath = null;
                imgPath = itemNo + lotId + " B" + this.Detect_Turn_No.ToString("000") + "B.jpg";
                foreach (string itemServerPath in this._serverPathList)
                {
                    if (itemServerPath == null) continue;
                    imgPath = itemServerPath + "\\" + itemNo + "\\" + lotId.Substring(0, lotId.IndexOf('-')) + "\\" + lotId + "\\" + imgPath;
                    if (System.IO.File.Exists(imgPath))
                    {
                        imgMsg = new ImgMsg();
                        imgMsg.DisplayText = "顯示";
                        imgMsg.PicPath = imgPath;
                        break;
                    }
                }

                /** */
                return imgMsg;
            }
        }




        #endregion

    }


    partial class Fabric_Insp_Picture : PH.Platform.BO.BaseEntity
    {
        private bool pictureLoaded = false;
        private Image _picture = null;
        public Image Picture
        {
            get
            {
                if (!pictureLoaded)
                {
                    if (_Photo_Image != null)
                    {
                        _picture = ImageUtil.JpegBytesToImage(_Photo_Image.ToArray());
                    }
                    pictureLoaded = true;

                }
                return _picture;
            }
        }


        //public int System_Install_No_ForUpdate
        //{
        //    get
        //    {
        //        return this._System_Install_No;
        //    }
        //    set
        //    {
        //        if ((this._System_Install_No != value))
        //        {
        //            if (this.Fabric_Insp_Header != null)
        //            {
        //                if (this.Fabric_Insp_Header.System_Install_No != value)
        //                {
        //                    throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
        //                }
        //            }

        //            //						throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
        //            this.OnSystem_Install_NoChanging(value);
        //            this.SendPropertyChanging();
        //            this._System_Install_No = value;
        //            this.SendPropertyChanged("System_Install_No");
        //            this.OnSystem_Install_NoChanged();
        //        }
        //    }
        //}


        public byte[] Photo_ImageValue
        {
            get
            {
                return this.Photo_Image.ToArray();
            }
            set
            {
                this.Photo_Image = new System.Data.Linq.Binary(value);
            }
        }

    }

    partial class Fabric_Insp_SpreadDefect : PH.Platform.BO.BaseEntity
    {
        public string Lot_Id
        {
            get
            {
                if (this.Fabric_Insp_Header != null)
                {
                    return this.Fabric_Insp_Header.Lot_Id;
                }
                else
                {
                    return "";
                }
            }

        }


        #region Xsj20121009:添加用於顯示InspectionHeaders.Special_Marker,InspectionHeaders.SpecialMarkerDeductiveQty
        public decimal? Special_Marker
        {
            get
            {
                return this.Fabric_Insp_Header.Special_Marker;
            }
        }
        public decimal? SpecialMarkerDeductiveQty
        {
            get
            {
                return this.Fabric_Insp_Header.SpecialMarkerDeductiveQty;
            }
        }

        #endregion

        public string Defect_NameName
        {
            get
            {
                PH.FabricInspection.BO.FabricInspectionDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>(); //new PH.FabricInspection.BO.FabricInspectionDataContext();
                var objs = (from c in context.PHQCDefects
                            where c.PHDefectCode == this._Defect_Name
                            select new { c.DefectThaiName, c.DefectEnglishName, c.DefectChineseName }).FirstOrDefault();
                SysParamHelper sph = SysParamHelper.Instance;
                if (objs == null)
                    return "";
                else
                {
                    string DefectName = null;
                    if (sph.LangID == "TW" || sph.LangID == "CN")
                        DefectName = objs.DefectChineseName;
                    if (sph.LangID == "TH")
                        DefectName = objs.DefectThaiName;
                    if (sph.LangID != "TH" && sph.LangID != "TW" && sph.LangID != "CN")
                        DefectName = objs.DefectEnglishName;
                    return DefectName;
                }

            }
        }



        public string Defect_NameCode
        {
            get
            {
                if (this.Defect_NameName != null && this.Defect_NameName != "")
                    return this.Defect_NameName + "(" + this.Defect_Name + ")";
                else
                    return this.Defect_Name;

            }
        }


        public Nullable<decimal> Actual_Length
        {
            get
            {
                return this.Fabric_Insp_Header.Actual_Length;
            }
        }

        public string Supplier_Length_Unit
        {
            get
            {
                return this.Fabric_Insp_Header.Supplier_Length_Unit;
            }
        }

        public string Roll_No
        {
            get
            {
                return this.Fabric_Insp_Header.Roll_No;
            }
        }

        public string Supplich_Batch
        {
            get
            {
                return this.Fabric_Insp_Header.Supplich_Batch;
            }
        }

        //public int System_Install_No_ForUpdate
        //{
        //    get
        //    {
        //        return this._System_Install_No;
        //    }
        //    set
        //    {
        //        if ((this._System_Install_No != value))
        //        {
        //            if (this.Fabric_Insp_Header != null)
        //            {
        //                if (this.Fabric_Insp_Header.System_Install_No != value)
        //                {
        //                    throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
        //                }
        //            }

        //            //						throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
        //            this.OnSystem_Install_NoChanging(value);
        //            this.SendPropertyChanging();
        //            this._System_Install_No = value;
        //            this.SendPropertyChanged("System_Install_No");
        //            this.OnSystem_Install_NoChanged();
        //        }
        //    }
        //}

        public string SpreadDefectSolution
        {
            get
            {
                FabricInspectionDataContext DataContext = (ContextBuilder.CreateContext<FabricInspectionDataContext>());

                var Proc1 = DataContext.Fabric_Sys_Parameters.Where(P => P.Parameter_Type == "SDPS" && P.Parameter_Key == this.Proc_Code1).Select(S => S.Parameter_Desc).FirstOrDefault();
                var Proc2 = DataContext.Fabric_Sys_Parameters.Where(P => P.Parameter_Type == "SDPS" && P.Parameter_Key == this.Proc_Code2).Select(S => S.Parameter_Desc).FirstOrDefault();
                var Proc3 = DataContext.Fabric_Sys_Parameters.Where(P => P.Parameter_Type == "SDPS" && P.Parameter_Key == this.Proc_Code3).Select(S => S.Parameter_Desc).FirstOrDefault();
                var Proc4 = DataContext.Fabric_Sys_Parameters.Where(P => P.Parameter_Type == "SDPS" && P.Parameter_Key == this.Proc_Code4).Select(S => S.Parameter_Desc).FirstOrDefault();
                var Proc5 = DataContext.Fabric_Sys_Parameters.Where(P => P.Parameter_Type == "SDPS" && P.Parameter_Key == this.Proc_Code5).Select(S => S.Parameter_Desc).FirstOrDefault();

                SysParamHelper sph = SysParamHelper.Instance;

                if (sph.LangID == "TH")
                {
                    Proc1 = DataContext.Fabric_Sys_Parameters.Where(P => P.Parameter_Type == "SDPS" && P.Parameter_Key == this.Proc_Code1).Select(S => S.ParameterThaiDesc).FirstOrDefault();
                    Proc2 = DataContext.Fabric_Sys_Parameters.Where(P => P.Parameter_Type == "SDPS" && P.Parameter_Key == this.Proc_Code2).Select(S => S.ParameterThaiDesc).FirstOrDefault();
                    Proc3 = DataContext.Fabric_Sys_Parameters.Where(P => P.Parameter_Type == "SDPS" && P.Parameter_Key == this.Proc_Code3).Select(S => S.ParameterThaiDesc).FirstOrDefault();
                    Proc4 = DataContext.Fabric_Sys_Parameters.Where(P => P.Parameter_Type == "SDPS" && P.Parameter_Key == this.Proc_Code4).Select(S => S.ParameterThaiDesc).FirstOrDefault();
                    Proc5 = DataContext.Fabric_Sys_Parameters.Where(P => P.Parameter_Type == "SDPS" && P.Parameter_Key == this.Proc_Code5).Select(S => S.ParameterThaiDesc).FirstOrDefault();
                }
                if (sph.LangID != "TH" && sph.LangID != "TW" && sph.LangID != "CN")
                {
                    Proc1 = DataContext.Fabric_Sys_Parameters.Where(P => P.Parameter_Type == "SDPS" && P.Parameter_Key == this.Proc_Code1).Select(S => S.ParameterEnglishDesc).FirstOrDefault();
                    Proc2 = DataContext.Fabric_Sys_Parameters.Where(P => P.Parameter_Type == "SDPS" && P.Parameter_Key == this.Proc_Code2).Select(S => S.ParameterEnglishDesc).FirstOrDefault();
                    Proc3 = DataContext.Fabric_Sys_Parameters.Where(P => P.Parameter_Type == "SDPS" && P.Parameter_Key == this.Proc_Code3).Select(S => S.ParameterEnglishDesc).FirstOrDefault();
                    Proc4 = DataContext.Fabric_Sys_Parameters.Where(P => P.Parameter_Type == "SDPS" && P.Parameter_Key == this.Proc_Code4).Select(S => S.ParameterEnglishDesc).FirstOrDefault();
                    Proc5 = DataContext.Fabric_Sys_Parameters.Where(P => P.Parameter_Type == "SDPS" && P.Parameter_Key == this.Proc_Code5).Select(S => S.ParameterEnglishDesc).FirstOrDefault();
                }
                return (!string.IsNullOrEmpty(Proc1) ? Proc1 + "," : string.Empty) + (!string.IsNullOrEmpty(Proc2) ? Proc2 + "," : string.Empty) + (!string.IsNullOrEmpty(Proc3) ? Proc3 + "," : string.Empty) + (!string.IsNullOrEmpty(Proc4) ? Proc4 + "," : string.Empty) + (!string.IsNullOrEmpty(Proc5) ? Proc5 : string.Empty);

            }
        }

        public string Column_X
        {
            get
            {
                FabricInspectionDataContext DataContext = (ContextBuilder.CreateContext<FabricInspectionDataContext>());
                var Proc1 = DataContext.Fabric_Sys_Parameters.Where(P => P.Parameter_Type == "SDPS" && P.Parameter_Key == this.Proc_Code1).Select(S => S.Parameter_Desc).FirstOrDefault();
                var Proc2 = DataContext.Fabric_Sys_Parameters.Where(P => P.Parameter_Type == "SDPS" && P.Parameter_Key == this.Proc_Code2).Select(S => S.Parameter_Desc).FirstOrDefault();
                var Proc3 = DataContext.Fabric_Sys_Parameters.Where(P => P.Parameter_Type == "SDPS" && P.Parameter_Key == this.Proc_Code3).Select(S => S.Parameter_Desc).FirstOrDefault();
                var Proc4 = DataContext.Fabric_Sys_Parameters.Where(P => P.Parameter_Type == "SDPS" && P.Parameter_Key == this.Proc_Code4).Select(S => S.Parameter_Desc).FirstOrDefault();
                var Proc5 = DataContext.Fabric_Sys_Parameters.Where(P => P.Parameter_Type == "SDPS" && P.Parameter_Key == this.Proc_Code5).Select(S => S.Parameter_Desc).FirstOrDefault();

                SysParamHelper sph = SysParamHelper.Instance;

                if (sph.LangID == "TH")
                {
                    Proc1 = DataContext.Fabric_Sys_Parameters.Where(P => P.Parameter_Type == "SDPS" && P.Parameter_Key == this.Proc_Code1).Select(S => S.ParameterThaiDesc).FirstOrDefault();
                    Proc2 = DataContext.Fabric_Sys_Parameters.Where(P => P.Parameter_Type == "SDPS" && P.Parameter_Key == this.Proc_Code2).Select(S => S.ParameterThaiDesc).FirstOrDefault();
                    Proc3 = DataContext.Fabric_Sys_Parameters.Where(P => P.Parameter_Type == "SDPS" && P.Parameter_Key == this.Proc_Code3).Select(S => S.ParameterThaiDesc).FirstOrDefault();
                    Proc4 = DataContext.Fabric_Sys_Parameters.Where(P => P.Parameter_Type == "SDPS" && P.Parameter_Key == this.Proc_Code4).Select(S => S.ParameterThaiDesc).FirstOrDefault();
                    Proc5 = DataContext.Fabric_Sys_Parameters.Where(P => P.Parameter_Type == "SDPS" && P.Parameter_Key == this.Proc_Code5).Select(S => S.ParameterThaiDesc).FirstOrDefault();
                }

                if (sph.LangID != "TH" && sph.LangID != "TW" && sph.LangID != "CN")
                {
                    Proc1 = DataContext.Fabric_Sys_Parameters.Where(P => P.Parameter_Type == "SDPS" && P.Parameter_Key == this.Proc_Code1).Select(S => S.ParameterEnglishDesc).FirstOrDefault();
                    Proc2 = DataContext.Fabric_Sys_Parameters.Where(P => P.Parameter_Type == "SDPS" && P.Parameter_Key == this.Proc_Code2).Select(S => S.ParameterEnglishDesc).FirstOrDefault();
                    Proc3 = DataContext.Fabric_Sys_Parameters.Where(P => P.Parameter_Type == "SDPS" && P.Parameter_Key == this.Proc_Code3).Select(S => S.ParameterEnglishDesc).FirstOrDefault();
                    Proc4 = DataContext.Fabric_Sys_Parameters.Where(P => P.Parameter_Type == "SDPS" && P.Parameter_Key == this.Proc_Code4).Select(S => S.ParameterEnglishDesc).FirstOrDefault();
                    Proc5 = DataContext.Fabric_Sys_Parameters.Where(P => P.Parameter_Type == "SDPS" && P.Parameter_Key == this.Proc_Code5).Select(S => S.ParameterEnglishDesc).FirstOrDefault();
                }

                return (!string.IsNullOrEmpty(Proc1) ? Proc1 + "," : string.Empty) + (!string.IsNullOrEmpty(Proc2) ? Proc2 + "," : string.Empty) + (!string.IsNullOrEmpty(Proc3) ? Proc3 + "," : string.Empty) + (!string.IsNullOrEmpty(Proc4) ? Proc4 + "," : string.Empty) + (!string.IsNullOrEmpty(Proc5) ? Proc5 : string.Empty);

                //FabricInspectionDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>();
                //var objs1 = from c in context.Fabric_Sys_Parameters where c.Parameter_Type == "SDPS" && c.Parameter_Key == this.Proc_Code1 select c.Parameter_Desc;
                //var objs2 = from c in context.Fabric_Sys_Parameters where c.Parameter_Type == "SDPS" && c.Parameter_Key == this.Proc_Code2 select c.Parameter_Desc;
                //var objs3 = from c in context.Fabric_Sys_Parameters where c.Parameter_Type == "SDPS" && c.Parameter_Key == this.Proc_Code3 select c.Parameter_Desc;
                //var objs4 = from c in context.Fabric_Sys_Parameters where c.Parameter_Type == "SDPS" && c.Parameter_Key == this.Proc_Code4 select c.Parameter_Desc;
                //var objs5 = from c in context.Fabric_Sys_Parameters where c.Parameter_Type == "SDPS" && c.Parameter_Key == this.Proc_Code5 select c.Parameter_Desc;

                //string str = ((objs1.Count() != 0) ? objs1.First().ToString() : "") +
                //             ((objs2.Count() != 0) ? objs1.First().ToString() : "") +
                //             ((objs3.Count() != 0) ? objs1.First().ToString() : "") +
                //             ((objs4.Count() != 0) ? objs1.First().ToString() : "") +
                //             ((objs5.Count() != 0) ? objs1.First().ToString() : "");
                //return str;

            }
        }

        public string Column_V
        {
            get
            {
                switch (this.Proc_Status)
                {
                    case "1":
                        return "OK";
                        break;
                    case "2":
                        return "Deduct";
                        break;
                    case "3":
                        return "Return";
                        break;
                    default:
                        return "";

                }
            }
        }
    }

    partial class Fabric_Insp_Width : PH.Platform.BO.BaseEntity
    {
        //public int System_Install_No_ForUpdate
        //{
        //    get
        //    {
        //        return this._System_Install_No;
        //    }
        //    set
        //    {
        //        if ((this._System_Install_No != value))
        //        {
        //            if (this.Fabric_Insp_Header != null)
        //            {
        //                if (this.Fabric_Insp_Header.System_Install_No != value)
        //                {
        //                    throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
        //                }
        //            }

        //            //						throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
        //            this.OnSystem_Install_NoChanging(value);
        //            this.SendPropertyChanging();
        //            this._System_Install_No = value;
        //            this.SendPropertyChanged("System_Install_No");
        //            this.OnSystem_Install_NoChanged();
        //        }
        //    }
        //}

    }

    partial class Fabric_Sys_Parameter : PH.Platform.BO.BaseEntity
    { }

    partial class Fabric_Defect_File : PH.Platform.BO.BaseEntity
    {
        public string MaterialGroupShow
        {
            get
            {
                string SqlStr = @"select VATC15 as MaterialGroup from AS400DB..inp15
                                  where PRMT15='PGMN' AND VATC15 in ('M','L','A','C','E') AND CONO15='{0}' and PSAR15='{1}'";
                SqlStr = string.Format(SqlStr, this.Company, this.Style_Code);

                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<FabricInspectionDataContext>();
                }

                DataTable dt = (this.CurrentDataContext as FabricInspectionDataContext).ExecuteDataTable(SqlStr, "dt");
                if (dt == null || dt.Rows.Count == 0) return null;
                return dt.Rows[0]["MaterialGroup"].ToString();
            }
        }


        public string DefectEnglishName
        {
            get
            {
                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<FabricInspectionDataContext>();
                }
                var objs = (from c in (this.CurrentDataContext as FabricInspectionDataContext).PHQCDefects where c.PHDefectCode == this.Defect_Code select new { c.DefectEnglishName }).FirstOrDefault();
                if (objs == null)
                    return "";
                else
                    return objs.DefectEnglishName;

            }
        }
        public string DefectChineseName
        {
            get
            {
                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<FabricInspectionDataContext>();
                }
                var objs = (from c in (this.CurrentDataContext as FabricInspectionDataContext).PHQCDefects where c.PHDefectCode == this.Defect_Code select new { c.DefectChineseName }).FirstOrDefault();
                if (objs == null)
                    return "";
                else
                    return objs.DefectChineseName;

            }
        }
        public string DefectThaiName
        {
            get
            {
                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<FabricInspectionDataContext>();
                }
                var objs = (from c in (this.CurrentDataContext as FabricInspectionDataContext).PHQCDefects where c.PHDefectCode == this.Defect_Code select new { c.DefectThaiName }).FirstOrDefault();
                if (objs == null)
                    return "";
                else
                    return objs.DefectThaiName;

            }
        }
        public string DefectEnglishRemark
        {
            get
            {
                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<FabricInspectionDataContext>();
                }
                var objs = (from c in (this.CurrentDataContext as FabricInspectionDataContext).PHQCDefects
                            where c.PHDefectCode == this.Defect_Code
                            select new { c.DefectEnglishRemark }).FirstOrDefault();
                if (objs == null)
                    return "";
                else
                    return objs.DefectEnglishRemark;

            }
        }
        public string DefectChineseRemark
        {
            get
            {
                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<FabricInspectionDataContext>();
                }
                var objs = (from c in (this.CurrentDataContext as FabricInspectionDataContext).PHQCDefects
                            where c.PHDefectCode == this.Defect_Code
                            select new { c.DefectChineseRemark }).FirstOrDefault();
                if (objs == null)
                    return "";
                else
                    return objs.DefectChineseRemark;

            }
        }
        public string DefectThaiRemark
        {
            get
            {
                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<FabricInspectionDataContext>();
                }
                var objs = (from c in (this.CurrentDataContext as FabricInspectionDataContext).PHQCDefects
                            where c.PHDefectCode == this.Defect_Code
                            select new { c.DefectThaiRemark }).FirstOrDefault();
                if (objs == null)
                    return "";
                else
                    return objs.DefectThaiRemark;

            }
        }
    }

    public class ActionLogIncompleteResult
    {
        public string Factory { get; set; }
        public int? AuditTeam { get; set; }
        public string Whse { get; set; }
        public string ProjectNo { get; set; }
        public int? AuditNo { get; set; }
        public string ItemCode { get; set; }
        public string ColorCode { get; set; }
        public string SuppRef { get; set; }
        public decimal? OverallClaimPercent { get; set; }
        public string ActionLogID { get; set; }
        public string ActionLogNo { get; set; }
        public Int64 ActionLogOID { get; set; }
        public DateTime? FirstDate { get; set; }
        public DateTime? LastDate { get; set; }
        public DateTime? FWStartDate { get; set; }
        public DateTime? CompletedDate { get; set; }
        public DateTime? LastStageReviseTargetCompleteDate { get; set; }
        public string AuditNo1 { get; set; }
        public string AuditStage { get; set; }
        public DateTime? ReviseCmplDate { get; set; }
        public string CategoryCode { get; set; }
        public DateTime? DataCrossTransferCmplDate { get; set; }

        public string ProjectNoShow
        {
            get
            {
                return string.Join("/", ProjectNo.Split('/').Distinct().OrderBy(p => p).ToArray());
            }

            set { }
        }


        public string SupplierCode { get; set; }  //add by shulin 20210823


    }




}
