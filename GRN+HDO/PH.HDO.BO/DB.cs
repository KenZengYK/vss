using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using PH.Platform.BO;
using System.Collections;

namespace PH.HDO.BO
{
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


        public static List<ContractAttach> GetNeedAttachList(HDODataContext ctx)
        {


          //  HDODataContext context = ContextBuilder.CreateContext<HDODataContext>();
            //string m1 ="P1",m3="HK"; int m2=1;
            //string sqlstr = string.Format("exec Proc_GetAttachInfo '{0}',{1},'{2}'",m1,m2,m3);
            //ctx.CommandTimeout = 80000;
            //DataTable _attach = ctx.ExecuteDataTable(sqlstr, "attach");
           // List<ContractAttach> _lst = new List<ContractAttach>(); 
            //foreach (DataRow dr in _attach.Rows)
            //{
            //    ContractAttach catt = new ContractAttach();
            //    catt.GrnNo = dr["GrnNo"] != DBNull.Value ? Int32.Parse(dr["GrnNo"].ToString()) :0;
            //    catt.GrnQty = dr["GrnQty"] != DBNull.Value ? Decimal.Parse(dr["GrnQty"].ToString()) : 0;
            //    catt.MaterialName = dr["MaterialName"] != DBNull.Value ? dr["MaterialName"].ToString() : "";
            //    //catt.SuppRef = dr["SuppRef"] != DBNull.Value ? dr["SuppRef"].ToString() : "";
            //    //catt.PO = dr["PO"] != DBNull.Value ? dr["PO"].ToString() : "";
            //    catt.ReceivedDate = dr["ReceivedDate"] != DBNull.Value ? dr["ReceivedDate"].ToString() : "";
            //    catt.HSCode = dr["HSCode"] != DBNull.Value ? dr["HSCode"].ToString() : "";
            //    catt.HSUnit = dr["HSUnit"] != DBNull.Value ? dr["HSUnit"].ToString() : "";
            //    catt.WeightHsCode = dr["WeightHsCode"] != DBNull.Value ? Decimal.Parse(dr["WeightHsCode"].ToString()) : 0;
            //    _lst.Add(catt);
            //}

            //return _lst;

            SqlDataAdapter da = new SqlDataAdapter();
            SqlConnection cn = new SqlConnection("server=10.2.1.10.;uid=ituser;pwd=itsystem@2009;database=PH.HDO");
           // SqlConnection cn = new SqlConnection(ctx.Connection.ConnectionString);
         //   SqlConnection cn = new SqlConnection(ConnStr);
            DataSet ds = new DataSet();

            da.SelectCommand = new SqlCommand("Proc_GetAttachInfo", cn);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.Add(new SqlParameter("@Company", SqlDbType.VarChar, 20));
            da.SelectCommand.Parameters["@Company"].Value = "P1";

            da.SelectCommand.Parameters.Add(new SqlParameter("@Received", SqlDbType.VarChar, 100));
            da.SelectCommand.Parameters["@Received"].Value = 1;

            da.SelectCommand.Parameters.Add(new SqlParameter("@Location", SqlDbType.VarChar, 10));
            da.SelectCommand.Parameters["@Location"].Value = "HK";
            da.SelectCommand.CommandTimeout = 80000;
            cn.Open();
            da.Fill(ds);
            cn.Close();
            cn.Dispose();

            List<ContractAttach> _lst = new List<ContractAttach>(); 
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                ContractAttach catt = new ContractAttach();
                catt.GrnNo = dr["GrnNo"] != DBNull.Value ? Int32.Parse(dr["GrnNo"].ToString()) : 0;
                catt.GrnQty = dr["GrnQty"] != DBNull.Value ? Decimal.Parse(dr["GrnQty"].ToString()) : 0;
                catt.MaterialName = dr["MaterialName"] != DBNull.Value ? dr["MaterialName"].ToString() : "";
                //catt.SuppRef = dr["SuppRef"] != DBNull.Value ? dr["SuppRef"].ToString() : "";
                //catt.PO = dr["PO"] != DBNull.Value ? dr["PO"].ToString() : "";
                catt.ReceivedDate = dr["ReceivedDate"] != DBNull.Value ? dr["ReceivedDate"].ToString() : "";
                catt.HSCode = dr["HSCode"] != DBNull.Value ? dr["HSCode"].ToString() : "";
                catt.HSUnit = dr["HSUnit"] != DBNull.Value ? dr["HSUnit"].ToString() : "";
                catt.WeightHsCode = dr["WeightHsCode"] != DBNull.Value ? Decimal.Parse(dr["WeightHsCode"].ToString()) : 0;
                _lst.Add(catt);
            }
            return _lst;
        
           
        }

        public static DataTable GetAttachList(HDODataContext ctx)
        {
            string m1 = "P1", m3 = "HK"; int m2 = 1;
            string sqlstr = string.Format("exec Proc_GetAttachInfo '{0}',{1},'{2}'", m1, m2, m3);
            DataTable _attach = ctx.ExecuteDataTable(sqlstr,"attach");
            return _attach;
        }


        public static List<AttachMaterial> GetMaterialList()
        {

            string sqlstr = "select midchscode,materialname,memo,hsunit,status from CustomMaterial where fgtype='RM'";
            DataTable _attach = ContextHelper.MidcCtx.ExecuteDataTable(sqlstr, "attach");

            List<AttachMaterial> _lst = new List<AttachMaterial>();
            foreach (DataRow dr in _attach.Rows)
            {
                AttachMaterial amt = new AttachMaterial();
                amt.HsCode = dr["midchscode"] != DBNull.Value ? dr["midchscode"].ToString() : "";
                amt.MaterialName = dr["materialname"] != DBNull.Value ? dr["materialname"].ToString() : "";
                amt.Memo = dr["memo"] != DBNull.Value ? dr["memo"].ToString() : "";
                amt.HSUnit = dr["hsunit"] != DBNull.Value ? dr["hsunit"].ToString() : "";
                amt.Statu = dr["status"] != DBNull.Value ? dr["status"].ToString() : "";
                _lst.Add(amt);
            }
            return _lst;

        }
    
    
    }
}
