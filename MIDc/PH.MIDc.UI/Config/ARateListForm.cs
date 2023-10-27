/*    
*  
* Copyright (c) 2008 PeiHeng   
*  
* $Archive: /PH/PH.MIDc.root/PH.MIDc/PH.MIDc.UI/Config/ARateListForm.cs $   
* $Author: Water Zhang $  
* $Date: 08-08-27 10:37 $   
* $Revision: 1 $   
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
using PH.Platform.BO;
using PH.MIDc.BO;

namespace PH.MIDc.UI
{
    public partial class ARateListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        #region//auto code
        private System.ComponentModel.IContainer components = null;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_SupplierUnit;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_PHUnit;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Description;
        private DevExpress.XtraBars.BarButtonItem btnImportData;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Rate;
        #endregion

        public ARateListForm()
        {
            InitializeComponent();
            this.RowChangeAutoSave = false;

            this.EditorTypeName = typeof(ARateDetailForm).FullName;
        }

        public override void DataBind()
        {

            PH.MIDc.BO.MIDcDataContext context = ContextBuilder.CreateContext<MIDcDataContext>();
            this.DataContext = context;
            this.BindingSource.DataSource = from c in context.ARates select c;

            string uid = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
            if (uid == "Peter")
                btnImportData.Visibility = DevExpress.XtraBars.BarItemVisibility.Always;
        }

        private void InitializeComponent()
        {
            DevExpress.XtraGrid.GridLevelNode gridLevelNode1 = new DevExpress.XtraGrid.GridLevelNode();
            this.Columns_SupplierUnit = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_PHUnit = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Description = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Rate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.btnImportData = new DevExpress.XtraBars.BarButtonItem();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.btnImportData});
            this.objbarManager.MaxItemId = 55;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.btnImportData)});
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            gridLevelNode1.RelationName = "Level1";
            this.objListGridControl.LevelTree.Nodes.AddRange(new DevExpress.XtraGrid.GridLevelNode[] {
            gridLevelNode1});
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.Columns_SupplierUnit,
            this.Columns_PHUnit,
            this.Columns_Description,
            this.Columns_Rate});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // Columns_SupplierUnit
            // 
            this.Columns_SupplierUnit.Caption = "SupplierUnit";
            this.Columns_SupplierUnit.FieldName = "SupplierUnit";
            this.Columns_SupplierUnit.Name = "Columns_SupplierUnit";
            this.Columns_SupplierUnit.Visible = true;
            this.Columns_SupplierUnit.VisibleIndex = 0;
            // 
            // Columns_PHUnit
            // 
            this.Columns_PHUnit.Caption = "PHUnit";
            this.Columns_PHUnit.FieldName = "PHUnit";
            this.Columns_PHUnit.Name = "Columns_PHUnit";
            this.Columns_PHUnit.Visible = true;
            this.Columns_PHUnit.VisibleIndex = 1;
            // 
            // Columns_Description
            // 
            this.Columns_Description.Caption = "Description";
            this.Columns_Description.FieldName = "Description";
            this.Columns_Description.Name = "Columns_Description";
            this.Columns_Description.Visible = true;
            this.Columns_Description.VisibleIndex = 2;
            // 
            // Columns_Rate
            // 
            this.Columns_Rate.Caption = "Rate";
            this.Columns_Rate.FieldName = "Rate";
            this.Columns_Rate.Name = "Columns_Rate";
            this.Columns_Rate.Visible = true;
            this.Columns_Rate.VisibleIndex = 3;
            // 
            // btnImportData
            // 
            this.btnImportData.Caption = "Test";
            this.btnImportData.Id = 54;
            this.btnImportData.Name = "btnImportData";
            this.btnImportData.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            this.btnImportData.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnImportData_ItemClick);
            // 
            // ARateListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "ARateListForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            this.ResumeLayout(false);

        }

        private void btnImportData_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            ImportDBData.Insert4DItemCode2AS400();
            MessageBox.Show("OK!");
        }

    }
}
