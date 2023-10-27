using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.RWO.BO;

namespace PH.RWO.UI.Setting
{
    public partial class WORejectListForm : PH.Platform.UI.CS.UI2.ListForm
    {

        public WORejectListForm()
        {
            InitializeComponent();
            this.objListGridView.DoubleClick += new System.EventHandler(this.objListGridView_DoubleClick);

        }


        IList<View_WOConfirm> list;
        public override void DataBind()
        {
            base.DataBind();
            this.DataContext = PH.Platform.BO.ContextBuilder.CreateContext<PH.RWO.BO.RWOSOPCDataContext>();
            list = PH.RWO.BO.RWOLogic.GetItemsForListing<View_WOConfirm>(string.Format("exec sp_WORejectList '{0}'", PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID), this.DataContext);
            this.BindingSource.DataSource = list;
            this.AllowGridEdit = true;
            this.AllowAddRow = false;
        }

        private void btnReject_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (MessageBox.Show("Are you sure to reject these Work Order data?", "Reject", MessageBoxButtons.YesNo, MessageBoxIcon.Information, MessageBoxDefaultButton.Button1) == DialogResult.Yes)
            {
                DevExpress.Utils.WaitDialogForm waitform = new DevExpress.Utils.WaitDialogForm();
                waitform.Show();

                PH.RWO.BO.RWOSOPCDataContext context = this.DataContext as PH.RWO.BO.RWOSOPCDataContext;
                this.objListGridView.PostEditor();
                this.BindingSource.EndEdit();
                IList<View_WOConfirm> _list = (from a in list
                                               where a.RejectFlag == true
                                               select a).ToList();
                Notify notify = Notify.Instance;
                foreach (View_WOConfirm confirm in _list)
                {
                    WorkOrder wo = context.WorkOrders.Where(p => p.WorkOrderNo == confirm.WorkOrderNo).FirstOrDefault();
                    wo.CurrentDataContext = context;
                    notify.Reject(wo);
                    //RoundWorkOrder rwo = context.Where(p=>p.WorkOrderNo==confirm.WorkOrderNo && p.
                }
                this.DataBind();

                waitform.Close();
            }
        }

        private void objListGridView_DoubleClick(object sender, EventArgs e)
        {
            View_WOConfirm rwo = (View_WOConfirm)this.objListGridView.GetRow(this.objListGridView.FocusedRowHandle);
            if (rwo == null) return;

            CreateProgramForm(typeof(PH.RWO.UI.WorkOrdersListForm), string.Format("{0} Detail", rwo.WorkOrderNo), true, new object[] { rwo, this.TabControls.SelectedTabPage }, null);

        }

    }
}
