namespace PH.FabricInspection.UI
{
    partial class MaterialTypeDefectOrderForm
    {
        /// <summary> 
        /// 必需的设计器变量。
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary> 
        /// 清理所有正在使用的资源。
        /// </summary>
        /// <param name="disposing">如果应释放托管资源，为 true；否则为 false。</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region 组件设计器生成的代码

        /// <summary> 
        /// 设计器支持所需的方法 - 不要
        /// 使用代码编辑器修改此方法的内容。
        /// </summary>
        private void InitializeComponent()
        {
            this.colMaterialType = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDefect_Name = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDefect_Deduce_Points = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDefectEnglishName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDefectChineseName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.panelControl1 = new DevExpress.XtraEditors.PanelControl();
            this.btnQuery = new DevExpress.XtraEditors.SimpleButton();
            this.txtDateTo = new DevExpress.XtraEditors.DateEdit();
            this.txtDateFrom = new DevExpress.XtraEditors.DateEdit();
            this.txtAuditTeam = new DevExpress.XtraEditors.ComboBoxEdit();
            this.labelControl5 = new DevExpress.XtraEditors.LabelControl();
            this.lblStockInDate = new DevExpress.XtraEditors.LabelControl();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.colSupplier_Code = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colAuditTeam = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colConverter = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDefectTotalPoint = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colWhse = new DevExpress.XtraGrid.Columns.GridColumn();
            this.txtWhase = new DevExpress.XtraEditors.ComboBoxEdit();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).BeginInit();
            this.panelControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.txtDateTo.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDateTo.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDateFrom.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDateFrom.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtAuditTeam.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtWhase.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.MaxItemId = 55;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // barBtnDel
            // 
            this.barBtnDel.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // barBtnOpen
            // 
            this.barBtnOpen.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // barBtnAddNew
            // 
            this.barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.Location = new System.Drawing.Point(0, 65);
            this.objListGridControl.Size = new System.Drawing.Size(1217, 329);
            // 
            // objListGridView
            // 
            this.objListGridView.Appearance.FooterPanel.Options.UseTextOptions = true;
            this.objListGridView.Appearance.FooterPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.objListGridView.Appearance.FooterPanel.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.objListGridView.Appearance.FooterPanel.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colWhse,
            this.colMaterialType,
            this.colDefect_Name,
            this.colDefect_Deduce_Points,
            this.colDefectEnglishName,
            this.colDefectChineseName,
            this.colSupplier_Code,
            this.colAuditTeam,
            this.colConverter,
            this.colDefectTotalPoint});
            this.objListGridView.GroupSummary.AddRange(new DevExpress.XtraGrid.GridSummaryItem[] {
            new DevExpress.XtraGrid.GridGroupSummaryItem(DevExpress.Data.SummaryItemType.Sum, "DefectPoint", null, "    Defect Ttl  Points: {0:n0}")});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            this.objListGridView.OptionsView.ShowFooter = true;
            this.objListGridView.CustomDrawGroupRow += new DevExpress.XtraGrid.Views.Base.RowObjectCustomDrawEventHandler(this.objListGridView_CustomDrawGroupRow);
            this.objListGridView.CustomSummaryCalculate += new DevExpress.Data.CustomSummaryEventHandler(this.objListGridView_CustomSummaryCalculate);
            // 
            // colMaterialType
            // 
            this.colMaterialType.Caption = "Material Type";
            this.colMaterialType.FieldName = "MaterialType";
            this.colMaterialType.Name = "colMaterialType";
            this.colMaterialType.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colMaterialType.Visible = true;
            this.colMaterialType.VisibleIndex = 1;
            this.colMaterialType.Width = 95;
            // 
            // colDefect_Name
            // 
            this.colDefect_Name.Caption = "DefectCode";
            this.colDefect_Name.FieldName = "DefectCode";
            this.colDefect_Name.Name = "colDefect_Name";
            this.colDefect_Name.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colDefect_Name.Visible = true;
            this.colDefect_Name.VisibleIndex = 5;
            this.colDefect_Name.Width = 93;
            // 
            // colDefect_Deduce_Points
            // 
            this.colDefect_Deduce_Points.Caption = "Defect Point";
            this.colDefect_Deduce_Points.FieldName = "DefectPoint";
            this.colDefect_Deduce_Points.Name = "colDefect_Deduce_Points";
            this.colDefect_Deduce_Points.OptionsColumn.AllowGroup = DevExpress.Utils.DefaultBoolean.False;
            this.colDefect_Deduce_Points.Visible = true;
            this.colDefect_Deduce_Points.VisibleIndex = 6;
            this.colDefect_Deduce_Points.Width = 91;
            // 
            // colDefectEnglishName
            // 
            this.colDefectEnglishName.Caption = "Defect English Name";
            this.colDefectEnglishName.FieldName = "DefectEnglishName";
            this.colDefectEnglishName.Name = "colDefectEnglishName";
            this.colDefectEnglishName.Visible = true;
            this.colDefectEnglishName.VisibleIndex = 8;
            this.colDefectEnglishName.Width = 186;
            // 
            // colDefectChineseName
            // 
            this.colDefectChineseName.Caption = "Defect Chinese Name";
            this.colDefectChineseName.FieldName = "DefectChineseName";
            this.colDefectChineseName.Name = "colDefectChineseName";
            this.colDefectChineseName.Visible = true;
            this.colDefectChineseName.VisibleIndex = 9;
            this.colDefectChineseName.Width = 231;
            // 
            // panelControl1
            // 
            this.panelControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.panelControl1.Controls.Add(this.txtWhase);
            this.panelControl1.Controls.Add(this.labelControl2);
            this.panelControl1.Controls.Add(this.btnQuery);
            this.panelControl1.Controls.Add(this.txtDateTo);
            this.panelControl1.Controls.Add(this.txtDateFrom);
            this.panelControl1.Controls.Add(this.txtAuditTeam);
            this.panelControl1.Controls.Add(this.labelControl5);
            this.panelControl1.Controls.Add(this.lblStockInDate);
            this.panelControl1.Controls.Add(this.labelControl1);
            this.panelControl1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelControl1.Location = new System.Drawing.Point(0, 27);
            this.panelControl1.Name = "panelControl1";
            this.panelControl1.Size = new System.Drawing.Size(1217, 38);
            this.PlatetoolTipController.SetSuperTip(this.panelControl1, null);
            this.panelControl1.TabIndex = 6;
            // 
            // btnQuery
            // 
            this.btnQuery.Location = new System.Drawing.Point(709, 6);
            this.btnQuery.Name = "btnQuery";
            this.btnQuery.Size = new System.Drawing.Size(75, 23);
            this.btnQuery.TabIndex = 10;
            this.btnQuery.Text = "Query";
            this.btnQuery.Click += new System.EventHandler(this.btnQuery_Click);
            // 
            // txtDateTo
            // 
            this.txtDateTo.EditValue = null;
            this.txtDateTo.Location = new System.Drawing.Point(590, 8);
            this.txtDateTo.Name = "txtDateTo";
            this.txtDateTo.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtDateTo.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.txtDateTo.Size = new System.Drawing.Size(106, 21);
            this.txtDateTo.TabIndex = 9;
            // 
            // txtDateFrom
            // 
            this.txtDateFrom.EditValue = null;
            this.txtDateFrom.Location = new System.Drawing.Point(450, 8);
            this.txtDateFrom.Name = "txtDateFrom";
            this.txtDateFrom.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtDateFrom.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.txtDateFrom.Size = new System.Drawing.Size(106, 21);
            this.txtDateFrom.TabIndex = 8;
            // 
            // txtAuditTeam
            // 
            this.txtAuditTeam.Location = new System.Drawing.Point(239, 8);
            this.txtAuditTeam.Name = "txtAuditTeam";
            this.txtAuditTeam.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtAuditTeam.Properties.Items.AddRange(new object[] {
            "",
            "1",
            "2",
            "3",
            "4",
            "5"});
            this.txtAuditTeam.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.txtAuditTeam.Size = new System.Drawing.Size(106, 21);
            this.txtAuditTeam.TabIndex = 7;
            // 
            // labelControl5
            // 
            this.labelControl5.Location = new System.Drawing.Point(566, 11);
            this.labelControl5.Name = "labelControl5";
            this.labelControl5.Size = new System.Drawing.Size(15, 14);
            this.labelControl5.TabIndex = 0;
            this.labelControl5.Text = "To";
            // 
            // lblStockInDate
            // 
            this.lblStockInDate.Location = new System.Drawing.Point(363, 11);
            this.lblStockInDate.Name = "lblStockInDate";
            this.lblStockInDate.Size = new System.Drawing.Size(71, 14);
            this.lblStockInDate.TabIndex = 0;
            this.lblStockInDate.Text = "id Create dd:";
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(165, 11);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(68, 14);
            this.labelControl1.TabIndex = 0;
            this.labelControl1.Text = "Audit Team:";
            // 
            // colSupplier_Code
            // 
            this.colSupplier_Code.Caption = "Supp Code";
            this.colSupplier_Code.FieldName = "SuppCode";
            this.colSupplier_Code.Name = "colSupplier_Code";
            this.colSupplier_Code.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colSupplier_Code.Visible = true;
            this.colSupplier_Code.VisibleIndex = 3;
            this.colSupplier_Code.Width = 82;
            // 
            // colAuditTeam
            // 
            this.colAuditTeam.Caption = "Audit Team";
            this.colAuditTeam.FieldName = "AuditTeam";
            this.colAuditTeam.Name = "colAuditTeam";
            this.colAuditTeam.Visible = true;
            this.colAuditTeam.VisibleIndex = 2;
            this.colAuditTeam.Width = 86;
            // 
            // colConverter
            // 
            this.colConverter.Caption = "Converter";
            this.colConverter.FieldName = "Converter";
            this.colConverter.Name = "colConverter";
            this.colConverter.Visible = true;
            this.colConverter.VisibleIndex = 4;
            this.colConverter.Width = 76;
            // 
            // colDefectTotalPoint
            // 
            this.colDefectTotalPoint.Caption = "Defect Ttl Pts by cde";
            this.colDefectTotalPoint.FieldName = "DefectTotalPoint";
            this.colDefectTotalPoint.Name = "colDefectTotalPoint";
            this.colDefectTotalPoint.Visible = true;
            this.colDefectTotalPoint.VisibleIndex = 7;
            this.colDefectTotalPoint.Width = 140;
            // 
            // colWhse
            // 
            this.colWhse.Caption = "Whse";
            this.colWhse.FieldName = "Whse";
            this.colWhse.Name = "colWhse";
            this.colWhse.Visible = true;
            this.colWhse.VisibleIndex = 0;
            // 
            // txtWhase
            // 
            this.txtWhase.AllowDrop = true;
            this.txtWhase.Location = new System.Drawing.Point(53, 8);
            this.txtWhase.Name = "txtWhase";
            this.txtWhase.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtWhase.Properties.Items.AddRange(new object[] {
            "",
            "RM",
            "RT"});
            this.txtWhase.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.txtWhase.Size = new System.Drawing.Size(106, 21);
            this.txtWhase.TabIndex = 12;
            // 
            // labelControl2
            // 
            this.labelControl2.Location = new System.Drawing.Point(13, 11);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(35, 14);
            this.labelControl2.TabIndex = 11;
            this.labelControl2.Text = "Whse:";
            // 
            // MaterialTypeDefectOrderForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.panelControl1);
            this.Name = "MaterialTypeDefectOrderForm";
            this.Size = new System.Drawing.Size(1217, 394);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.panelControl1, 0);
            this.Controls.SetChildIndex(this.objListGridControl, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).EndInit();
            this.panelControl1.ResumeLayout(false);
            this.panelControl1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.txtDateTo.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDateTo.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDateFrom.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDateFrom.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtAuditTeam.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtWhase.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colMaterialType;
        private DevExpress.XtraGrid.Columns.GridColumn colDefect_Name;
        private DevExpress.XtraGrid.Columns.GridColumn colDefect_Deduce_Points;
        private DevExpress.XtraGrid.Columns.GridColumn colDefectEnglishName;
        private DevExpress.XtraGrid.Columns.GridColumn colDefectChineseName;
        private DevExpress.XtraEditors.PanelControl panelControl1;
        private DevExpress.XtraEditors.LabelControl labelControl5;
        private DevExpress.XtraEditors.LabelControl lblStockInDate;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraGrid.Columns.GridColumn colSupplier_Code;
        private DevExpress.XtraGrid.Columns.GridColumn colAuditTeam;
        private DevExpress.XtraGrid.Columns.GridColumn colConverter;
        private DevExpress.XtraEditors.ComboBoxEdit txtAuditTeam;
        private DevExpress.XtraEditors.DateEdit txtDateFrom;
        private DevExpress.XtraEditors.SimpleButton btnQuery;
        private DevExpress.XtraEditors.DateEdit txtDateTo;
        private DevExpress.XtraGrid.Columns.GridColumn colDefectTotalPoint;
        private DevExpress.XtraGrid.Columns.GridColumn colWhse;
        private DevExpress.XtraEditors.ComboBoxEdit txtWhase;
        private DevExpress.XtraEditors.LabelControl labelControl2;
    }
}
