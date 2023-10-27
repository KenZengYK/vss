namespace PH.MIDc.UI
{
    partial class FGStyleHSCodeListForm
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
            this.ColHSCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.ColStyleNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.ColHSNameTW = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colHSNameCN = new DevExpress.XtraGrid.Columns.GridColumn();
            this.ColHSNameEN = new DevExpress.XtraGrid.Columns.GridColumn();
            this.barBtnImportAll = new DevExpress.XtraBars.BarButtonItem();
            this.repositoryItemCheckEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            this.repositoryItemCheckEdit2 = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            this.repositoryItemTextEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemTextEdit();
            this.barBtnShowFilter = new DevExpress.XtraBars.BarEditItem();
            this.repositoryItemComboBox2 = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemTextEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox2)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.barBtnImportAll,
            this.barBtnShowFilter});
            this.objbarManager.MaxItemId = 66;
            this.objbarManager.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemCheckEdit1,
            this.repositoryItemCheckEdit2,
            this.repositoryItemTextEdit1,
            this.repositoryItemComboBox2});
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtnImportAll),
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.Width, this.barBtnShowFilter, "", true, true, true, 142)});
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.Size = new System.Drawing.Size(1151, 272);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.ColStyleNo,
            this.ColHSCode,
            this.ColHSNameTW,
            this.colHSNameCN,
            this.ColHSNameEN});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // ColHSCode
            // 
            this.ColHSCode.Caption = "HS Code";
            this.ColHSCode.FieldName = "HSCode";
            this.ColHSCode.Name = "ColHSCode";
            this.ColHSCode.Visible = true;
            this.ColHSCode.VisibleIndex = 1;
            this.ColHSCode.Width = 150;
            // 
            // ColStyleNo
            // 
            this.ColStyleNo.Caption = "StyleNo";
            this.ColStyleNo.FieldName = "StyleNo";
            this.ColStyleNo.Name = "ColStyleNo";
            this.ColStyleNo.Visible = true;
            this.ColStyleNo.VisibleIndex = 0;
            this.ColStyleNo.Width = 150;
            // 
            // ColHSNameTW
            // 
            this.ColHSNameTW.Caption = "HS Name(TW)";
            this.ColHSNameTW.FieldName = "HSNameTW";
            this.ColHSNameTW.Name = "ColHSNameTW";
            this.ColHSNameTW.Visible = true;
            this.ColHSNameTW.VisibleIndex = 2;
            this.ColHSNameTW.Width = 180;
            // 
            // colHSNameCN
            // 
            this.colHSNameCN.Caption = "HS Name(CN)";
            this.colHSNameCN.FieldName = "HSNameCN";
            this.colHSNameCN.Name = "colHSNameCN";
            this.colHSNameCN.Visible = true;
            this.colHSNameCN.VisibleIndex = 3;
            this.colHSNameCN.Width = 180;
            // 
            // ColHSNameEN
            // 
            this.ColHSNameEN.Caption = "HS Name(EN)";
            this.ColHSNameEN.FieldName = "HSNameEN";
            this.ColHSNameEN.Name = "ColHSNameEN";
            this.ColHSNameEN.Visible = true;
            this.ColHSNameEN.VisibleIndex = 4;
            this.ColHSNameEN.Width = 180;
            // 
            // barBtnImportAll
            // 
            this.barBtnImportAll.Caption = "Import All";
            this.barBtnImportAll.Hint = "為所有沒有海關申報項的款生成海關申報資料";
            this.barBtnImportAll.Id = 60;
            this.barBtnImportAll.Name = "barBtnImportAll";
            this.barBtnImportAll.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtnImportAll_ItemClick);
            // 
            // repositoryItemCheckEdit1
            // 
            this.repositoryItemCheckEdit1.AutoHeight = false;
            this.repositoryItemCheckEdit1.Name = "repositoryItemCheckEdit1";
            // 
            // repositoryItemCheckEdit2
            // 
            this.repositoryItemCheckEdit2.AutoHeight = false;
            this.repositoryItemCheckEdit2.CheckStyle = DevExpress.XtraEditors.Controls.CheckStyles.Style4;
            this.repositoryItemCheckEdit2.Name = "repositoryItemCheckEdit2";
            this.repositoryItemCheckEdit2.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            // 
            // repositoryItemTextEdit1
            // 
            this.repositoryItemTextEdit1.AutoHeight = false;
            this.repositoryItemTextEdit1.Name = "repositoryItemTextEdit1";
            // 
            // barBtnShowFilter
            // 
            this.barBtnShowFilter.Caption = "barEditItem1";
            this.barBtnShowFilter.Edit = this.repositoryItemComboBox2;
            this.barBtnShowFilter.EditValue = "顯示所有款";
            this.barBtnShowFilter.Id = 65;
            this.barBtnShowFilter.Name = "barBtnShowFilter";
            this.barBtnShowFilter.EditValueChanged += new System.EventHandler(this.barBtnShowFilter_EditValueChanged);
            // 
            // repositoryItemComboBox2
            // 
            this.repositoryItemComboBox2.AutoHeight = false;
            this.repositoryItemComboBox2.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemComboBox2.Items.AddRange(new object[] {
            "顯示所有款",
            "只顯示沒有成份或沒有海關申報要素的款"});
            this.repositoryItemComboBox2.Name = "repositoryItemComboBox2";
            // 
            // FGStyleHSCodeListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "FGStyleHSCodeListForm";
            this.Size = new System.Drawing.Size(1151, 299);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemTextEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox2)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn ColStyleNo;
        private DevExpress.XtraGrid.Columns.GridColumn ColHSCode;
        private DevExpress.XtraGrid.Columns.GridColumn ColHSNameTW;
        private DevExpress.XtraGrid.Columns.GridColumn colHSNameCN;
        private DevExpress.XtraGrid.Columns.GridColumn ColHSNameEN;
        private DevExpress.XtraBars.BarButtonItem barBtnImportAll;
        private DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit repositoryItemCheckEdit2;
        private DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit repositoryItemCheckEdit1;
        private DevExpress.XtraBars.BarEditItem barBtnShowFilter;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox repositoryItemComboBox2;
        private DevExpress.XtraEditors.Repository.RepositoryItemTextEdit repositoryItemTextEdit1;
    }
}
