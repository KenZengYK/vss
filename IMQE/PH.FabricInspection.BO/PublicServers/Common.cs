using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace PH.FabricInspection.BO
{
    /// <summary>
    /// for SQL2000,AS400,InterBase,Oracle
    /// </summary>
    public class AS400DB
    {
        #region AS400 DB connection
        private static AS400Interface.IDataAccess _AS400DB;
        public static AS400Interface.IDataAccess DB
        {
            get
            {
                if (_AS400DB == null)
                {
                    string as400url = GetSettings();
                    _AS400DB = (AS400Interface.IDataAccess)Activator.GetObject(typeof(AS400Interface.IDataAccess), as400url);
                }
                return _AS400DB;
            }
        }
        private static string GetSettings()
        {
            int AS400ServerPort = 14100;
            string AS400ServerName = "As400Server";
            //string AS400ServerIP = "vss2005.sl.phgmt.com.hk";//202.173.254.125:vss2005.sl.phgmt.com.hk:10.2.1.242
            string AS400ServerIP = "10.2.1.242";//202.173.254.125:vss2005.sl.phgmt.com.hk:10.2.1.242
            return string.Format("tcp://{0}:{1}/{2}",
                AS400ServerIP,
                AS400ServerPort,
                AS400ServerName);
            
            //old
            //string _AS400DBIP = (string)GetSettingValueDefault(_appSettings, "AS400DBIP", "10.1.1.8");//202.155.251.71:as400.hk.phgmt.com.hk:10.1.1.8
            //int _AS400ServerPort = (int)GetSettingValueDefault(_appSettings, "AS400ServerPort", 14100);
            //string _AS400ServerName = (string)GetSettingValueDefault(_appSettings, "AS400ServerName", "As400Server");
            //string _AS400ServerIP = (string)GetSettingValueDefault(_appSettings, "AS400ServerIP", "vss2005.sl.phgmt.com.hk");//202.173.254.125:vss2005.sl.phgmt.com.hk:10.2.1.242

        }

        public static DataTable GetDataByPage_AS400(string ASQL)
        {
            Guid gkey;
            gkey = Guid.NewGuid();  // 对于不同的SQL语句，必须生成不同的KEY
            // 预处理SQL语句
            DB.GetTablePrepare(ASQL /* SQL 语句 */, gkey /* 该条语句的KEY */, 100 /* 每页的数据行数 */);
            // 取出第一页数据
            DataTable returnTable = DB.GetNextTable(gkey /* 根据上面的KEY去取得第一页数据 */);
            DataTable table = DB.GetNextTable(gkey);// 取下一页数据
            //if (table == null)// 已经无新的数据
            while (table != null)
            {
                foreach (DataRow row in table.Rows)
                {
                    returnTable.Rows.Add(row.ItemArray);
                }
                // 取下一页数据
                table = DB.GetNextTable(gkey);
            }
            //关闭上次未取完的数据连接
            DB.EndGetTable(gkey);
            returnTable.AcceptChanges();
            return returnTable;
        }



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


        private  static void Execute_BatchSql(string sql,string split,char[] chars)
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
                    DB.Execute(sql2);
                    sql = sql.Substring(last, sql.Length - last);
                }
                else
                {
                    sql = string.Format("call ZPHLIB_AUL.SP_BatchSql ('{0}','{1}') ", sql, split);
                    DB.Execute(sql);
                    sql = string.Empty;
                }
            }
        }
    
        
        #endregion
    }
    public class InterBase
    {
        #region InterBase DB
        private static IBInterface.IDataAccess _InterBase;
        public static IBInterface.IDataAccess DB
        {
            get
            {
                if (_InterBase == null)
                {
                    string url = GetSettings();
                    _InterBase = (IBInterface.IDataAccess)Activator.GetObject(typeof(IBInterface.IDataAccess), url);
                }
                return _InterBase;
            }
        }
        private static string GetSettings()
        {
            int _IBServerPort = 14157;
            string _IBServerName = "IBServer";
            string _IBServerIP = "vss2005.sl.phgmt.com.hk";//202.173.254.125:vss2005.sl.phgmt.com.hk:10.2.1.242
            return string.Format("tcp://{0}:{1}/{2}",
                _IBServerIP,
                _IBServerPort,
                _IBServerName);
        }
        #endregion
        public static DataTable GetDataByPage_IB(string ASQL)
        {
            Guid gkey;
            gkey = Guid.NewGuid();  // 对于不同的SQL语句，必须生成不同的KEY
            // 预处理SQL语句
            DB.GetTablePrepare(ASQL /* SQL 语句 */, gkey /* 该条语句的KEY */, 100 /* 每页的数据行数 */);
            // 取出第一页数据
            DataTable returnTable = DB.GetNextTable(gkey /* 根据上面的KEY去取得第一页数据 */);
            DataTable table = DB.GetNextTable(gkey);// 取下一页数据
            //if (table == null)// 已经无新的数据
            while (table != null)
            {
                foreach (DataRow row in table.Rows)
                {
                    returnTable.Rows.Add(row.ItemArray);
                }
                // 取下一页数据
                table = DB.GetNextTable(gkey);
            }
            //关闭上次未取完的数据连接
            DB.EndGetTable(gkey);
            returnTable.AcceptChanges();
            return returnTable;
        }
    }
    public class SqlServer
    {
        public class DB
        {
            private static SqlConnection _Con;
            private static int CommandTimeout = 10000;
            private static SqlConnection Con
            {
                get
                {
                    if (_Con == null || _Con.State != ConnectionState.Open)
                    {
                        string connectionString = @"Data Source=10.2.1.10;Initial Catalog=PHGDB;User ID=sa;Password=teamwork;Connection Timeout=600000";
                        _Con = new SqlConnection(connectionString);
                        try
                        {
                            _Con.Open();
                        }
                        catch { }
                    }
                    return _Con;
                }
            }
            public static void Execute(string sql)
            {
                SqlCommand cmd = new SqlCommand(sql, Con);
                cmd.CommandTimeout = CommandTimeout;
                cmd.ExecuteNonQuery();
            }
            public static DataTable GetTable(string sql)
            {
                SqlCommand cmd = new SqlCommand(sql, Con);
                cmd.CommandTimeout = CommandTimeout;
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt;
            }
            public static DataSet GetDataSet(string sql)
            {
                SqlCommand cmd = new SqlCommand(sql, Con);
                cmd.CommandTimeout = CommandTimeout;
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                return ds;
            }

        }

    }



}
