using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Linq;

namespace PH.MR.BO
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
        private static IBInterface.IDataAccess _IBDB;
        public static IBInterface.IDataAccess IBDB
        {
            get
            {
                if (_IBDB == null)
                {
                    string iburl = UISetting.IBURL;
                    _IBDB = (IBInterface.IDataAccess)Activator.GetObject(typeof(IBInterface.IDataAccess), iburl);
                }
                return _IBDB;
            }
        }
        #endregion

        #region Oracle DB connection
        private static OracleServerInterface.IDataAccess _OracleDB;
        public static OracleServerInterface.IDataAccess OracleDB
        {
            get
            {
                if (_OracleDB == null)
                {
                    string oracleurl = UISetting.OracleURL;
                    _OracleDB = (OracleServerInterface.IDataAccess)Activator.GetObject(typeof(OracleServerInterface.IDataAccess), oracleurl);
                }
                return _OracleDB;
            }
        }
        #endregion
        #endregion

        #region Get Data By Page

        public static DataTable GetDataByPage_SQL2000(string ASQL)
        {
            Guid gkey;
            gkey = Guid.NewGuid();  // 对于不同的SQL语句，必须生成不同的KEY
            // 预处理SQL语句
            PH.MR.BO.DB.SQL2000DB.GetTablePrepare(ASQL /* SQL 语句 */, gkey /* 该条语句的KEY */, 100 /* 每页的数据行数 */);
            // 取出第一页数据
            DataTable returnTable = PH.MR.BO.DB.SQL2000DB.GetNextTable(gkey /* 根据上面的KEY去取得第一页数据 */);
            DataTable table = PH.MR.BO.DB.SQL2000DB.GetNextTable(gkey);// 取下一页数据
            //if (table == null)// 已经无新的数据
            while (table != null)
            {
                foreach (DataRow row in table.Rows)
                {
                    returnTable.Rows.Add(row.ItemArray);
                }
                // 取下一页数据
                table = PH.MR.BO.DB.SQL2000DB.GetNextTable(gkey);
            }
            //关闭上次未取完的数据连接
            PH.MR.BO.DB.SQL2000DB.EndGetTable(gkey);
            returnTable.AcceptChanges();
            return returnTable;
        }
        public static DataTable GetDataByPage_SQL2005(string ASQL)
        {
            Guid gkey;
            gkey = Guid.NewGuid();  // 对于不同的SQL语句，必须生成不同的KEY
            // 预处理SQL语句
            PH.MR.BO.DB.SQL2005DB.GetTablePrepare(ASQL /* SQL 语句 */, gkey /* 该条语句的KEY */, 100 /* 每页的数据行数 */);
            // 取出第一页数据
            DataTable returnTable = PH.MR.BO.DB.SQL2005DB.GetNextTable(gkey /* 根据上面的KEY去取得第一页数据 */);
            DataTable table = PH.MR.BO.DB.SQL2005DB.GetNextTable(gkey);// 取下一页数据
            //if (table == null)// 已经无新的数据
            while (table != null)
            {
                foreach (DataRow row in table.Rows)
                {
                    returnTable.Rows.Add(row.ItemArray);
                }
                // 取下一页数据
                table = PH.MR.BO.DB.SQL2005DB.GetNextTable(gkey);
            }
            //关闭上次未取完的数据连接
            PH.MR.BO.DB.SQL2005DB.EndGetTable(gkey);
            returnTable.AcceptChanges();
            return returnTable;
        }
        public static DataTable GetDataByPage_AS400(string ASQL)
        {
            Guid gkey;
            gkey = Guid.NewGuid();  // 对于不同的SQL语句，必须生成不同的KEY
            // 预处理SQL语句
            PH.MR.BO.DB.AS400DB.GetTablePrepare(ASQL /* SQL 语句 */, gkey /* 该条语句的KEY */, 100 /* 每页的数据行数 */);
            // 取出第一页数据
            DataTable returnTable = PH.MR.BO.DB.AS400DB.GetNextTable(gkey /* 根据上面的KEY去取得第一页数据 */);
            DataTable table = PH.MR.BO.DB.AS400DB.GetNextTable(gkey);// 取下一页数据
            //if (table == null)// 已经无新的数据
            while (table != null)
            {
                foreach (DataRow row in table.Rows)
                {
                    returnTable.Rows.Add(row.ItemArray);
                }
                // 取下一页数据
                table = PH.MR.BO.DB.AS400DB.GetNextTable(gkey);
            }
            //关闭上次未取完的数据连接
            PH.MR.BO.DB.AS400DB.EndGetTable(gkey);
            returnTable.AcceptChanges();
            return returnTable;
        }
        public static DataTable GetDataByPage_InterBase(string ASQL)
        {
            Guid gkey;
            gkey = Guid.NewGuid();  // 对于不同的SQL语句，必须生成不同的KEY
            // 预处理SQL语句
            PH.MR.BO.DB.IBDB.GetTablePrepare(ASQL /* SQL 语句 */, gkey /* 该条语句的KEY */, 100 /* 每页的数据行数 */);
            // 取出第一页数据
            DataTable returnTable = PH.MR.BO.DB.IBDB.GetNextTable(gkey /* 根据上面的KEY去取得第一页数据 */);
            DataTable table = PH.MR.BO.DB.IBDB.GetNextTable(gkey);// 取下一页数据
            //if (table == null)// 已经无新的数据
            while (table != null)
            {
                foreach (DataRow row in table.Rows)
                {
                    returnTable.Rows.Add(row.ItemArray);
                }
                // 取下一页数据
                table = PH.MR.BO.DB.IBDB.GetNextTable(gkey);
            }
            //关闭上次未取完的数据连接
            PH.MR.BO.DB.IBDB.EndGetTable(gkey);
            returnTable.AcceptChanges();
            return returnTable;
        }
        public static DataTable GetDataByPage_Oracle(string ASQL)
        {
            Guid gkey;
            gkey = Guid.NewGuid();  // 对于不同的SQL语句，必须生成不同的KEY
            // 预处理SQL语句
            PH.MR.BO.DB.OracleDB.GetTablePrepare(ASQL /* SQL 语句 */, gkey /* 该条语句的KEY */, 100 /* 每页的数据行数 */);
            // 取出第一页数据
            DataTable returnTable = PH.MR.BO.DB.OracleDB.GetNextTable(gkey /* 根据上面的KEY去取得第一页数据 */);
            DataTable table = PH.MR.BO.DB.OracleDB.GetNextTable(gkey);// 取下一页数据
            //if (table == null)// 已经无新的数据
            while (table != null)
            {
                foreach (DataRow row in table.Rows)
                {
                    returnTable.Rows.Add(row.ItemArray);
                }
                // 取下一页数据
                table = PH.MR.BO.DB.OracleDB.GetNextTable(gkey);
            }
            //关闭上次未取完的数据连接
            PH.MR.BO.DB.OracleDB.EndGetTable(gkey);
            returnTable.AcceptChanges();
            return returnTable;
        }

        public static DataTable GetDataByPage_SQL2000(string ASQL, int topCount)
        {
            Guid gkey;
            gkey = Guid.NewGuid();  // 对于不同的SQL语句，必须生成不同的KEY
            // 预处理SQL语句
            PH.MR.BO.DB.SQL2000DB.GetTablePrepare(ASQL /* SQL 语句 */, gkey /* 该条语句的KEY */, topCount /* 每页的数据行数 */);
            // 取出第一页数据
            DataTable returnTable = PH.MR.BO.DB.SQL2000DB.GetNextTable(gkey /* 根据上面的KEY去取得第一页数据 */);
            //关闭上次未取完的数据连接
            PH.MR.BO.DB.SQL2000DB.EndGetTable(gkey);
            returnTable.AcceptChanges();
            return returnTable;
        }
        public static DataTable GetDataByPage_SQL2005(string ASQL, int topCount)
        {
            Guid gkey;
            gkey = Guid.NewGuid();  // 对于不同的SQL语句，必须生成不同的KEY
            // 预处理SQL语句
            PH.MR.BO.DB.SQL2005DB.GetTablePrepare(ASQL /* SQL 语句 */, gkey /* 该条语句的KEY */, topCount /* 每页的数据行数 */);
            // 取出第一页数据
            DataTable returnTable = PH.MR.BO.DB.SQL2005DB.GetNextTable(gkey /* 根据上面的KEY去取得第一页数据 */);
            //关闭上次未取完的数据连接
            PH.MR.BO.DB.SQL2005DB.EndGetTable(gkey);
            returnTable.AcceptChanges();
            return returnTable;
        }
        public static DataTable GetDataByPage_AS400(string ASQL, int topCount)
        {
            Guid gkey;
            gkey = Guid.NewGuid();  // 对于不同的SQL语句，必须生成不同的KEY
            // 预处理SQL语句
            PH.MR.BO.DB.AS400DB.GetTablePrepare(ASQL /* SQL 语句 */, gkey /* 该条语句的KEY */, topCount /* 每页的数据行数 */);
            // 取出第一页数据
            DataTable returnTable = PH.MR.BO.DB.AS400DB.GetNextTable(gkey /* 根据上面的KEY去取得第一页数据 */);
            //关闭上次未取完的数据连接
            PH.MR.BO.DB.AS400DB.EndGetTable(gkey);
            returnTable.AcceptChanges();
            return returnTable;
        }
        public static DataTable GetDataByPage_InterBase(string ASQL, int topCount)
        {
            Guid gkey;
            gkey = Guid.NewGuid();  // 对于不同的SQL语句，必须生成不同的KEY
            // 预处理SQL语句
            PH.MR.BO.DB.IBDB.GetTablePrepare(ASQL /* SQL 语句 */, gkey /* 该条语句的KEY */, topCount /* 每页的数据行数 */);
            // 取出第一页数据
            DataTable returnTable = PH.MR.BO.DB.IBDB.GetNextTable(gkey /* 根据上面的KEY去取得第一页数据 */);
            //关闭上次未取完的数据连接
            PH.MR.BO.DB.IBDB.EndGetTable(gkey);
            returnTable.AcceptChanges();
            return returnTable;
        }
        public static DataTable GetDataByPage_Oracle(string ASQL, int topCount)
        {
            Guid gkey;
            gkey = Guid.NewGuid();  // 对于不同的SQL语句，必须生成不同的KEY
            // 预处理SQL语句
            PH.MR.BO.DB.OracleDB.GetTablePrepare(ASQL /* SQL 语句 */, gkey /* 该条语句的KEY */, topCount /* 每页的数据行数 */);
            // 取出第一页数据
            DataTable returnTable = PH.MR.BO.DB.OracleDB.GetNextTable(gkey /* 根据上面的KEY去取得第一页数据 */);
            //关闭上次未取完的数据连接
            PH.MR.BO.DB.OracleDB.EndGetTable(gkey);
            returnTable.AcceptChanges();
            return returnTable;
        }
        #endregion

        public static List<WoRwoQn> GetWOsFromAS400(string cono, string project)
        {
            //            string sql1 = string.Format(@"select a.*,
            //subString(a.TM,1,2)||':'||subString(a.TM,3,2)||':'||subString(a.TM,5,2) as TM1,
            //subString(cast(a.DT as varchar(8)),1,4)||'/'||subString(cast(a.DT as varchar(8)),5,2)||'/'||subString(cast(a.DT as varchar(8)),7,2)||
            //' '||subString(a.TM,1,2)||':'||subString(a.TM,3,2)||':'||subString(a.TM,5,2) as DTTM
            //from zphlib_aul.WIP_Version a
            //Where FLAG='{0}'and WIPVersion='{1}'
            //order by CONO,StockRoom,ASATDate,DT,TM", WIPStatus, WIPVersion);
            //DataTable dt = AS400DB.GetDataByPage_AS400(sql1);

            string sql1 = string.Format(@"select distinct WORD40 as WorkOrder  from AULT5F1.msp40 where  cono40='{0}' and w2rf40='{1}'
            order by WORD40", cono, project);


            string sql2 = sql1.Replace("'", "''");
            string sql = string.Format("select * from openquery([AS400],'{0}')", sql2);

            PH.Platform.AuthMgr.BO.AuthMgrDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.Platform.AuthMgr.BO.AuthMgrDataContext>();

            List<WoRwoQn> list = context.ExecuteQuery<WoRwoQn>(sql).ToList<WoRwoQn>();
            //var list = context.ExecuteQuery<WIP_Version>(sql);

            //List<WIP_Version> list = Common.GetObjects<WIP_Version>(dt, true);
            return list;

        }
    }
    public class Config
    {
        #region share Variant
        private static string _as400ip;
        public static string AS400IP
        {
            get
            {
                if (_as400ip == null)
                    _as400ip = UISetting.AS400DBIP;
                return _as400ip;
            }
        }
        public static int LanguageIndex
        {
            get
            {
                return (int)1;//PH.AuthManage.Utils.AuthController.phLanguage;
            }
        }

        private static string[] _lRight;
        public static string[] LRight
        {
            get
            {
                if (_lRight == null)
                    _lRight = new string[4] { "You do not have the Right to Use this Function.", "你沒有權限使用這個功能.", "你沒有權限使用這個功能.", "You do not have the Right to Use this Function." };
                return _lRight;
            }
        }

        private static string[] _lHint;
        public static string[] LHint
        {
            get
            {
                if (_lHint == null)
                    _lHint = new string[4] { "Hint", "提示", "提示", "Hint" };
                return _lHint;
            }
        }

        private static string[] _lDesc;
        public static string[] LDesc
        {
            get
            {
                if (_lDesc == null)
                    _lDesc = new string[4] { "Description", "描述", "描述", "Description" };
                return _lDesc;
            }
        }

        //public static string sysXMLfile
        //{
        //    get { return System.Windows.Forms.Application.StartupPath + @"\SysConfig.xml"; }
        //}

        public static readonly string ExportSysBtnName = "SystemPrintExport";
        #endregion

        public static string GetUserCodeDept(string userCode)
        {
            string returnvalue = "";

            PH.Platform.Misc.BO.Misc_FacotryList myobj = new PH.Platform.Misc.BO.Misc_FacotryList();

            var list = myobj.GetMisc_OrganizationByUserID(userCode);

            foreach (PH.Platform.Misc.BO.Misc_Organization obj in list)
            {
                if (obj.OrgType == "Department")
                {
                    returnvalue = obj.OrgCode;
                    break;
                }
            }


            return returnvalue;
        }

        public static string GetUserCodeDept(string usercode, string Orgtype)
        {
            string DeptCode = "";

            PH.Platform.Misc.BO.PHPlatformMiscDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.Platform.Misc.BO.PHPlatformMiscDataContext>();
            string sqlstr = context.Connection.ConnectionString;

            SqlDataAdapter da = new SqlDataAdapter();
            SqlConnection cn = new SqlConnection(sqlstr);
            DataSet ds = new DataSet();

            da.SelectCommand = new SqlCommand("Misc_SP_GetUserDeptInfo", cn);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.Add(new SqlParameter("@UserID", SqlDbType.VarChar, 50));
            da.SelectCommand.Parameters.Add(new SqlParameter("@Orgtype", SqlDbType.VarChar, 50));
            da.SelectCommand.Parameters["@UserID"].Value = usercode;
            da.SelectCommand.Parameters["@Orgtype"].Value = Orgtype;
            da.SelectCommand.CommandTimeout = 8000;
            cn.Open();
            da.Fill(ds);
            cn.Close();
            cn.Dispose();
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                DeptCode = dr["OrgCode"].ToString();
                break;
            }
            return DeptCode;



        }
    }

}
