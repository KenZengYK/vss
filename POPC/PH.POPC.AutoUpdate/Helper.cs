using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Threading;

namespace PH.POPC.AutoUpdate.UI
{
    public class HelperRPG : PH.Platform.BackEnd.BO.StartService
    {
        #region fields
        private Thread m_Thread;
        private int m_SleepTime = 6000;
        private int m_count;
        private bool m_IsLive = false;
        #endregion
        public override bool StartServer(string servicename)
        {
            try
            {
               // Helper.DeleteTempFile(@"c:\temp\", "POPC-20??????-*", Convert.ToInt32(DateTime.Now.ToString("yyyyMMdd")));

                PH.Platform.BackEnd.BO.StartParam param = base.GetStartPara(servicename);
                string[] parmas = param.Parameter.Split(';');
                this.m_count = Convert.ToInt16(parmas[1]);
                int SleepTime = 0;
                if (int.TryParse(parmas[0], out SleepTime))
                {
                    m_SleepTime = SleepTime * 1000;
                }

                if (parmas[2].ToUpper() == "LIVE")
                {
                    this.m_IsLive = true;
                }


                if (this.m_Thread == null)
                {
                    this.m_Thread = new Thread(new ThreadStart(Run));
                    this.m_Thread.IsBackground = true;
                    this.m_Thread.Start();
                }
                return true;
            }
            catch
            {
                return false;
            }
        }
        public override bool StopServer(string servicename)
        {
            try
            {
                if (this.m_Thread != null)
                {
                    this.m_Thread.Abort();
                }
                return true;
            }
            catch { return false; }
        }
       
        private void Run()
        {
            try
            {
                UpdateErpRPG m_updatepopc = new UpdateErpRPG(this.m_count, this.m_IsLive,this.m_SleepTime);
                m_updatepopc.Run();
            }
            catch (Exception ex)
            {
                Helper.AddText(FileLog.UpdateRPGLog, "Error " + ex.Message);
            }
        }

    }

    public class HelperPOPC : PH.Platform.BackEnd.BO.StartService
    {
        #region fields
        private Thread m_Thread;
        private int m_SleepTime = 6000;
        private bool m_IsLive = false;
        #endregion
        public override bool StartServer(string servicename)
        {
            try
            {
                PH.Platform.BackEnd.BO.StartParam param = base.GetStartPara(servicename);
                string[] parmas = param.Parameter.Split(';');
                int SleepTime = 0;
                if (int.TryParse(parmas[0], out SleepTime))
                {
                    m_SleepTime = SleepTime * 1000;
                }
                if (parmas[1].ToUpper() == "LIVE")
                {
                    this.m_IsLive = true;
                }

                if (this.m_Thread == null)
                {
                    this.m_Thread = new Thread(new ThreadStart(Run));
                    this.m_Thread.IsBackground = true;
                    this.m_Thread.Start();
                }
                return true;
            }
            catch
            {
                return false;
            }
        }
        public override bool StopServer(string servicename)
        {
            try
            {
                if (this.m_Thread != null)
                {
                    this.m_Thread.Abort();
                }
                return true;
            }
            catch { return false; }
        }
        private void Run()
        {
            try
            {
                while (1 == 1)
                {
                    IUpdateData updatepopc = new UpdateErpDataToPOPC(this.m_IsLive);
                    updatepopc.Run();
                    Thread.Sleep(this.m_SleepTime);
                }
            }
            catch (Exception ex)
            {
                Helper.AddText(FileLog.UpdateRPGLog, "Error " + ex.Message);
            }
        }

    }

    public class HelperPOPCOther : PH.Platform.BackEnd.BO.StartService
    {
        #region fields
        private Thread m_Thread;
        private int m_SleepTime = 6000;
        private bool m_IsLive = false;
        #endregion
        public override bool StartServer(string servicename)
        {
            try
            {
                PH.Platform.BackEnd.BO.StartParam param = base.GetStartPara(servicename);
                string[] parmas = param.Parameter.Split(';');
                int SleepTime = 0;
                if (int.TryParse(parmas[0], out SleepTime))
                {
                    m_SleepTime = SleepTime * 1000;
                }
                if (parmas[1].ToUpper() == "LIVE")
                {
                    this.m_IsLive = true;
                }

                if (this.m_Thread == null)
                {
                    this.m_Thread = new Thread(new ThreadStart(Run));
                    this.m_Thread.IsBackground = true;
                    this.m_Thread.Start();
                }
                return true;
            }
            catch
            {
                return false;
            }
        }
        public override bool StopServer(string servicename)
        {
            try
            {
                if (this.m_Thread != null)
                {
                    this.m_Thread.Abort();
                }
                return true;
            }
            catch { return false; }
        }
        private void Run()
        {
            try
            {
                while (1 == 1)
                {
                    IUpdateData updatepopc = new UpdateErpDataToPOPCOther(this.m_IsLive);
                    updatepopc.Run();
                    Thread.Sleep(this.m_SleepTime);
                }
            }
            catch (Exception ex)
            {
                Helper.AddText(FileLog.UpdateRPGLog, "Error " + ex.Message);
            }
        }

    }

    public class HelperDelete : PH.Platform.BackEnd.BO.StartService
    {
        private Thread m_Thread;
        public override bool StartServer(string servicename)
        {
            try
            {
                
                //PH.Platform.BackEnd.BO.StartParam param = base.GetStartPara(servicename);
                //string[] parmas = param.Parameter.Split(';');
                //int SleepTime = 0;
                //if (int.TryParse(parmas[0], out SleepTime))
                //{
                //    m_SleepTime = SleepTime * 1000;
                //}
                if (this.m_Thread == null)
                {
                    this.m_Thread = new Thread(new ThreadStart(Run));
                    this.m_Thread.IsBackground = true;
                    this.m_Thread.Start();
                }
                return true;
            }
            catch
            {
                return false;
            }
        }
        public override bool StopServer(string servicename)
        {
            try
            {
                if (this.m_Thread != null)
                {
                    this.m_Thread.Abort();
                }
                return true;
            }
            catch { return false; }
        }
        private void Run()
        {
            try
            {
                UpdateERP update= new UpdateERP();
                update.Run();
            }
            catch (Exception ex)
            {
                Helper.AddText(FileLog.UpdateRPGLog, "Error " + ex.Message);
            }
        }
    }

    public class Helper
    {

        public static void AddText(FileLog filelog, string value)
        {

            try
            {
                string sdt = DateTime.Now.ToString("yyyyMMdd");
                string path = string.Empty;
                switch (filelog)
                {
                    case FileLog.UpdateRPGLog:
                        path = string.Format(@"c:\temp\POPC_Update_RPG{0}.txt", sdt);
                        break;
                    case FileLog.UpdatePOPCLog:
                        path = string.Format(@"c:\temp\POPC_Update_POPC{0}.txt", sdt);
                        break;
                    case FileLog.UpdateOtherLog:
                        path = string.Format(@"c:\temp\POPC_Update_Other{0}.txt", sdt);
                        break;
                    default:
                        break;
                }

                using (FileStream fs = File.Open(path, FileMode.Append, FileAccess.Write, FileShare.ReadWrite))
                {
                    byte[] info = new UTF8Encoding(true).GetBytes(value);
                    fs.Write(info, 0, info.Length);
                }
            }
            catch { }
        }
        public static void AddText(FileStream fs, string value)
        {
            try
            {
                byte[] info = new UTF8Encoding(true).GetBytes(value);
                fs.Write(info, 0, info.Length);
            }
            catch { }
        }
        public static void DeleteTempFile(string path, string searchPattern,Int64 dt )
        {
            FileInfo fi;
            try
            {
                string[] root = Directory.GetFiles(path, searchPattern);
                foreach (string s in root)
                {
                    fi = new FileInfo(s);
                    string ddd = fi.Name.Substring(5, 8);
                    int dtTemp = 0;
                    try
                    {
                        dtTemp = Convert.ToInt32(ddd);
                        if (dtTemp < dt)
                            File.Delete(s);
                    }
                    catch (Exception ex)
                    {
                        Helper.AddText(FileLog.UpdateRPGLog, s + " Error " + ex.Message);
                    }
                }
            }
            catch { }
        }
        public static void DeleteTempFile(string file)
        {
            try
            {

                if (File.Exists(file))
                    File.Delete(file);
            }
            catch (Exception ex )
            {
                Helper.AddText(FileLog.UpdateRPGLog, file+" Error " + ex.Message);
            }

        }
    }

    public enum FileLog
    {
        UpdateRPGLog = 0,
        UpdatePOPCLog = 1,
        UpdateOtherLog = 2
    }
    public interface IUpdateData
    {
        void Run();
        //bool IsDone { get; }
    }
    public class SqlServer
    {
        public class DB
        {
            private static SqlConnection _Con;
            private static int CommandTimeout = 10000;
            //private static SqlConnection Con
            //{
            //    get
            //    {
            //        if (_Con == null || _Con.State != ConnectionState.Open)
            //        {
            //            PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            //            string connectionString = context.Connection.ConnectionString;
            //            _Con = new SqlConnection(connectionString);
            //            try
            //            {
            //                _Con.Open();
            //            }
            //            catch { }
            //        }
            //        return _Con;
            //    }
            //}
            private static string Constr;
            private static string ConnectionString
            {
                get
                {
                    if (string.IsNullOrEmpty(Constr))
                    {
                        PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
                        Constr = context.Connection.ConnectionString;
                    }
                    return Constr;
                }

            }

            public static void Execute(string sql)
            {
                using (SqlConnection cn = new SqlConnection(ConnectionString))
                {
                    cn.Open();
                    using (SqlCommand cmd = new SqlCommand(sql, cn))
                    {
                        cmd.CommandTimeout = CommandTimeout;
                        cmd.ExecuteNonQuery();
                    }
                    cn.Close();
                }
            }
            public static DataTable GetTable(string sql)
            {
                using (SqlConnection cn = new SqlConnection(ConnectionString))
                {
                    cn.Open();
                    DataTable dt = new DataTable();
                    using (SqlCommand cmd = new SqlCommand(sql, cn))
                    {
                        cmd.CommandTimeout = CommandTimeout;
                        SqlDataAdapter da = new SqlDataAdapter(cmd);
                        da.Fill(dt);
                    }
                    cn.Close();
                    return dt;
                }
            }
            public static DataSet GetDataSet(string sql)
            {
                using (SqlConnection cn = new SqlConnection(ConnectionString))
                {
                    cn.Open();
                    DataSet ds = new DataSet();
                    using (SqlCommand cmd = new SqlCommand(sql, cn))
                    {
                        cmd.CommandTimeout = CommandTimeout;
                        SqlDataAdapter da = new SqlDataAdapter(cmd);
                        da.Fill(ds);
                    }
                    cn.Close();
                    return ds;
                }
            }

        }

    }
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
            string AS400ServerIP = "10.2.1.242";//202.173.254.125:vss2005.sl.phgmt.com.hk:10.2.1.242
            return string.Format("tcp://{0}:{1}/{2}",
                AS400ServerIP,
                AS400ServerPort,
                AS400ServerName);
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
}
