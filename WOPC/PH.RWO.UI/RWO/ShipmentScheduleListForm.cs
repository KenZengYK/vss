using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI2;
using PH.RWO.BO;

namespace PH.RWO.UI.RWO
{
    public partial class ShipmentScheduleListForm : ListForm
    {
        PH.RWO.BO.RWOSOPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.RWO.BO.RWOSOPCDataContext>();
        public List<ShipmentSchedule> ImportList = new List<ShipmentSchedule>();

        public ShipmentScheduleListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            this.DataContext = context;
            this.AllowGridEdit = true;       
            this.BindingSource.DataSource = context.ShipmentSchedules;

        }


        public override void ProcessFunctionRight()
        {

            base.ProcessFunctionRight();
            PH.Platform.AuthMgr.BO.Auth_FunRight obj = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.GetFunRight(this.MenuID, "CanEdit");
            this.colCMTPrice.OptionsColumn.AllowEdit = obj != null;
            this.colMaterialPrice.OptionsColumn.AllowEdit = obj != null;
            this.SelectList.Enabled = obj != null;


            //PH.Platform.AuthMgr.BO.Auth_FunRight obj1 = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.GetFunRight(this.MenuID, "CanEdit");
            //this.colCMTPrice.OptionsColumn.AllowEdit = obj1 != null;
            //this.colMaterialPrice.OptionsColumn.AllowEdit = obj1 != null;
            //this.SelectList.Enabled = obj1 != null;
            //PH.Platform.AuthMgr.BO.Auth_FunRight obj1 = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.GetFunRight(this.MenuID, "IsAgree_Manager");
            //this.isAgree_ManagerCheckEdit.Enabled = obj1 != null;

        }


        private void SelectList_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            SelectShipmentSchedule frm=new SelectShipmentSchedule(this);
            frm.StartPosition = FormStartPosition.CenterParent;
            DialogResult DR = frm.ShowDialog();
            if (DR == DialogResult.OK) 
            {

                (this.DataContext as RWOSOPCDataContext).ShipmentSchedules.AttachAll(ImportList);

                this.BindingSource.DataSource = null;
                this.BindingSource.DataSource = ImportList;

                objListGridControl.DataSource = this.BindingSource;
                objListGridControl.Refresh();
            }
        }


    }
}
