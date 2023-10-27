using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace PH.MobileQC.BO
{
    public class InterBaseDataHelper
    { 
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
            string _IBServerIP = "10.2.1.242";//202.173.254.125:vss2005.sl.phgmt.com.hk:10.2.1.242
            return string.Format("tcp://{0}:{1}/{2}",
                _IBServerIP,
                _IBServerPort,
                _IBServerName);
        }
       
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
}
