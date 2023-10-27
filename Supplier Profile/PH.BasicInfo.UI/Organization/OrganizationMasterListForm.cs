using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI;
using PH.Platform.BO;
//using PH.Platform.Misc.BO;
using PH.Platform.Common;
using PH.BasicInfo.BO.Helper;

namespace PH.BasicInfo.UI.Organization
{
    public partial class OrganizationMasterListForm : PH.Platform.UI.CS.UI3.MasterListForm
    {        

        public OrganizationMasterListForm()
        {
            InitializeComponent();
            this.EditorTypeName = typeof(OrganizationMasterSubForm).FullName;
        }

        public override void DataBind()
        {
           // Misc_OrganizationList mo = new Misc_OrganizationList();
            OrganizationHelper mo = new OrganizationHelper();

            this.DataContext = mo.CurrentDataContext;
            this.BindingSource.DataSource = mo.GetAllData();
            this.treeList1.DataSource = this.BindingSource;
            base.DataBind();
            this.treeList1.ExpandAll();
        }

        protected override void OnClickAddNew()
        {
            PH.BasicInfo.UI.Organization.ParaClass._sStatus = "AddNew";
            PH.BasicInfo.UI.Organization.ParaClass._lPID = -1;
            base.OnClickAddNew();
        }

        private void barBtnAddChild_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            //PH.Platform.Misc.BO.Misc_Organization ob = this.BindingSource.Current as PH.Platform.Misc.BO.Misc_Organization;
            PH.BasicInfo.BO.Organization ob = this.BindingSource.Current as PH.BasicInfo.BO.Organization;
            PH.BasicInfo.UI.Organization.ParaClass._sStatus = "AddNew";
            PH.BasicInfo.UI.Organization.ParaClass._lPID = ob.OrgID;
            base.OnClickAddNew();
        }

        protected override void OnClickOpen()
        {
            PH.BasicInfo.UI.Organization.ParaClass._sStatus = "Edit";
            base.OnClickOpen();
        }

        private void barBtnCollapse_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.treeList1.CollapseAll();
        }

        private void barBtnExpand_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.treeList1.ExpandAll();
        }

        private void barBtnAddSame_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            //PH.Platform.Misc.BO.Misc_Organization ob = this.BindingSource.Current as PH.Platform.Misc.BO.Misc_Organization;
            PH.BasicInfo.BO.Organization ob = this.BindingSource.Current as PH.BasicInfo.BO.Organization;
            PH.BasicInfo.UI.Organization.ParaClass._sStatus = "AddNew";
            PH.BasicInfo.UI.Organization.ParaClass._lPID = (long)ob.PID;
            base.OnClickAddNew();
        }
    }
}
