using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.IO;

namespace PH.POPC.AutoUpdate.UI
{
    public class UpdateErpDataToPOPC : IUpdateData
    {
        private bool _isLive = false;
        public UpdateErpDataToPOPC()
        {
        }
        public UpdateErpDataToPOPC(bool islive)
        {
            this._isLive = islive;
        }

        #region IUpdateData Members
        public void Run()
        {
            if (this._isLive == true)
            {
                RunLive();
            }
            else
            {
                RunTest();
            }
        }
        public void RunLive()
        {
            try
            {
                //AS400DB.Execute_BatchSql("update ault4F1.php96a set flag='2' where flag='3'");
                //AS400DB.Execute_BatchSql("delete from  ault4f1.php96t  where jobn96>= 201001010201.17343");
                string sql = "exec [sp_ERP_POPC_Update] ";
                Helper.AddText(FileLog.UpdatePOPCLog, string.Format("\r\n\r\n====>POPC UpdateBat [Begin Time:{0:yyyy'-'MM'-'dd HH:mm:ss}]\r\n", DateTime.Now));
                DataTable dt = SqlServer.DB.GetTable(sql);
                Helper.AddText(FileLog.UpdatePOPCLog, string.Format("====>POPC UpdateBat Count={0}\r\n", dt.Rows.Count));
               
                foreach (DataRow dr in dt.Rows)
                {
                   string sql1 = string.Format(@"
                                                update ault4F1.php96a set flag='3'
                                                where  ordn96A='{1}' 
                                                and    cono96A='{2}' 
                                                and    flag='2' 
                                                and    TIMESTAMP(updatetime)<='{3}'
                                                ", dr["JOBN98"], dr["ORDN98"], dr["CONO98"], dr["UpdateTime"]);
                   AS400DB.DB.Execute(sql1);

//                    string sql2 = string.Format(@"
//delete from ault4f1.php98  where JOBN98<={0}", DateTime.Now.AddDays(-1).ToString("yyyyMMdd") + "0000.00000");
//                    AS400DB.DB.Execute(sql2);

//                    string sql2 = string.Format(@"
//delete from ault4f1.php98  where JOBN98<={0} and ordn98='{1}'  and  cono98='{2}'
//", dr["JOBN98"], dr["ORDN98"], dr["CONO98"], dr["UpdateTime"]);
//                    AS400DB.DB.Execute(sql2);

                    Helper.AddText(FileLog.UpdatePOPCLog, string.Format("====>POPC UpdateBat  JOBN98={0},Company={1} ,PONO={2},[ErpUpdateTime:{3:yyyy'-'MM'-'dd HH:mm:ss}]\r\n"
    , dr["JOBN98"], dr["CONO98"], dr["ORDN98"], dr["UpdateTime"]));
                }
                //                delete from ault4f1.php98  where JOBN98<={0} and ordn98='{1}'  and  cono98='{2}';
                //delete from ault4f1.php96t where JOBN96<={0} and ordn96='{1}'  and  cono96='{2}';
                Helper.AddText(FileLog.UpdatePOPCLog, string.Format("====>POPC UpdateBat [End Time:{0:yyyy'-'MM'-'dd HH:mm:ss}]\r\n", DateTime.Now));
            }
            catch (Exception ex)
            {
                if (ex.Message.Contains("linked server"))
                {
                    System.Threading.Thread.Sleep(1000 * 120);
                }
                else
                {
                    Helper.AddText(FileLog.UpdatePOPCLog, string.Format("====>POPC UpdateBat ERROR [End Time:{0:yyyy'-'MM'-'dd HH:mm:ss}] {1}\r\n", DateTime.Now, ex.Message));

                }

                //else if (!ex.Message.Contains("08004"))
                //{
                //    PH.POPC.BO.EmailInfo info = new PH.POPC.BO.EmailInfo();
                //    info.ServerName = this.ToString();
                //    info.Message = ex.Message;
                //    SendMail.Send(info);
                //    Helper.AddText(FileLog.UpdatePOPCLog, string.Format("====>POPC UpdateBat ERROR [End Time:{0:yyyy'-'MM'-'dd HH:mm:ss}] {1}\r\n", DateTime.Now, ex.Message));
                //}
            }
        }


        public void RunTest()
        {
            try
            {
                //AS400DB.Execute_BatchSql("update ault4F1.php96a set flag='2' where flag='3'");
                //AS400DB.Execute_BatchSql("delete from  ault4f1.php96t  where jobn96>= 201001010201.17343");
                string sql = "exec [sp_ERP_POPC_Update_Test] ";
                Helper.AddText(FileLog.UpdatePOPCLog, string.Format("\r\n\r\n====>POPC UpdateBat [Begin Time:{0:yyyy'-'MM'-'dd HH:mm:ss}]\r\n", DateTime.Now));
                DataTable dt = SqlServer.DB.GetTable(sql);
                Helper.AddText(FileLog.UpdatePOPCLog, string.Format("====>POPC UpdateBat Count={0}\r\n", dt.Rows.Count));
                sql = string.Empty;
                foreach (DataRow dr in dt.Rows)
                {

                    string sql1 = string.Format(@"
                                    update tstt4F1.php96a set flag='3'
                                    where  ordn96A='{1}' 
                                    and    cono96A='{2}' 
                                    and    flag='2' 
                                    and    TIMESTAMP(updatetime)<='{3}'
                                    ", dr["JOBN98"], dr["ORDN98"], dr["CONO98"], dr["UpdateTime"]);
                    AS400DB.DB.Execute(sql1);

                    //                    string sql2 = string.Format(@"
                    //delete from ault4f1.php98  where JOBN98<={0}", DateTime.Now.AddDays(-1).ToString("yyyyMMdd") + "0000.00000");
                    //                    AS400DB.DB.Execute(sql2);

                    //                    string sql2 = string.Format(@"
                    //delete from ault4f1.php98  where JOBN98<={0} and ordn98='{1}'  and  cono98='{2}'
                    //", dr["JOBN98"], dr["ORDN98"], dr["CONO98"], dr["UpdateTime"]);
                    //                    AS400DB.DB.Execute(sql2);

                    Helper.AddText(FileLog.UpdatePOPCLog, string.Format("====>POPC UpdateBat  JOBN98={0},Company={1} ,PONO={2},[ErpUpdateTime:{3:yyyy'-'MM'-'dd HH:mm:ss}]\r\n"
    , dr["JOBN98"], dr["CONO98"], dr["ORDN98"], dr["UpdateTime"]));

                }
               // AS400DB.Execute_BatchSql(sql);
                Helper.AddText(FileLog.UpdatePOPCLog, string.Format("====>POPC UpdateBat [End Time:{0:yyyy'-'MM'-'dd HH:mm:ss}]\r\n", DateTime.Now));
            }
            catch (Exception ex)
            {
                if (ex.Message.Contains("linked server"))
                {
                    System.Threading.Thread.Sleep(1000 * 120);
                }
                else
                {
                    Helper.AddText(FileLog.UpdatePOPCLog, string.Format("====>POPC UpdateBat ERROR [End Time:{0:yyyy'-'MM'-'dd HH:mm:ss}] {1}\r\n", DateTime.Now, ex.Message));
                }
                //if (!ex.Message.Contains("08004"))
                //{
                //    PH.POPC.BO.EmailInfo info = new PH.POPC.BO.EmailInfo();
                //    info.ServerName = this.ToString();
                //    info.Message = ex.Message;
                //    SendMail.Send(info);
                //    Helper.AddText(FileLog.UpdatePOPCLog, string.Format("====>POPC UpdateBat ERROR [End Time:{0:yyyy'-'MM'-'dd HH:mm:ss}] {1}\r\n", DateTime.Now, ex.Message));
                //}
            }
        }
        #endregion
    }
}
