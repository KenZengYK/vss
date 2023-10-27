using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using PH.Platform.BO;
using System.Data;

namespace PH.FabricInspection.BO
{
    public partial class BandLaceHeader
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

        List<CoreReasonsClass> _CoreReasonsList = null;
        public List<CoreReasonsClass> CoreReasonsList
        {
            get
            {
                return _CoreReasonsList;
            }
        }

        List<BandLaceHeader> _DataList = null;
        public List<BandLaceHeader> DataList
        {
            get
            {

                _DataList = db.BandLaceHeaders.Where(p => p.AuditNo == AuditNo && p.AuditStage == AuditStage).ToList();
                //if (_DataList == null)
                //{
                //    _DataList = db.BandLaceHeaders.Where(p => p.AuditNo == AuditNo && p.AuditStage == AuditStage).ToList();
                //}

               
                return _DataList;

            }
        }



        public string ReviewedByShow
        {
            get
            {
                return DataList.Select(dr => dr.Whse).FirstOrDefault() == "RM" ? "Shelley Zhang" : "Obaidur";
            }
        }


        public string ApprovedByShow
        {
            get
            {
                return DataList.Select(dr => dr.Whse).FirstOrDefault() == "RM" ? "Daisy Yin" : "Ken Lee";
            }
        }

        public decimal EvadeMarkerLossClaimShow
        {
            get
            {
                return DataList.Select(dr => dr.EvadeMarkerLossClaim ?? 0).Sum();
            }
        }

        public decimal PointQtyPer50MShow
        {
            get
            {
                return DataList.Select(dr => dr.PointQtyPer50M ?? 0).Sum();
            }
        }

        public decimal TotalDefectPointQtyShow
        {
            get
            {
                return DataList.Select(dr => dr.TotalDefectPointQty ?? 0).Sum();
            }
        }


        public decimal AStep2EvadeMarkerLossPercentShow
        {
            get
            {
                decimal PackListQty = DataList.Select(dr => dr.PackingListLength ?? 0).Sum();
                decimal VCDLConverdWidth = DataList.Select(dr => dr.EvadeMarkerLossClaim ?? 0).Sum();
                if (PackListQty == 0) return 0;
                return (VCDLConverdWidth / PackListQty);
            }
        }

        public decimal? ConcedeQtyByLotPerShow
        {
            get
            {
                return (PackingListLengthByLot == 0 || ConcedeQtyByLot == null) ? null : ((ConcedeQtyByLot ?? 0) * 100 / PackingListLengthByLot);
            }
        }

        public decimal? OverAllClaimLengthPerShow
        {
            get
            {
                return (PackingListLengthByLot == 0 || OverallProposaClaimlByLot == null) ? null : ((OverallProposaClaimlByLot ?? 0) * 100 / PackingListLengthByLot);

            }
        }

        public string IssueDate
        {
            get
            {
                return DateTime.Now.ToString("yyyy-MM-dd");
            }
        }

        public string ProjectStr { get; set; }
        public string PoStr { get; set; }
        public int TtlPO { get; set; }
        public int TtlProject { get; set; }
        public int TtlLotID { get; set; }
        public int? SDL1 { get; set; }
        public int? SDCDL2 { get; set; }
        //public int? SDL2 { get; set; }
        public string SuppName { get; set; }
        public string RnNo { get { return this.AuditNo == null ? "" : this.AuditNo.ToString().Substring(2, this.AuditNo.ToString().Length - 2) + "-" + AOverallResultShow; } }

        //报表中Part Ib中的Optimal Claim? (最合适赔偿) 需要 by Lot计算
        //由David加入 2021-12-10 
        public string OptimalClaimShow  //没有处理完 
        {
            get;
            set;
        }


        public NoticeReportTypes NoticeReportType { get; set; }

        public void Calculate()
        {
            List<string> ProjectList = new List<string>();
            List<string> LotIdList = new List<string>();
            foreach (BandLaceHeader Aobj in DataList)
            {
                if (!string.IsNullOrEmpty(Aobj.ProjectNo))
                {
                    ProjectList.AddRange(Aobj.ProjectNo.Split(new string[] { "\r\n" }, StringSplitOptions.None).ToList());
                }
                if (!string.IsNullOrEmpty(Aobj.LotID))
                {
                    LotIdList.AddRange(Aobj.LotID.Split(new string[] { "\r\n" }, StringSplitOptions.None).ToList());
                }

            }

            //报表中Part Ib中的Optimal Claim? (最合适赔偿) 需要 by Lot计算  由David加入 2021-12-10 
            OptimalClaimShow = DataList.Where(p => p.NeedEvadeMarker == "Y").Count() > 0 ? "Y" : "N";

            TtlPO = DataList.Select(dr => dr.PONo).Distinct().Count();
            TtlProject = ProjectList.Distinct().Count();
            TtlLotID = LotIdList.Distinct().Count();

            SDL1 = DataList.Select(dr => dr.SpotDefectPointQty).Sum();
            SDCDL2 = DataList.Select(dr => dr.TotalDefectPointQty).Sum();
            //SDL2 = DataList.Select(dr => dr.SpotDefectPointLeve2Show).Sum();


            string sqlstr = string.Format("select top(1) ShortName from [PH.BasicInfo]..SupplierProfile where ERPSupplier ='{0}'", this.SuppCode);
            SuppName = db.ExecuteDataSet(sqlstr, new DataSet(), "Opts").Tables[0].Rows[0]["ShortName"].ToString();


            IQueryable<BandLaceHeader> CoreDataList = DataList.AsQueryable();
            if (this.NoticeReportType == NoticeReportTypes.RejectNotice)
            {
                CoreDataList = DataList.Where(p => p.OverallResult != "A+" && p.OverallResult != "A").AsQueryable<BandLaceHeader>();
            }

            _CoreReasonsList = new List<CoreReasonsClass>();
            _CoreReasonsList = CoreDataList.GroupBy(m => new
            {
                Insp_Result = ((m.OverallResult == "A+" || m.OverallResult == "A") ? "A" : m.OverallResult),
                OverallResultReasonGroup = m.OverallResultReasonGroup,
                OverallResultCoreDefecName = m.OverallResultCoreDefecName,
                WhichPart = string.IsNullOrEmpty(m.OverallResultReasonPart) ? "" : m.OverallResultReasonPart
            }).Select(K => new CoreReasonsClass
            {
                Grade = K.Key.Insp_Result,
                ReasonGrp = K.Key.OverallResultReasonGroup,
                CoreReasonsSummary = K.Key.OverallResultCoreDefecName,
                WhichPart = K.Key.WhichPart,
                OccurredAuditRoll = K.Count()
            }).OrderBy(p => p.Grade).ThenBy(p => p.OccurredAuditRoll).ThenBy(p => p.CoreReasonsSummary).ToList();


            List<string> AProjectList = new List<string>();
            List<string> APOList = new List<string>();


            var VPro = DataList.Select(dr => dr.ProjectNo).Distinct();

            foreach (var ProObj in VPro.Where(dr => dr != null))
            {
                AProjectList.AddRange(ProObj.Replace(Convert.ToChar(10).ToString(), "/").Replace(Convert.ToChar(13).ToString(), "/").Split('/'));
            }
            ProjectStr = String.Join("/", AProjectList.Where(dr => dr != "").Distinct().OrderBy(p => p).ToArray());

            var VPO = DataList.Select(dr => dr.PONo).Distinct();

            foreach (var PoObj in VPO.Where(dr => dr != null))
            {
                APOList.AddRange(PoObj.Replace(Convert.ToChar(10).ToString(), "/").Replace(Convert.ToChar(13).ToString(), "/").Split('/'));
            }
            PoStr = String.Join("/", APOList.Where(dr => dr != "").Distinct().OrderBy(p => p).ToArray());
        }

        public string AOverallResultGradeShow
        {
            get
            {

                List<string> ResultList = new List<string>();
                ResultList = DataList.Select(dr => dr.OverallResult).ToList();

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
                ResultList.Add(Part1DefectResultByLot);
                ResultList.Add(Part2MeasureResultByLot);
                ResultList.Add(Part3TestingResultByLot);
                ResultList.Add(Part4SpecificDefectResultByLot);

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



    }













}
