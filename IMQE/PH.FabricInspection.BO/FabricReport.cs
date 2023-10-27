using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using PH.Platform.BO;
using System.Data;

namespace PH.FabricInspection.BO
{
    public partial class Fabric_Insp_Header
    {
        public FabricInspectionDataContext db
        {
            get
            {
                return ContextBuilder.CreateContext<FabricInspectionDataContext>();
                //if (this.CurrentDataContext == null)
                //{
                //    this.CurrentDataContext = ContextBuilder.CreateContext<FabricInspectionDataContext>();
                //}

                //return this.CurrentDataContext as FabricInspectionDataContext;
            }
        }

        


        public NoticeReportTypes NoticeReportType
        {
            get;
            set;
        }

        List<CoreReasonsClass> _CoreReasonsList = null;
        public List<CoreReasonsClass> CoreReasonsList
        {
            get
            {
                return _CoreReasonsList;
            }
        }


        List<Fabric_Insp_Header> _DataList = null;
        public List<Fabric_Insp_Header> DataList
        {
            get
            {
                _DataList = db.Fabric_Insp_Headers.Where(p => p.RefNo == RefNo && p.AuditStage == AuditStage).ToList();
                return _DataList;
            }
        }

        public string AOverallResultGradeShow
        {
            get
            {

                List<string> ResultList = new List<string>();
                ResultList = DataList.Select(dr => dr.Insp_Result).ToList();

                if (ResultList.Where(p => p == "C").Count() > 0)
                {
                    return "C";
                }
                else if (ResultList.Where(p => p == "B").Count() > 0)
                {
                    return "B";
                }

                else if (ResultList.Where(p => p == "A").Count() > 0)
                {
                    return "A";
                }
                else if (ResultList.Where(p => p == "A+").Count() > 0)
                {
                    return "A+";
                }
                else { return "A-"; }
            }
        }

        public string AOverallResultShow
        {
            get
            {
                List<string> ResultList = new List<string>();
                ResultList.Add(Step1DefectResultByLot);
                ResultList.Add(PartII_MeasureResultShow);
                ResultList.Add(OtherOverallResult);
                if (ResultList.Where(p => p == "C").Count() > 0)
                {
                    return "C";
                }
                else if (ResultList.Where(p => p == "B").Count() > 0)
                {
                    return "B";
                }

                else if (ResultList.Where(p => p == "A").Count() > 0)
                {
                    return "A";
                }
                else if (ResultList.Where(p => p == "A+").Count() > 0)
                {
                    return "A+";
                }
                else { return "A-"; }
            }
        }

        public decimal? ConcedeQtyByLotPerShow
        {
            get
            {
                return (TotalLengthByLot == 0 || ConcedeQtyByLot == null) ? null : ((ConcedeQtyByLot ?? 0) * 100 / TotalLengthByLot);
            }
        }


        public int? AStep2IrregularScore1Show
        {
            get
            {
                return DataList.Select(p => p.Step2IrregularScore1).Sum();
            }
        }

        public decimal? OverAllClaimLengthPerShow
        {
            get
            {
                return (TotalLengthByLot == 0 || OverAllClaimLength == null) ? null : ((OverAllClaimLength ?? 0) * 100 / TotalLengthByLot);

            }
        }



        public string AMarkerTypeShow
        {
            get
            {

                int IsHaveEvade = DataList.Where(p => p.MarkerType == "Evade").Count() > 0 ? 1 : 0;
                int IsHaveCompact = DataList.Where(p => p.MarkerType == "Compact").Count() > 0 ? 1 : 0;

                if ((IsHaveEvade + IsHaveCompact) == 2)
                {
                    return "Evade/Compact";
                }
                else if (IsHaveEvade == 1)
                {
                    return "Evade";
                }
                else if (IsHaveCompact == 1)
                {
                    return "Compact";
                }
                else
                {
                    return "";
                }
            }
            set { }
        }


        public decimal? AVCDShow
        {
            get
            {
                if (AMarkerTypeShow == "Evade/Compact" || AMarkerTypeShow == "Evade")
                {
                    return DataList.Where(p => p.MarkerType == "Evade").Select(p => p.Step2ClaimRegularQty).Sum();
                }
                else
                { return null; }
            }
            set { }

        }

        public decimal? BVCDShow
        {
            get
            {
                if (AMarkerTypeShow == "Evade/Compact" || AMarkerTypeShow == "Compact")
                {
                    return DataList.Where(p => p.MarkerType == "Compact").Select(p => p.Step2ClaimRegularQty).Sum();
                }
                else
                { return null; }

            }
            set { }

        }


        public string IsOptimalClaimShow
        {
            get
            {
                int IsOptimalClaim = DataList.Where(dr => dr.Step2HaveRegular == "Y").Count();
                return IsOptimalClaim > 0 ? "Y" : "N";
            }
        }

        public int AStep1DefectTotalPointShow
        {
            get
            {

                return DataList.Select(dr => dr.Step1DefectTotalPoint ?? 0).Sum();
            }
        }

        public decimal? AStep1Pt100m2Show
        {
            get
            {

                int AStep1DefectTotalPoint = DataList.Select(dr => dr.Step1DefectTotalPoint ?? 0).Sum() * 100;
                decimal AActual_Length = DataList.Select(dr => dr.Actual_Length ?? 0).Sum();
                decimal StandardWidth = ((this.StandardWidth ?? 0) / 1000);

                if (AActual_Length == 0 || StandardWidth == 0) return null;

                return AStep1DefectTotalPoint / (AActual_Length * StandardWidth);
            }
        }

        public int ADueDayShow
        {
            get
            {

                return DataList.Select(dr => dr.DueDay ?? 0).Max();
            }
        }

        public decimal? ACutOutClaimQtyShow
        {
            get
            {

                return DataList.Select(dr => dr.CutOutClaimQty ?? 0).Sum();
            }
            set { }

        }

        public decimal AAuditPassQtyShow
        {
            get
            {

                return DataList.Select(dr => dr.AuditPassQty ?? 0).Sum();
            }
        }

        public decimal? AStep2EvadeMarkerLossPercentShow
        {
            get
            {
                decimal PackListQty = DataList.Select(dr => dr.Actual_Length ?? 0).Sum();
                decimal VCDLConverdWidth = DataList.Select(dr => dr.Step2ClaimRegularQty ?? 0).Sum();
                if (PackListQty == 0) return 0;
                return (VCDLConverdWidth / PackListQty);
            }
            set { }

        }

        public string ReviewedByShow
        {
            get
            {
                return DataList.Select(dr => dr.Warehouse).FirstOrDefault() == "RM" ? "Shelley Zhang" : "Obaidur";
            }
        }


        public string ApprovedByShow
        {
            get
            {
                return DataList.Select(dr=>dr.Warehouse).FirstOrDefault() == "RM" ? "Daisy Yin" : "Ken Lee";
            }
        }


        public int TtlPO { get; set; }
        public int TtlProject { get; set; }
        public int TtlLotID { get; set; }
        public int? SDL1 { get; set; }
        public int? SDCDL2 { get; set; }
        public int? SDL2 { get; set; }
        public string SuppName { get; set; }
        public string RnNo { get { return RefNo == null ? "" : RefNo.ToString().Substring(2, RefNo.ToString().Length - 2) + "-" + AOverallResultShow; } }


        public void Calculate()
        {
            List<string> ProjectList = new List<string>();
            List<string> LotIdList = new List<string>();
            foreach (Fabric_Insp_Header Aobj in DataList)
            {
                if (!string.IsNullOrEmpty(Aobj.ProjectNo))
                {
                    ProjectList.AddRange(Aobj.ProjectNo.Split(new string[] { "\r\n" }, StringSplitOptions.None).ToList());
                }
                if (!string.IsNullOrEmpty(Aobj.Lot_Id))
                {
                    LotIdList.AddRange(Aobj.Lot_Id.Split(new string[] { "\r\n" }, StringSplitOptions.None).ToList());
                }

            }

            TtlPO = DataList.Select(dr => dr.PO).Distinct().Count();
            TtlProject = ProjectList.Distinct().Count();
            TtlLotID = LotIdList.Distinct().Count();

            SDL1 = DataList.Select(dr => dr.Step2IrregularScore1).Sum();
            SDCDL2 = DataList.Select(dr => dr.TotalDefectPointLevel2Show).Sum();
            SDL2 = DataList.Select(dr => dr.SpotDefectPointLeve2Show).Sum();


            string sqlstr = string.Format("select top(1) ShortName from [PH.BasicInfo]..SupplierProfile where ERPSupplier ='{0}'", Supplier_Code);
            SuppName = db.ExecuteDataSet(sqlstr, new DataSet(), "Opts").Tables[0].Rows[0]["ShortName"].ToString();

            _CoreReasonsList = new List<CoreReasonsClass>();

            //var ADataListByGroup = DataList.GroupBy(m => new
            //{
            //    Insp_Result = ((m.Insp_Result == "A+" || m.Insp_Result == "A") ? "A+/A" : m.Insp_Result),
            //    OverallResultReasonGroup = m.OverallResultReasonGroup,
            //    OverallResultCoreDefecName = m.OverallResultCoreDefecName
            //}).Select(K => new
            //{
            //    KK = K.Key,
            //    Insp_Result = K.Key.Insp_Result,
            //    OverallResultReasonGroup = K.Key.OverallResultReasonGroup,
            //    OverallResultCoreDefecName = K.Key.OverallResultCoreDefecName,
            //    AuditRoll = K.Count()
            //}).ToList();

            IQueryable<Fabric_Insp_Header> CoreDataList = DataList.AsQueryable();
            if (this.NoticeReportType == NoticeReportTypes.RejectNotice)
            {
                CoreDataList = DataList.Where(p => p.Insp_Result != "A+" && p.Insp_Result != "A").AsQueryable<Fabric_Insp_Header>();
            }

            _CoreReasonsList = CoreDataList.GroupBy(m => new
            {
                Insp_Result = ((m.Insp_Result == "A+" || m.Insp_Result == "A") ? "A" : m.Insp_Result),
                OverallResultReasonGroup = m.OverallResultReasonGroup,
                OverallResultCoreDefecName = m.OverallResultCoreDefecName,
                WhichPart = string.IsNullOrEmpty(m.OverallResultReasonPart) ? "" : m.OverallResultReasonPart
            })
            .Select(K => new CoreReasonsClass
            {
                Grade = K.Key.Insp_Result,
                ReasonGrp = K.Key.OverallResultReasonGroup,
                CoreReasonsSummary = K.Key.OverallResultCoreDefecName,
                WhichPart = K.Key.WhichPart,
                OccurredAuditRoll = K.Count()
            }).OrderBy(p => p.Grade).ThenBy(p => p.OccurredAuditRoll).ThenBy(p => p.CoreReasonsSummary).ToList();


            //foreach (var GroupObj in ADataListByGroup.OrderBy(dr => dr.Insp_Result).ThenBy(dr => dr.AuditRoll).ThenBy(dr => dr.OverallResultCoreDefecName))
            //{
            //    CoreReasonsClass Cobj = new CoreReasonsClass();
            //    Cobj.Grade = GroupObj.Insp_Result;
            //    Cobj.ReasonGrp = GroupObj.OverallResultReasonGroup;
            //    Cobj.OccurredAuditRoll = GroupObj.AuditRoll.ToString();
            //    Cobj.CoreReasonsSummary = GroupObj.OverallResultCoreDefecName;

            //    _CoreReasonsList.Add(Cobj);
            //}

            // OverallResultReasonGroup	OverallResultDefectKind	OverallResultCoreDefecName


        }

    }

    public class CoreReasonsClass
    {
        public string Grade { get; set; }
        public string ReasonGrp { get; set; }
        public int OccurredAuditRoll { get; set; }
        public string CoreReasonsSummary { get; set; }
        public string WhichPart { get; set; }
    }

    public class IncomingMatQEResultReportClass
    {
        public string ItemCode { get; set; }
        public string ItemColorCode { get; set; }
        public string SuppItemRef { get; set; }
        public string SuppItemColorShade { get; set; }


        public string RefNo { get; set; }
        public string AuditNo1 { get; set; }
        public string IDNo { get; set; }
        public string SuppRollNo { get; set; }
        public string SuppBatchNoNo { get; set; }
        public string ActualWeight { get; set; }
        public string StockinDate { get; set; }
        public string AuditDate { get; set; }

        public string ReviewedByShow
        {
            get
            {
                return CurrentFabric_Insp_Header.Warehouse == "RM" ? "Shelley Zhang" : "Obaidur";
            }
        }


        public string ApprovedByShow
        {
            get
            {
                return CurrentFabric_Insp_Header.Warehouse == "RM" ? "Daisy Yin" : "Ken Lee";
            }
        }


        //David加入 2022-02-13
        Fabric_Insp_Header _CurrentFabric_Insp_Header;
        public Fabric_Insp_Header CurrentFabric_Insp_Header
        {
            get
            {
                if (_CurrentFabric_Insp_Header == null)
                {
                    PH.FabricInspection.BO.FabricInspectionDataContext db = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>();
                    _CurrentFabric_Insp_Header = db.Fabric_Insp_Headers.Where(dr => dr.Lot_Id == this.IDNo && dr.AuditStage == this.AuditStage).FirstOrDefault();

                }
                return _CurrentFabric_Insp_Header;
            }
        }

        public decimal? MeasLengthShow
        {
            get
            {
                return CurrentFabric_Insp_Header.MeasLengthShow;
            }
        }

        //public decimal? CShortagePer
        //{
        //    get
        //    {
        //        PH.FabricInspection.BO.FabricInspectionDataContext db = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>();
        //        var AObj = db.Fabric_Insp_Headers.Where(dr => dr.Lot_Id == this.IDNo).FirstOrDefault();
        //        if ((AObj.Actual_Length??0) == 0) {  return 0;  }
        //        else 
        //        {
        //            return AObj.ShortLengthShow * 100 / (AObj.Actual_Length ?? 0) ;
        //        }
        //    }
        //}
        public bool DilutedByWidth
        {
            get
            {
                //PH.FabricInspection.BO.FabricInspectionDataContext db = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>();
                //var AObj = db.Fabric_Insp_Headers.Where(dr => dr.Lot_Id == this.IDNo).FirstOrDefault();

                if (shortWidthPer == null)
                {
                    return false;
                }
                else if (CurrentFabric_Insp_Header.ShortLengthShow < 0 && CurrentFabric_Insp_Header.ShortWidthShow > 0)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
        }

        public bool DilutedBylength
        {
            get
            {
                //PH.FabricInspection.BO.FabricInspectionDataContext db = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>();
                //var AObj = db.Fabric_Insp_Headers.Where(dr => dr.Lot_Id == this.IDNo).FirstOrDefault();

                if (shortWidthPer == null)
                {
                    return false;
                }
                else if (CurrentFabric_Insp_Header.ShortLengthShow > 0 && CurrentFabric_Insp_Header.ShortWidthShow < 0)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
        }


        public decimal? ShortagePer
        {
            get
            {
                //PH.FabricInspection.BO.FabricInspectionDataContext db = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>();
                //var AObj = db.Fabric_Insp_Headers.Where(dr => dr.Lot_Id == this.IDNo && dr.AuditStage == this.AuditStage).FirstOrDefault();
                if ((CurrentFabric_Insp_Header.Actual_Length ?? 0) == 0) { return 0; }
                else
                {
                    return ((CurrentFabric_Insp_Header.Actual_Length ?? 0) - (CurrentFabric_Insp_Header.MeasLengthShow ?? 0)) * 100 / (CurrentFabric_Insp_Header.Actual_Length ?? 0);
                }
            }
        }



        public string Actual_LengthShow
        {
            get
            {
                //PH.FabricInspection.BO.FabricInspectionDataContext db = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>();
                //var AActual_Length = db.Fabric_Insp_Headers.Where(dr => dr.Lot_Id == this.IDNo && dr.AuditStage == this.AuditStage).Select(dr => dr.Actual_Length).FirstOrDefault();

                var AActual_Length = CurrentFabric_Insp_Header.Actual_Length;
                return string.IsNullOrEmpty(AActual_Length.ToString()) ? null : Convert.ToDecimal(AActual_Length).ToString("N2");

            }
        }

        public string TotalLengthByLotShow
        {
            get
            {
                //PH.FabricInspection.BO.FabricInspectionDataContext db = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>();
                var ATotalLengthByLot = CurrentFabric_Insp_Header.TotalLengthByLot; //db.Fabric_Insp_Headers.Where(dr => dr.Lot_Id == this.IDNo).Select(dr => dr.TotalLengthByLot).FirstOrDefault();
                return string.IsNullOrEmpty(ATotalLengthByLot.ToString()) ? null : Convert.ToDecimal(ATotalLengthByLot).ToString("N2");

            }
        }
        public string MeasLength { get; set; }
        public string CutLengthForTesting { get; set; }
        public decimal? FinalLengthStockIn
        {
            get
            {
                //PH.FabricInspection.BO.FabricInspectionDataContext db = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>();
                //var Aobj = db.Fabric_Insp_Headers.Where(dr => dr.Lot_Id == this.IDNo).FirstOrDefault();
                return CurrentFabric_Insp_Header.Insp_Length - CurrentFabric_Insp_Header.Actual_Length;
            }
        }

        public string DefectPointsnamecode1 { get; set; }
        public string PointsSystemA1 { get; set; }
        public string PointsSystemB1 { get; set; }
        public string PointsSystemC1 { get; set; }
        public string PointsSystemD1 { get; set; }
        public string IsPoints1 { get; set; }
        public string DistanceFrom1 { get; set; }
        public string DistanceTo1 { get; set; }
        public string shortWidth1 { get; set; }
        public string Addl1 { get; set; }
        public string Ttl1 { get; set; }


        public string DefectPointsnamecode2 { get; set; }
        public string PointsSystemA2 { get; set; }
        public string PointsSystemB2 { get; set; }
        public string PointsSystemC2 { get; set; }
        public string PointsSystemD2 { get; set; }
        public string IsPoints2 { get; set; }
        public string DistanceFrom2 { get; set; }
        public string DistanceTo2 { get; set; }
        public string shortWidth2 { get; set; }
        public string Addl2 { get; set; }
        public string Ttl2 { get; set; }

        public string DefectPointsnamecode3 { get; set; }
        public string PointsSystemA3 { get; set; }
        public string PointsSystemB3 { get; set; }
        public string PointsSystemC3 { get; set; }
        public string PointsSystemD3 { get; set; }
        public string IsPoints3 { get; set; }
        public string DistanceFrom3 { get; set; }
        public string DistanceTo3 { get; set; }
        public string shortWidth3 { get; set; }
        public string Addl3 { get; set; }
        public string Ttl3 { get; set; }


        public string DefectPointsnamecode4 { get; set; }
        public string PointsSystemA4 { get; set; }
        public string PointsSystemB4 { get; set; }
        public string PointsSystemC4 { get; set; }
        public string PointsSystemD4 { get; set; }
        public string IsPoints4 { get; set; }
        public string DistanceFrom4 { get; set; }
        public string DistanceTo4 { get; set; }
        public string shortWidth4 { get; set; }
        public string Addl4 { get; set; }
        public string Ttl4 { get; set; }


        public string DefectPointsnamecode5 { get; set; }
        public string PointsSystemA5 { get; set; }
        public string PointsSystemB5 { get; set; }
        public string PointsSystemC5 { get; set; }
        public string PointsSystemD5 { get; set; }
        public string IsPoints5 { get; set; }
        public string DistanceFrom5 { get; set; }
        public string DistanceTo5 { get; set; }
        public string shortWidth5 { get; set; }
        public string Addl5 { get; set; }
        public string Ttl5 { get; set; }


        public string DefectPointsnamecode6 { get; set; }
        public string PointsSystemA6 { get; set; }
        public string PointsSystemB6 { get; set; }
        public string PointsSystemC6 { get; set; }
        public string PointsSystemD6 { get; set; }
        public string IsPoints6 { get; set; }
        public string DistanceFrom6 { get; set; }
        public string DistanceTo6 { get; set; }
        public string shortWidth6 { get; set; }
        public string Addl6 { get; set; }
        public string Ttl6 { get; set; }

        public string DefectPointsnamecode7 { get; set; }
        public string PointsSystemA7 { get; set; }
        public string PointsSystemB7 { get; set; }
        public string PointsSystemC7 { get; set; }
        public string PointsSystemD7 { get; set; }
        public string IsPoints7 { get; set; }
        public string DistanceFrom7 { get; set; }
        public string DistanceTo7 { get; set; }
        public string shortWidth7 { get; set; }
        public string Addl7 { get; set; }
        public string Ttl7 { get; set; }

        public string DefectPointsnamecode8 { get; set; }
        public string PointsSystemA8 { get; set; }
        public string PointsSystemB8 { get; set; }
        public string PointsSystemC8 { get; set; }
        public string PointsSystemD8 { get; set; }
        public string IsPoints8 { get; set; }
        public string DistanceFrom8 { get; set; }
        public string DistanceTo8 { get; set; }
        public string shortWidth8 { get; set; }
        public string Addl8 { get; set; }
        public string Ttl8 { get; set; }

        public string DefectPointsnamecode9 { get; set; }
        public string PointsSystemA9 { get; set; }
        public string PointsSystemB9 { get; set; }
        public string PointsSystemC9 { get; set; }
        public string PointsSystemD9 { get; set; }
        public string IsPoints9 { get; set; }
        public string DistanceFrom9 { get; set; }
        public string DistanceTo9 { get; set; }
        public string shortWidth9 { get; set; }
        public string Addl9 { get; set; }
        public string Ttl9 { get; set; }

        public string DefectPointsnamecode10 { get; set; }
        public string PointsSystemA10 { get; set; }
        public string PointsSystemB10 { get; set; }
        public string PointsSystemC10 { get; set; }
        public string PointsSystemD10 { get; set; }
        public string IsPoints10 { get; set; }
        public string DistanceFrom10 { get; set; }
        public string DistanceTo10 { get; set; }
        public string shortWidth10 { get; set; }
        public string Addl10 { get; set; }
        public string Ttl10 { get; set; }

        public string MeasLineName1 { get; set; }
        public string MeasLine1 { get; set; }
        public string MeasLine2 { get; set; }
        public string MeasLine3 { get; set; }
        public string MeasLine4 { get; set; }
        public string MeasLine5 { get; set; }
        public string MeasLine6 { get; set; }
        public string MeasLine7 { get; set; }

        public string MeasLineName2 { get; set; }
        public string MeasLine8 { get; set; }
        public string MeasLine9 { get; set; }
        public string MeasLine10 { get; set; }
        public string MeasLine11 { get; set; }
        public string MeasLine12 { get; set; }
        public string MeasLine13 { get; set; }
        public string MeasLine14 { get; set; }

        public string MeasLineName3 { get; set; }
        public string MeasLine15 { get; set; }
        public string MeasLine16 { get; set; }
        public string MeasLine17 { get; set; }
        public string MeasLine18 { get; set; }

        public string MeasLine19 { get; set; }
        public string MeasLine20 { get; set; }
        public string MeasLine21 { get; set; }
        public string MeasLine22 { get; set; }
        public string MeasLine23 { get; set; }


        public string UsableName1 { get; set; }
        public string Usable1 { get; set; }
        public string Usable2 { get; set; }
        public string Usable3 { get; set; }
        public string Usable4 { get; set; }
        public string Usable5 { get; set; }
        public string Usable6 { get; set; }
        public string Usable7 { get; set; }

        public string UsableName2 { get; set; }
        public string Usable8 { get; set; }
        public string Usable9 { get; set; }
        public string Usable10 { get; set; }
        public string Usable11 { get; set; }
        public string Usable12 { get; set; }
        public string Usable13 { get; set; }
        public string Usable14 { get; set; }

        public string UsableName3 { get; set; }
        public string Usable15 { get; set; }
        public string Usable16 { get; set; }
        public string Usable17 { get; set; }
        public string Usable18 { get; set; }

        public string Usable19 { get; set; }
        public string Usable20 { get; set; }
        public string Usable21 { get; set; }
        public string Usable22 { get; set; }
        public string Usable23 { get; set; }
        public string Usable24 { get; set; }
        public string Usable25 { get; set; }
        public string Usable26 { get; set; }
        public string Usable27 { get; set; }



        public string EdgetoEdgeName1 { get; set; }
        public string EdgetoEdge1 { get; set; }
        public string EdgetoEdge2 { get; set; }
        public string EdgetoEdge3 { get; set; }
        public string EdgetoEdge4 { get; set; }
        public string EdgetoEdge5 { get; set; }
        public string EdgetoEdge6 { get; set; }
        public string EdgetoEdge7 { get; set; }

        public string EdgetoEdgeName2 { get; set; }
        public string EdgetoEdge8 { get; set; }
        public string EdgetoEdge9 { get; set; }
        public string EdgetoEdge10 { get; set; }
        public string EdgetoEdge11 { get; set; }
        public string EdgetoEdge12 { get; set; }
        public string EdgetoEdge13 { get; set; }
        public string EdgetoEdge14 { get; set; }

        public string EdgetoEdgeName3 { get; set; }
        public string EdgetoEdge15 { get; set; }
        public string EdgetoEdge16 { get; set; }
        public string EdgetoEdge17 { get; set; }
        public string EdgetoEdge18 { get; set; }

        public string EdgetoEdge19 { get; set; }
        public string EdgetoEdge20 { get; set; }
        public string EdgetoEdge21 { get; set; }
        public string EdgetoEdge22 { get; set; }
        public string EdgetoEdge23 { get; set; }

        public string EdgetoEdge24 { get; set; }
        public string EdgetoEdge25 { get; set; }
        public string EdgetoEdge26 { get; set; }
        public string EdgetoEdge27 { get; set; }

        public decimal? UsableMin
        {
            get
            {
                //PH.FabricInspection.BO.FabricInspectionDataContext db = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>();
                var AUsable_Width = CurrentFabric_Insp_Header.Usable_Width;  //db.Fabric_Insp_Headers.Where(dr => dr.Lot_Id == this.IDNo).Select(dr => dr.Usable_Width).FirstOrDefault();

                if (string.IsNullOrEmpty(AUsable_Width.ToString())) { return null; }
                else
                {
                    return AUsable_Width;
                }

            }
        }
        public string EdgetoEdgeMin { get; set; }
        public string shortWidth
        {
            get
            {

                //PH.FabricInspection.BO.FabricInspectionDataContext db = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>();
                //var AObj =  db.Fabric_Insp_Headers.Where(dr => dr.Lot_Id == this.IDNo).FirstOrDefault();
                if ((CurrentFabric_Insp_Header.Usable_Width ?? 0) == 0)
                {
                    return "0.00 / 0.00";
                }
                else
                {
                    return Convert.ToDecimal(CurrentFabric_Insp_Header.ShortWidthShow).ToString("N2") + " / " + Convert.ToDecimal(CurrentFabric_Insp_Header.ShortWidthShow * 100 / CurrentFabric_Insp_Header.StandardWidth).ToString("N2");
                }

            }
        }


        public decimal? CshortWidthPer
        {
            get
            {
                //PH.FabricInspection.BO.FabricInspectionDataContext db = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>();
                var ADiffWidthPercent = CurrentFabric_Insp_Header.DiffWidthPercent; //db.Fabric_Insp_Headers.Where(dr => dr.Lot_Id == this.IDNo).Select(dr => dr.DiffWidthPercent).FirstOrDefault();
                if (string.IsNullOrEmpty(ADiffWidthPercent.ToString()))
                { return null; }
                else
                {
                    return ADiffWidthPercent;
                }
            }
        }

        public decimal? shortWidthPer
        {
            get
            {

                //PH.FabricInspection.BO.FabricInspectionDataContext db = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>();
                var ADiffWidthPercent = CurrentFabric_Insp_Header.DiffWidthPercent;  //db.Fabric_Insp_Headers.Where(dr => dr.Lot_Id == this.IDNo).Select(dr => dr.DiffWidthPercent).FirstOrDefault();
                if (string.IsNullOrEmpty(ADiffWidthPercent.ToString()))
                { return null; }
                else
                {
                    return ADiffWidthPercent;
                }
                //if(this.CshortWidthPer==null)
                //{
                //    return "";
                //}
                //return Convert.ToDecimal( this.CshortWidthPer).ToString("N2") +" %";
                //PH.FabricInspection.BO.FabricInspectionDataContext db = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>();
                //var ADiffWidthPercent = db.Fabric_Insp_Headers.Where(dr => dr.Lot_Id == this.IDNo).Select(dr => dr.DiffWidthPercent).FirstOrDefault();

                //return string.IsNullOrEmpty(ADiffWidthPercent.ToString()) ? null :Convert.ToDecimal( ADiffWidthPercent).ToString("N2") +" %";
            }
        }
        public string Points_Hundred_SQM { get; set; }
        //public string AgreeWidth { get; set; }
        public string AgreeWidth
        {
            get
            {
                //PH.FabricInspection.BO.FabricInspectionDataContext db = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>();
                var AStandardWidth = CurrentFabric_Insp_Header.StandardWidth; //db.Fabric_Insp_Headers.Where(dr => dr.Lot_Id == this.IDNo).Select(dr => dr.StandardWidth).FirstOrDefault();
                return string.IsNullOrEmpty(AStandardWidth.ToString()) ? null : Convert.ToDecimal(AStandardWidth).ToString("N2");
            }
        }
        public string LossAdd { get; set; }
        public string LossTtl { get; set; }
        public string SaidIDResult { get; set; }
        public string IsSampleSize { get; set; }
        public string Wastage { get; set; }
        public string AuditStage { get; set; }

        public string DefectPointsCount { get; set; }
        public string DefectStdLossPer { get; set; }
        public string Inspector { get; set; }
        public string OtherOverallResult { get; set; }
        public string colorMatchingResult { get; set; }
        public string ElongationResult { get; set; }
        public string MouldTrialResult { get; set; }
        public string BondingResult { get; set; }
        public string LaminationResult { get; set; }
        public string CutCurlingResult { get; set; }
        public string ShortLengthShow { get; set; }
        public string PartII_MeasureResultShow { get; set; }
        public string Numofwidthmeasure { get; set; }

        public string PFlag { get; set; }

        //add new colums --2021-04-13
        public string warehouse { get; set; }
        public string ProjectNo { get; set; }
        public string PO { get; set; }
        public string HdoNo { get; set; }
        public string RollQty { get; set; }
        public string SplitFlag { get; set; }
        public string CutOffRollFlag { get; set; }
        public string Step1Pt100m2 { get; set; }

        public string Grade1To3Ttl { get; set; }
        public string Grade4Ttl { get; set; }

        public decimal? TotalActualLengthByLot
        {
            get
            {
                //PH.FabricInspection.BO.FabricInspectionDataContext db = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>();
                //return db.Fabric_Insp_Headers.Where(dr => dr.Lot_Id == this.IDNo).Select(dr => dr.TotalActualLengthByLot).FirstOrDefault();
                return CurrentFabric_Insp_Header.TotalActualLengthByLot;
            }
        }

        public string GmSqmShow
        {
            get
            {
                //PH.FabricInspection.BO.FabricInspectionDataContext db = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>();
                //return db.Fabric_Insp_Headers.Where(dr => dr.Lot_Id == this.IDNo).Select(dr => dr.GmSqmShow).FirstOrDefault();
                return CurrentFabric_Insp_Header.GmSqmShow;
            }
        }

        public decimal? HedgingShow
        {
            get
            {
                return (shortWidthPer + ShortagePer);
            }
        }


        public bool ASpecialmarkerShow
        {
            get
            {
                //PH.FabricInspection.BO.FabricInspectionDataContext db = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>();
                string AMarkerType = CurrentFabric_Insp_Header.MarkerType; //db.Fabric_Insp_Headers.Where(dr => dr.Lot_Id == this.IDNo).Select(dr => dr.MarkerType).FirstOrDefault();
                return !string.IsNullOrEmpty(AMarkerType);
            }
        }

        public bool ACutoutLengthShow
        {
            get
            {
                //PH.FabricInspection.BO.FabricInspectionDataContext db = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>();
                string ACutoutLength = CurrentFabric_Insp_Header.NeedCutOutShow;  //db.Fabric_Insp_Headers.Where(dr => dr.Lot_Id == this.IDNo).Select(dr => dr.NeedCutOutShow).FirstOrDefault();
                return ACutoutLength == "Y" ? true : false;
            }
        }



        public string DueDay
        {
            get
            {
                //PH.FabricInspection.BO.FabricInspectionDataContext db = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>();
                //return db.Fabric_Insp_Headers.Where(dr => dr.Lot_Id == this.IDNo).Select(dr => dr.DueDay.ToString()).FirstOrDefault();
                return CurrentFabric_Insp_Header.DueDay.ToString();
            }
        }

        public string MaterialType
        {
            get
            {
                //PH.FabricInspection.BO.FabricInspectionDataContext db = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>();
                //return db.Fabric_Insp_Headers.Where(dr => dr.Lot_Id == this.IDNo).Select(dr => dr.MaterialType).FirstOrDefault();
                return CurrentFabric_Insp_Header.MaterialType;
            }
        }


        public string AuditRollQtyByLot
        {
            get
            {
                //PH.FabricInspection.BO.FabricInspectionDataContext db = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>();
                //return db.Fabric_Insp_Headers.Where(dr => dr.Lot_Id == this.IDNo).Select(dr => dr.AuditRollQtyByLot.ToString()).FirstOrDefault();
                return CurrentFabric_Insp_Header.AuditRollQtyByLot.ToString();
            }
        }

        public string AuditTypeShow
        {
            get
            {
                //PH.FabricInspection.BO.FabricInspectionDataContext db = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>();
                //return db.Fabric_Insp_Headers.Where(dr => dr.Lot_Id == this.IDNo).Select(dr => dr.AuditTypeShow).FirstOrDefault();
                return CurrentFabric_Insp_Header.AuditTypeShow;
            }
        }

        public string EvaluatedAreaShow
        {
            get
            {
                //PH.FabricInspection.BO.FabricInspectionDataContext db = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>();
                //return db.Fabric_Insp_Headers.Where(dr => dr.Lot_Id == this.IDNo).Select(dr => dr.EvaluatedAreaShow).FirstOrDefault();
                return CurrentFabric_Insp_Header.EvaluatedAreaShow;
            }
        }


        public decimal? DiffWeightPercentShow
        {
            get
            {
                //PH.FabricInspection.BO.FabricInspectionDataContext db = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>(); //new FabricInspectionDataContext();    
                //decimal? ADiffWeightPercentShow = db.Fabric_Insp_Headers.Where(dr => dr.Lot_Id == this.IDNo).Select(dr => dr.DiffWeightPercentShow).FirstOrDefault();

                //return ADiffWeightPercentShow;
                return CurrentFabric_Insp_Header.DiffWeightPercentShow;
            }
        }

    }
}
