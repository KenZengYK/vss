using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Threading.Tasks;
using DevExpress.Xpo;
using DevExtreme.AspNet.Mvc;
using DevExtreme.AspNet.Data;
using QEFullInspetion.Models.PH_MobileQC;

namespace QEFullInspetion.Controllers
{
    [Route("api/[controller]/[action]/{id?}")]
    [ApiController]
    public class DataHelperController : Controller
    {
        private UnitOfWork _uow;

        public DataHelperController(UnitOfWork unitOfWork)
        {
            this._uow = unitOfWork;
        }

        /// <summary>
        /// 取Factory信息
        /// </summary>
        /// <param name="loadOptions"></param>
        /// <returns></returns>
        [HttpGet]
        public object GetFactory(DataSourceLoadOptions loadOptions)
        {
            string SqlStr = @"select tplant as Factory
                              from openquery(interbase, 'select distinct tplant from Mobile_QC_new 
                                                         where tshop is not null and tshop <> ''''
                                                         order by tplant desc')";

            var obj = _uow.ExecuteQuery(SqlStr).ResultSet[0].Rows.Select(p => new { Factory = p.Values[0] }).AsQueryable();
            return DataSourceLoader.Load(obj, loadOptions);
        }

        /// <summary>
        /// 取Line信息
        /// </summary>
        /// <param name="Factory"></param>
        /// <param name="loadOptions"></param>
        /// <returns></returns>
        [HttpGet]
        public object GetLine(string Factory, DataSourceLoadOptions loadOptions)
        {
            if (string.IsNullOrEmpty(Factory))
            {
                return null;
            }

            string SqlStr = @"select tplant as Factory, tShop as WorkShop, pline as Line
                              from openquery(interbase, 'select distinct tplant, tshop, pline from Mobile_QC_new 
                                                         where tplant = ''{0}'' and pline <> ''2A'' and tshop is not null and tshop <> ''''')";
            SqlStr = string.Format(SqlStr, Factory);

            var obj = _uow.ExecuteQuery(SqlStr).ResultSet[0].Rows.Select(p => new { Factory = p.Values[0], WorkShop = p.Values[1], Line = p.Values[2] }).AsQueryable();
            //return Json(await DataSourceLoader.LoadAsync(obj, loadOptions));
            return DataSourceLoader.Load(obj, loadOptions);
        }

        /// <summary>
        /// 取LWO (Line WorkOrder)信息
        /// </summary>
        /// <param name="Line"></param>
        /// <param name="loadOptions"></param>
        /// <returns></returns>
        [HttpGet]
        public object GetLWO(string Line, DataSourceLoadOptions loadOptions)
        {
            if (string.IsNullOrEmpty(Line))
            {
                return null;
            }

            //string SqlStr = string.Format("exec sp_getmobileqcinfo '{0}'", Line);
            string SqlStr = string.Format("exec sp_getmobileqcinfo_AQL '{0}'", Line);

            var obj = _uow.ExecuteQuery(SqlStr).ResultSet[0].Rows.Select(p => new
            {
                LWO = string.Format("{0}-{1}-{2}-{3}", p.Values[2], p.Values[3], p.Values[4], p.Values[0]),
                Line = Line,
                Project = p.Values[1],
                //WO = p.Values[2],
                //CWO = p.Values[3],
                //RWO = p.Values[4],
                ColorCode = p.Values[5],
                StyleNo = p.Values[6],
                SeqNo = p.Values[7],
                StartDate = p.Values[8],
                QNQty = p.Values[11]
            }).AsQueryable();
            return DataSourceLoader.Load(obj, loadOptions);
        }

        /// <summary>
        /// 取尺码信息
        /// </summary>
        /// <param name="FullInspectionHeader"></param>
        /// <param name="loadOptions"></param>
        /// <returns></returns>
        [HttpGet]
        //public object GetSize(long? FullInspectionHeader, string Line, string SeqNo, DataSourceLoadOptions loadOptions)
        public object GetSize(long? FullInspectionHeader, DataSourceLoadOptions loadOptions)
        {
            //string SqlStr = "select PSIZ as Size from openquery(interbase, 'select PSIZ from Mobile_QC2 where PLine = ''{0}'' and Seq = ''{1}'' order by PSIZ')";
            //SqlStr = string.Format(SqlStr, Line, SeqNo);
            //var obj = _uow.ExecuteQuery(SqlStr).ResultSet[0].Rows.Select(p => new { Size = p.Values[0] }).AsQueryable();

            string SqlStr = string.Format("exec sp_FullInspectionGetSize {0}", FullInspectionHeader);
            var obj = _uow.ExecuteQuery(SqlStr).ResultSet[0].Rows.Select(p => new { Size = p.Values[0] }).AsQueryable();
            return DataSourceLoader.Load(obj, loadOptions);
        }

        /// <summary>
        /// 取疵點列表
        /// </summary>
        /// <param name="loadOptions"></param>
        /// <returns></returns>
        [HttpGet]
        public object GetDefect(DataSourceLoadOptions loadOptions)
        {
            string SqlStr = @"select PHDefectCode, DefectEnglishName, DefectChineseName, DefectThaiName 
                             from[PH.FabricInspection]..PHQCDefect
                             order by PHDefectCode";

            var obj = _uow.ExecuteQuery(SqlStr).ResultSet[0].Rows.Select(p => new
            {
                DefectCode = p.Values[0],
                DefectNameEN = p.Values[1],
                DefectNameCN = p.Values[2],
                DefectNameBD = p.Values[3]
            }).AsQueryable();

            return DataSourceLoader.Load(obj, loadOptions);
        }

        /// <summary>
        /// 取疵點位置列表
        /// </summary>
        /// <param name="loadOptions"></param>
        /// <returns></returns>
        [HttpGet]
        public object GetPOD(DataSourceLoadOptions loadOptions)
        {
            string SqlStr = @"select Defect_Code, Defect_Spec, Desc_EN, Desc_TH
                             from [PH.MobileQC]..QC_Defect
                             where Defect_Type = 2
                             order by Defect_Code";

            var obj = _uow.ExecuteQuery(SqlStr).ResultSet[0].Rows.Select(p => new
            {
                PODCode = p.Values[0],
                PODNameCN = p.Values[1],
                PODNameEN = p.Values[2],
                PODNameBD = p.Values[3]
            }).AsQueryable();

            return DataSourceLoader.Load(obj, loadOptions);
        }

        /// <summary>
        /// 得到End-line Inspector/尾段针鏠审查员、Line Leader/拉长、Sewing Supervisor/缝合主任 信息
        /// </summary>
        /// <param name="Factory">工厂</param>
        /// <param name="Line">拉</param>
        /// <param name="loadOptions"></param>
        /// <returns></returns>
        [HttpGet]
        public object GetPersonnelInformation(string Factory, string Line, DataSourceLoadOptions loadOptions)
        {
            string SqlStr = "select EndlineInspector, LineLeader_E, Supervisor_F from[PH.LWPM.WP]..OpsPermitSign where Factory = '{0}' and Line = '{1}'";
            SqlStr = string.Format(SqlStr, Factory, Line);

            var obj = _uow.ExecuteQuery(SqlStr).ResultSet[0].Rows.Select(p => new
            {
                EndlineInspector = p.Values[0],
                LineLeader = p.Values[1],
                SewingSupervisor = p.Values[2]
            }).AsQueryable();

            return DataSourceLoader.Load(obj, loadOptions);
        }

        [HttpGet]
        public List<string> GetLanguage()
        {
            List<string> lists = new List<string>();
            lists.Add("EN");
            lists.Add("CN");
            //lists.Add("BD");
            return lists;
        }

        //得到 Inspection Incomplete(未審查完)的List
        public object GetIncompleteList(DataSourceLoadOptions loadOptions)
        {
            var obj = _uow.ExecuteSproc("sp_GetFullInspectionIncompleteList").ResultSet[0].Rows.Select(p => new IncompleteResult
            {
                Oid = Convert.ToInt64(p.Values[0]),
                Customer = Convert.ToString(p.Values[1]),
                CustomerPO = Convert.ToString(p.Values[2]),
                CustStyleNo = Convert.ToString(p.Values[3]),
                ProjectNo = Convert.ToString(p.Values[4]),
                WONO = Convert.ToString(p.Values[5]),
                QNNO = Convert.ToString(p.Values[6]),
                ColorCode = Convert.ToString(p.Values[7]),
                Factory = Convert.ToString(p.Values[8]),
                Line = Convert.ToString(p.Values[9]),
                QNQty = p.Values[10] == null ? null : Convert.ToInt32(p.Values[10]),
                InspectedQty = p.Values[11] == null ? null : Convert.ToInt32(p.Values[11]),
                BalanceQty = p.Values[12] == null ? null : Convert.ToInt32(p.Values[12]),
                FirstInspectedDate = p.Values[13] == null ? null : Convert.ToDateTime(p.Values[13]).ToString("yyyy-MM-dd"),
                ExftyDate = p.Values[14] == null ? null : Convert.ToDateTime(p.Values[14]).ToString("yyyy-MM-dd"),
                InspectionDateVsExftyDiff = p.Values[15] == null ? null : Convert.ToInt32(p.Values[15]),
                InspectionDateVsTodayDiff = p.Values[16] == null ? null : Convert.ToInt32(p.Values[16]),
                WorkShop = p.Values[17] == null ? null : Convert.ToString(p.Values[17])
            }).AsQueryable();

            return DataSourceLoader.Load(obj, loadOptions);
        }

        [HttpGet]
        public object GetIncompleteListTotalInformation(DataSourceLoadOptions loadOptions)
        {
            var lists = _uow.ExecuteSproc("sp_GetFullInspectionIncompleteList").ResultSet[0].Rows.Select(p => new IncompleteResult
            {
                Oid = Convert.ToInt64(p.Values[0]),
                Customer = Convert.ToString(p.Values[1]),
                CustomerPO = Convert.ToString(p.Values[2]),
                CustStyleNo = Convert.ToString(p.Values[3]),
                ProjectNo = Convert.ToString(p.Values[4]),
                WONO = Convert.ToString(p.Values[5]),
                QNNO = Convert.ToString(p.Values[6]),
                ColorCode = Convert.ToString(p.Values[7]),
                Factory = Convert.ToString(p.Values[8]),
                Line = Convert.ToString(p.Values[9]),
                QNQty = p.Values[10] == null ? null : Convert.ToInt32(p.Values[10]),
                InspectedQty = p.Values[11] == null ? null : Convert.ToInt32(p.Values[11]),
                BalanceQty = p.Values[12] == null ? null : Convert.ToInt32(p.Values[12]),
                FirstInspectedDate = p.Values[13] == null ? null : Convert.ToDateTime(p.Values[13]).ToString("yyyy-MM-dd"),
                ExftyDate = p.Values[14] == null ? null : Convert.ToDateTime(p.Values[14]).ToString("yyyy-MM-dd"),
                InspectionDateVsExftyDiff = p.Values[15] == null ? null : Convert.ToInt32(p.Values[15]),
                InspectionDateVsTodayDiff = p.Values[16] == null ? null : Convert.ToInt32(p.Values[16]),
                WorkShop = p.Values[17] == null ? null : Convert.ToString(p.Values[17])
            }).AsQueryable();


            var TotalCustomerPO = lists.Where(p => !string.IsNullOrEmpty(p.CustomerPO)).Select(p => p.CustomerPO).Distinct().Count();
            var TotalCustStyleNo = lists.Where(p => !string.IsNullOrEmpty(p.CustStyleNo)).Select(p => p.CustStyleNo).Distinct().Count();
            var TotalProjectNo = lists.Where(p => !string.IsNullOrEmpty(p.ProjectNo)).Select(p => p.ProjectNo).Distinct().Count();
            var TotalWONO = lists.Where(p => !string.IsNullOrEmpty(p.WONO)).Select(p => p.WONO).Distinct().Count();
            var TotalQNNO = lists.Where(p => !string.IsNullOrEmpty(p.QNNO)).Select(p => p.QNNO).Distinct().Count();
            var TotalFactory = lists.Where(p => !string.IsNullOrEmpty(p.Factory)).Select(p => p.Factory).Distinct().Count();
            var TotalLine = lists.Where(p => !string.IsNullOrEmpty(p.Line)).Select(p => p.Line).Distinct().Count();
            var TotalWorkShop = lists.Where(p => !string.IsNullOrEmpty(p.WorkShop)).Select(p => p.WorkShop).Distinct().Count();
            var TotalInspectedQty = lists.Select(p => p.InspectedQty).Sum();
            var TotalBalanceQty = lists.Select(p => p.BalanceQty).Sum();

            return Json(new
            {
                TotalCustomerPO = TotalCustomerPO,
                TotalCustStyleNo = TotalCustStyleNo,
                TotalProjectNo = TotalProjectNo,
                TotalWONO = TotalWONO,
                TotalQNNO = TotalQNNO,
                TotalFactory = TotalFactory,
                TotalLine = TotalLine,
                TotalWorkShop = TotalWorkShop,
                TotalInspectedQty = TotalInspectedQty,
                TotalBalanceQty = TotalBalanceQty
            });
        }


        //得到Inspectin (WIP) records (審查中記錄)的List
        public object GetWIPList(DataSourceLoadOptions loadOptions)
        {
            var obj = _uow.ExecuteSproc("sp_GetFullInspectionWIPList").ResultSet[0].Rows.Select(p => new WIPResult
            {
                Oid = Convert.ToInt64(p.Values[0]),
                Customer = Convert.ToString(p.Values[1]),
                CustomerPO = Convert.ToString(p.Values[2]),
                CustStyleNo = Convert.ToString(p.Values[3]),
                ProjectNo = Convert.ToString(p.Values[4]),
                WONO = Convert.ToString(p.Values[5]),
                QNNO = Convert.ToString(p.Values[6]),
                ColorCode = Convert.ToString(p.Values[7]),
                InspectionDate = p.Values[8] == null ? null : Convert.ToDateTime(p.Values[8]).ToString("yyyy-MM-dd"),
                Inspector = Convert.ToString(p.Values[9]),

                Factory = Convert.ToString(p.Values[10]),
                Line = Convert.ToString(p.Values[11]),
                QNQty = p.Values[12] == null ? null : Convert.ToInt32(p.Values[12]),
                InspectedQty = p.Values[13] == null ? null : Convert.ToInt32(p.Values[13]),
                ReInspectedQty = p.Values[14] == null ? null : Convert.ToInt32(p.Values[14]),
                TotalCheckPoint = p.Values[15] == null ? null : Convert.ToInt32(p.Values[15]),
                WorkShop = p.Values[16] == null ? null : Convert.ToString(p.Values[16]),

                LineLeader = p.Values[17] == null ? null : Convert.ToString(p.Values[17]),
                OutstandingQty = p.Values[17] == null ? null : Convert.ToInt32(p.Values[18]),
                OutstandingPercent = p.Values[18] == null ? null : Convert.ToDecimal(p.Values[19]),


                ReInspectedPercent = p.Values[17] == null ? null : Convert.ToDecimal(p.Values[20])
            }).AsQueryable();

            //.OrderBy(p => p.Factory).ThenBy(p => p.WorkShop).ThenBy(p => p.QNNO).ThenBy(p => p.InspectionDate);

            return DataSourceLoader.Load(obj, loadOptions);
        }

        [HttpGet]
        public object GetWIPListTotalInformation(DataSourceLoadOptions loadOptions)
        {
            var lists = _uow.ExecuteSproc("sp_GetFullInspectionWIPList").ResultSet[0].Rows.Select(p => new WIPResult
            {
                Oid = Convert.ToInt64(p.Values[0]),
                Customer = Convert.ToString(p.Values[1]),
                CustomerPO = Convert.ToString(p.Values[2]),
                CustStyleNo = Convert.ToString(p.Values[3]),
                ProjectNo = Convert.ToString(p.Values[4]),
                WONO = Convert.ToString(p.Values[5]),
                QNNO = Convert.ToString(p.Values[6]),
                ColorCode = Convert.ToString(p.Values[7]),
                InspectionDate = p.Values[8] == null ? null : Convert.ToDateTime(p.Values[8]).ToString("yyyy-MM-dd"),
                Inspector = Convert.ToString(p.Values[9]),

                Factory = Convert.ToString(p.Values[10]),
                Line = Convert.ToString(p.Values[11]),
                QNQty = p.Values[12] == null ? null : Convert.ToInt32(p.Values[12]),
                InspectedQty = p.Values[13] == null ? null : Convert.ToInt32(p.Values[13]),
                ReInspectedQty = p.Values[14] == null ? null : Convert.ToInt32(p.Values[14]),
                TotalCheckPoint = p.Values[15] == null ? null : Convert.ToInt32(p.Values[15]),
                WorkShop = p.Values[16] == null ? null : Convert.ToString(p.Values[16])
            }).AsQueryable();


            var TotalCustomerPO = lists.Where(p => !string.IsNullOrEmpty(p.CustomerPO)).Select(p => p.CustomerPO).Distinct().Count();
            var TotalCustStyleNo = lists.Where(p => !string.IsNullOrEmpty(p.CustStyleNo)).Select(p => p.CustStyleNo).Distinct().Count();
            var TotalProjectNo = lists.Where(p => !string.IsNullOrEmpty(p.ProjectNo)).Select(p => p.ProjectNo).Distinct().Count();
            var TotalWONO = lists.Where(p => !string.IsNullOrEmpty(p.WONO)).Select(p => p.WONO).Distinct().Count();
            var TotalQNNO = lists.Where(p => !string.IsNullOrEmpty(p.QNNO)).Select(p => p.QNNO).Distinct().Count();
            var TotalInspector = lists.Where(p => !string.IsNullOrEmpty(p.Inspector)).Select(p => p.Inspector).Distinct().Count();
            var TotalFactory = lists.Where(p => !string.IsNullOrEmpty(p.Factory)).Select(p => p.Factory).Distinct().Count();
            var TotalLine = lists.Where(p => !string.IsNullOrEmpty(p.Line)).Select(p => p.Line).Distinct().Count();
            var TotalWorkShop = lists.Where(p => !string.IsNullOrEmpty(p.WorkShop)).Select(p => p.WorkShop).Distinct().Count();
            var TotalInspectedQty = lists.Select(p => p.InspectedQty).Sum();
            var TotalReInspectedQty = lists.Select(p => p.ReInspectedQty).Sum();
            var TotalTotalCheckPoint = lists.Select(p => p.TotalCheckPoint).Sum();
            var TotalInspectionDate = lists.Where(p => !string.IsNullOrEmpty(p.InspectionDate)).Select(p => p.InspectionDate).Distinct().Count();

            return Json(new
            {
                TotalCustomerPO = TotalCustomerPO,
                TotalCustStyleNo = TotalCustStyleNo,
                TotalProjectNo = TotalProjectNo,
                TotalWONO = TotalWONO,
                TotalQNNO = TotalQNNO,
                TotalFactory = TotalFactory,
                TotalInspector = TotalInspector,
                TotalLine = TotalLine,
                TotalWorkShop = TotalWorkShop,
                TotalInspectedQty = TotalInspectedQty,
                TotalReInspectedQty = TotalReInspectedQty,
                TotalTotalCheckPoint = TotalTotalCheckPoint,
                TotalReInspectedPercent = (TotalInspectedQty ?? 0) == 0 ? null : Convert.ToDecimal(1.0000 * TotalReInspectedQty / (TotalInspectedQty + TotalReInspectedQty)).ToString("P"),
                TotalInspectionDate = TotalInspectionDate
            });
        }

        //得到已完成但沒有走貨的記錄
        public object GetNonShipmentList(DataSourceLoadOptions loadOptions)
        {

            var obj = _uow.ExecuteSproc("sp_GetFullInspectionNonShipmentList").ResultSet[0].Rows.Select(p => new WIPResult
            {
                Oid = Convert.ToInt64(p.Values[0]),
                Customer = Convert.ToString(p.Values[1]),
                CustomerPO = Convert.ToString(p.Values[2]),
                CustStyleNo = Convert.ToString(p.Values[3]),
                ProjectNo = Convert.ToString(p.Values[4]),
                WONO = Convert.ToString(p.Values[5]),
                QNNO = Convert.ToString(p.Values[6]),
                ColorCode = Convert.ToString(p.Values[7]),
                InspectionDate = p.Values[8] == null ? null : Convert.ToDateTime(p.Values[8]).ToString("yyyy-MM-dd"),
                Inspector = Convert.ToString(p.Values[9]),

                Factory = Convert.ToString(p.Values[10]),
                Line = Convert.ToString(p.Values[11]),
                QNQty = p.Values[12] == null ? null : Convert.ToInt32(p.Values[12]),
                InspectedQty = p.Values[13] == null ? null : Convert.ToInt32(p.Values[13]),
                ReInspectedQty = p.Values[14] == null ? null : Convert.ToInt32(p.Values[14]),
                TotalCheckPoint = p.Values[15] == null ? null : Convert.ToInt32(p.Values[15]),
                WorkShop = p.Values[16] == null ? null : Convert.ToString(p.Values[16]),

                LineLeader = p.Values[17] == null ? null : Convert.ToString(p.Values[17]),
                SewingSupervisior = p.Values[18] == null ? null : Convert.ToString(p.Values[18]),


                OutstandingQty = p.Values[19] == null ? null : Convert.ToInt32(p.Values[19]),
                OutstandingPercent = p.Values[20] == null ? null : Convert.ToDecimal(p.Values[20]),

                ReInspectedPercent = p.Values[21] == null ? null : Convert.ToDecimal(p.Values[21])
            }).AsQueryable();

            return DataSourceLoader.Load(obj, loadOptions);

            //    var obj = _uow.ExecuteSproc("sp_GetFullInspectionNonShipmentList").ResultSet[0].Rows.Select(p => new WIPResult
            //    {
            //        Oid = Convert.ToInt64(p.Values[0]),
            //        Customer = Convert.ToString(p.Values[1]),
            //        CustomerPO = Convert.ToString(p.Values[2]),
            //        CustStyleNo = Convert.ToString(p.Values[3]),
            //        ProjectNo = Convert.ToString(p.Values[4]),
            //        WONO = Convert.ToString(p.Values[5]),
            //        QNNO = Convert.ToString(p.Values[6]),
            //        ColorCode = Convert.ToString(p.Values[7]),
            //        InspectionDate = p.Values[8] == null ? null : Convert.ToDateTime(p.Values[8]).ToString("yyyy-MM-dd"),
            //        Inspector = Convert.ToString(p.Values[9]),

            //        Factory = Convert.ToString(p.Values[10]),
            //        Line = Convert.ToString(p.Values[11]),
            //        QNQty = p.Values[12] == null ? null : Convert.ToInt32(p.Values[12]),
            //        InspectedQty = p.Values[13] == null ? null : Convert.ToInt32(p.Values[13]),
            //        ReInspectedQty = p.Values[14] == null ? null : Convert.ToInt32(p.Values[14]),
            //        TotalCheckPoint = p.Values[15] == null ? null : Convert.ToInt32(p.Values[15]),
            //        WorkShop = p.Values[16] == null ? null : Convert.ToString(p.Values[16]),
            //        ReInspectedPercent = p.Values[17] == null ? null : Convert.ToDecimal(p.Values[17])
            //    }).AsQueryable();

            //    return DataSourceLoader.Load(obj, loadOptions);
        }

        [HttpGet]
        public object GetNonShipmentListTotalInformation(DataSourceLoadOptions loadOptions)
        {
            var lists = _uow.ExecuteSproc("sp_GetFullInspectionNonShipmentList").ResultSet[0].Rows.Select(p => new WIPResult
            {
                Oid = Convert.ToInt64(p.Values[0]),
                Customer = Convert.ToString(p.Values[1]),
                CustomerPO = Convert.ToString(p.Values[2]),
                CustStyleNo = Convert.ToString(p.Values[3]),
                ProjectNo = Convert.ToString(p.Values[4]),
                WONO = Convert.ToString(p.Values[5]),
                QNNO = Convert.ToString(p.Values[6]),
                ColorCode = Convert.ToString(p.Values[7]),
                InspectionDate = p.Values[8] == null ? null : Convert.ToDateTime(p.Values[8]).ToString("yyyy-MM-dd"),
                Inspector = Convert.ToString(p.Values[9]),

                Factory = Convert.ToString(p.Values[10]),
                Line = Convert.ToString(p.Values[11]),
                QNQty = p.Values[12] == null ? null : Convert.ToInt32(p.Values[12]),
                InspectedQty = p.Values[13] == null ? null : Convert.ToInt32(p.Values[13]),
                ReInspectedQty = p.Values[14] == null ? null : Convert.ToInt32(p.Values[14]),
                TotalCheckPoint = p.Values[15] == null ? null : Convert.ToInt32(p.Values[15]),
                WorkShop = p.Values[16] == null ? null : Convert.ToString(p.Values[16])
            }).AsQueryable();


            var TotalCustomerPO = lists.Where(p => !string.IsNullOrEmpty(p.CustomerPO)).Select(p => p.CustomerPO).Distinct().Count();
            var TotalCustStyleNo = lists.Where(p => !string.IsNullOrEmpty(p.CustStyleNo)).Select(p => p.CustStyleNo).Distinct().Count();
            var TotalProjectNo = lists.Where(p => !string.IsNullOrEmpty(p.ProjectNo)).Select(p => p.ProjectNo).Distinct().Count();
            var TotalWONO = lists.Where(p => !string.IsNullOrEmpty(p.WONO)).Select(p => p.WONO).Distinct().Count();
            var TotalQNNO = lists.Where(p => !string.IsNullOrEmpty(p.QNNO)).Select(p => p.QNNO).Distinct().Count();
            var TotalInspector = lists.Where(p => !string.IsNullOrEmpty(p.Inspector)).Select(p => p.Inspector).Distinct().Count();
            var TotalFactory = lists.Where(p => !string.IsNullOrEmpty(p.Factory)).Select(p => p.Factory).Distinct().Count();
            var TotalLine = lists.Where(p => !string.IsNullOrEmpty(p.Line)).Select(p => p.Line).Distinct().Count();
            var TotalWorkShop = lists.Where(p => !string.IsNullOrEmpty(p.WorkShop)).Select(p => p.WorkShop).Distinct().Count();
            var TotalInspectedQty = lists.Select(p => p.InspectedQty).Sum();
            var TotalReInspectedQty = lists.Select(p => p.ReInspectedQty).Sum();
            var TotalTotalCheckPoint = lists.Select(p => p.TotalCheckPoint).Sum();
            var TotalInspectionDate = lists.Where(p => !string.IsNullOrEmpty(p.InspectionDate)).Select(p => p.InspectionDate).Distinct().Count();

            return Json(new
            {
                TotalCustomerPO = TotalCustomerPO,
                TotalCustStyleNo = TotalCustStyleNo,
                TotalProjectNo = TotalProjectNo,
                TotalWONO = TotalWONO,
                TotalQNNO = TotalQNNO,
                TotalFactory = TotalFactory,
                TotalInspector = TotalInspector,
                TotalLine = TotalLine,
                TotalWorkShop = TotalWorkShop,
                TotalInspectedQty = TotalInspectedQty,
                TotalReInspectedQty = TotalReInspectedQty,
                TotalTotalCheckPoint = TotalTotalCheckPoint,
                TotalReInspectedPercent = (TotalInspectedQty ?? 0) == 0 ? null : Convert.ToDecimal((1.0000 * TotalReInspectedQty / (TotalInspectedQty + TotalReInspectedQty))).ToString("p"),
                TotalInspectionDate = TotalInspectionDate
            });
        }
    }

    public class IncompleteResult
    {
        public Int64 Oid { get; set; }
        public string Customer { get; set; }
        public string CustomerPO { get; set; }
        public string CustStyleNo { get; set; }
        public string ProjectNo { get; set; }
        public string WONO { get; set; }
        public string QNNO { get; set; }
        public string ColorCode { get; set; }
        public string Factory { get; set; }
        public string Line { get; set; }
        public int? QNQty { get; set; }
        public int? InspectedQty { get; set; }
        public int? BalanceQty { get; set; }
        public string FirstInspectedDate { get; set; }
        public string ExftyDate { get; set; }
        public int? InspectionDateVsExftyDiff { get; set; }
        public int? InspectionDateVsTodayDiff { get; set; }
        public string WorkShop { get; set; }
    }
    public class WIPResult
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
        public int? ReInspectedQty { get; set; }
        public int? TotalCheckPoint { get; set; }
        public string WorkShop { get; set; }
        public decimal? ReInspectedPercent { get; set; }
        public string LineLeader { get; set; }
        public string SewingSupervisior { get; set; }
        public int? OutstandingQty { get; set; }
        public decimal? OutstandingPercent { get; set; }


    }
}
