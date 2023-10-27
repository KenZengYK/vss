using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.BO;
using PH.RWO.BO;

namespace PH.RWO.UI
{
    public partial class RWOIITimeRuleListForm : PH.Platform.UI.CS.UI2.ListForm
    {

        public RWOIITimeRuleListForm()
        {
            InitializeComponent();
            this.AllowGridEdit = true;
            //this.AllowKeyPress = true;
            
        }



        public override void DataBind()
        {
            base.DataBind();

            PH.RWO.BO.RWOSOPCDataContext context = ContextBuilder.CreateContext<RWOSOPCDataContext>();
            this.DataContext = context;
            this.DataSource = from v in context.RWOIITimeRules
                              select v;
            this.AllowGridEdit = true;
            this.AllowAddRow = true;
            this.RowChangeAutoSave = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = true;
        }

        private void btnPrint_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            PH.RWO.BackEnd.SubContractCycleTimeReport report = new PH.RWO.BackEnd.SubContractCycleTimeReport();
            report.DataSource = this.DataSource;
            report.ShowPreviewDialog();
        }
    }
}
