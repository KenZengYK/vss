using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.LWPM.BO;
using System.Data.Common;
using PH.Platform.BO;

namespace PH.LWPM.UI.MasterDB
{
    public partial class CountryRegionEditForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public CountryRegionEditForm()
        {
            InitializeComponent();
        }


        public override void EditCurrent()
        {
            base.EditCurrent();
            if ((this.PrevForm as CountryRegionListForm).isaddchild)
            {              
                
                tbxParent.Text = (this.PrevForm as CountryRegionListForm).objparent.Code;
                comboBoxEdit1.Text = (this.PrevForm as CountryRegionListForm).objparent.Type;
                this.langTextBox.Enabled = false;

                comboBoxEdit1.Enabled = false;           
            }

          
        }

        protected override void SaveCurrent()
        {
            BaseCode bc = this.BindingSource.Current as BaseCode;
            if (bc.Code == null)
            {
                bc.Code = this.GenerateCode();
            }
            if ((this.PrevForm as CountryRegionListForm).isaddchild)
            {
                bc.ParentCode = (this.PrevForm as CountryRegionListForm).objparent.Code;
                (this.PrevForm as CountryRegionListForm).isaddchild = false;
            }
            base.SaveCurrent();
        }

        private string GenerateCode()
        {
            RAPLQDataContext context = ContextBuilder.CreateContext<RAPLQDataContext>();
            string sqlstr = "select max(code) from basecode where code like '%CJ%'";
            DbParameter[] paras = new DbParameter[] { };

            DbDataReader dr = context.ExecuteReader(sqlstr, paras);

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