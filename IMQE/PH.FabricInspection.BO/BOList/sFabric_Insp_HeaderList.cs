using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using PH.Platform.BO;
using PH.Platform.BO.Interface;
using DevExpress.XtraEditors;

namespace PH.FabricInspection.BO
{
    public class sFabric_Insp_HeaderList : BaseEntityList<sFabric_Insp_Header, FabricInspectionDataContext>
    {
        public IEnumerable<sFabric_Insp_Header> GetFabric_Insp_HeaderList()
        {
            //PH.FabricInspection.BO.FabricInspectionDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>();
            //this.CurrentDataContext = context;
            var dataList = from c in CurrentDataContext.sFabric_Insp_Headers select c;
            //return dataList.ToList<Fabric_Insp_Header>();
            return dataList;


        }

        /// <summary>
        /// Xsj(补)20110919:获取前日期向前推150天至今所有的Fabric_Insp_Header数据
        /// </summary>
        /// <param name="ss">日期向前推150天的日期，格式为"yyMMdd"</param>
        /// <returns></returns>
        public IEnumerable<sFabric_Insp_Header> GetFabric_Insp_HeaderListFilter(string ss)
        {
            //PH.FabricInspection.BO.FabricInspectionDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>();
            //this.CurrentDataContext = context;
            //long sFromD = Convert.ToInt32(ss) * 1000 + 1;
            //var dataList = from c in CurrentDataContext.Fabric_Insp_Headers where c.System_Install_No >= sFromD  select c ;

            ////取数据前先计算好一些计算字段，如：Split id Flag、Diff Length 合计 By Lot、Usable Width最小值 By Lot
            ////这些本来可以在BO中用计算字段来实现，但速度太慢，所以改为用存储过程来实现, 由david加入 2020-10-14
            //string SqlStr = string.Format("exec sp_CalculateShowData '{0}'", ss);
            //CurrentDataContext.ExecuteCommand(SqlStr);

            //SqlStr = string.Format("select * from Fabric_Insp_Header where Stock_In_Date >= '{0}' order by RefNo desc, Lot_Id", ss);
            //var dataList = CurrentDataContext.ExecuteQuery<Fabric_Insp_Header>(SqlStr);
            //return dataList;

            //var dataList = CurrentDataContext.Fabric_Insp_Headers.Where(p => p.System_Install_No >= sFromD).OrderByDescending(p => p.RefNo).ThenBy(p => p.Lot_Id);
            //            select * from ActionLogHeader
            //where isnull(IsCompleted, 0) = 0 and PlanEndDate < getdate()

            var dataList = CurrentDataContext.sFabric_Insp_Headers.Where(p => Convert.ToInt32(p.Stock_In_Date) >= Convert.ToInt32(ss))
                .OrderByDescending(p => p.RefNo).ThenBy(p => p.AuditStage).ThenBy(p => p.Supplich_Batch).ThenBy(p => p.Create_Date).ThenBy(p => p.Lot_Id);
            return dataList;
        }

        //可以查询某一天的检查数据， 由David增加 2021-01-29
        public IEnumerable<sFabric_Insp_Header> GetFabric_Insp_HeaderListFilterByDailyDate(string ADailyDate, string AWarehouse)
        {
            var dataList = CurrentDataContext.sFabric_Insp_Headers
                .Where(p => Convert.ToInt32(p.Stock_In_Date) == Convert.ToInt32(ADailyDate) && (string.IsNullOrEmpty(AWarehouse) || p.Warehouse == AWarehouse))
                .OrderByDescending(p => p.RefNo).ThenBy(p => p.AuditStage).ThenBy(p => p.Supplich_Batch).ThenBy(p => p.Lot_Id);
            return dataList;
        }

        //可以查询某一时间段内的检查数据， 由David增加 2021-02-03
        public IEnumerable<sFabric_Insp_Header> GetFabric_Insp_HeaderListFilterByDateRange(string AFromDate, string AToDate, string AWarehouse)
        {
            var dataList = CurrentDataContext.sFabric_Insp_Headers
                .Where(p => Convert.ToInt32(p.Stock_In_Date) >= Convert.ToInt32(AFromDate) && Convert.ToInt32(p.Stock_In_Date) <= Convert.ToInt32(AToDate) &&
                    (string.IsNullOrEmpty(AWarehouse) || p.Warehouse == AWarehouse))
                .OrderByDescending(p => p.RefNo).ThenBy(p => p.AuditStage).ThenBy(p => p.Supplich_Batch).ThenBy(p => p.Lot_Id);
            return dataList;
        }



        /// <summary>
        /// Xsj20120523:获取指定日期段之間的所有的Fabric_Insp_Header数据
        /// </summary>
        /// <param name="ss">日期向前推120天的日期，格式为"yyMMdd"</param>
        /// <returns></returns>
        public IEnumerable<sFabric_Insp_Header> GetFabric_Insp_HeaderListFilter(string FromDateStr, string EndDateStr)
        {
            long sFromD = Convert.ToInt32(FromDateStr) * 1000 + 1;
            long eEndID = Convert.ToInt32(EndDateStr) * 1000 + 999;
            var dataList = from c in CurrentDataContext.sFabric_Insp_Headers where c.System_Install_No >= sFromD && c.System_Install_No <= eEndID select c;
            return dataList;

        }

        public IEnumerable<sFabric_Insp_Header> GetFabric_Insp_HeaderListFilter(string fromSystemNo, string toSystemNo, string fromItemNo, string toItemNo, string fromLotId, string toLotId)
        {
            //PH.FabricInspection.BO.FabricInspectionDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>();
            //this.CurrentDataContext = context;
            long fromSystemNo1 = Convert.ToInt32(fromSystemNo);
            long toSystemNo1 = Convert.ToInt32(toSystemNo);
            var dataList = from c in CurrentDataContext.sFabric_Insp_Headers where (c.System_Install_No >= fromSystemNo1) && (c.System_Install_No <= toSystemNo1) && (c.Lot_Id.CompareTo(fromLotId) >= 0) && (c.Lot_Id.CompareTo(toLotId) <= 0) && (c.Item_No.CompareTo(fromItemNo) >= 0) && (c.Item_No.CompareTo(toItemNo) <= 0) select c;
            //return dataList.ToList<Fabric_Insp_Header>();
            return dataList;


        }

        public IEnumerable<sFabric_Insp_Header> GetFabric_Insp_HeaderListFilter1(string strCompanyNo, string strLotId)
        {
            //PH.FabricInspection.BO.FabricInspectionDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>();
            //this.CurrentDataContext = context;
            var dataList = from c in CurrentDataContext.sFabric_Insp_Headers where c.Company.Equals(strCompanyNo) && (c.Lot_Id == strLotId) select c;
            //return dataList.ToList<Fabric_Insp_Header>();
            return dataList;


        }
        public IEnumerable<sFabric_Insp_Header> GetFabric_Insp_HeaderListWith(string strCompanyNo, int intSystemInstallNo)
        {
            //PH.FabricInspection.BO.FabricInspectionDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>();
            //this.CurrentDataContext = context;
            var dataList = from p in CurrentDataContext.sFabric_Insp_Headers
                           where p.Company.Equals(strCompanyNo) && (p.System_Install_No == intSystemInstallNo)
                           select p;
            //return dataList.ToList<Fabric_Insp_Header>();
            return dataList;


        }

        public IEnumerable<sFabric_Insp_Header> GetFabric_Insp_HeaderListWith(string strCompanyNo, string strItemNo, string strStockInDate)
        {
            //PH.FabricInspection.BO.FabricInspectionDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>();
            //this.CurrentDataContext = context;
            var dataList = from p in CurrentDataContext.sFabric_Insp_Headers
                           where p.Company.ToUpper().Equals(strCompanyNo.ToUpper()) && p.Item_No.ToUpper().Equals(strItemNo.ToUpper()) && p.Stock_In_Date.ToUpper().Equals(strStockInDate.ToUpper())
                           select p; ;
            //return dataList.ToList<Fabric_Insp_Header>();
            return dataList;


        }
    }
}
