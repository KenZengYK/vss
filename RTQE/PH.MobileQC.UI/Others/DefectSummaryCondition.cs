using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MobileQC.UI.Helper;
using PH.MobileQC.BO;

namespace PH.MobileQC.UI
{
    public partial class DefectSummaryCondition : Form
    {
        DefectSummaryList ParentControl;
        public DefectSummaryCondition(DefectSummaryList source)
        {
            InitializeComponent();
            ParentControl = source;
            //LineHelper lineHelper = new LineHelper();
            //lineHelper.Context = source.DataContext as MobileQCDataContext;

            //PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.DE
            //this.cmbLine.Properties.AutoSearchColumnIndex = 0;
            //DateTime start = DateTime.Now;

            IList<string> lines = (source.DataContext as MobileQCDataContext).GetLineByFactory("SL");

           // string sqlstr = @"select pline from openquery(INTERBASE, 'select distinct tshop,pline,tplant from Mobile_QC where tplant=''SL'' ')";
            //IList<string> lines = (source.DataContext as MobileQCDataContext).ExecuteQuery<string>(sqlstr).ToList(); ;
            this.cmbLine.Properties.Items.AddRange(lines.ToArray());
            //this.cmbLine.Properties.DisplayMember = "PLINE";
            //this.cmbLine.Properties.ValueMember = "PLINE";
        }


        private void btnOK_Click(object sender, EventArgs e)
        {
            ParentControl.Factory = cmbFactory.SelectedText;
            ParentControl.Line = cmbLine.SelectedItem.ToString();
            ParentControl.DateFrom = dtfrom.Text.Trim();
            ParentControl.DateTo = dtto.Text.Trim();
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {

        }

        private void cmbFactory_SelectedValueChanged(object sender, EventArgs e)
        {
            cmbLine.Properties.Items.Clear();
            string fac = cmbFactory.SelectedText;
            List<string> lines = (this.ParentControl.DataContext as MobileQCDataContext).GetLineByFactory(fac);
            lines.Sort();
            this.cmbLine.Properties.Items.AddRange(lines.ToArray());
        }
    }
}
