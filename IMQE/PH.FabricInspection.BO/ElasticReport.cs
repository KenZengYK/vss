using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using PH.Platform.BO;

namespace PH.FabricInspection.BO
{
    public partial class ElasticHeader
    {
        public FabricInspectionDataContext db
        {
            get
            {
                //if (this.CurrentDataContext == null)
                //{
                //    this.CurrentDataContext = ContextBuilder.CreateContext<FabricInspectionDataContext>();
                //}

                //return this.CurrentDataContext as FabricInspectionDataContext;

                return ContextBuilder.CreateContext<FabricInspectionDataContext>();
            }
        }

        public NoticeReportTypes NoticeReportType { get; set; }

        //IEnumerable<ElasticHeader> _ByLots;
        List<ElasticHeader> _ByLots;
        public List<ElasticHeader> ByLots
        {
            get
            {
                //if (_ByLots == null)
                //{
                //    _ByLots = db.ElasticHeaders.Where(p => p.AuditNo == AuditNo && p.AuditStage == AuditStage).ToList();
                //}
                _ByLots = db.ElasticHeaders.Where(p => p.AuditNo == AuditNo && p.AuditStage == AuditStage).ToList();
                return _ByLots;
            }
        }

        public int TotalItemIDNO
        {
            get
            {
                return ByLots.Count();
            }
        }

        public int? SpotDefectPointQtyByLotShow
        {
            get
            {
                if (!SpotDefectPointQty.HasValue) return null;
                return ByLots.Select(dr => dr.SpotDefectPointQty).Sum();
            }
        }

        public int? ChainDefectPointQtyByLotShow
        {
            get
            {
                if (!ChainDefectPointQty.HasValue) return null;
                return ByLots.Select(dr => dr.ChainDefectPointQty).Sum();
            }
        }

        public int? TotalDefectPointQtyByLotShow
        {
            get
            {
                if ((ChainDefectPointQtyByLotShow == null) && (SpotDefectPointQtyByLotShow == null))
                    return null;

                return (ChainDefectPointQtyByLotShow ?? 0) + (SpotDefectPointQtyByLotShow ?? 0);
            }
        }


       

        public string ReviewedByShow
        {
            get
            {
                return ByLots.Select(dr => dr.Whse).FirstOrDefault() == "RM" ? "Shelley Zhang" : "Obaidur";
            }
        }


        public string ApprovedByShow
        {
            get
            {
                return ByLots.Select(dr => dr.Whse).FirstOrDefault() == "RM" ? "Daisy Yin" : "Ken Lee";
            }
        }
        


        public string IssueDate
        {
            get
            {
                return DateTime.Now.ToString("yyyy-MM-dd");
            }
        }

        public string RNNo
        {
            get
            {
                if (AuditNo.HasValue)
                {
                    return string.Format("{0}-{1}", AuditNo.ToString().Substring(2), AOverallResultShow);
                }

                return "";
            }
        }

        public string SuppName
        {
            get
            {
                string SqlStr = string.Format("select top 1 ShortName from [PH.BasicInfo]..SupplierProfile where ERPSupplier = '{0}'", SuppCode);
                DataTable dt = db.ExecuteDataTable(SqlStr, "Opts");
                if (dt == null || dt.Rows.Count == 0)
                {
                    return "";
                }
                return dt.Rows[0]["ShortName"].ToString();

            }
        }

        public int TotalProject
        {
            get
            {
                return ByLots.Select(p => p.ProjectNo).Distinct().Count();
            }
        }

        public int TotalPO
        {
            get
            {
                return ByLots.Select(p => p.PONo).Distinct().Count();
            }
        }

        public decimal? ConcedePercent
        {
            get
            {
                if (!PackingListLengthByLot.HasValue) return null;
                return (ConcedeQtyByLot ?? 0) / (PackingListLengthByLot ?? 0);
            }
        }

        public decimal? Part1ClaimPercent
        {
            get
            {
                if (!PackingListLengthByLot.HasValue) return null;
                return (Part1FinalClaimByLot ?? 0) / (PackingListLengthByLot ?? 0);
            }
        }

        public decimal? Part2ClaimPercent
        {
            get
            {
                if (!PackingListLengthByLot.HasValue) return null;
                return (Part2FinalClaimByLot ?? 0) / (PackingListLengthByLot ?? 0);
            }
        }

        public decimal? Part3ClaimPercent
        {
            get
            {
                if (!PackingListLengthByLot.HasValue) return null;
                return (Part3FinalClaimByLot ?? 0) / (PackingListLengthByLot ?? 0);
            }
        }

        public decimal? Part4ClaimPercent
        {
            get
            {
                if (!PackingListLengthByLot.HasValue) return null;
                return (Part4FinalClaimByLot ?? 0) / (PackingListLengthByLot ?? 0);
            }
        }


        public decimal? OverClaimPercent
        {
            get
            {
                if (!PackingListLengthByLot.HasValue) return null;
                return (OverallProposaClaimlByLot ?? 0) / (PackingListLengthByLot ?? 0);
            }
        }


        public string AOverallResultGradeShow
        {
            get
            {

                List<string> ResultList = new List<string>();
                ResultList = ByLots.Select(dr => dr.OverallResult).ToList();

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



        public List<CoreReasonsClass> CoreReasonsList
        {
            get
            {
                IQueryable<ElasticHeader> CoreDataList = ByLots.AsQueryable();
                if (this.NoticeReportType == NoticeReportTypes.RejectNotice)
                {
                    CoreDataList = ByLots.Where(p => p.OverallResult != "A+" && p.OverallResult != "A").AsQueryable<ElasticHeader>();
                }

                return CoreDataList.GroupBy(p => new
                             {
                                 Grade = ((p.OverallResult == "A+" || p.OverallResult == "A") ? "A" : p.OverallResult),
                                 ReasonGrp = p.OverallResultReasonGroup,
                                 CoreReasonsSummary = p.OverallResultCoreDefecName,
                                 WhichPart = string.IsNullOrEmpty(p.OverallResultReasonPart) ? "" : p.OverallResultReasonPart
                             })
                             .Select(g => new CoreReasonsClass
                              {
                                  Grade = g.Key.Grade,
                                  ReasonGrp = g.Key.ReasonGrp,
                                  CoreReasonsSummary = g.Key.CoreReasonsSummary,
                                  WhichPart = g.Key.WhichPart,
                                  OccurredAuditRoll = g.Count()
                              })
                            .OrderBy(p => p.Grade).ThenBy(p => p.OccurredAuditRoll).ThenBy(p => p.CoreReasonsSummary).ToList();
            }
        }



    }
}
