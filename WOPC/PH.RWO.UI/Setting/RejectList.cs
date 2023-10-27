using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;

using PH.RWO.BO;


namespace PH.RWO.UI
{
    public partial class RejectList: PH.Platform.UI.CS.UI2.ListForm
    {
        public RejectList()
        {
            InitializeComponent();
            this.GetList();
        }


        private void GetList()
        {           
        }

        public override void DataBind()
        {
            this.BindingSource.DataSource = Global.GetRwoRejectList();
            this.DataContext = Global.context;
            base.DataBind();
        }
        private void ConfirmList_Load(object sender, EventArgs e)
        {
            this.objListGridView.OptionsBehavior.Editable = true;
            
            this.objListGridView.Columns[0].OptionsColumn.AllowEdit = true;
        }

        private void barButtonItem1_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (MessageBox.Show("Are you sure to reject these round work order data?","Reject",MessageBoxButtons.YesNo, MessageBoxIcon.Information,MessageBoxDefaultButton.Button1) == DialogResult.Yes)
            {
                IList<PH.RWO.BO.View_RWO_ConfirmRight> list = this.BindingSource.DataSource as IList<PH.RWO.BO.View_RWO_ConfirmRight>;
                foreach (PH.RWO.BO.View_RWO_ConfirmRight vrc in (from c in list where c.Choice == true select c))
                {
                    Global.RejectRoundWorkOrder(vrc);
                }
                this.GetList();
            }
        }
    }
}
