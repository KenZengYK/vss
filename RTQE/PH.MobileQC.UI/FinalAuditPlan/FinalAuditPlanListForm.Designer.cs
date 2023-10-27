namespace PH.MobileQC.UI.FinalAuditPlan
{
    partial class FinalAuditPlanListForm
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
            this.colFactory = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colWorkshop = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colLine = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colProjectNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCustStyle = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colColor = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colQNQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colQNSeq = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colQNDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colProductQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSize = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colBoxQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colAuditor = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemComboBox_Auditor = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.colIsCompleted = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemCheckEdit_IsCompleted = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            this.colImportDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colQNNoShow = new DevExpress.XtraGrid.Columns.GridColumn();
            this.btnImportQN = new DevExpress.XtraBars.BarButtonItem();
            this.colPHStyle = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox_Auditor)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit_IsCompleted)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.btnImportQN});
            this.objbarManager.MaxItemId = 61;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.btnImportQN, true)});
            // 
            // barBtnAddNew
            // 
            this.barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemComboBox_Auditor,
            this.repositoryItemCheckEdit_IsCompleted});
            this.objListGridControl.Size = new System.Drawing.Size(1348, 439);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colFactory,
            this.colWorkshop,
            this.colLine,
            this.colProjectNo,
            this.colCustStyle,
            this.colPHStyle,
            this.colColor,
            this.colQNNoShow,
            this.colQNQty,
            this.colQNSeq,
            this.colQNDate,
            this.colProductQty,
            this.colSize,
            this.colBoxQty,
            this.colAuditor,
            this.colIsCompleted,
            this.colImportDate});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            this.objListGridView.ValidateRow += new DevExpress.XtraGrid.Views.Base.ValidateRowEventHandler(this.objListGridView_ValidateRow);
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.MobileQC.BO.FinalAuditPlanList);
            // 
            // colFactory
            // 
            this.colFactory.Caption = "Fty";
            this.colFactory.FieldName = "Factory";
            this.colFactory.Name = "colFactory";
            this.colFactory.OptionsColumn.AllowEdit = false;
            this.colFactory.Visible = true;
            this.colFactory.VisibleIndex = 0;
            this.colFactory.Width = 39;
            // 
            // colWorkshop
            // 
            this.colWorkshop.Caption = "Ws";
            this.colWorkshop.FieldName = "Workshop";
            this.colWorkshop.Name = "colWorkshop";
            this.colWorkshop.OptionsColumn.AllowEdit = false;
            this.colWorkshop.Visible = true;
            this.colWorkshop.VisibleIndex = 1;
            this.colWorkshop.Width = 39;
            // 
            // colLine
            // 
            this.colLine.Caption = "Line";
            this.colLine.FieldName = "Line";
            this.colLine.Name = "colLine";
            this.colLine.OptionsColumn.AllowEdit = false;
            this.colLine.Visible = true;
            this.colLine.VisibleIndex = 2;
            this.colLine.Width = 48;
            // 
            // colProjectNo
            // 
            this.colProjectNo.Caption = "Project#";
            this.colProjectNo.FieldName = "ProjectNo";
            this.colProjectNo.Name = "colProjectNo";
            this.colProjectNo.OptionsColumn.AllowEdit = false;
            this.colProjectNo.Visible = true;
            this.colProjectNo.VisibleIndex = 3;
            this.colProjectNo.Width = 81;
            // 
            // colCustStyle
            // 
            this.colCustStyle.Caption = "Cust Style#";
            this.colCustStyle.FieldName = "CustStyle";
            this.colCustStyle.Name = "colCustStyle";
            this.colCustStyle.OptionsColumn.AllowEdit = false;
            this.colCustStyle.Visible = true;
            this.colCustStyle.VisibleIndex = 4;
            this.colCustStyle.Width = 86;
            // 
            // colColor
            // 
            this.colColor.Caption = "Color";
            this.colColor.FieldName = "Color";
            this.colColor.Name = "colColor";
            this.colColor.OptionsColumn.AllowEdit = false;
            this.colColor.Visible = true;
            this.colColor.VisibleIndex = 6;
            this.colColor.Width = 48;
            // 
            // colQNQty
            // 
            this.colQNQty.Caption = "QN Qty";
            this.colQNQty.FieldName = "QNQty";
            this.colQNQty.Name = "colQNQty";
            this.colQNQty.OptionsColumn.AllowEdit = false;
            this.colQNQty.Visible = true;
            this.colQNQty.VisibleIndex = 8;
            this.colQNQty.Width = 70;
            // 
            // colQNSeq
            // 
            this.colQNSeq.Caption = "QN Seq";
            this.colQNSeq.FieldName = "QNSeq";
            this.colQNSeq.Name = "colQNSeq";
            this.colQNSeq.OptionsColumn.AllowEdit = false;
            this.colQNSeq.Visible = true;
            this.colQNSeq.VisibleIndex = 9;
            this.colQNSeq.Width = 63;
            // 
            // colQNDate
            // 
            this.colQNDate.Caption = "Prdn Date";
            this.colQNDate.FieldName = "QNDate";
            this.colQNDate.Name = "colQNDate";
            this.colQNDate.OptionsColumn.AllowEdit = false;
            this.colQNDate.Visible = true;
            this.colQNDate.VisibleIndex = 10;
            this.colQNDate.Width = 76;
            // 
            // colProductQty
            // 
            this.colProductQty.Caption = "Prdn Qty";
            this.colProductQty.FieldName = "ProductQty";
            this.colProductQty.Name = "colProductQty";
            this.colProductQty.OptionsColumn.AllowEdit = false;
            this.colProductQty.Visible = true;
            this.colProductQty.VisibleIndex = 11;
            this.colProductQty.Width = 89;
            // 
            // colSize
            // 
            this.colSize.Caption = "Size";
            this.colSize.FieldName = "Size";
            this.colSize.Name = "colSize";
            this.colSize.OptionsColumn.AllowEdit = false;
            this.colSize.Visible = true;
            this.colSize.VisibleIndex = 12;
            this.colSize.Width = 108;
            // 
            // colBoxQty
            // 
            this.colBoxQty.Caption = "Box Qty";
            this.colBoxQty.FieldName = "BoxQty";
            this.colBoxQty.Name = "colBoxQty";
            this.colBoxQty.OptionsColumn.AllowEdit = false;
            this.colBoxQty.Visible = true;
            this.colBoxQty.VisibleIndex = 13;
            this.colBoxQty.Width = 66;
            // 
            // colAuditor
            // 
            this.colAuditor.Caption = "Auditor";
            this.colAuditor.ColumnEdit = this.repositoryItemComboBox_Auditor;
            this.colAuditor.FieldName = "Auditor";
            this.colAuditor.Name = "colAuditor";
            this.colAuditor.Visible = true;
            this.colAuditor.VisibleIndex = 14;
            // 
            // repositoryItemComboBox_Auditor
            // 
            this.repositoryItemComboBox_Auditor.AutoHeight = false;
            this.repositoryItemComboBox_Auditor.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemComboBox_Auditor.Name = "repositoryItemComboBox_Auditor";
            // 
            // colIsCompleted
            // 
            this.colIsCompleted.Caption = "IsCompleted";
            this.colIsCompleted.ColumnEdit = this.repositoryItemCheckEdit_IsCompleted;
            this.colIsCompleted.FieldName = "IsCompleted";
            this.colIsCompleted.Name = "colIsCompleted";
            this.colIsCompleted.Visible = true;
            this.colIsCompleted.VisibleIndex = 15;
            this.colIsCompleted.Width = 90;
            // 
            // repositoryItemCheckEdit_IsCompleted
            // 
            this.repositoryItemCheckEdit_IsCompleted.AutoHeight = false;
            this.repositoryItemCheckEdit_IsCompleted.Name = "repositoryItemCheckEdit_IsCompleted";
            this.repositoryItemCheckEdit_IsCompleted.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            this.repositoryItemCheckEdit_IsCompleted.CheckedChanged += new System.EventHandler(this.repositoryItemCheckEdit_IsCompleted_CheckedChanged);
            // 
            // colImportDate
            // 
            this.colImportDate.Caption = "Import Date";
            this.colImportDate.FieldName = "ImportDate";
            this.colImportDate.Name = "colImportDate";
            this.colImportDate.OptionsColumn.AllowEdit = false;
            this.colImportDate.Visible = true;
            this.colImportDate.VisibleIndex = 16;
            this.colImportDate.Width = 89;
            // 
            // colQNNoShow
            // 
            this.colQNNoShow.Caption = "QN#";
            this.colQNNoShow.FieldName = "QNNoShow";
            this.colQNNoShow.Name = "colQNNoShow";
            this.colQNNoShow.OptionsColumn.AllowEdit = false;
            this.colQNNoShow.Visible = true;
            this.colQNNoShow.VisibleIndex = 7;
            this.colQNNoShow.Width = 143;
            // 
            // btnImportQN
            // 
            this.btnImportQN.Caption = "Import QN";
            this.btnImportQN.Id = 60;
            this.btnImportQN.Name = "btnImportQN";
            this.btnImportQN.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnImportQN_ItemClick);
            // 
            // colPHStyle
            // 
            this.colPHStyle.Caption = "PH Style#";
            this.colPHStyle.FieldName = "PHStyle";
            this.colPHStyle.Name = "colPHStyle";
            this.colPHStyle.OptionsColumn.AllowEdit = false;
            this.colPHStyle.Visible = true;
            this.colPHStyle.VisibleIndex = 5;
            this.colPHStyle.Width = 111;
            // 
            // FinalAuditPlanListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "FinalAuditPlanListForm";
            this.Size = new System.Drawing.Size(1348, 466);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox_Auditor)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit_IsCompleted)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colFactory;
        private DevExpress.XtraGrid.Columns.GridColumn colWorkshop;
        private DevExpress.XtraGrid.Columns.GridColumn colLine;
        private DevExpress.XtraGrid.Columns.GridColumn colProjectNo;
        private DevExpress.XtraGrid.Columns.GridColumn colCustStyle;
        private DevExpress.XtraGrid.Columns.GridColumn colColor;
        private DevExpress.XtraGrid.Columns.GridColumn colQNQty;
        private DevExpress.XtraGrid.Columns.GridColumn colQNSeq;
        private DevExpress.XtraGrid.Columns.GridColumn colQNDate;
        private DevExpress.XtraGrid.Columns.GridColumn colProductQty;
        private DevExpress.XtraGrid.Columns.GridColumn colSize;
        private DevExpress.XtraGrid.Columns.GridColumn colBoxQty;
        private DevExpress.XtraGrid.Columns.GridColumn colAuditor;
        private DevExpress.XtraGrid.Columns.GridColumn colIsCompleted;
        private DevExpress.XtraGrid.Columns.GridColumn colImportDate;
        private DevExpress.XtraGrid.Columns.GridColumn colQNNoShow;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox repositoryItemComboBox_Auditor;
        private DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit repositoryItemCheckEdit_IsCompleted;
        private DevExpress.XtraBars.BarButtonItem btnImportQN;
        private DevExpress.XtraGrid.Columns.GridColumn colPHStyle;
    }
}
