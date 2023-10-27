using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.Platform.BO;
using PH.HDO.BO;

namespace PH.HDO.UI.GRN
{
    public partial class HDOShippingAdviceQueryForm : DevExpress.XtraEditors.XtraForm
    {
        public HDOShippingAdviceQueryForm()
        {
            InitializeComponent();
        }

        public List<string> CustDeclaList = new List<string>();
        public List<string> AHDONoList = new List<string>();

        public List<HDOQueryClass> ADataList = new List<HDOQueryClass>();

        HDODataContext Context = ContextBuilder.CreateContext<HDODataContext>();
        public DataSet ds = new DataSet();

        private void simpleButton1_Click(object sender, EventArgs e)
        {
            txtSHPNO.Text = string.IsNullOrEmpty(this.txtSHPNO.Text) ? "" : this.txtSHPNO.Text.Replace('£¬', ',');
            txtCustDeclarationNo.Text = string.IsNullOrEmpty(this.txtCustDeclarationNo.Text) ? "" : this.txtCustDeclarationNo.Text.Replace('£¬', ',');

            string SqlStr = "exec [sp_GetHDOShippingAdvice]  '{0}','{1}'";

            SqlStr = string.Format(SqlStr, txtSHPNO.Text, txtCustDeclarationNo.Text);
            ds = Context.ExecuteDataSet(SqlStr, new DataSet(), "Opts");
        }
    }
}