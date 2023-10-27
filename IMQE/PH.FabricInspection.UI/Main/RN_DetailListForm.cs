/*    
*  
* Copyright (c) 2008 PeiHeng   
*  
* $Archive: PH.FabricInspection.UI.ProblemDetailListForm.cs$   
* $Author: PH.IT.water  $  
* $Date: 2008/5/2 下午 03:39:17 $   
* $Revision: 0 $   
*/

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Text;
using System.Linq;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.FabricInspection.BO;
namespace PH.FabricInspection.UI
{
    public partial class ProblemDetailListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        #region//auto code
        //private System.ComponentModel.IContainer components = null;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_RN_NO;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Batch_NO;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Roll_NO;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Reject_Reason;
        private DevExpress.XtraBars.BarButtonItem barBtnCopyToAll;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_System_Install_No;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Supplier_Length;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Insp_Length;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Diff_Length;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Usable_Width;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn_Lot_Id;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn1;
        private DevExpress.XtraEditors.Repository.RepositoryItemMemoEdit repositoryItemMemoEdit_LotID;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Supplier_Name;
        #endregion

        public ProblemDetailListForm()
        {
            InitializeComponent();

            //Xsj20120830:添加右鍵菜單從R/N Maintenance 跳到Information Maintenance
            if (this.objListGridControl.ContextMenu != null)
            {
                this.objListGridControl.ContextMenu.MenuItems.Add(new MenuItem("Information Maintenance", new EventHandler(GoInformationMaintenance)));
            }
            else
            {
                ContextMenu cMenu = new ContextMenu();
                cMenu.MenuItems.Add(new MenuItem("Information Maintenance", new EventHandler(GoInformationMaintenance)));
                this.objListGridControl.ContextMenu = cMenu;
            }
            //---end
        }

        //Xsj20120830:右鍵菜單從R/N Maintenance 跳到Information Maintenance
        private void GoInformationMaintenance(object Sender, EventArgs Args)
        {
            MasterDetailForm MDform = new MasterDetailForm();
            RN_Detail detail = (RN_Detail)this.BindingSource.Current;

            int system_Install_No = detail.System_Install_No;

            PH.FabricInspection.BO.FabricInspectionDataContext edc = PH.Platform.BO.ContextBuilder.CreateContext<PH.FabricInspection.BO.FabricInspectionDataContext>();
            Fabric_Insp_Header FisHeader = edc.Fabric_Insp_Headers.Where(p => p.System_Install_No == system_Install_No).FirstOrDefault();

            if (FisHeader != null)
            { 
                //CreateProgramForm(typeof(PH.POPC.UI.POSKUBulkSubmissionListForm), p.PONO + "-Bulk", true, new object[] { p, this.TabControls.SelectedTabPage, poinfo }, null);
                CreateProgramForm(typeof(PH.FabricInspection.UI.MasterDetailForm), "Info - " + system_Install_No.ToString(), true, new object[] {this.ParentForm, edc, FisHeader }, null);
            }
            else
            {
                MessageBox.Show("當前行記錄的[Fabric_Insp_Header]可能已被刪除，請到[Information Maintenance]確認！", "資料丟失提示");
            }

        }

        private void InitializeComponent()
        {
            this.Columns_RN_NO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Batch_NO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Roll_NO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Reject_Reason = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Supplier_Name = new DevExpress.XtraGrid.Columns.GridColumn();
            this.barBtnCopyToAll = new DevExpress.XtraBars.BarButtonItem();
            this.Columns_System_Install_No = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Supplier_Length = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Insp_Length = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Diff_Length = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Usable_Width = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn_Lot_Id = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemMemoEdit_LotID = new DevExpress.XtraEditors.Repository.RepositoryItemMemoEdit();
            this.gridColumn1 = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemMemoEdit_LotID)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.barBtnCopyToAll});
            this.objbarManager.MaxItemId = 12;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // barBtnDel
            // 
            this.barBtnDel.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemMemoEdit_LotID});
            this.objListGridControl.Size = new System.Drawing.Size(1069, 398);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.Columns_System_Install_No,
            this.gridColumn_Lot_Id,
            this.Columns_Batch_NO,
            this.Columns_Roll_NO,
            this.Columns_RN_NO,
            this.Columns_Supplier_Length,
            this.Columns_Insp_Length,
            this.Columns_Diff_Length,
            this.Columns_Usable_Width,
            this.Columns_Reject_Reason,
            this.Columns_Supplier_Name,
            this.gridColumn1});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            this.objListGridView.OptionsView.RowAutoHeight = true;
            // 
            // Columns_RN_NO
            // 
            this.Columns_RN_NO.Caption = "RN_NO";
            this.Columns_RN_NO.FieldName = "RN_number";
            this.Columns_RN_NO.Name = "Columns_RN_NO";
            this.Columns_RN_NO.OptionsColumn.ReadOnly = true;
            // 
            // Columns_Batch_NO
            // 
            this.Columns_Batch_NO.Caption = "Batch NO";
            this.Columns_Batch_NO.FieldName = "Batch_No";
            this.Columns_Batch_NO.Name = "Columns_Batch_NO";
            this.Columns_Batch_NO.OptionsColumn.ReadOnly = true;
            this.Columns_Batch_NO.Visible = true;
            this.Columns_Batch_NO.VisibleIndex = 2;
            this.Columns_Batch_NO.Width = 99;
            // 
            // Columns_Roll_NO
            // 
            this.Columns_Roll_NO.Caption = "Roll NO";
            this.Columns_Roll_NO.FieldName = "Roll_No";
            this.Columns_Roll_NO.Name = "Columns_Roll_NO";
            this.Columns_Roll_NO.OptionsColumn.ReadOnly = true;
            this.Columns_Roll_NO.Visible = true;
            this.Columns_Roll_NO.VisibleIndex = 3;
            this.Columns_Roll_NO.Width = 87;
            // 
            // Columns_Reject_Reason
            // 
            this.Columns_Reject_Reason.AppearanceCell.Options.UseTextOptions = true;
            this.Columns_Reject_Reason.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.Columns_Reject_Reason.Caption = "Reason for Reject ";
            this.Columns_Reject_Reason.FieldName = "Reject_Reason";
            this.Columns_Reject_Reason.Name = "Columns_Reject_Reason";
            this.Columns_Reject_Reason.Visible = true;
            this.Columns_Reject_Reason.VisibleIndex = 8;
            this.Columns_Reject_Reason.Width = 123;
            // 
            // Columns_Supplier_Name
            // 
            this.Columns_Supplier_Name.AppearanceCell.Options.UseTextOptions = true;
            this.Columns_Supplier_Name.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.Columns_Supplier_Name.Caption = "Supplier Name";
            this.Columns_Supplier_Name.FieldName = "Supplier_Name";
            this.Columns_Supplier_Name.Name = "Columns_Supplier_Name";
            this.Columns_Supplier_Name.OptionsColumn.ReadOnly = true;
            // 
            // barBtnCopyToAll
            // 
            this.barBtnCopyToAll.Caption = "Copy To All";
            this.barBtnCopyToAll.Id = 10;
            this.barBtnCopyToAll.Name = "barBtnCopyToAll";
            this.barBtnCopyToAll.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtnCopyToAll_ItemClick);
            // 
            // Columns_System_Install_No
            // 
            this.Columns_System_Install_No.AppearanceCell.Options.UseTextOptions = true;
            this.Columns_System_Install_No.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.Columns_System_Install_No.Caption = "System No";
            this.Columns_System_Install_No.FieldName = "System_Install_No";
            this.Columns_System_Install_No.Name = "Columns_System_Install_No";
            this.Columns_System_Install_No.Visible = true;
            this.Columns_System_Install_No.VisibleIndex = 0;
            this.Columns_System_Install_No.Width = 81;
            // 
            // Columns_Supplier_Length
            // 
            this.Columns_Supplier_Length.AppearanceCell.Options.UseTextOptions = true;
            this.Columns_Supplier_Length.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.Columns_Supplier_Length.Caption = "Supplier Length";
            this.Columns_Supplier_Length.FieldName = "Supplier_Length";
            this.Columns_Supplier_Length.Name = "Columns_Supplier_Length";
            this.Columns_Supplier_Length.Visible = true;
            this.Columns_Supplier_Length.VisibleIndex = 4;
            this.Columns_Supplier_Length.Width = 108;
            // 
            // Columns_Insp_Length
            // 
            this.Columns_Insp_Length.AppearanceCell.Options.UseTextOptions = true;
            this.Columns_Insp_Length.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.Columns_Insp_Length.Caption = "Insp Length";
            this.Columns_Insp_Length.FieldName = "Insp_Length";
            this.Columns_Insp_Length.Name = "Columns_Insp_Length";
            this.Columns_Insp_Length.Visible = true;
            this.Columns_Insp_Length.VisibleIndex = 5;
            this.Columns_Insp_Length.Width = 88;
            // 
            // Columns_Diff_Length
            // 
            this.Columns_Diff_Length.AppearanceCell.Options.UseTextOptions = true;
            this.Columns_Diff_Length.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.Columns_Diff_Length.Caption = "Diff Length";
            this.Columns_Diff_Length.FieldName = "Diff_Length";
            this.Columns_Diff_Length.Name = "Columns_Diff_Length";
            this.Columns_Diff_Length.Visible = true;
            this.Columns_Diff_Length.VisibleIndex = 6;
            this.Columns_Diff_Length.Width = 83;
            // 
            // Columns_Usable_Width
            // 
            this.Columns_Usable_Width.AppearanceCell.Options.UseTextOptions = true;
            this.Columns_Usable_Width.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.Columns_Usable_Width.Caption = "Usable Width";
            this.Columns_Usable_Width.FieldName = "Usable_Width";
            this.Columns_Usable_Width.Name = "Columns_Usable_Width";
            this.Columns_Usable_Width.Visible = true;
            this.Columns_Usable_Width.VisibleIndex = 7;
            this.Columns_Usable_Width.Width = 94;
            // 
            // gridColumn_Lot_Id
            // 
            this.gridColumn_Lot_Id.Caption = "Lot Id";
            this.gridColumn_Lot_Id.ColumnEdit = this.repositoryItemMemoEdit_LotID;
            this.gridColumn_Lot_Id.FieldName = "Lot_Id";
            this.gridColumn_Lot_Id.Name = "gridColumn_Lot_Id";
            this.gridColumn_Lot_Id.Visible = true;
            this.gridColumn_Lot_Id.VisibleIndex = 1;
            this.gridColumn_Lot_Id.Width = 118;
            // 
            // repositoryItemMemoEdit_LotID
            // 
            this.repositoryItemMemoEdit_LotID.Name = "repositoryItemMemoEdit_LotID";
            // 
            // gridColumn1
            // 
            this.gridColumn1.AppearanceCell.ForeColor = System.Drawing.Color.Blue;
            this.gridColumn1.AppearanceCell.Options.UseForeColor = true;
            this.gridColumn1.AppearanceCell.Options.UseTextOptions = true;
            this.gridColumn1.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridColumn1.AppearanceHeader.Options.UseTextOptions = true;
            this.gridColumn1.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridColumn1.Caption = "Has Photo";
            this.gridColumn1.FieldName = "HasPhotoNote";
            this.gridColumn1.Name = "gridColumn1";
            this.gridColumn1.OptionsColumn.AllowEdit = false;
            this.gridColumn1.OptionsColumn.AllowFocus = false;
            this.gridColumn1.Visible = true;
            this.gridColumn1.VisibleIndex = 9;
            this.gridColumn1.Width = 78;
            // 
            // ProblemDetailListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "ProblemDetailListForm";
            this.Size = new System.Drawing.Size(1069, 425);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemMemoEdit_LotID)).EndInit();
            this.ResumeLayout(false);

        }

        private void barBtnCopyToAll_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            RN_Detail detail = (RN_Detail)this.BindingSource.Current;
            if (detail == null)
            {
                return;
            }
            string rejectReason = detail.Reject_Reason;
            foreach (RN_Detail tempRNDetail in this.BindingSource)
            {
                tempRNDetail.Reject_Reason = rejectReason;
            }
        }


    }
}
