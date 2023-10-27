using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.BO;
using PH.LWPM.BO;
using PH.LWPM.UI.WF.Report;
using PH.Platform.ExtendLibrary;
using PH.LWPM.UI.MasterDB;

namespace PH.LWPM.UI.WF
{
    public partial class MCPartListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public MCPartListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();

            this.DataContext = ContextBuilder.CreateContext<RAPLQDataContext>();
            this.BindingSource.DataSource = (this.DataContext as RAPLQDataContext).BaseCodes.Where(p => p.Type == "MCPart").OrderBy(p => p.SortID);
            this.EditorTypeName = typeof(MCPartDetailForm).FullName;
        }

        private void btnPrint_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            HWCostReport rptHWCost = new HWCostReport(this.objListGridView.FilteredList());
            rptHWCost.ShowPreview();
        }
    }
}
