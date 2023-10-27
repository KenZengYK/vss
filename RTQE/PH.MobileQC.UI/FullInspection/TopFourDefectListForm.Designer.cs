namespace PH.MobileQC.UI.FullInspection
{
    partial class TopFourDefectListForm
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

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.colDefectCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSort = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDefectNameCN = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDefectNameEN = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCurrentDataContext = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colBOWorkMode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCheckFlag = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSideProgramID = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colFileID = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // barBtnDel
            // 
            this.barBtnDel.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // barStcRec
            // 
            this.barStcRec.Caption = "/0";
            // 
            // barBtnAddNew
            // 
            this.barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colDefectCode,
            this.colSort,
            this.colDefectNameCN,
            this.colDefectNameEN,
            this.colCurrentDataContext,
            this.colBOWorkMode,
            this.colCheckFlag,
            this.colSideProgramID,
            this.colFileID});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.MobileQC.BO.FourDefectCode);
            // 
            // colDefectCode
            // 
            this.colDefectCode.Caption = "Defect Code";
            this.colDefectCode.FieldName = "DefectCode";
            this.colDefectCode.Name = "colDefectCode";
            this.colDefectCode.Visible = true;
            this.colDefectCode.VisibleIndex = 1;
            this.colDefectCode.Width = 91;
            // 
            // colSort
            // 
            this.colSort.Caption = "Sort";
            this.colSort.FieldName = "Sort";
            this.colSort.Name = "colSort";
            this.colSort.Visible = true;
            this.colSort.VisibleIndex = 0;
            this.colSort.Width = 45;
            // 
            // colDefectNameCN
            // 
            this.colDefectNameCN.Caption = "Defect Name(CN)";
            this.colDefectNameCN.FieldName = "DefectNameCN";
            this.colDefectNameCN.Name = "colDefectNameCN";
            this.colDefectNameCN.Visible = true;
            this.colDefectNameCN.VisibleIndex = 2;
            this.colDefectNameCN.Width = 119;
            // 
            // colDefectNameEN
            // 
            this.colDefectNameEN.Caption = "Defect Name(EN)";
            this.colDefectNameEN.FieldName = "DefectNameEN";
            this.colDefectNameEN.Name = "colDefectNameEN";
            this.colDefectNameEN.Visible = true;
            this.colDefectNameEN.VisibleIndex = 3;
            this.colDefectNameEN.Width = 119;
            // 
            // colCurrentDataContext
            // 
            this.colCurrentDataContext.Caption = "CurrentDataContext";
            this.colCurrentDataContext.FieldName = "CurrentDataContext";
            this.colCurrentDataContext.Name = "colCurrentDataContext";
            this.colCurrentDataContext.Width = 122;
            // 
            // colBOWorkMode
            // 
            this.colBOWorkMode.Caption = "BOWorkMode";
            this.colBOWorkMode.FieldName = "BOWorkMode";
            this.colBOWorkMode.Name = "colBOWorkMode";
            this.colBOWorkMode.Width = 87;
            // 
            // colCheckFlag
            // 
            this.colCheckFlag.Caption = "CheckFlag";
            this.colCheckFlag.FieldName = "CheckFlag";
            this.colCheckFlag.Name = "colCheckFlag";
            this.colCheckFlag.Width = 66;
            // 
            // colSideProgramID
            // 
            this.colSideProgramID.Caption = "SideProgramID";
            this.colSideProgramID.FieldName = "SideProgramID";
            this.colSideProgramID.Name = "colSideProgramID";
            this.colSideProgramID.OptionsColumn.ReadOnly = true;
            this.colSideProgramID.Width = 92;
            // 
            // colFileID
            // 
            this.colFileID.Caption = "FileID";
            this.colFileID.FieldName = "FileID";
            this.colFileID.Name = "colFileID";
            this.colFileID.OptionsColumn.ReadOnly = true;
            this.colFileID.Width = 41;
            // 
            // TopFourDefectListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "TopFourDefectListForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colDefectCode;
        private DevExpress.XtraGrid.Columns.GridColumn colSort;
        private DevExpress.XtraGrid.Columns.GridColumn colDefectNameCN;
        private DevExpress.XtraGrid.Columns.GridColumn colDefectNameEN;
        private DevExpress.XtraGrid.Columns.GridColumn colCurrentDataContext;
        private DevExpress.XtraGrid.Columns.GridColumn colBOWorkMode;
        private DevExpress.XtraGrid.Columns.GridColumn colCheckFlag;
        private DevExpress.XtraGrid.Columns.GridColumn colSideProgramID;
        private DevExpress.XtraGrid.Columns.GridColumn colFileID;
    }
}