using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using PH.RWO.BO;
using System.IO;
using System.Xml;
using System.Xml.Linq;
using PH.Platform.BO;

namespace PH.RWO.UI
{
    class AutoExport : PH.Platform.BackEnd.BO.IServerJob
    {
        public void BackEndJob(string parameters)
        {

            PH.RWO.BO.RWOSOPCDataContext context = ContextBuilder.CreateContext<RWOSOPCDataContext>();
            IList<View_Export> list = Global.GetItemsForListing<View_Export>("select * from view_export" + parameters.Split(',')[1], context);

            string path = string.Format(parameters.Split(',')[0], System.DateTime.Now);
            FileStream fs = new FileStream(path, FileMode.OpenOrCreate, FileAccess.Write);
            StreamWriter sw = new StreamWriter(fs, System.Text.Encoding.Unicode);//通过指定字符编码方式可以实现对汉字的支持，否则在用记事本打开查看会出现乱码
            sw.Flush();
            sw.BaseStream.Seek(0, SeekOrigin.Begin);
            foreach (View_Export v in list)
            {
                string _str = v.BulkQty.ToString() + "," + v.ColorCode.ToString() + "," + v.Cup.ToString() + "," + v.CustomerCode + "," + v.ExftyDate.ToString() + "," + v.PoNo + "," + v.ShipDate + "\n";
                sw.WriteLine(_str);
            }
            sw.Flush();
            sw.Close();
        }
    }
}
 