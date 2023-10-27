using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MobileQC.BO;

namespace PH.MobileQC.UI.CustQC
{
    public partial class CustQC_MasterDetailForm : PH.Platform.UI.CS.UI2.ParentChildForm
    {
        public CustQC_MasterDetailForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            CustQC_Master obj = this.BindingSource.Current as CustQC_Master;
            this.custQC_DetailListForm_CommonDefect.DefectType = "C";
            this.custQC_DetailListForm_CommonDefect.BindingSource.DataSource = obj.CustQC_Details.Where(p => p.DefectType == "C");

            this.custQC_DetailListForm_PackingDefect.DefectType = "P";
            this.custQC_DetailListForm_PackingDefect.BindingSource.DataSource = obj.CustQC_Details.Where(p => p.DefectType == "P");

        }

        private void txtCustomerPO_EditValueChanged(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(this.txtCustomerPO.Text)) return;

            string SqlStr = string.Format("select [PH.RWO1].dbo.fn_GetProjectNOs('{0}')", this.txtCustomerPO.Text);
            this.txtProject.Text = (this.DataContext as MobileQCDataContext).ExecuteQuery<string>(SqlStr).FirstOrDefault();
        }
    }
}
