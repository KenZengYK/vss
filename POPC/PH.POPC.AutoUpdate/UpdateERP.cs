using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PH.POPC.AutoUpdate.UI
{
    public class UpdateERP
    {
        public void Run()
        {
            while (1 == 1)
            {
                try
                { 
                    string sql = string.Format(@"delete from ault4f1.php98  where JOBN98<={0}", 
                                                    DateTime.Now.AddDays(-1).ToString("yyyyMMdd") + "0000.00000");
                    AS400DB.DB.Execute(sql);
                    Helper.AddText(FileLog.UpdateRPGLog, string.Format("Delete Data ==>{0}---{1}", sql, DateTime.Now.ToString()));
                    System.Threading.Thread.Sleep(3600 * 1000 * 12);
                }
                catch (Exception ex)
                {
                    if (!string.IsNullOrEmpty(ex.Message) && !ex.Message.Contains("08004"))
                        Helper.AddText(FileLog.UpdateRPGLog, string.Format("Error :{1} Delete Data ==>{0}", DateTime.Now.ToString(), ex.Message));
                }
            }
        }
    }
}
