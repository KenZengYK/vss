using System;
using System.Linq;
using System.Data.Linq;
using System.Data.Linq.Mapping;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Reflection;
using System.Xml;
using PH.Platform.BO;
using System.Collections.Generic;

namespace PH.MobileQC.BO
{
    //FIS 2 报表
    public class FIS2ReportHelper
    {
        //FIS2 - Re-work% (Gmt) at End-phase Ws dd Sept 12
        public List<WIPDetailResult> GetWIPDetailDataList(MobileQCDataContext ADB, string AFactory, string AWorkshop, string AInspectionDate)
        {
            var AllDataList = ADB.ExecuteQuery<WIPDetailResult>("sp_GetFullInspectionNonShipmentList").ToList();
            return AllDataList.Where(p => p.Factory == AFactory && (AWorkshop =="" || p.WorkShop == AWorkshop) && p.InspectionDate == AInspectionDate).OrderBy(dr => dr.WorkShop).ToList();
        }

        //FIS2 - End-line Inspection (Gmt) | Evaluate End Phase Ws Team-leader | Ave. Freq. at Chk. Pt. as at Sep 12
        //FIS2 - 尾查 (成品) | 評估後段工場組長 | 平均核對點次數截至9月12日
        public List<WIPSummaryResult> GetWIPSummaryDataList(MobileQCDataContext ADB, string AFactory, string AInspectionDate)
        {
            var AllDataList = ADB.ExecuteQuery<WIPDetailResult>("sp_GetFullInspectionNonShipmentList").ToList();
            var DataList = AllDataList.Where(p => p.Factory == AFactory && p.InspectionDate == AInspectionDate).ToList();

            return DataList.GroupBy(p => new { p.Factory, p.WorkShop, p.InspectionDate, p.LineLeader, p.SewingSupervisior })
                 .Select(g => new WIPSummaryResult
                 {
                     Factory = g.Key.Factory,
                     WorkShop = g.Key.WorkShop,
                     InspectionDate = g.Key.InspectionDate,
                     LineLeader = g.Key.LineLeader,
                     SewingSupervisior = g.Key.SewingSupervisior,

                     InspectedQty = g.Sum(s => s.InspectedQty),
                     ReInspectionedQty = g.Sum(s => s.ReInspectionedQty),
                     TotalCheckPoint = g.Sum(s => s.TotalCheckPoint),
                     QNCount = g.Select(s => s.QNNO).Distinct().Count(),
                     LineCCount = g.Select(s => s.Line).Distinct().Count(),
                     InspectorCount = g.Select(s => s.Inspector).Distinct().Count()
                 }).OrderBy(dr=>dr.WorkShop).ToList();

        }
    }

    public class WIPDetailResult
    {
        public Int64 Oid { get; set; }
        public string Customer { get; set; }
        public string CustomerPO { get; set; }
        public string CustStyleNo { get; set; }
        public string ProjectNo { get; set; }
        public string WONO { get; set; }
        public string QNNO { get; set; }
        public string ColorCode { get; set; }
        public string InspectionDate { get; set; }
        public string Inspector { get; set; }
        public string Factory { get; set; }
        public string Line { get; set; }
        public int? QNQty { get; set; }
        public int? InspectedQty { get; set; }
        public int? ReInspectionedQty { get; set; }
        public int? TotalCheckPoint { get; set; }
        public string WorkShop { get; set; }
        public decimal? ReInspectedPercent { get; set; }
        public string LineLeader { get; set; }
        public string SewingSupervisior { get; set; }
        public int? OutstandingQty { get; set; }
        public decimal? OutstandingPercent { get; set; }
    }

    public class WIPSummaryResult
    {
        public string Factory { get; set; }
        public string WorkShop { get; set; }
        public string InspectionDate { get; set; }
        public int? InspectedQty { get; set; }
        public int? ReInspectionedQty { get; set; }

        public decimal? ReInspectedPercent
        {
            get
            {
                return ((InspectedQty ?? 0) + (ReInspectionedQty ?? 0)) == 0 ? null : 100.0000M * ReInspectionedQty / ((InspectedQty ?? 0) + (ReInspectionedQty ?? 0));
            }
        }

        public int? TotalCheckPoint { get; set; }
        public int? QNCount { get; set; }


        //Angle 1 角度 1
        //Ttl frequency at Chk Pt. divided by Ttl QN sheets;
        //核對點總次數 除去 數頁總張數;
        public decimal? Angle1
        {
            get
            {
                return (QNCount ?? 0) == 0 ? null : 1.0000M * TotalCheckPoint / QNCount;
            }
        }

        public int? LineCCount { get; set; }

        //Angle 2 角度 2
        //Ttl frequency at Chk Pt. divided by Ttl ALs;
        //核對點總次數 除去 組裝線總數;
        public decimal? Angle2
        {
            get
            {
                return (LineCCount ?? 0) == 0 ? null : 1.0000M * TotalCheckPoint / LineCCount;
            }
        }


        public int? InspectorCount { get; set; }

        //Angle 3 角度 3
        //Ttl frequency at Chk Pt. divided by Ttl Inspectors;
        //核對點總次數 除去 審查員總數;
        public decimal? Angle3
        {
            get
            {
                return (InspectorCount ?? 0) == 0 ? null : 1.0000M * TotalCheckPoint / InspectorCount;
            }
        }

        public string LineLeader { get; set; }
        public string SewingSupervisior { get; set; }

    }

}
