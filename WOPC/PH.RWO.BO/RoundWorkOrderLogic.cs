using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data.Linq;
using PH.Platform.BO;


namespace PH.RWO.BO
{
    public class RWOLogic
    {
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
            rwo.FactoryWorkStartDate = r.FactoryWorkStartDate;
            return rwo;
        }


        /// <summary>
        /// 拆分輪制單
        /// </summary>
        /// <param name="rwo">制單對象</param>
        /// <param name="context">數據上下文對象</param>
        /// <param name="bs">當前數據綁定源</param>
        public static void SplitRoundWorderData(PH.RWO.BO.RoundWorkOrder rwo, DataContext context)
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
    }
}
