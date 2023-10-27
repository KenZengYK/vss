using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MobileQC.BO;

namespace PH.MobileQC.UI
{
    public partial class AlertEmailDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        MobileQCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();
        
        public AlertEmailDetailForm()
        {
            InitializeComponent();
        }

        public override void ProcessFunctionRight()
        {
            base.ProcessFunctionRight();
            this.barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            this.barBtnDel.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
        }

        protected override void OnClickSave()
        {
            PH.MobileQC.BO.QC_AlertEmail bo = this.BindingSource.Current as PH.MobileQC.BO.QC_AlertEmail;
            if (bo == null) return;

            if (string.IsNullOrEmpty(bo.TO) || bo.TO.Trim() == "")
            {
                MessageBox.Show("請輸入[TO]郵箱地址", "系統提示", MessageBoxButtons.YesNo, MessageBoxIcon.Warning);
                return;
            }
            bo.TO = bo.TO.Trim();
            while (bo.TO.EndsWith(","))
            {
                bo.TO = bo.TO.Substring(0, bo.TO.LastIndexOf(","));
                bo.TO = bo.TO.Trim();
            }

            if (!string.IsNullOrEmpty(bo.CC) && bo.CC.Trim() != "")
            {
                bo.CC = bo.CC.Trim();
                while (bo.CC.EndsWith(","))
                {
                    bo.CC = bo.CC.Substring(0, bo.CC.LastIndexOf(","));
                    bo.CC = bo.CC.Trim();
                }
            }

            if (!string.IsNullOrEmpty(bo.BCC) && bo.BCC.Trim() != "")
            {
                bo.BCC = bo.BCC.Trim();
                while (bo.BCC.EndsWith(","))
                {
                    bo.BCC = bo.BCC.Substring(0, bo.BCC.LastIndexOf(","));
                    bo.BCC = bo.BCC.Trim();
                }
            }


            base.OnClickSave();
        }

        private void textEdit1_EditValueChanged(object sender, EventArgs e)
        {

        }

        private void tOLabel_Click(object sender, EventArgs e)
        {

        }

        public override void EditCurrent()
        {
            base.EditCurrent();
            this.edtFac.Enabled = false;
        }

        private void AlertEmailDetailForm_Load(object sender, EventArgs e)
        {

        }
    }
}
