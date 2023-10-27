using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.LWPM.BO;
using System.Data.Common;
using PH.Platform.BO;

namespace PH.LWPM.UI.MasterDB
{
    public partial class BaseCodeEditForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public BaseCodeEditForm()
        {
            InitializeComponent();

            //this.TabPage = (this.ListForm as BaseCodeListForm)
            //editForm.TabPage.Controls.Add(editForm);
        }

        protected override void SaveCurrent()
        {
            BaseCode obj = this.BindingSource.Current as BaseCode;
            if (obj != null)
            {
                obj.Type = (this.ListForm as BaseCodeListForm).BaseCodeType;
                if (string.IsNullOrEmpty(obj.Code))
                {
                    obj.Code = this.GenerateCode();
                }
            }
            base.SaveCurrent();
        }


        private string GenerateCode()
        {
            RAPLQDataContext rdc = PH.Platform.BO.ContextBuilder.CreateContext<RAPLQDataContext>();
            string sqlstr = "select max(code) from basecode where code like '%CJ%'";
            DbParameter[] paras = new DbParameter[] { };

            DbDataReader dr = rdc.ExecuteReader(sqlstr, paras);

            string mcode = "CJ00000001";



            if (dr.Read())
            {
                string maxcode = dr[0].ToString();
                if (!string.IsNullOrEmpty(maxcode))
                {
                    int ii = int.Parse(maxcode.Substring(2, 8)) + 1;
                    string middle = string.Empty;
                    for (int j = 0; j < 8 - ii.ToString().Length; j++)
                    {
                        middle = middle + "0";
                    }
                    mcode = "CJ" + middle + ii.ToString();
                }
            }
            dr.Close();
            return mcode;
        }
    }
}
