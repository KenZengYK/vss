namespace PH.BasicInfo.UI.Organization
{
    partial class OrganizationMasterListForm
    {
        /// <summary> 
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary> 
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(OrganizationMasterListForm));
            this.gridColumnOrgID = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumnPID = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumnOrgType = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumnOrgCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumnOrgName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.treeList1 = new DevExpress.XtraTreeList.TreeList();
            this.treeListColumn1 = new DevExpress.XtraTreeList.Columns.TreeListColumn();
            this.treeListColumn3 = new DevExpress.XtraTreeList.Columns.TreeListColumn();
            this.treeListColumn4 = new DevExpress.XtraTreeList.Columns.TreeListColumn();
            this.treeListColumn5 = new DevExpress.XtraTreeList.Columns.TreeListColumn();
            this.treeListColumn2 = new DevExpress.XtraTreeList.Columns.TreeListColumn();
            this.barBtnAddChild = new DevExpress.XtraBars.BarButtonItem();
            this.colOrgID = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPID = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colOrgType = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colOrgCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colOrgName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.barBtnExpand = new DevExpress.XtraBars.BarButtonItem();
            this.barBtnCollapse = new DevExpress.XtraBars.BarButtonItem();
            this.barBtnAddSame = new DevExpress.XtraBars.BarButtonItem();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.treeList1)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.barBtnAddChild,
            this.barBtnExpand,
            this.barBtnCollapse,
            this.barBtnAddSame});
            this.objbarManager.MaxItemId = 21;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtnAddChild),
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtnAddSame),
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtnExpand),
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtnCollapse)});
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colOrgID,
            this.colPID,
            this.colOrgType,
            this.colOrgCode,
            this.colOrgName});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.Location = new System.Drawing.Point(0, 26);
            this.objListGridControl.Size = new System.Drawing.Size(869, 379);
            // 
            // barBtnAddNew
            // 
            this.barBtnAddNew.Caption = "AddRoot";
            this.barBtnAddNew.Hint = "AddRoot";
            // 
            // gridColumnOrgID
            // 
            this.gridColumnOrgID.Caption = "Organization ID";
            this.gridColumnOrgID.FieldName = "OrgID";
            this.gridColumnOrgID.Name = "gridColumnOrgID";
            this.gridColumnOrgID.Visible = true;
            this.gridColumnOrgID.VisibleIndex = 0;
            this.gridColumnOrgID.Width = 121;
            // 
            // gridColumnPID
            // 
            this.gridColumnPID.Caption = "Parent ID";
            this.gridColumnPID.FieldName = "PID";
            this.gridColumnPID.Name = "gridColumnPID";
            this.gridColumnPID.Visible = true;
            this.gridColumnPID.VisibleIndex = 1;
            // 
            // gridColumnOrgType
            // 
            this.gridColumnOrgType.Caption = "Organization Type";
            this.gridColumnOrgType.FieldName = "OrgType";
            this.gridColumnOrgType.Name = "gridColumnOrgType";
            this.gridColumnOrgType.Visible = true;
            this.gridColumnOrgType.VisibleIndex = 2;
            this.gridColumnOrgType.Width = 136;
            // 
            // gridColumnOrgCode
            // 
            this.gridColumnOrgCode.Caption = "Organization Code";
            this.gridColumnOrgCode.FieldName = "OrgCode";
            this.gridColumnOrgCode.Name = "gridColumnOrgCode";
            this.gridColumnOrgCode.Visible = true;
            this.gridColumnOrgCode.VisibleIndex = 3;
            this.gridColumnOrgCode.Width = 155;
            // 
            // gridColumnOrgName
            // 
            this.gridColumnOrgName.Caption = "Organization Name";
            this.gridColumnOrgName.FieldName = "OrgName";
            this.gridColumnOrgName.Name = "gridColumnOrgName";
            this.gridColumnOrgName.Visible = true;
            this.gridColumnOrgName.VisibleIndex = 4;
            this.gridColumnOrgName.Width = 206;
            // 
            // treeList1
            // 
            this.treeList1.Columns.AddRange(new DevExpress.XtraTreeList.Columns.TreeListColumn[] {
            this.treeListColumn1,
            this.treeListColumn3,
            this.treeListColumn4,
            this.treeListColumn5,
            this.treeListColumn2});
            this.treeList1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.treeList1.KeyFieldName = "OrgID";
            this.treeList1.Location = new System.Drawing.Point(0, 26);
            this.treeList1.Name = "treeList1";
            this.treeList1.OptionsBehavior.Editable = false;
            this.treeList1.ParentFieldName = "PID";
            this.treeList1.Size = new System.Drawing.Size(869, 379);
            this.treeList1.TabIndex = 6;
            // 
            // treeListColumn1
            // 
            this.treeListColumn1.Caption = "Organization ID";
            this.treeListColumn1.FieldName = "OrgID";
            this.treeListColumn1.Name = "treeListColumn1";
            this.treeListColumn1.Visible = true;
            this.treeListColumn1.VisibleIndex = 0;
            this.treeListColumn1.Width = 150;
            // 
            // treeListColumn3
            // 
            this.treeListColumn3.Caption = "Organization Type";
            this.treeListColumn3.FieldName = "OrgType";
            this.treeListColumn3.Name = "treeListColumn3";
            this.treeListColumn3.Visible = true;
            this.treeListColumn3.VisibleIndex = 1;
            this.treeListColumn3.Width = 167;
            // 
            // treeListColumn4
            // 
            this.treeListColumn4.Caption = "Organization Code";
            this.treeListColumn4.FieldName = "OrgCode";
            this.treeListColumn4.Name = "treeListColumn4";
            this.treeListColumn4.Visible = true;
            this.treeListColumn4.VisibleIndex = 2;
            this.treeListColumn4.Width = 163;
            // 
            // treeListColumn5
            // 
            this.treeListColumn5.Caption = "Organization Name";
            this.treeListColumn5.FieldName = "OrgName";
            this.treeListColumn5.Name = "treeListColumn5";
            this.treeListColumn5.Visible = true;
            this.treeListColumn5.VisibleIndex = 3;
            this.treeListColumn5.Width = 368;
            // 
            // treeListColumn2
            // 
            this.treeListColumn2.Caption = "PID";
            this.treeListColumn2.FieldName = "PID";
            this.treeListColumn2.Name = "treeListColumn2";
            this.treeListColumn2.OptionsColumn.FixedWidth = true;
            this.treeListColumn2.OptionsColumn.ReadOnly = true;
            // 
            // barBtnAddChild
            // 
            this.barBtnAddChild.Caption = "AddChild";
            this.barBtnAddChild.Glyph = ((System.Drawing.Image)(resources.GetObject("barBtnAddChild.Glyph")));
            this.barBtnAddChild.Hint = "AddChild";
            this.barBtnAddChild.Id = 17;
            this.barBtnAddChild.Name = "barBtnAddChild";
            this.barBtnAddChild.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtnAddChild_ItemClick);
            // 
            // colOrgID
            // 
            this.colOrgID.Caption = "OrgID";
            this.colOrgID.FieldName = "OrgID";
            this.colOrgID.Name = "colOrgID";
            this.colOrgID.Visible = true;
            this.colOrgID.VisibleIndex = 0;
            // 
            // colPID
            // 
            this.colPID.Caption = "PID";
            this.colPID.FieldName = "PID";
            this.colPID.Name = "colPID";
            this.colPID.Visible = true;
            this.colPID.VisibleIndex = 1;
            // 
            // colOrgType
            // 
            this.colOrgType.Caption = "OrgType";
            this.colOrgType.FieldName = "OrgType";
            this.colOrgType.Name = "colOrgType";
            this.colOrgType.Visible = true;
            this.colOrgType.VisibleIndex = 2;
            // 
            // colOrgCode
            // 
            this.colOrgCode.Caption = "OrgCode";
            this.colOrgCode.FieldName = "OrgCode";
            this.colOrgCode.Name = "colOrgCode";
            this.colOrgCode.Visible = true;
            this.colOrgCode.VisibleIndex = 3;
            // 
            // colOrgName
            // 
            this.colOrgName.Caption = "OrgName";
            this.colOrgName.FieldName = "OrgName";
            this.colOrgName.Name = "colOrgName";
            this.colOrgName.Visible = true;
            this.colOrgName.VisibleIndex = 4;
            // 
            // barBtnExpand
            // 
            this.barBtnExpand.Caption = "Expand";
            this.barBtnExpand.Id = 18;
            this.barBtnExpand.Name = "barBtnExpand";
            this.barBtnExpand.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtnExpand_ItemClick);
            // 
            // barBtnCollapse
            // 
            this.barBtnCollapse.Caption = "Collapse";
            this.barBtnCollapse.Id = 19;
            this.barBtnCollapse.Name = "barBtnCollapse";
            this.barBtnCollapse.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtnCollapse_ItemClick);
            // 
            // barBtnAddSame
            // 
            this.barBtnAddSame.Caption = "AddSibling";
            this.barBtnAddSame.Glyph = ((System.Drawing.Image)(resources.GetObject("barBtnAddSame.Glyph")));
            this.barBtnAddSame.Hint = "AddSibling";
            this.barBtnAddSame.Id = 20;
            this.barBtnAddSame.Name = "barBtnAddSame";
            this.barBtnAddSame.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtnAddSame_ItemClick);
            // 
            // OrganizationListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.treeList1);
            this.Name = "OrganizationListForm";
            this.Size = new System.Drawing.Size(869, 405);
            this.Controls.SetChildIndex(this.objListGridControl, 0);
            this.Controls.SetChildIndex(this.treeList1, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.treeList1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn gridColumnOrgID;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumnPID;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumnOrgType;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumnOrgCode;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumnOrgName;
        private DevExpress.XtraTreeList.TreeList treeList1;
        private DevExpress.XtraTreeList.Columns.TreeListColumn treeListColumn1;
        private DevExpress.XtraTreeList.Columns.TreeListColumn treeListColumn3;
        private DevExpress.XtraTreeList.Columns.TreeListColumn treeListColumn4;
        private DevExpress.XtraTreeList.Columns.TreeListColumn treeListColumn5;
        private DevExpress.XtraBars.BarButtonItem barBtnAddChild;
        private DevExpress.XtraGrid.Columns.GridColumn colOrgID;
        private DevExpress.XtraGrid.Columns.GridColumn colPID;
        private DevExpress.XtraGrid.Columns.GridColumn colOrgType;
        private DevExpress.XtraGrid.Columns.GridColumn colOrgCode;
        private DevExpress.XtraGrid.Columns.GridColumn colOrgName;
        private DevExpress.XtraTreeList.Columns.TreeListColumn treeListColumn2;
        private DevExpress.XtraBars.BarButtonItem barBtnExpand;
        private DevExpress.XtraBars.BarButtonItem barBtnCollapse;
        private DevExpress.XtraBars.BarButtonItem barBtnAddSame;
    }
}
