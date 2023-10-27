using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.FabricInspection.BO;

namespace PH.FabricInspection.UI.Report.ResultNoticeReport
{
    public partial class ShowCalculationElementsForm : DevExpress.XtraEditors.XtraForm
    {
        Fabric_Insp_Header Obj;
        public ShowCalculationElementsForm(Fabric_Insp_Header Aobj)
        {
            InitializeComponent();
            Obj = Aobj;
        }

        private void BtPreview_Click(object sender, EventArgs e)
        {
            if (Obj == null) return;
            Obj.Calculate();
            if ((Obj.AOverallResultShow == "A" || Obj.AOverallResultShow == "A+") && !this.checkBox1.Checked)
            {
                MessageBox.Show("Overall result is A or A+, Not allow print!", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            ResultNoticeReport Rpt = new ResultNoticeReport(Obj, this.checkBox1.Checked);
            Rpt.ShowPreview();

        }
    }
}