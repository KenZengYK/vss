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
    public partial class RWORejectListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public RWORejectListForm()
        {
            InitializeComponent();
            this.objListGridView.DoubleClick += new System.EventHandler(this.objListGridView_DoubleClick);

        }

        IList<View_RWOConfirm> list;
        public override void DataBind()
        {
            base.DataBind();
            this.DataContext = PH.Platform.BO.ContextBuilder.CreateContext<PH.RWO.BO.RWOSOPCDataContext>();
            list = PH.RWO.BO.RWOLogic.GetItemsForListing<View_RWOConfirm>(string.Format("exec sp_RWORejectList '{0}'", PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID), this.DataContext);
            this.BindingSource.DataSource = list;
            this.AllowGridEdit = true;
            this.AllowAddRow = false;
        }

        private void btnReject_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (MessageBox.Show("Are you sure to reject these round work order data?", "Reject", MessageBoxButtons.YesNo, MessageBoxIcon.Information, MessageBoxDefaultButton.Button1) == DialogResult.Yes)
            {
                DevExpress.Utils.WaitDialogForm waitform = new DevExpress.Utils.WaitDialogForm();               
                waitform.Show();

                PH.RWO.BO.RWOSOPCDataContext context = this.DataContext as PH.RWO.BO.RWOSOPCDataContext;
                this.objListGridView.PostEditor();
                this.BindingSource.EndEdit();
                IList<View_RWOConfirm> _list = (from a in list
                                                where a.RejectFlag == true
                                                select a).ToList();
                Notify notify = Notify.Instance;
                foreach (View_RWOConfirm confirm in _list)
                {
                    RoundWorkOrder rwo = context.RoundWorkOrders.Where(p => p.WorkOrderNo == confirm.WorkOrderNo && p.ColorCode == confirm.ColorCode && p.RoundNo == confirm.RoundNo).FirstOrDefault();
                    rwo.CurrentDataContext = context;
                    notify.Reject(rwo);
                    //RoundWorkOrder rwo = context.Where(p=>p.WorkOrderNo==confirm.WorkOrderNo && p.
                }
                this.DataBind();
                //waitform = null;
                waitform.Close();
            }
        }

        private void objListGridView_DoubleClick(object sender, EventArgs e)
        {
            View_RWOConfirm rwo = (View_RWOConfirm)this.objListGridView.GetRow(this.objListGridView.FocusedRowHandle);
            if (rwo == null) return;

            CreateProgramForm(typeof(PH.RWO.UI.RoundWorkOrderListForm), string.Format("{0} Detail", rwo.WorkOrderNo), true, new object[] { rwo, this.TabControls.SelectedTabPage }, null);

        }

    }
}
