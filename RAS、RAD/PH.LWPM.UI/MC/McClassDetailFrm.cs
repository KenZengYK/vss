using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI2;
using PH.LWPM.UI.WF;
using PH.LWPM.BO;
using System.Data.Common;
using PH.Platform.BO;

namespace PH.LWPM.UI.MC
{
    public partial class McClassDetailFrm : ParentChildForm
    {
        public McClassDetailFrm()
        {
            InitializeComponent();
        }


        public override void DataBind()
        {
            BaseCodeListFrm bcfrm = this.PrevForm as BaseCodeListFrm;
            BaseCode _bc = this.BindingSource.Current as BaseCode;
            this.mcClassList1.BindingSource.DataSource = _bc.McClassDetails;
            this.mcClassList1.EditorTypeName = typeof(ClassDetailEditFrm).FullName;

            this.edtCateory.Properties.DataSource = (this.DataContext as RAPLQDataContext).BaseCodes.Where(p => p.Type == "McCategory").OrderBy(p => p.SortID);
            this.edtCateory.Properties.ValueMember = "Lang";
            this.edtCateory.Properties.DisplayMember = "Name";

            base.DataBind();
        }

        protected override void SaveCurrent()
        {

            BaseCode _bc = this.BindingSource.Current as BaseCode;
            if (IsNew)
            {
                _bc.Type = "McGroup";
                _bc.Code = this.GenerateCode();
            }
            base.SaveCurrent();
        }


        private string GenerateCode()
        {
            RAPLQDataContext rdc = this.DataContext as RAPLQDataContext;
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
