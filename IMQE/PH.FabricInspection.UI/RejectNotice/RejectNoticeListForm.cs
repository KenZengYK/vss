using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.BO;
using PH.FabricInspection.BO;

namespace PH.FabricInspection.UI.RejectNotice
{
    public partial class RejectNoticeListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public RejectNoticeListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            this.DataContext = ContextBuilder.CreateContext<FabricInspectionDataContext>();
            this.BindingSource.DataSource = (this.DataContext as FabricInspectionDataContext).RejectNotices
                .Where(p => p.CreateDate >= DateTime.Now.AddYears(-1))
                .OrderByDescending(p => p.RNNo);

            this.EditorTypeName = typeof(RejectNoticeDetailForm).FullName;
        }

        private void btnPrint_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            PH.FabricInspection.BO.RejectNotice Obj = this.BindingSource.Current as PH.FabricInspection.BO.RejectNotice;
            RejectNoticeReport rptRejectNotice = new RejectNoticeReport(Obj);
            rptRejectNotice.ShowPreview();
        }
    }
}
