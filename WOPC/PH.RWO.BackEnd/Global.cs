using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.RWO.BO;
using System.Data.Linq;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;


using PH.Platform.BO;

namespace PH.RWO.BackEnd
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

    }

}

