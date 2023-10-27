using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace PH.POPC.AutoUpdate.UI
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

        #region DB Connection
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

        #region SQL2000 DB connection
        private static PHSQLServerInterface.IDataAccess _SQL2000DB;
        public static PHSQLServerInterface.IDataAccess SQL2000DB
        {
            get
            {
                if (_SQL2000DB == null)
                {
                    string sql2000url = UISetting.SQL2KURL;
                    _SQL2000DB = (PHSQLServerInterface.IDataAccess)Activator.GetObject(typeof(PHSQLServerInterface.IDataAccess), sql2000url);
                }
                return _SQL2000DB;
            }
        }
        #endregion

        #region SQL2005 DB connection
        private static PHSQLServerInterface.IDataAccess _SQL2005DB;
        public static PHSQLServerInterface.IDataAccess SQL2005DB
        {
            get
            {
                if (_SQL2005DB == null)
                {
                    string sql2005url = UISetting.SQL2005URL;
                    _SQL2005DB = (PHSQLServerInterface.IDataAccess)Activator.GetObject(typeof(PHSQLServerInterface.IDataAccess), sql2005url);
                }
                return _SQL2005DB;
            }
        }
        #endregion

        #region InterBase DB connection
        //private static IBInterface.IDataAccess _IBDB;
        //public static IBInterface.IDataAccess IBDB
        //{
        //    get
        //    {
        //        if (_IBDB == null)
        //        {
        //            string iburl = UISetting.IBURL;
        //            _IBDB = (IBInterface.IDataAccess)Activator.GetObject(typeof(IBInterface.IDataAccess), iburl);
        //        }
        //        return _IBDB;
        //    }
        //}
        #endregion

        #region Oracle DB connection
        //private static OracleServerInterface.IDataAccess _OracleDB;
        //public static OracleServerInterface.IDataAccess OracleDB
        //{
        //    get
        //    {
        //        if (_OracleDB == null)
        //        {
        //            string oracleurl = UISetting.OracleURL;
        //            _OracleDB = (OracleServerInterface.IDataAccess)Activator.GetObject(typeof(OracleServerInterface.IDataAccess), oracleurl);
        //        }
        //        return _OracleDB;
        //    }
        //}
        #endregion
        #endregion

        #region Get Data By Page

        public static DataTable GetDataByPage_SQL2000(string ASQL)
        {
            Guid gkey;
            gkey = Guid.NewGuid();  // 对于不同的SQL语句，必须生成不同的KEY
            // 预处理SQL语句
            DB.SQL2000DB.GetTablePrepare(ASQL /* SQL 语句 */, gkey /* 该条语句的KEY */, 100 /* 每页的数据行数 */);
            // 取出第一页数据
            DataTable returnTable = DB.SQL2000DB.GetNextTable(gkey /* 根据上面的KEY去取得第一页数据 */);
            DataTable table = DB.SQL2000DB.GetNextTable(gkey);// 取下一页数据
            //if (table == null)// 已经无新的数据
            while (table != null)
            {
                foreach (DataRow row in table.Rows)
                {
                    returnTable.Rows.Add(row.ItemArray);
                }
                // 取下一页数据
                table = DB.SQL2000DB.GetNextTable(gkey);
            }
            //关闭上次未取完的数据连接
            DB.SQL2000DB.EndGetTable(gkey);
            returnTable.AcceptChanges();
            return returnTable;
        }
        public static DataTable GetDataByPage_SQL2005(string ASQL)
        {
            Guid gkey;
            gkey = Guid.NewGuid();  // 对于不同的SQL语句，必须生成不同的KEY
            // 预处理SQL语句
            DB.SQL2005DB.GetTablePrepare(ASQL /* SQL 语句 */, gkey /* 该条语句的KEY */, 100 /* 每页的数据行数 */);
            // 取出第一页数据
            DataTable returnTable = DB.SQL2005DB.GetNextTable(gkey /* 根据上面的KEY去取得第一页数据 */);
            DataTable table = DB.SQL2005DB.GetNextTable(gkey);// 取下一页数据
            //if (table == null)// 已经无新的数据
            while (table != null)
            {
                foreach (DataRow row in table.Rows)
                {
                    returnTable.Rows.Add(row.ItemArray);
                }
                // 取下一页数据
                table = DB.SQL2005DB.GetNextTable(gkey);
            }
            //关闭上次未取完的数据连接
            DB.SQL2005DB.EndGetTable(gkey);
            returnTable.AcceptChanges();
            return returnTable;
        }
        public static DataTable GetDataByPage_AS400(string ASQL)
        {
            Guid gkey;
            gkey = Guid.NewGuid();  // 对于不同的SQL语句，必须生成不同的KEY
            // 预处理SQL语句
            DB.AS400DB.GetTablePrepare(ASQL /* SQL 语句 */, gkey /* 该条语句的KEY */, 100 /* 每页的数据行数 */);
            // 取出第一页数据
            DataTable returnTable = DB.AS400DB.GetNextTable(gkey /* 根据上面的KEY去取得第一页数据 */);
            DataTable table = DB.AS400DB.GetNextTable(gkey);// 取下一页数据
            //if (table == null)// 已经无新的数据
            while (table != null)
            {
                foreach (DataRow row in table.Rows)
                {
                    returnTable.Rows.Add(row.ItemArray);
                }
                // 取下一页数据
                table = DB.AS400DB.GetNextTable(gkey);
            }
            //关闭上次未取完的数据连接
            DB.AS400DB.EndGetTable(gkey);
            returnTable.AcceptChanges();
            return returnTable;
        }
        //public static DataTable GetDataByPage_InterBase(string ASQL)
        //{
        //    Guid gkey;
        //    gkey = Guid.NewGuid();  // 对于不同的SQL语句，必须生成不同的KEY
        //    // 预处理SQL语句
        //    DB.IBDB.GetTablePrepare(ASQL /* SQL 语句 */, gkey /* 该条语句的KEY */, 100 /* 每页的数据行数 */);
        //    // 取出第一页数据
        //    DataTable returnTable = DB.IBDB.GetNextTable(gkey /* 根据上面的KEY去取得第一页数据 */);
        //    DataTable table = DB.IBDB.GetNextTable(gkey);// 取下一页数据
        //    //if (table == null)// 已经无新的数据
        //    while (table != null)
        //    {
        //        foreach (DataRow row in table.Rows)
        //        {
        //            returnTable.Rows.Add(row.ItemArray);
        //        }
        //        // 取下一页数据
        //        table = DB.IBDB.GetNextTable(gkey);
        //    }
        //    //关闭上次未取完的数据连接
        //    DB.IBDB.EndGetTable(gkey);
        //    returnTable.AcceptChanges();
        //    return returnTable;
        //}
        //public static DataTable GetDataByPage_Oracle(string ASQL)
        //{
        //    Guid gkey;
        //    gkey = Guid.NewGuid();  // 对于不同的SQL语句，必须生成不同的KEY
        //    // 预处理SQL语句
        //    DB.OracleDB.GetTablePrepare(ASQL /* SQL 语句 */, gkey /* 该条语句的KEY */, 100 /* 每页的数据行数 */);
        //    // 取出第一页数据
        //    DataTable returnTable = DB.OracleDB.GetNextTable(gkey /* 根据上面的KEY去取得第一页数据 */);
        //    DataTable table = DB.OracleDB.GetNextTable(gkey);// 取下一页数据
        //    //if (table == null)// 已经无新的数据
        //    while (table != null)
        //    {
        //        foreach (DataRow row in table.Rows)
        //        {
        //            returnTable.Rows.Add(row.ItemArray);
        //        }
        //        // 取下一页数据
        //        table = DB.OracleDB.GetNextTable(gkey);
        //    }
        //    //关闭上次未取完的数据连接
        //    DB.OracleDB.EndGetTable(gkey);
        //    returnTable.AcceptChanges();
        //    return returnTable;
        //}

        public static DataTable GetDataByPage_SQL2000(string ASQL, int topCount)
        {
            Guid gkey;
            gkey = Guid.NewGuid();  // 对于不同的SQL语句，必须生成不同的KEY
            // 预处理SQL语句
            DB.SQL2000DB.GetTablePrepare(ASQL /* SQL 语句 */, gkey /* 该条语句的KEY */, topCount /* 每页的数据行数 */);
            // 取出第一页数据
            DataTable returnTable = DB.SQL2000DB.GetNextTable(gkey /* 根据上面的KEY去取得第一页数据 */);
            //关闭上次未取完的数据连接
            DB.SQL2000DB.EndGetTable(gkey);
            returnTable.AcceptChanges();
            return returnTable;
        }
        public static DataTable GetDataByPage_SQL2005(string ASQL, int topCount)
        {
            Guid gkey;
            gkey = Guid.NewGuid();  // 对于不同的SQL语句，必须生成不同的KEY
            // 预处理SQL语句
            DB.SQL2005DB.GetTablePrepare(ASQL /* SQL 语句 */, gkey /* 该条语句的KEY */, topCount /* 每页的数据行数 */);
            // 取出第一页数据
            DataTable returnTable = DB.SQL2005DB.GetNextTable(gkey /* 根据上面的KEY去取得第一页数据 */);
            //关闭上次未取完的数据连接
            DB.SQL2005DB.EndGetTable(gkey);
            returnTable.AcceptChanges();
            return returnTable;
        }
        public static DataTable GetDataByPage_AS400(string ASQL, int topCount)
        {
            Guid gkey;
            gkey = Guid.NewGuid();  // 对于不同的SQL语句，必须生成不同的KEY
            // 预处理SQL语句
            DB.AS400DB.GetTablePrepare(ASQL /* SQL 语句 */, gkey /* 该条语句的KEY */, topCount /* 每页的数据行数 */);
            // 取出第一页数据
            DataTable returnTable = DB.AS400DB.GetNextTable(gkey /* 根据上面的KEY去取得第一页数据 */);
            //关闭上次未取完的数据连接
            DB.AS400DB.EndGetTable(gkey);
            returnTable.AcceptChanges();
            return returnTable;
        }
        //public static DataTable GetDataByPage_InterBase(string ASQL, int topCount)
        //{
        //    Guid gkey;
        //    gkey = Guid.NewGuid();  // 对于不同的SQL语句，必须生成不同的KEY
        //    // 预处理SQL语句
        //    DB.IBDB.GetTablePrepare(ASQL /* SQL 语句 */, gkey /* 该条语句的KEY */, topCount /* 每页的数据行数 */);
        //    // 取出第一页数据
        //    DataTable returnTable = DB.IBDB.GetNextTable(gkey /* 根据上面的KEY去取得第一页数据 */);
        //    //关闭上次未取完的数据连接
        //    DB.IBDB.EndGetTable(gkey);
        //    returnTable.AcceptChanges();
        //    return returnTable;
        //}
        //public static DataTable GetDataByPage_Oracle(string ASQL, int topCount)
        //{
        //    Guid gkey;
        //    gkey = Guid.NewGuid();  // 对于不同的SQL语句，必须生成不同的KEY
        //    // 预处理SQL语句
        //    DB.OracleDB.GetTablePrepare(ASQL /* SQL 语句 */, gkey /* 该条语句的KEY */, topCount /* 每页的数据行数 */);
        //    // 取出第一页数据
        //    DataTable returnTable = DB.OracleDB.GetNextTable(gkey /* 根据上面的KEY去取得第一页数据 */);
        //    //关闭上次未取完的数据连接
        //    DB.OracleDB.EndGetTable(gkey);
        //    returnTable.AcceptChanges();
        //    return returnTable;
        //}
        #endregion

        public static void Execute_BatchSql(string sql, string split)
        {
            Execute_BatchSql(sql, split, split.ToCharArray());
        }
        public static void Execute_BatchSql(string sql)
        {
            string split = ";";
            char[] chars = new char[] { ';' };
            Execute_BatchSql(sql, split, chars);
        }
        private static void Execute_BatchSql(string sql, string split, char[] chars)
        {
            int maxlen = 29000;
            sql = sql.Replace("\'", "\''");
            while (sql.Length > 0)
            {
                string sql1 = string.Empty;
                string sql2 = string.Empty;
                if (sql.Length > maxlen)
                {
                    sql1 = sql.Substring(0, maxlen);
                    int last = sql1.LastIndexOfAny(chars);
                    if (last < maxlen) last = last + 1;
                    sql1 = sql1.Substring(0, last);
                    sql2 = string.Format("call ZPHLIB_AUL.SP_BatchSql ('{0}','{1}') ", sql1, split);
                    AS400DB.Execute(sql2);
                    sql = sql.Substring(last, sql.Length - last);
                }
                else
                {
                    sql = string.Format("call ZPHLIB_AUL.SP_BatchSql ('{0}','{1}') ", sql, split);
                    AS400DB.Execute(sql);
                    sql = string.Empty;
                }
            }
        }


    }


}
