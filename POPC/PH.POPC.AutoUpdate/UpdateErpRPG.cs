using System;
using System.Collections.Generic;
using System.Text;
using System.Collections;
using System.Data;
using System.IO;
using System.Windows.Forms;
using System.Diagnostics;
using DevExpress.XtraReports.UI;
using DevExpress.XtraReports.Native;
using DevExpress.XtraPrinting;
using System.Data.Linq;
using System.Linq;
using System.Threading;
namespace PH.POPC.AutoUpdate.UI
{

    public struct FtpParmater
    {
        public string FtpIP;
        public bool IsLive;
        public string As400TableLib;
        public string As400Param;
        public string As400RPGLib;
        public int Status;
    }
    class UpdateErpRPG : IUpdateData
    {
        private static POPC.BO.POPCDataContext m_context = PH.Platform.BO.ContextBuilder.CreateContext<POPC.BO.POPCDataContext>();
        private readonly int m_status = 0;
        private  int m_count = 10;
        private int m_sleeptime = 1000;
        private FtpParmater m_parm;
        private  List<POList> m_list = new List<POList>();

        public UpdateErpRPG(int ThreadCount, bool islive, int sleeptime)
        {
            ThreadPool.SetMaxThreads(ThreadCount, ThreadCount*10);
            m_count = ThreadCount;
            m_sleeptime = sleeptime;
            Init(islive);
        }

        private void PrePareData()
        {
            try
            { 
                string sql = string.Empty; 
                sql = string.Format(@"
                                    select top 100 CONO96A as CONO,ORDN96A as PONO, UPDATETIME  
                                    from openquery(as400,'select  CONO96A ,ORDN96A , Max(cast(UPDATETIME as varchar(30))) as  UPDATETIME 
                                                          from    {0}4f1.PHP96A 
                                                          where   ORDN96A<>'''' and FLAG=''{1}'' 
                                                          group by CONO96A,ORDN96A')
                                    order by UPDATETIME", this.m_parm.As400TableLib, this.m_status);
                m_list = m_context.ExecuteQuery<POList>(sql).ToList();
                string sSuccess = string.Format("\r\n\r\n\r\n--->PO list  [count:{0}] [Time:{1:yyyy'-'MM'-'dd HH:mm:ss}] ...\r\n", m_list.Count, DateTime.Now);
                Helper.AddText(FileLog.UpdateRPGLog, sSuccess);
            }
            catch (Exception ex)
            {
                if (ex.Message.Contains("linked server"))
                {
                    Thread.Sleep(1000 * 3600);
                }
            }
        }


        private void Init(bool islive)
        {
            //PhSys.AppSetting appSettings = new PhSys.AppSetting("PH.Remoting");
            this.m_parm.IsLive = islive;//(bool)UISetting.GetSettingValueDefault(appSettings, "GoLive", false);
            this.m_parm.As400TableLib = this.m_parm.IsLive ? "AULT" : "TSTT";
            this.m_parm.As400Param = this.m_parm.IsLive ? "PHG" : "TST";
            this.m_parm.As400RPGLib = this.m_parm.IsLive ? "AULPHGMODS" : "AULPHGTST";
            this.m_parm.FtpIP = "10.1.1.8";// UISetting.AS400DBIP;
            this.m_parm.Status = this.m_status;

        }
        public void Run()
        {
            while (m_list.Count == 0)
            {
                Thread.Sleep(this.m_sleeptime);
                PrePareData();
            }

            for (int i = 0; i < m_list.Count; i++)
            {
                POList item = m_list[i];
                item.SeqNO = i + 1;
                RunThread runthd = new RunThread(item, this.m_parm, this);
                WaitCallback callback = new WaitCallback(runthd.Run);
                ThreadPool.QueueUserWorkItem(callback);
                
            }
        }

        public void ReRun(POList polist)
        {
            
            lock (this.m_list)
            {
                this.m_list.Remove(polist);
            }
            if (this.m_list.Count == 0)
            {
                Run();
            }
        }

    }
    class RunThread
    {
        private POList POList;
        private FtpParmater Parm;
        private UpdateErpRPG RPG;
        private string ThreadNO = string.Empty;
        public RunThread(POList polist, FtpParmater parm, UpdateErpRPG rpg)
        {
            this.POList = polist;
            this.Parm = parm;
            this.RPG = rpg;
        }
        public void Run(Object stateInfo)
        {
            POList Item = POList.Clone();
            try
            {
                Helper.AddText(FileLog.UpdateRPGLog, string.Format("{0}[{1}{2}]{3}:{4}-ERP update time:{6:yyyy'-'MM'-'dd HH:mm:ss.fff}  [Time:{5:yyyy'-'MM'-'dd HH:mm:ss}] doing...\r\n", this.ThreadNO, Item.SeqNO, string.Empty, Item.CONO, Item.PONO, DateTime.Now, Item.UPDATETIME));
                DateTime nowDateTime = DateTime.Now;
                Item.DT = Convert.ToInt32(nowDateTime.ToString("yyyyMMdd"));
                Item.TM = nowDateTime.ToString("HHmmssfff");
                Item.JOBN = nowDateTime.ToString("yyyyMMddHHmm.ssfff");
                if (ActionFTP_Update(Item))
                {
                    Updated_Flag(Item);
                    Helper.AddText(FileLog.UpdateRPGLog, string.Format("{0}[{1}{2}]{3}:{4}-ERP update time:{6:yyyy'-'MM'-'dd HH:mm:ss.fff}  [Time:{5:yyyy'-'MM'-'dd HH:mm:ss}] Completed...\r\n", this.ThreadNO, Item.SeqNO, string.Empty, Item.CONO, Item.PONO, DateTime.Now, Item.UPDATETIME));
                }
            }
            catch (Exception ex)
            {
                if (!ex.Message.Contains("08004"))
                {
                    PH.POPC.BO.EmailInfo info = new PH.POPC.BO.EmailInfo();
                    info.ServerName = this.ToString();
                    info.Message = Item.PONO + ":" + ex.Message;
                    SendMail.Send(info);
                    Helper.AddText(FileLog.UpdatePOPCLog, string.Format("====>POPC UpdateBat ERROR [End Time:{0:yyyy'-'MM'-'dd HH:mm:ss}] {1}\r\n", DateTime.Now, ex.Message));
                }
                Helper.AddText(FileLog.UpdateRPGLog, string.Format("       ===> ERROR:   PHP96A:[update Flag:{0}:{1}-ERP update time:{4:yyyy'-'MM'-'dd HH:mm:ss.fff}]  [Time:{2:yyyy'-'MM'-'dd HH:mm:ss}] Msg:{3}\r\n", Item.CONO, Item.PONO, DateTime.Now, ex.Message, Item.UPDATETIME));
            }
            finally
            {
                RPG.ReRun(POList);
            }
        }

        private void Updated_Flag(POList p)
        {
            string sql = string.Format("update {2}4F1.PHP96A set FLAG='2',PCDATETIME=now() where cono96A='{0}' and ordn96A='{1}' and FLAG='{4}' and TIMESTAMP(updatetime)<='{3:yyyy-MM-dd-HH.mm.ss.ffffff}'",
                p.CONO, p.PONO, this.Parm.As400TableLib, p.UPDATETIME, this.Parm.Status);
            AS400DB.DB.Execute(sql);
        }
        private bool ActionFTP_Update(POList p)
        {
            try
            {
                #region 用ftp向As400取数据
                int adt1 = 20000101 - 19000000;
                int adt2 = 20301231 - 19000000;
                string Str = "quote rcmd CALL PGM({15}/PH980CLP) PARM('{0}' '{1}' '{2}' '{3}' '{4}' '{5}' '{6}' '{7}' '{8}' '{9}' '{10}' '{11}' '{12}' '{13}' '{14}')";
                string ftp = string.Format(Str,
                    this.Parm.As400Param,
                    p.CONO,
                    p.PONO,
                    "",
                    "",
                    "",
                    0,
                    "",
                    adt1,
                    adt2,
                    "",
                    "ODBC",
                    p.DT.ToString().Substring(0, 4),//"yyyy"
                    p.DT.ToString().Substring(4, 4),//"MMdd"
                    p.TM, this.Parm.As400RPGLib);

                string sdt = DateTime.Now.ToString("yyyyMMdd-HHmmssfff");//8.3
                string path1 = string.Format(@"c:\temp\POPC-{0}-{1}-{2}.txt", sdt,p.CONO.Trim(),p.PONO.Trim());
                string path2 = string.Format(@"c:\temp\POPC-{0}-{1}-{2}.bat", sdt, p.CONO.Trim(),p.PONO.Trim());

                bool dirExists = Directory.Exists(@"c:\temp");
                if (!dirExists)
                {
                    Directory.CreateDirectory(@"c:\temp");
                }

                using (FileStream fs = File.Open(path1, FileMode.Append, FileAccess.Write, FileShare.ReadWrite))
                {
                    Helper.AddText(fs, "ODBC\n");
                    Helper.AddText(fs, "mq3hx6gc3t\n");
                    Helper.AddText(fs, ftp);
                    Helper.AddText(fs, "\n");
                    Helper.AddText(fs, "quote quit\n");
                    Helper.AddText(fs, "quit");
                }

                //Create the file.
                using (FileStream fs = File.Open(path2, FileMode.Append, FileAccess.Write, FileShare.ReadWrite))
                {
                    Helper.AddText(fs, string.Format(@"ftp -s:{0} {1}", path1, this.Parm.FtpIP));
                }
                //run bat
                ProcessStartInfo psi = new ProcessStartInfo(path2);
                psi.WindowStyle = ProcessWindowStyle.Hidden;
                Process currentProcess = Process.Start(psi);
                #endregion
                #region 检查数据是否已经取完
                bool bDone = false;
                int i = 0;
                while (!bDone)
                {
                    bDone = Check_HasDone(p);
                    i += 1;
                    if (i > 15) return false;
                }
                #endregion
                #region delete temp file
                Helper.DeleteTempFile(@"c:\temp\", "POPC-20??????-*", p.DT);
                Helper.DeleteTempFile(path1);
                Helper.DeleteTempFile(path2);
                #endregion
            }
            catch (Exception e)
            {
                RPG.ReRun(POList);
                Helper.AddText(FileLog.UpdateRPGLog, string.Format("       ===> ERROR:  [FTP:{0}-ERP update time:{3:yyyy'-'MM'-'dd HH:mm:ss.fff}]  [Time:{1:yyyy'-'MM'-'dd HH:mm:ss}] Msg:{2}", p.PONO, DateTime.Now, e.Message, p.UPDATETIME));
                return false;
            }
            return true;
        }

        private bool Check_HasDone(POList p)
        {
            string sSQL = string.Format("select cono96 from {2}4f1.php96t where cono96 = '{0}' and jobn96 = {1}",
                p.CONO, p.JOBN, this.Parm.As400TableLib);
            object obj;
            bool bln = false;
            try
            {
                obj = AS400DB.DB.GetScalar(sSQL);
                bln = !(Convert.IsDBNull(obj) || obj == null);
            }
            catch
            {
                bln = false;
            }
            finally
            {
                if (bln == false)
                {
                    Thread.Sleep(5 * 1000);
                }
            }
            return bln;
        }
    }

}
