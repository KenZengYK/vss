using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
//using System.Windows.Forms;
using PH.RWO.BO;
using System.Data.Linq;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

using PH.Platform.BO;
using PH.Platform.AuthMgr.BO;

namespace PH.RWO.UI
{
    /****************************************************************************************
     * 
     *  Company:PH
     *  Dept   :IT
     *  Date   :2008-05-20
     *  Athor  :Ray jiang.
     *  Ver    :1.0.0.0
     *  修改日期:2008-05-21
     *  修改:   新增RoundWorkOrder的Confirm方法,用於控制審批和觸發郵件發送
     *  修改日期:2008-06-12
     *  修改:   新增批量Confirm的功能和Reject己經Confirm的輪制單
     *          新增獲取當前用戶可以Confirm的輪制和可以rejct的輸制單
     *          

     ****************************************************************************************/

    public class Global
    {

        #region 支持動態查詢
        /// <summary>
        /// 獲取對象數組[用於擴展數據獲取的方式,靈活的動態的篩選條件]
        /// </summary>
        /// <typeparam name="T">對象類型</typeparam>
        /// <param name="entry">數據表名[實體對應的表名]</param>
        /// <param name="strwhere">條件</param>
        /// <returns>對象數組</returns>
        public static IList<T> GetItemsForListing<T>(string entry, string strwhere, DataContext context)
        {
            string strSql = string.Empty;
            if (string.IsNullOrEmpty(strwhere))
            {
                strSql = string.Format("SELECT * From {0}", entry);
            }
            else
            {
                strSql = string.Format("SELECT * From {0} where {1}", entry, strwhere);
            }

            return GetItemsForListing<T>(strSql, context);

        }

        /// <summary>
        /// 獲取對象數組[用於擴展數據獲取的方式,靈活的動態的篩選條件]
        /// </summary>
        /// <typeparam name="T">對象類型</typeparam>
        /// <param name="fieldlist">字段名列表</param>
        /// <param name="entry">數據表名[實體對應的表名]</param>
        /// <param name="strwhere">條件</param>
        /// <returns>對象數組</returns>
        public static IList<T> GetItemsForListing<T>(string entry, string fieldlist, string strwhere, DataContext context)
        {
            string strSql = string.Empty;
            if (string.IsNullOrEmpty(strwhere))
            {
                strSql = string.Format("SELECT {1} From {0}", entry, fieldlist);
            }
            else
            {
                strSql = string.Format("SELECT {2} From {0} where {1}", entry, strwhere, fieldlist);
            }

            return GetItemsForListing<T>(strSql, context);
        }

        /// <summary>
        /// 獲取對象數組[執行有返回結果集的Sql命令]
        /// </summary>
        /// <typeparam name="sqlSql">SqlCommand</typeparam>
        /// <returns>對象數組</returns>
        public static IList<T> GetItemsForListing<T>(string strSql, DataContext context)
        {
            context.Connection.Open();
            SqlCommand command = new SqlCommand();
            try
            {
                command = new SqlCommand(strSql, (SqlConnection)context.Connection);
            }
            catch (System.Exception e)
            {
                throw e;
            }
            using (SqlDataReader reader = command.ExecuteReader(CommandBehavior.CloseConnection))
            {
                return context.Translate<T>(reader).ToList();
            }
        }
        #endregion


        public static RWOSOPCDataContext context = ContextBuilder.CreateContext<RWOSOPCDataContext>();

        /// <summary>
        /// 數據比較
        /// </summary>
        /// <param name="rwo">輪制單對象</param>
        /// <returns> True or false </returns>
        public static bool CompareData(PH.RWO.BO.RoundWorkOrder rwo)
        {
            return false;
        }

        /// <summary>
        /// 拆分輪制單
        /// </summary>
        /// <param name="rwo">制單對象</param>
        /// <param name="context">數據上下文對象</param>
        /// <param name="bs">當前數據綁定源</param>
        public static void SplitRoundWorderData(PH.RWO.BO.RoundWorkOrder rwo,DataContext context,BindingSource bs)
        {
            //string[] r = rwo.RoundNo.Split('/');
            int rno = rwo.RoundNo;
            int rtotal;
            try
            {
                rtotal = Convert.ToInt32(rwo.RoundTotal);
            }
            catch
            {
                rtotal = 0;
            }

            // 初始化分輪數
            int splitround = 4;


            // 更新輪單號
            for (int i = 1; i < splitround; i++)
            {
                PH.RWO.BO.RoundWorkOrder rs1 = new PH.RWO.BO.RoundWorkOrder();
                rs1 = RwoClone(rwo);
                int rnos = rtotal + i;
                rs1.RoundNo = rnos;
                //rs1.RNo = rnos;
                rs1.RoundTotal = rtotal + splitround - 1;
                //bs.Add(rs1);
                context.GetTable(rs1.GetType()).InsertOnSubmit(rs1);
                rs1.AmendDate = DateTime.Now;
                // 更新Temp的輪單號
            }
        }

        /// <summary>
        /// 克隆新對象
        /// </summary>
        /// <param name="r">RoundWorkOrder對象實體</param>
        /// <returns>新的RoundWorkOrder對象實體</returns>
        public static PH.RWO.BO.RoundWorkOrder RwoClone(PH.RWO.BO.RoundWorkOrder r)
        {
            PH.RWO.BO.RoundWorkOrder rwo = new PH.RWO.BO.RoundWorkOrder();
            rwo.RoundNo = r.RoundNo;
            rwo.SalesOrderNo = r.SalesOrderNo;
            rwo.SalesOrderLine = r.SalesOrderLine;
            rwo.WorkOrderNo = r.WorkOrderNo;
            rwo.Company = r.Company;
            rwo.ColorCode = r.ColorCode;
            rwo.CycleTime = r.CycleTime;
            //rwo.Date = r.Date;
            rwo.DeliveryDate = r.DeliveryDate;
            rwo.T3Date = r.T3Date;
            rwo.FCLExFtyDate = rwo.FCLExFtyDate;
            rwo.LCLExFtyDate = rwo.LCLExFtyDate;
            rwo.FirstQNStartDate = r.FirstQNStartDate;
            rwo.FirstStationStartDate = r.FirstStationStartDate;
            rwo.LastQNExFtyDate = r.LastQNExFtyDate;
            return rwo;
        }

        /// <summary>
        /// 創建新的輸制單號
        /// </summary>
        /// <param name="RoundNo">原輸制單</param>
        /// <param name="rtotal">總輪數</param>
        /// <returns>新的輪制單號</returns>
        private static string CreateNewRound(string RoundNo, int rtotal)
        {
            string[] r = RoundNo.Split('/');
            return r[0].Trim() + "/" + rtotal.ToString().Trim();
        }

        /// <summary>
        /// 自動分輪時的自動計算
        /// </summary>
        /// <param name="rwo">輪制單對象</param>
        /// <param name="sqty">輸出當前對象的SqmpleQty</param>
        /// <param name="qty">輸出當前對象的BulkQty</param>
        //public static void SumQty(RoundWorkOrder rwo, out int sqty, out int qty)
        //{
        //    var bulkqty = rwo.RoundWorkOrderDetails.Sum(p => p.BulkQty);
        //    var sampleqty = rwo.RoundWorkOrderDetails.Sum(p => p.SampleQty);
        //    var bulkqty1 = rwo.RoundWorkOrderDetailTemp1s.Sum(p => p.BulkQty);
        //    //var sampleqty1 = rwo.RoundWorkOrderDetailTemp1s.Sum(p => p.SampleQty);
        //    sqty = 0;
        //    qty = 0;
        //}

        /// <summary>
        /// 自動分輪時的自動計算
        /// </summary>
        /// <param name="rwo">輪制單對象</param>
        /// <param name="sqty">輸出當前對象的SqmpleQty</param>
        /// <param name="qty">輸出當前對象的BulkQty</param>
        public static void SumQty(RoundWorkOrder rwo,SortedList<string, IList<RoundWorkOrderDetailTemp1>> temp, out int sqty, out int qty, int index)
        {            
            int bulkqty = (int)  rwo.RoundWorkOrderDetails[index].BulkQty;
            int sampleqty = (int)rwo.RoundWorkOrderDetails[index].SampleQty;
            int bulkqty1 = 0;
            int sampleqty1 = 0;

            for (int i = 1; i < temp.Count+1; i++)
            {
                RoundWorkOrderDetailTemp1 t = temp["temp" + i.ToString()][index];
                bulkqty1 += (int)t.BulkQty;
                sampleqty1 += (int)t.SampleQty;
            }

            qty = (int)(bulkqty + sampleqty - bulkqty1 - sampleqty1 );
            sqty = 0;
            
        }

        #region athor:ray jiang,date:2008-05-21 

        /// <summary>
        /// 用於檢驗,同一PrjectNo的RoundWorkOrder是否全部Confirmed
        /// 如果全部Comfirmed,則觸發SendEmail的功能,通知下一個環節的相關人員進行相關的操作.
        /// </summary>
        /// <param name="rwo">當前的RoundWorkOrder</param>
        /// <returns>如果全部Confirmed則返回真,否則為假</returns>
        public static bool IfAllProjectSLOAConfirmed(RoundWorkOrder rwo)
        {
            string projectno = rwo.WorkOrderColor.WorkOrder.Project.ProjectNo;
            //var r =                from rwos in context.RoundWorkOrders 
            //                       from work in context.WorkOrders 
            //                       where rwos.WorkOrderNo == work.WorkOrderNo && work.Status!="" && work.Status!="8" &&
            //                       ==projectno && (rwos.OAConfirm==null || rwos.OAConfirm==string.Empty) 
            //                       select rwos;
            return false;
            //return r.Count() == 0;
        }

        /// <summary>
        /// 用於檢驗,同一PrjectNo的RoundWorkOrder是否全部Confirmed
        /// 如果全部Comfirmed,則觸發SendEmail的功能,通知下一個環節的相關人員進行相關的操作.
        /// </summary>
        /// <param name="rwo">當前的RoundWorkOrder</param>
        /// <returns>如果全部Confirmed則返回真,否則為假</returns>
        public static bool IfAllProjectHKOAConfirmed(RoundWorkOrder rwo)
        {
            string projectno = rwo.WorkOrderColor.WorkOrder.Project.ProjectNo;
            //var r = from rwos in context.RoundWorkOrders
            //        from work in context.WorkOrders
            //        where rwos.WorkOrderNo == work.WorkOrderNo && work.Status != "" && work.Status != "8" && rwos.ProjectNo == projectno && (rwos.HKOAConfirm == null || rwos.HKOAConfirm == string.Empty)
            //        select rwos;
            return false;
            //return r.Count() == 0;
        }


        /// <summary>
        /// 用於檢驗,同一PrjectNo的RoundWorkOrder是否全部Confirmed
        /// 如果全部Comfirmed,則觸發SendEmail的功能,通知下一個環節的相關人員進行相關的操作.
        /// </summary>
        /// <param name="rwo">當前的RoundWorkOrder</param>
        /// <returns>如果全部Confirmed則返回真,否則為假</returns>
        public static bool IfAllProjectSLPMCConfirmed(RoundWorkOrder rwo)
        {
            string projectno = rwo.WorkOrderColor.WorkOrder.Project.ProjectNo;
            //var r = from rwos in context.RoundWorkOrders
            //        from work in context.WorkOrders
            //        where rwos.WorkOrderNo == work.WorkOrderNo && work.Status != "" && work.Status != "8" && rwos.ProjectNo == projectno && (rwos.SLPMCConfirm == null || rwos.SLPMCConfirm == string.Empty)
            //        select rwos;
            return false;
            //return r.Count() == 0;

        }

        /// <summary>
        /// 用於檢驗
        /// 石龍高層處理同一PrjectNo的RoundWorkOrder是否全部Confirmed
        /// 如果全部Comfirmed,則觸發SendEmail的功能,通知下一個環節的相關人員進行相關的操作.
        /// </summary>
        /// <param name="rwo">當前的RoundWorkOrder</param>
        /// <returns>如果全部Confirmed則返回真,否則為假</returns>
        public static bool IfAllProjectSLTOPMGTConfirmed(RoundWorkOrder rwo)
        {
            string projectno = rwo.WorkOrderColor.WorkOrder.Project.ProjectNo;
            //var r = from rwos in context.RoundWorkOrders
            //        from work in context.WorkOrders
            //        where rwos.WorkOrderNo == work.WorkOrderNo && work.Status != "" && work.Status != "8" && rwos.ProjectNo == projectno && (rwos.SLTopMgtConfirm == null || rwos.SLTopMgtConfirm == string.Empty)
            //        select rwos;
            return false;
            //return r.Count() == 0;
        }


        /// <summary>
        /// 用於檢驗同一PrjectNo的RoundWorkOrder是否全部Confirmed
        /// 如果全部Comfirmed,則觸發SendEmail的功能,通知下一個環節的相關人員進行相關的操作.
        /// </summary>
        /// <param name="rwo">當前的RoundWorkOrder</param>
        /// <returns>如果全部Confirmed則返回真,否則為假</returns>
        public static bool IfAllProjectHKPURConfirmed(RoundWorkOrder rwo)
        {
            string projectno = rwo.WorkOrderColor.WorkOrder.Project.ProjectNo;
            //var r = from rwos in context.RoundWorkOrders
            //        from work in context.WorkOrders
            //        where rwos.WorkOrderNo == work.WorkOrderNo && work.Status != "" && work.Status != "8" && rwos.ProjectNo == projectno && (rwos.HKPURConfirm == null || rwos.HKPURConfirm == string.Empty)
            //        select rwos;
            return false;
            //return r.Count() == 0;
        }
        #endregion

        /// <summary>
        /// 計算日期
        /// </summary>
        /// <param name="FactoryStartDate">廠初始日</param>
        /// <param name="factory">工廠,SL OR KB</param>
        /// <returns></returns>
        public static DateTime CalculateDate(DateTime FactoryStartDate,String factory)
        {
            if (FactoryStartDate == null)
            {
                return DateTime.Today;
            }
            DateTime tempdate =FactoryStartDate;
            //int days = 0;
            //if(factory == "SL" || factory=="SHILONG")
            //{
            //    days = 3;
            //}
            //else
            //{
            //    days = 7;
            //}

            //var calendar = from c in context.Calendar where c.Factory == factory select c;

            //int i = 0;
            //while (i < days)
            //{
            //    tempdate = tempdate.AddDays(1);
            //    try
            //    {
            //        if (tempdate.DayOfWeek != DayOfWeek.Saturday && tempdate.DayOfWeek != DayOfWeek.Sunday && calendar.Count(p => p.Holiday == tempdate) == 0)
            //        {
            //            i = i + 1;
            //        }
            //    }
            //    catch
            //    {
            //    }
            //}
            return tempdate;
        }

        /// <summary>
        /// 清除當前輪制單的用於分拆的TempData
        /// </summary>
        /// <param name="rwo">當前的輪制單對象</param>
        public static void ClearTempData(RoundWorkOrder rwo,RWOSOPCDataContext ctext)
        {
            //UpdateRoundWorkOrderDetail(rwo);
            // ctext.GetTable<RoundWorkOrderDetailTemp1>().DeleteAllOnSubmit(rwo.RoundWorkOrderDetailTemp1s);
            //ClearDetailData(rwo);
        }

        /// <summary>
        /// 清除當前的輪制單的用於分拆的TempData
        /// </summary>
        /// <param name="rwo">當前的輪制單對象</param>
        //public static void ClearDetailData(RoundWorkOrder rwo)
        //{
        //    for (int i = 0; i < rwo.RoundWorkOrderDetailTemp1s.Count; i++)
        //    {
        //        rwo.RoundWorkOrderDetailTemp1s.RemoveAt(i);
        //    }
        //}


        /// <summary>
        /// 更新Detail
        /// </summary>
        /// <param name="rwo"></param>
        //private static void UpdateRoundWorkOrderDetail(RoundWorkOrder rwo)
        //{
        //    for (int i = 0; i < rwo.RoundWorkOrderDetails.Count; i++)
        //    {
        //        rwo.RoundWorkOrderDetails[i].SampleQty = rwo.RoundWorkOrderDetailTemp1s[i].SampleQty;
        //        rwo.RoundWorkOrderDetails[i].BulkQty = rwo.RoundWorkOrderDetailTemp1s[i].BulkQty;
        //    }
        //}

        #region 暫時沒有使用的方法
        /// <summary>
        /// 將數TEMP據轉到Detail中.
        /// </summary>
        /// <param name="rwo">當前輪制單</param>
        //public static void ImportTempDataToDetail(RoundWorkOrder rwo)
        //{
            
        //    //先更新Detail數據    
            
        //    for (int i = 0; i < rwo.RoundWorkOrderDetailTemp1s.Count; i++)
        //    {
        //        if(rwo.RoundWorkOrderDetailTemp1s[i].SampleQty>0 || rwo.RoundWorkOrderDetailTemp1s[i].BulkQty>0)
        //        {
        //            rwo.RoundWorkOrderDetails.Add(Clones(rwo.RoundWorkOrderDetailTemp1s[i]));
        //        }
        //    }
        //}
        
        #region Clone
        /// <summary>
        /// 復制和轉換對象
        /// </summary>
        /// <param name="obj">要轉換的Temp對象</param>
        /// <returns>輪制單Detail</returns>
        private static PH.RWO.BO.RoundWorkOrderDetail Clones(object obj)
        {
            PH.RWO.BO.RoundWorkOrderDetail rwod = new RoundWorkOrderDetail();
            //if (obj is RoundWorkOrderDetailTemp1)
            //{
            //    rwod = clone(obj as RoundWorkOrderDetailTemp1);
            //}
            //if (obj is RoundWorkOrderDetailTemp2)
            //{
            //    rwod = clone(obj as RoundWorkOrderDetailTemp2);
            //}
            //if (obj is RoundWorkOrderDetailTemp3)
            //{
            //    rwod = clone(obj as RoundWorkOrderDetailTemp3);
            //}
            //if (obj is RoundWorkOrderDetailTemp4)
            //{
            //    rwod = clone(obj as RoundWorkOrderDetailTemp4);
            //}
            return rwod;
        }




        //private static RoundWorkOrderDetail clone(RoundWorkOrderDetailTemp3 t)
        //{
        //    RoundWorkOrderDetail t1 = new RoundWorkOrderDetail();
        //    t1.Company = t.Company;
        //    t1.ColorCode = t.ColorCode;
        //    t1.Cup = t.Cup;
        //    t1.Size = t.Size;
        //    t1.SalesOrderLine = t.SalesOrderLine;
        //    t1.CustStyle = t.CustStyle;
        //    t1.BulkQty = t.BulkQty;
        //    t1.SampleQty = t.SampleQty;
        //    t1.WorkOrderNo = t.WorkOrderNo;
        //    return t1;
        //}

        private static RoundWorkOrderDetail clone(RoundWorkOrderDetailTemp1 t)
        {
            RoundWorkOrderDetail t1 = new RoundWorkOrderDetail();
            t1.Company = t.Company;
            t1.ColorCode = t.ColorCode;
            t1.Cup = t.Cup;
            t1.Size = t.Size;
            t1.SalesOrderLine = t.SalesOrderLine;
            //t1.CustStyle = t.CustStyle;
            t1.BulkQty = t.BulkQty;
            t1.SampleQty = t.SampleQty;
            t1.WorkOrderNo = t.WorkOrderNo;
            return t1;
        }

        //private static RoundWorkOrderDetail clone(RoundWorkOrderDetailTemp2 t)
        //{
        //    RoundWorkOrderDetail t1 = new RoundWorkOrderDetail();
        //    t1.Company = t.Company;
        //    t1.ColorCode = t.ColorCode;
        //    t1.Cup = t.Cup;
        //    t1.Size = t.Size;
        //    t1.SalesOrderLine = t.SalesOrderLine;
        //    t1.CustStyle = t.CustStyle;
        //    t1.BulkQty = t.BulkQty;
        //    t1.SampleQty = t.SampleQty;
        //    t1.WorkOrderNo = t.WorkOrderNo;
        //    return t1;
        //}

        //private static RoundWorkOrderDetail clone(RoundWorkOrderDetailTemp4 t)
        //{
        //    RoundWorkOrderDetail t1 = new RoundWorkOrderDetail();
        //    t1.Company = t.Company;
        //    t1.ColorCode = t.ColorCode;
        //    t1.Cup = t.Cup;
        //    t1.Size = t.Size;
        //    t1.SalesOrderLine = t.SalesOrderLine;
        //    t1.CustStyle = t.CustStyle;
        //    t1.BulkQty = t.BulkQty;
        //    t1.SampleQty = t.SampleQty;
        //    t1.WorkOrderNo = t.WorkOrderNo;
        //    return t1;
        //}
        #endregion
        #endregion

        #region Round work order confirm and reject
        /* add by Ray.jiang
         * date: 2008-06-12
         * menu: confirm and reject
         */
        /// <summary>
        /// Confirm 
        /// </summary>
        /// <returns></returns>
        //public static IList<PH.RWO.BO.View_RWO_ConfirmRight> GetRwoConfirmList()        
        //{
        //    Auth_User u =PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser;
        //    //var view = ((from v1 in context.View_RWO_ConfirmRight
        //    //             where (v1.SLOAConfirm == null || v1.SLOAConfirm == string.Empty) && v1.users.IndexOf(u.UserName) >= 0 && v1.Item.Trim() == "OA"
        //    //             select v1).Union
        //    // (from v2 in context.View_RWO_ConfirmRight
        //    // where (v2.SLOAConfirm != string.Empty && v2.SLOAConfirm != null) && (v2.HKPURConfirm == null || v2.HKPURConfirm == string.Empty) && v2.users.ToLower().IndexOf(u.UserName.ToLower()) >= 0 && v2.Item.Trim() =="HKPUR"
        //    // select v2).Union
        //    //(from v3 in context.View_RWO_ConfirmRight
        //    // where (v3.HKPURConfirm != string.Empty && v3.HKPURConfirm != null) && (v3.SLPMCConfirm == null || v3.SLPMCConfirm == string.Empty) && v3.users.ToLower().IndexOf(u.UserName.ToLower()) >= 0 && v3.Item.Trim() =="PPC"
        //    // select v3).Union
        //    //(from v4 in context.View_RWO_ConfirmRight
        //    // where (v4.SLPMCConfirm != string.Empty && v4.SLPMCConfirm != null) && (v4.SLTopMgtConfirm == null || v4.SLTopMgtConfirm == string.Empty) && v4.users.ToLower().IndexOf(u.UserName.ToLower()) >= 0 && v4.Item.Trim()=="TOP"
        //    // select v4).Union
        //    // (from v5 in context.View_RWO_ConfirmRight
        //    //  where (v5.SLPMCConfirm != string.Empty && v5.SLPMCConfirm != null) && (v5.HKOAConfirm == null || v5.HKOAConfirm == string.Empty) && v5.users.ToLower().IndexOf(u.UserName.ToLower()) >= 0 && v5.Item.Trim()=="HKOA"
        //    //  select v5)
        //    //);
        //    //return view.ToList<PH.RWO.BO.View_RWO_ConfirmRight>();
        //    return null;
        //}


        /// <summary>
        /// list may to reject data
        /// </summary>
        /// <returns></returns>
        //public static IList<PH.RWO.BO.View_RWO_ConfirmRight> GetRwoRejectList()
        //{
        //    Auth_User u =PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser;
        //    //var view = ((from v1 in context.View_RWO_ConfirmRight
        //    //             where (v1.SLOAConfirm ==u.UserName ) && (v1.HKPURConfirm == null || v1.HKPURConfirm == string.Empty) && v1.Item.Trim() == "OA"
        //    //             select v1).Union
        //    // (from v2 in context.View_RWO_ConfirmRight
        //    //  where (v2.HKPURConfirm == u.UserName) && (v2.SLPMCConfirm == null || v2.SLPMCConfirm == string.Empty) && v2.Item.Trim() == "HKPUR"
        //    //  select v2).Union
        //    //(from v3 in context.View_RWO_ConfirmRight
        //    // where (v3.HKPURConfirm == u.UserName) && (v3.SLTopMgtConfirm == null || v3.SLTopMgtConfirm == string.Empty) && v3.users.IndexOf(u.UserName) >= 0 && v3.Item.Trim() == "PPC"
        //    // select v3).Union
        //    //(from v4 in context.View_RWO_ConfirmRight
        //    // where (v4.SLPMCConfirm == u.UserName) && (v4.HKOAConfirm == null || v4.HKOAConfirm == string.Empty) && v4.users.IndexOf(u.UserName) >= 0 && v4.Item.Trim() == "TOP"
        //    // select v4).Union
        //    // (from v5 in context.View_RWO_ConfirmRight
        //    //  where (v5.SLPMCConfirm == u.UserName ) && (v5.HKOAConfirm == null || v5.HKOAConfirm == string.Empty) && v5.Item.Trim() == "HKOA"
        //    //  select v5)
        //    //);
        //    return null;
        //    //return view.ToList<PH.RWO.BO.View_RWO_ConfirmRight>();
        //}

        /// <summary>
        /// reject round work order data that had cofirmed
        /// </summary>
        /// <param name="vrc">View_RWO_ConfirmRight Entry</param>
        //public static void RejectRoundWorkOrder(PH.RWO.BO.View_RWO_ConfirmRight vrc)
        //{
        //    if (!vrc.Choice)
        //    {
        //        return;
        //    }

        //    Auth_User u =PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser;
        //    PH.RWO.BO.RoundWorkOrder rwo = new RoundWorkOrder() ;//(from r in context.RoundWorkOrders
        //    //                                where r.Company == vrc.Company && r.SalesOrderNo == vrc.SalesOrderNo && r.WorkOrderNo == vrc.WorkOrderNo && r.RoundNo == vrc.RoundNo && r.SalesOrderLine == vrc.SalesOrderLine && r.ColorCode == vrc.ColorCode
        //    //                                select r).Single();

        //    //foreach (PH.RWO.BO.RoundWorkOrder rwo in rwos)
        //    //{
        //    if (!string.IsNullOrEmpty(vrc.SLOAConfirm))
        //    {
        //        if (string.IsNullOrEmpty(vrc.HKOAConfirm))
        //        {
        //            rwo.HeaderConfirm = null;
        //            rwo.HeaderConfirmDate = null;
        //            context.SubmitChanges();
        //            return;
        //        }
        //    }
        //    //if (!string.IsNullOrEmpty(vrc.HKPURConfirm))
        //    //{
        //    //    if (string.IsNullOrEmpty(vrc.SLPMCConfirm))
        //    //    {
        //    //        rwo.HKPURConfirm = null;
        //    //        rwo.HKPURConfirmDate = null;
        //    //        context.SubmitChanges();
        //    //        return;
        //    //    }
        //    //}
        //    if (!string.IsNullOrEmpty(vrc.SLPMCConfirm))
        //    {
        //        if (string.IsNullOrEmpty(vrc.SLTopMgtConfirm))
        //        {
        //            rwo.PPCConfirm = null;
        //            rwo.PPCConfirmDate = null;
        //            context.SubmitChanges();

        //            return;
        //        }
        //    }

        //    if (!string.IsNullOrEmpty(vrc.SLTopMgtConfirm))
        //    {
        //        if (string.IsNullOrEmpty(vrc.HKOAConfirm))
        //        {
        //            rwo.TopConfirm = null;
        //            rwo.TopConfirmDate = null;
        //            context.SubmitChanges();
        //            return;
        //        }
        //    }

        //    if (!string.IsNullOrEmpty(vrc.HKOAConfirm))
        //    {
        //        rwo.OAConfirm = null;
        //        rwo.OAConfirmDate = null;
        //        context.SubmitChanges();
        //        return;
        //    }
        //}


        #endregion

        #region Save Temp Round Detail Infomation

        public static void SaveTempRoundDetail(RoundWorkOrder r, int RealRound)
        {
            PH.RWO.BO.RWOSOPCDataContext RWOContext =ContextBuilder.CreateContext<RWOSOPCDataContext>();
            for (int i = 1; i < RealRound + 1; i++)
            {
                RoundWorkOrder rwo = RwoClone(r);
                //rwo.RNo = i;
                rwo.RoundNo = i;
                rwo.RoundTotal = RealRound;
                // rwo.ColorWorkOrder = r.ColorWorkOrder;
                RWOContext.RoundWorkOrders.InsertOnSubmit(rwo);
            }
            RWOContext.SubmitChanges();
        }


        public static RoundWorkOrderDetailTemp1 Clone(RoundWorkOrderDetailTemp1 temp)
        {
            RoundWorkOrderDetailTemp1 rwotemp = new RoundWorkOrderDetailTemp1();
            rwotemp.BulkQty = temp.BulkQty;
            rwotemp.ColorCode = temp.ColorCode;
            rwotemp.Company = temp.Company;
            rwotemp.Cup = temp.Cup;
            //rwotemp.CustStyle = temp.CustStyle;
            rwotemp.SalesOrderLine = temp.SalesOrderLine;
            rwotemp.Ratio = temp.Ratio;
            //rwotemp.RNo = temp.RNo;
            rwotemp.RoundNo = temp.RoundNo;
            //rwotemp.RoundWorkOrder = temp.RoundWorkOrder;
            rwotemp.SalesOrderNo = temp.SalesOrderNo;
            rwotemp.SampleQty = temp.SampleQty;
            rwotemp.Size = temp.Size;
            rwotemp.WorkOrderNo = temp.WorkOrderNo;
            return rwotemp;
        }

        public static String GetUserList(string customer,string factory)
        {
            var rights = (from r in context.Rights
                          where r.Factory == factory && r.CustomerCode == customer 
                          select r.Users).Distinct();

            string userlist = string.Empty;
            foreach (string r in rights)
            {
                userlist = userlist + r;
            }
            return userlist;
        }

        
        #endregion

        public static void MaskAllBaseEdit(Control ctrl)
        {
            foreach (Control c in ctrl.Controls)
            {
                if (c is DevExpress.XtraEditors.BaseEdit)
                {
                    (c as DevExpress.XtraEditors.BaseEdit).Properties.ReadOnly = true;
                }
                else
                {
                    MaskAllBaseEdit(c);
                }
            }
        }
    }

}
    //class clsZip
    //{
    //    public void CompressFile ( string sourceFile, string destinationFile )
    //    ...{
    //        // make sure the source file is there
    //        if ( File.Exists ( sourceFile ) == false )
    //            throw new FileNotFoundException ( );

    //        // Create the streams and byte arrays needed
    //        byte[] buffer = null;
    //        FileStream sourceStream = null;
    //        FileStream destinationStream = null;
    //        GZipStream compressedStream = null;

    //        try
    //        ...{
    //            // Read the bytes from the source file into a byte array
    //            sourceStream = new FileStream ( sourceFile, FileMode.Open, FileAccess.Read, FileShare.Read );

    //            // Read the source stream values into the buffer
    //            buffer = new byte[sourceStream.Length];
    //            int checkCounter = sourceStream.Read ( buffer, 0, buffer.Length );

    //            if ( checkCounter != buffer.Length )
    //            ...{
    //                throw new ApplicationException ( );
    //            }

    //            // Open the FileStream to write to
    //            destinationStream = new FileStream ( destinationFile, FileMode.OpenOrCreate, FileAccess.Write );

    //            // Create a compression stream pointing to the destiantion stream
    //            compressedStream = new GZipStream ( destinationStream, CompressionMode.Compress, true );

    //            // Now write the compressed data to the destination file
    //            compressedStream.Write ( buffer, 0, buffer.Length );
    //        }
    //        catch ( ApplicationException ex )
    //        ...{
    //            MessageBox.Show ( ex.Message, "压缩文件时发生错误：", MessageBoxButtons.OK, MessageBoxIcon.Error );
    //        }
    //        finally
    //        ...{
    //            // Make sure we allways close all streams
    //            if ( sourceStream != null )
    //                sourceStream.Close ( );

    //            if ( compressedStream != null )
    //                compressedStream.Close ( );

    //            if ( destinationStream != null )
    //                destinationStream.Close ( );
    //        }
    //    }

    //    public void DecompressFile ( string sourceFile, string destinationFile )
    //    ...{
    //        // make sure the source file is there
    //        if ( File.Exists ( sourceFile ) == false )
    //            throw new FileNotFoundException ( );

    //        // Create the streams and byte arrays needed
    //        FileStream sourceStream = null;
    //        FileStream destinationStream = null;
    //        GZipStream decompressedStream = null;
    //        byte[] quartetBuffer = null;

    //        try
    //        ...{
    //            // Read in the compressed source stream
    //            sourceStream = new FileStream ( sourceFile, FileMode.Open );

    //            // Create a compression stream pointing to the destiantion stream
    //            decompressedStream = new GZipStream ( sourceStream, CompressionMode.Decompress, true );

    //            // Read the footer to determine the length of the destiantion file
    //            quartetBuffer = new byte[4];
    //            int position = (int)sourceStream.Length - 4;
    //            sourceStream.Position = position;
    //            sourceStream.Read ( quartetBuffer, 0, 4 );
    //            sourceStream.Position = 0;
    //            int checkLength = BitConverter.ToInt32 ( quartetBuffer, 0 );

    //            byte[] buffer = new byte[checkLength + 100];

    //            int offset = 0;
    //            int total = 0;

    //            // Read the compressed data into the buffer4
    //            while ( true )
    //            ...{
    //                int bytesRead = decompressedStream.Read ( buffer, offset, 100 );

    //                if ( bytesRead == 0 )
    //                    break;

    //                offset += bytesRead;
    //                total += bytesRead;
    //            }

    //            // Now write everything to the destination file
    //            destinationStream = new FileStream ( destinationFile, FileMode.Create );
    //            destinationStream.Write ( buffer, 0, total );

    //            // and flush everyhting to clean out the buffer
    //            destinationStream.Flush ( );
    //        }
    //        catch ( ApplicationException ex )
    //        {
    //            MessageBox.Show(ex.Message, "解压文件时发生错误：", MessageBoxButtons.OK, MessageBoxIcon.Error);
    //        }
    //        finally
    //        {
    //            // Make sure we allways close all streams
    //            if ( sourceStream != null )
    //                sourceStream.Close ( );

    //            if ( decompressedStream != null )
    //                decompressedStream.Close ( );

    //            if ( destinationStream != null )
    //                destinationStream.Close ( );
    //        }

    //    }

