using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.IO;
using System.Data.Linq;
using System.Reflection;

using PH.UI;
using PH.RWO.BO;


namespace PH.RWO.BackEnd
{
    /// <summary>
    /// 實現自動
    /// </summary>
    public partial class AutoExprotBackEnd : PH.UI.UI0.BlankForm
    {
        public AutoExprotBackEnd()
        {
            InitializeComponent();
        }

        public void BackEndJob(string parameters)
        {
            RWOSOPCDataContext context = new RWOSOPCDataContext();
            string _condition =  parameters.Split('@')[1];
            if (_condition.Trim().Length > 0)
            {
                _condition = _condition.ToLower().Contains("where") ? _condition : " where " + _condition;
            }
            IList<View_Export> list = PH.UI.Global.GetItemsForListing<View_Export>("select * from view_export " + _condition, context);
            
            string path = string.Format(parameters.Split('@')[0], System.DateTime.Now.ToString("yyyyMMddmmss"));
            FileStream fs = new FileStream(path, FileMode.OpenOrCreate, FileAccess.Write);
            //通过指定字符编码方式可以实现对汉字的支持，否则在用记事本打开查看会出现乱码
            StreamWriter sw = new StreamWriter(fs, System.Text.Encoding.Unicode);
            sw.Flush();
            sw.BaseStream.Seek(0, SeekOrigin.Begin);
            foreach (View_Export v in list)
            {
                string _str = v.PoNo+",";
                 _str = _str + v.WOc+",";
                _str = _str + v.WOc+",";
                _str = _str + v.ExftyDate+",";
                _str = _str + v.ShipDate+",";
                _str = _str + v.ManufactureCode+",";
                _str = _str + v.ColorCode+",";
                _str = _str + v.Cup+",";
                _str = _str + v.Size+",";
                _str = _str + v.CustStyle+",";
                _str = _str + v.CustomerCode+",";
                _str = _str + v.Unit;
                sw.WriteLine(_str);
            }
            sw.Flush();
            sw.Close();
        }


        #region IParameterSetControl Members
        /// <summary>
        /// 獲取參數
        /// </summary>
        /// <returns>返回字符串</returns>
        public string GetParameter()
        {
            return this.txtCondition.Text.Trim()+"@"+this.txtOutPutPath.Text.Trim();//
        }

        /// <summary>
        /// 實現將參數回傳給UI
        /// </summary>
        /// <param name="parameters">參數</param>
        /// <returns>the control of  setting uc</returns>
        public UserControl ParameterControl(string parameters)
        {
            AutoExprotBackEnd uc = new AutoExprotBackEnd();
            if (!string.IsNullOrEmpty(parameters))
            {
                string[] strs = parameters.Split('@');
                uc.txtCondition.Text = strs[0];
                uc.txtOutPutPath.Text = strs[1];
            }
            return uc;
        }
        #endregion
    }
}
