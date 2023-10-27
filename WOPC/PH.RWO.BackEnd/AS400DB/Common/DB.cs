using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace PH.RWO.BackEnd
{
    /// <summary>
    /// for SQL2000,AS400,InterBase,Oracle
    /// </summary>
    public class DB
    {
        #region Convert DB Value
        public static DateTime ConvertDBDateTime(string fieldName, DataRow row)
        {
            return Convert.IsDBNull(row[fieldName]) ? DateTime.MinValue : Convert.ToDateTime(row[fieldName]);
        }
        public static bool ConvertDBBool(string fieldName, DataRow row)
        {
            return Convert.IsDBNull(row[fieldName]) ? false : Convert.ToBoolean(row[fieldName]);
        }
        public static int ConvertDBInt(string fieldName, DataRow row)
        {
            return Convert.IsDBNull(row[fieldName]) ? 0 : Convert.ToInt32(row[fieldName]);
        }
        public static double ConvertDBDouble(string fieldName, DataRow row)
        {
            return Convert.IsDBNull(row[fieldName]) ? 0 : Convert.ToDouble(row[fieldName]);
        }
        public static string ConvertDBString(string value)
        {
            if (value == null) return "";
            return value.Replace("'", "''");
        }
        ///
        /// <summary>
        /// 返回可以操作SQL(insert,updated,select etc)的字符串,'-->''
        /// </summary>
        /// <param name="fieldName">field Name</param>
        /// <param name="row">DataRow</param>
        /// <returns>return can do SQL action(insert,updated,select etc) string</returns>
        ///         
        public static string ConvertDBString(string fieldName, DataRow row)
        {
            string s = Convert.IsDBNull(row[fieldName]) ? "" : Convert.ToString(row[fieldName]);
            return s.Replace("'", "''");
        }
        /// <summary>
        /// 返回原始数据的字符
        /// </summary>
        /// <param name="fieldName">字段名称</param>
        /// <param name="row">DataRow</param>
        /// <returns></returns>
        public static string ConvertDBOrgString(string fieldName, DataRow row)
        {
            return Convert.IsDBNull(row[fieldName]) ? "" : Convert.ToString(row[fieldName]);
        }
        #endregion

        #region AS400 DB connection
        private static AS400Interface.IDataAccess _AS400DB;
        public static AS400Interface.IDataAccess AS400DB
        {
            get
            {
                 if (_AS400DB == null)
                {
                    string as400url = UISetting.AS400URL;
                    _AS400DB = (AS400Interface.IDataAccess)Activator.GetObject(typeof(AS400Interface.IDataAccess), as400url);
                }
                return _AS400DB;
            }
            //set { _AS400DB = value; }
        }
        #endregion

        #region Get Data By Page

     
        public static DataTable GetDataByPage_AS400(string ASQL)
        {
            Guid gkey;
            gkey = Guid.NewGuid();  // 对于不同的SQL语句，必须生成不同的KEY
            // 预处理SQL语句
            AS400DB.GetTablePrepare(ASQL /* SQL 语句 */, gkey /* 该条语句的KEY */, 100 /* 每页的数据行数 */);
            // 取出第一页数据
            DataTable returnTable = AS400DB.GetNextTable(gkey /* 根据上面的KEY去取得第一页数据 */);
            DataTable table = AS400DB.GetNextTable(gkey);// 取下一页数据
            //if (table == null)// 已经无新的数据
            while (table != null)
            {
                foreach (DataRow row in table.Rows)
                {
                    returnTable.Rows.Add(row.ItemArray);
                }
                // 取下一页数据
                table = AS400DB.GetNextTable(gkey);
            }
            //关闭上次未取完的数据连接
            AS400DB.EndGetTable(gkey);
            returnTable.AcceptChanges();
            return returnTable;
        }
        //public static DataTable GetDataByPage_InterBase(string ASQL)
        //{
        //    Guid gkey;
        //    gkey = Guid.NewGuid();  // 对于不同的SQL语句，必须生成不同的KEY
        //    // 预处理SQL语句
        //    IBDB.GetTablePrepare(ASQL /* SQL 语句 */, gkey /* 该条语句的KEY */, 100 /* 每页的数据行数 */);
        //    // 取出第一页数据
        //    DataTable returnTable = IBDB.GetNextTable(gkey /* 根据上面的KEY去取得第一页数据 */);
        //    DataTable table = IBDB.GetNextTable(gkey);// 取下一页数据
        //    //if (table == null)// 已经无新的数据
        //    while (table != null)
        //    {
        //        foreach (DataRow row in table.Rows)
        //        {
        //            returnTable.Rows.Add(row.ItemArray);
        //        }
        //        // 取下一页数据
        //        table = IBDB.GetNextTable(gkey);
        //    }
        //    //关闭上次未取完的数据连接
        //    IBDB.EndGetTable(gkey);
        //    returnTable.AcceptChanges();
        //    return returnTable;
        //}
        //public static DataTable GetDataByPage_Oracle(string ASQL)
        //{
        //    Guid gkey;
        //    gkey = Guid.NewGuid();  // 对于不同的SQL语句，必须生成不同的KEY
        //    // 预处理SQL语句
        //    OracleDB.GetTablePrepare(ASQL /* SQL 语句 */, gkey /* 该条语句的KEY */, 100 /* 每页的数据行数 */);
        //    // 取出第一页数据
        //    DataTable returnTable = OracleDB.GetNextTable(gkey /* 根据上面的KEY去取得第一页数据 */);
        //    DataTable table = OracleDB.GetNextTable(gkey);// 取下一页数据
        //    //if (table == null)// 已经无新的数据
        //    while (table != null)
        //    {
        //        foreach (DataRow row in table.Rows)
        //        {
        //            returnTable.Rows.Add(row.ItemArray);
        //        }
        //        // 取下一页数据
        //        table = OracleDB.GetNextTable(gkey);
        //    }
        //    //关闭上次未取完的数据连接
        //    OracleDB.EndGetTable(gkey);
        //    returnTable.AcceptChanges();
        //    return returnTable;
        //}

        //public static DataTable GetDataByPage_SQL2000(string ASQL, int topCount)
        //{
        //    Guid gkey;
        //    gkey = Guid.NewGuid();  // 对于不同的SQL语句，必须生成不同的KEY
        //    // 预处理SQL语句
        //    SQL2000DB.GetTablePrepare(ASQL /* SQL 语句 */, gkey /* 该条语句的KEY */, topCount /* 每页的数据行数 */);
        //    // 取出第一页数据
        //    DataTable returnTable = SQL2000DB.GetNextTable(gkey /* 根据上面的KEY去取得第一页数据 */);
        //    //关闭上次未取完的数据连接
        //    SQL2000DB.EndGetTable(gkey);
        //    returnTable.AcceptChanges();
        //    return returnTable;
        //}
        //public static DataTable GetDataByPage_SQL2005(string ASQL, int topCount)
        //{
        //    Guid gkey;
        //    gkey = Guid.NewGuid();  // 对于不同的SQL语句，必须生成不同的KEY
        //    // 预处理SQL语句
        //    SQL2005DB.GetTablePrepare(ASQL /* SQL 语句 */, gkey /* 该条语句的KEY */, topCount /* 每页的数据行数 */);
        //    // 取出第一页数据
        //    DataTable returnTable = SQL2005DB.GetNextTable(gkey /* 根据上面的KEY去取得第一页数据 */);
        //    //关闭上次未取完的数据连接
        //    SQL2005DB.EndGetTable(gkey);
        //    returnTable.AcceptChanges();
        //    return returnTable;
        //}
        public static DataTable GetDataByPage_AS400(string ASQL, int topCount)
        {
            Guid gkey;
            gkey = Guid.NewGuid();  // 对于不同的SQL语句，必须生成不同的KEY
            // 预处理SQL语句
            AS400DB.GetTablePrepare(ASQL /* SQL 语句 */, gkey /* 该条语句的KEY */, topCount /* 每页的数据行数 */);
            // 取出第一页数据
            DataTable returnTable = AS400DB.GetNextTable(gkey /* 根据上面的KEY去取得第一页数据 */);
            //关闭上次未取完的数据连接
            AS400DB.EndGetTable(gkey);
            returnTable.AcceptChanges();
            return returnTable;
        }
        //public static DataTable GetDataByPage_InterBase(string ASQL, int topCount)
        //{
        //    Guid gkey;
        //    gkey = Guid.NewGuid();  // 对于不同的SQL语句，必须生成不同的KEY
        //    // 预处理SQL语句
        //    IBDB.GetTablePrepare(ASQL /* SQL 语句 */, gkey /* 该条语句的KEY */, topCount /* 每页的数据行数 */);
        //    // 取出第一页数据
        //    DataTable returnTable = IBDB.GetNextTable(gkey /* 根据上面的KEY去取得第一页数据 */);
        //    //关闭上次未取完的数据连接
        //    IBDB.EndGetTable(gkey);
        //    returnTable.AcceptChanges();
        //    return returnTable;
        //}
        //public static DataTable GetDataByPage_Oracle(string ASQL, int topCount)
        //{
        //    Guid gkey;
        //    gkey = Guid.NewGuid();  // 对于不同的SQL语句，必须生成不同的KEY
        //    // 预处理SQL语句
        //    OracleDB.GetTablePrepare(ASQL /* SQL 语句 */, gkey /* 该条语句的KEY */, topCount /* 每页的数据行数 */);
        //    // 取出第一页数据
        //    DataTable returnTable = OracleDB.GetNextTable(gkey /* 根据上面的KEY去取得第一页数据 */);
        //    //关闭上次未取完的数据连接
        //    OracleDB.EndGetTable(gkey);
        //    returnTable.AcceptChanges();
        //    return returnTable;
        //}
        #endregion

    }
}
