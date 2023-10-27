namespace PH.FabricInspection.UI.MonitorOverdueAudit
{
    partial class MonitorOverdueAudtListForm
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
            this.colWhse = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colAuditNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colItemNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colMaterialType = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colColorCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSuppItemRef = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSuppCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colProjectNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colFWStartDateFirstWO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colFWStartDateLastWO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPONo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colHDONo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colIDCreateDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colOverDueDay = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colAuditStage = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colAuditType = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colAuditTeam = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPackListQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colUnit = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colLotNo = new DevExpress.XtraGrid.Columns.GridColumn();
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
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.Size = new System.Drawing.Size(1480, 372);
            this.objListGridControl.Load += new System.EventHandler(this.objListGridControl_Load);
            // 
            // objListGridView
            // 
            this.objListGridView.Appearance.HeaderPanel.Options.UseTextOptions = true;
            this.objListGridView.Appearance.HeaderPanel.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.objListGridView.Appearance.HeaderPanel.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.objListGridView.ColumnPanelRowHeight = 50;
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colWhse,
            this.colAuditNo,
            this.colLotNo,
            this.colMaterialType,
            this.colItemNo,
            this.colColorCode,
            this.colSuppItemRef,
            this.colSuppCode,
            this.colProjectNo,
            this.colFWStartDateFirstWO,
            this.colFWStartDateLastWO,
            this.colPONo,
            this.colHDONo,
            this.colIDCreateDate,
            this.colOverDueDay,
            this.colAuditStage,
            this.colAuditType,
            this.colAuditTeam,
            this.colPackListQty,
            this.colUnit});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            this.objListGridView.OptionsView.ShowFooter = true;
            this.objListGridView.CustomSummaryCalculate += new DevExpress.Data.CustomSummaryEventHandler(this.objListGridView_CustomSummaryCalculate);
            this.objListGridView.CustomDrawCell += new DevExpress.XtraGrid.Views.Base.RowCellCustomDrawEventHandler(this.objListGridView_CustomDrawCell);
            // 
            // colWhse
            // 
            this.colWhse.Caption = "Whse";
            this.colWhse.FieldName = "Whse";
            this.colWhse.Name = "colWhse";
            this.colWhse.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colWhse.Visible = true;
            this.colWhse.VisibleIndex = 0;
            // 
            // colAuditNo
            // 
            this.colAuditNo.Caption = "AuditNo";
            this.colAuditNo.FieldName = "AuditNo";
            this.colAuditNo.Name = "colAuditNo";
            this.colAuditNo.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colAuditNo.Visible = true;
            this.colAuditNo.VisibleIndex = 1;
            // 
            // colItemNo
            // 
            this.colItemNo.Caption = "ItemNo";
            this.colItemNo.FieldName = "ItemNo";
            this.colItemNo.Name = "colItemNo";
            this.colItemNo.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colItemNo.Visible = true;
            this.colItemNo.VisibleIndex = 4;
            // 
            // colMaterialType
            // 
            this.colMaterialType.Caption = "MaterialType";
            this.colMaterialType.FieldName = "MaterialType";
            this.colMaterialType.Name = "colMaterialType";
            this.colMaterialType.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colMaterialType.Visible = true;
            this.colMaterialType.VisibleIndex = 3;
            // 
            // colColorCode
            // 
            this.colColorCode.Caption = "ColorCode";
            this.colColorCode.FieldName = "ColorCode";
            this.colColorCode.Name = "colColorCode";
            this.colColorCode.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colColorCode.Visible = true;
            this.colColorCode.VisibleIndex = 5;
            // 
            // colSuppItemRef
            // 
            this.colSuppItemRef.Caption = "SuppItemRef";
            this.colSuppItemRef.FieldName = "SuppItemRef";
            this.colSuppItemRef.Name = "colSuppItemRef";
            this.colSuppItemRef.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colSuppItemRef.Visible = true;
            this.colSuppItemRef.VisibleIndex = 6;
            // 
            // colSuppCode
            // 
            this.colSuppCode.Caption = "SuppCode";
            this.colSuppCode.FieldName = "SuppCode";
            this.colSuppCode.Name = "colSuppCode";
            this.colSuppCode.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colSuppCode.Visible = true;
            this.colSuppCode.VisibleIndex = 7;
            // 
            // colProjectNo
            // 
            this.colProjectNo.Caption = "ProjectNo";
            this.colProjectNo.FieldName = "ProjectNo";
            this.colProjectNo.Name = "colProjectNo";
            this.colProjectNo.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colProjectNo.Visible = true;
            this.colProjectNo.VisibleIndex = 8;
            // 
            // colFWStartDateFirstWO
            // 
            this.colFWStartDateFirstWO.Caption = "FWStartDateFirstWO";
            this.colFWStartDateFirstWO.DisplayFormat.FormatString = "yyyy/MM/dd";
            this.colFWStartDateFirstWO.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colFWStartDateFirstWO.FieldName = "FWStartDateFirstWO";
            this.colFWStartDateFirstWO.Name = "colFWStartDateFirstWO";
            this.colFWStartDateFirstWO.Visible = true;
            this.colFWStartDateFirstWO.VisibleIndex = 9;
            // 
            // colFWStartDateLastWO
            // 
            this.colFWStartDateLastWO.Caption = "FWStartDateLastWO";
            this.colFWStartDateLastWO.DisplayFormat.FormatString = "yyyy/MM/dd";
            this.colFWStartDateLastWO.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colFWStartDateLastWO.FieldName = "FWStartDateLastWO";
            this.colFWStartDateLastWO.Name = "colFWStartDateLastWO";
            this.colFWStartDateLastWO.Visible = true;
            this.colFWStartDateLastWO.VisibleIndex = 10;
            // 
            // colPONo
            // 
            this.colPONo.Caption = "PONo";
            this.colPONo.FieldName = "PONo";
            this.colPONo.Name = "colPONo";
            this.colPONo.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colPONo.Visible = true;
            this.colPONo.VisibleIndex = 11;
            // 
            // colHDONo
            // 
            this.colHDONo.Caption = "HDONo";
            this.colHDONo.FieldName = "HDONo";
            this.colHDONo.Name = "colHDONo";
            this.colHDONo.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colHDONo.Visible = true;
            this.colHDONo.VisibleIndex = 12;
            // 
            // colIDCreateDate
            // 
            this.colIDCreateDate.Caption = "IDCreateDate";
            this.colIDCreateDate.FieldName = "IDCreateDate";
            this.colIDCreateDate.Name = "colIDCreateDate";
            this.colIDCreateDate.Visible = true;
            this.colIDCreateDate.VisibleIndex = 13;
            // 
            // colOverDueDay
            // 
            this.colOverDueDay.Caption = "OverDueDay";
            this.colOverDueDay.FieldName = "OverDueDay";
            this.colOverDueDay.Name = "colOverDueDay";
            this.colOverDueDay.Visible = true;
            this.colOverDueDay.VisibleIndex = 14;
            // 
            // colAuditStage
            // 
            this.colAuditStage.Caption = "AuditStage";
            this.colAuditStage.FieldName = "AuditStage";
            this.colAuditStage.Name = "colAuditStage";
            this.colAuditStage.Visible = true;
            this.colAuditStage.VisibleIndex = 15;
            // 
            // colAuditType
            // 
            this.colAuditType.Caption = "AuditType";
            this.colAuditType.FieldName = "AuditType";
            this.colAuditType.Name = "colAuditType";
            this.colAuditType.Visible = true;
            this.colAuditType.VisibleIndex = 16;
            // 
            // colAuditTeam
            // 
            this.colAuditTeam.Caption = "AuditTeam";
            this.colAuditTeam.FieldName = "AuditTeam";
            this.colAuditTeam.Name = "colAuditTeam";
            this.colAuditTeam.Visible = true;
            this.colAuditTeam.VisibleIndex = 17;
            // 
            // colPackListQty
            // 
            this.colPackListQty.Caption = "PackListQty";
            this.colPackListQty.DisplayFormat.FormatString = "n2";
            this.colPackListQty.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colPackListQty.FieldName = "PackListQty";
            this.colPackListQty.Name = "colPackListQty";
            this.colPackListQty.Visible = true;
            this.colPackListQty.VisibleIndex = 18;
            // 
            // colUnit
            // 
            this.colUnit.Caption = "Unit";
            this.colUnit.FieldName = "Unit";
            this.colUnit.Name = "colUnit";
            this.colUnit.Visible = true;
            this.colUnit.VisibleIndex = 19;
            // 
            // colLotNo
            // 
            this.colLotNo.Caption = "LotNo";
            this.colLotNo.FieldName = "LotNo";
            this.colLotNo.Name = "colLotNo";
            this.colLotNo.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colLotNo.Visible = true;
            this.colLotNo.VisibleIndex = 2;
            this.colLotNo.Width = 107;
            // 
            // MonitorOverdueAudtListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "MonitorOverdueAudtListForm";
            this.Size = new System.Drawing.Size(1480, 399);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colWhse;
        private DevExpress.XtraGrid.Columns.GridColumn colAuditNo;
        private DevExpress.XtraGrid.Columns.GridColumn colItemNo;
        private DevExpress.XtraGrid.Columns.GridColumn colMaterialType;
        private DevExpress.XtraGrid.Columns.GridColumn colColorCode;
        private DevExpress.XtraGrid.Columns.GridColumn colSuppItemRef;
        private DevExpress.XtraGrid.Columns.GridColumn colSuppCode;
        private DevExpress.XtraGrid.Columns.GridColumn colProjectNo;
        private DevExpress.XtraGrid.Columns.GridColumn colFWStartDateFirstWO;
        private DevExpress.XtraGrid.Columns.GridColumn colFWStartDateLastWO;
        private DevExpress.XtraGrid.Columns.GridColumn colPONo;
        private DevExpress.XtraGrid.Columns.GridColumn colHDONo;
        private DevExpress.XtraGrid.Columns.GridColumn colIDCreateDate;
        private DevExpress.XtraGrid.Columns.GridColumn colOverDueDay;
        private DevExpress.XtraGrid.Columns.GridColumn colAuditStage;
        private DevExpress.XtraGrid.Columns.GridColumn colAuditType;
        private DevExpress.XtraGrid.Columns.GridColumn colAuditTeam;
        private DevExpress.XtraGrid.Columns.GridColumn colPackListQty;
        private DevExpress.XtraGrid.Columns.GridColumn colUnit;
        private DevExpress.XtraGrid.Columns.GridColumn colLotNo;
    }
}
