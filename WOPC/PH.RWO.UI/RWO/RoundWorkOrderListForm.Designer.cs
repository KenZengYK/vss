namespace PH.RWO.UI
{
    partial class RoundWorkOrderListForm
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
            this.rWO_RoundWorkOrderGridControl = new DevExpress.XtraGrid.GridControl();
            this.gridView1 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.btnRWOReport = new DevExpress.XtraBars.BarButtonItem();
            this.colVersion = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colAmendDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colWOReviseDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colRWOCreateDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colColorCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colFactoryWorkStartDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCustStyleNO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPHStyleNO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colRoundNos = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colWorkOrderNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSalesOrderLine = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colRoundNos1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPHStyleNO1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCustStyleNO1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colColorCode1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colRWOCreateDate1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colWOReviseDate1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colAmendDate1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colVersion1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colFactoryWorkStartDate1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colLineWorkStartDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.btnApplyRatio = new DevExpress.XtraBars.BarButtonItem();
            this.barSubItem1 = new DevExpress.XtraBars.BarSubItem();
            this.btnRWOKBReport = new DevExpress.XtraBars.BarButtonItem();
            this.colProductFactory = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rWO_RoundWorkOrderGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.btnRWOReport,
            this.btnApplyRatio,
            this.barSubItem1,
            this.btnRWOKBReport});
            this.objbarManager.MaxItemId = 15;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.PaintStyle, this.btnRWOReport, "", true, true, true, 0, null, DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph)});
            // 
            // barBtnAddNew
            // 
            this.barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.Size = new System.Drawing.Size(934, 483);
            // 
            // objListGridView
            // 
            this.objListGridView.Appearance.Row.BorderColor = System.Drawing.Color.White;
            this.objListGridView.Appearance.Row.Options.UseBorderColor = true;
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colRoundNos1,
            this.colColorCode1,
            this.colPHStyleNO1,
            this.colCustStyleNO1,
            this.colRWOCreateDate1,
            this.colWOReviseDate1,
            this.colAmendDate1,
            this.colVersion1,
            this.colFactoryWorkStartDate1,
            this.colLineWorkStartDate,
            this.colProductFactory});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.RWO.BO.RoundWorkOrder);
            // 
            // rWO_RoundWorkOrderGridControl
            // 
            this.rWO_RoundWorkOrderGridControl.Dock = System.Windows.Forms.DockStyle.Fill;
            this.rWO_RoundWorkOrderGridControl.EmbeddedNavigator.Name = "";
            this.rWO_RoundWorkOrderGridControl.Location = new System.Drawing.Point(0, 27);
            this.rWO_RoundWorkOrderGridControl.MainView = this.gridView1;
            this.rWO_RoundWorkOrderGridControl.Name = "rWO_RoundWorkOrderGridControl";
            this.rWO_RoundWorkOrderGridControl.Size = new System.Drawing.Size(934, 483);
            this.rWO_RoundWorkOrderGridControl.TabIndex = 1;
            this.rWO_RoundWorkOrderGridControl.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView1});
            // 
            // gridView1
            // 
            this.gridView1.GridControl = this.rWO_RoundWorkOrderGridControl;
            this.gridView1.Name = "gridView1";
            this.gridView1.OptionsView.ColumnAutoWidth = false;
            // 
            // btnRWOReport
            // 
            this.btnRWOReport.Caption = "CWO Report";
            this.btnRWOReport.Glyph = global::PH.RWO.UI.Properties.Resources.printrwo;
            this.btnRWOReport.Id = 11;
            this.btnRWOReport.Name = "btnRWOReport";
            this.btnRWOReport.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnRWOReport_ItemClick);
            // 
            // colVersion
            // 
            this.colVersion.Caption = "Version";
            this.colVersion.FieldName = "Version";
            this.colVersion.Name = "colVersion";
            this.colVersion.Visible = true;
            this.colVersion.VisibleIndex = 0;
            // 
            // colAmendDate
            // 
            this.colAmendDate.Caption = "AmendDate";
            this.colAmendDate.FieldName = "AmendDate";
            this.colAmendDate.Name = "colAmendDate";
            this.colAmendDate.Visible = true;
            this.colAmendDate.VisibleIndex = 0;
            // 
            // colWOReviseDate
            // 
            this.colWOReviseDate.Caption = "WOReviseDate";
            this.colWOReviseDate.FieldName = "WOReviseDate";
            this.colWOReviseDate.Name = "colWOReviseDate";
            this.colWOReviseDate.Visible = true;
            this.colWOReviseDate.VisibleIndex = 0;
            // 
            // colRWOCreateDate
            // 
            this.colRWOCreateDate.Caption = "RWOCreateDate";
            this.colRWOCreateDate.FieldName = "RWOCreateDate";
            this.colRWOCreateDate.Name = "colRWOCreateDate";
            this.colRWOCreateDate.Visible = true;
            this.colRWOCreateDate.VisibleIndex = 0;
            // 
            // colColorCode
            // 
            this.colColorCode.Caption = "ColorCode";
            this.colColorCode.FieldName = "ColorCode";
            this.colColorCode.Name = "colColorCode";
            this.colColorCode.Visible = true;
            this.colColorCode.VisibleIndex = 0;
            // 
            // colFactoryWorkStartDate
            // 
            this.colFactoryWorkStartDate.Caption = "FactoryWorkStartDate";
            this.colFactoryWorkStartDate.FieldName = "FactoryWorkStartDate";
            this.colFactoryWorkStartDate.Name = "colFactoryWorkStartDate";
            this.colFactoryWorkStartDate.Visible = true;
            this.colFactoryWorkStartDate.VisibleIndex = 5;
            // 
            // colCustStyleNO
            // 
            this.colCustStyleNO.Caption = "CustStyleNO";
            this.colCustStyleNO.FieldName = "CustStyleNO";
            this.colCustStyleNO.Name = "colCustStyleNO";
            this.colCustStyleNO.OptionsColumn.ReadOnly = true;
            this.colCustStyleNO.Visible = true;
            this.colCustStyleNO.VisibleIndex = 0;
            // 
            // colPHStyleNO
            // 
            this.colPHStyleNO.Caption = "PHStyleNO";
            this.colPHStyleNO.FieldName = "PHStyleNO";
            this.colPHStyleNO.Name = "colPHStyleNO";
            this.colPHStyleNO.OptionsColumn.ReadOnly = true;
            this.colPHStyleNO.Visible = true;
            this.colPHStyleNO.VisibleIndex = 0;
            // 
            // colRoundNos
            // 
            this.colRoundNos.Caption = "RoundNo";
            this.colRoundNos.FieldName = "RoundNos";
            this.colRoundNos.Name = "colRoundNos";
            this.colRoundNos.OptionsColumn.ReadOnly = true;
            this.colRoundNos.Visible = true;
            this.colRoundNos.VisibleIndex = 0;
            // 
            // colWorkOrderNo
            // 
            this.colWorkOrderNo.Caption = "WorkOrderNo";
            this.colWorkOrderNo.FieldName = "WorkOrderNo";
            this.colWorkOrderNo.Name = "colWorkOrderNo";
            this.colWorkOrderNo.Visible = true;
            this.colWorkOrderNo.VisibleIndex = 3;
            // 
            // colSalesOrderLine
            // 
            this.colSalesOrderLine.Caption = "SalesOrderLine";
            this.colSalesOrderLine.FieldName = "SalesOrderLine";
            this.colSalesOrderLine.Name = "colSalesOrderLine";
            this.colSalesOrderLine.Visible = true;
            this.colSalesOrderLine.VisibleIndex = 3;
            // 
            // colRoundNos1
            // 
            this.colRoundNos1.Caption = "Cop WO No.";
            this.colRoundNos1.FieldName = "RoundNos";
            this.colRoundNos1.Name = "colRoundNos1";
            this.colRoundNos1.OptionsColumn.ReadOnly = true;
            this.colRoundNos1.Visible = true;
            this.colRoundNos1.VisibleIndex = 0;
            this.colRoundNos1.Width = 98;
            // 
            // colPHStyleNO1
            // 
            this.colPHStyleNO1.Caption = "PH Style No.";
            this.colPHStyleNO1.FieldName = "PHStyleNO";
            this.colPHStyleNO1.Name = "colPHStyleNO1";
            this.colPHStyleNO1.OptionsColumn.ReadOnly = true;
            this.colPHStyleNO1.Visible = true;
            this.colPHStyleNO1.VisibleIndex = 2;
            this.colPHStyleNO1.Width = 102;
            // 
            // colCustStyleNO1
            // 
            this.colCustStyleNO1.Caption = "Cust Style No.";
            this.colCustStyleNO1.FieldName = "CustStyleNO";
            this.colCustStyleNO1.Name = "colCustStyleNO1";
            this.colCustStyleNO1.OptionsColumn.ReadOnly = true;
            this.colCustStyleNO1.Visible = true;
            this.colCustStyleNO1.VisibleIndex = 3;
            this.colCustStyleNO1.Width = 102;
            // 
            // colColorCode1
            // 
            this.colColorCode1.Caption = "Clr Code";
            this.colColorCode1.FieldName = "ColorCode";
            this.colColorCode1.Name = "colColorCode1";
            this.colColorCode1.Visible = true;
            this.colColorCode1.VisibleIndex = 1;
            // 
            // colRWOCreateDate1
            // 
            this.colRWOCreateDate1.Caption = "Create Date";
            this.colRWOCreateDate1.FieldName = "RWOCreateDate";
            this.colRWOCreateDate1.Name = "colRWOCreateDate1";
            this.colRWOCreateDate1.Visible = true;
            this.colRWOCreateDate1.VisibleIndex = 4;
            this.colRWOCreateDate1.Width = 108;
            // 
            // colWOReviseDate1
            // 
            this.colWOReviseDate1.Caption = "Revise Date";
            this.colWOReviseDate1.FieldName = "WOReviseDate";
            this.colWOReviseDate1.Name = "colWOReviseDate1";
            this.colWOReviseDate1.Visible = true;
            this.colWOReviseDate1.VisibleIndex = 5;
            this.colWOReviseDate1.Width = 116;
            // 
            // colAmendDate1
            // 
            this.colAmendDate1.Caption = "Amend Date";
            this.colAmendDate1.FieldName = "AmendDate";
            this.colAmendDate1.Name = "colAmendDate1";
            this.colAmendDate1.Visible = true;
            this.colAmendDate1.VisibleIndex = 6;
            this.colAmendDate1.Width = 97;
            // 
            // colVersion1
            // 
            this.colVersion1.Caption = "Version";
            this.colVersion1.FieldName = "Version";
            this.colVersion1.Name = "colVersion1";
            this.colVersion1.Visible = true;
            this.colVersion1.VisibleIndex = 7;
            // 
            // colFactoryWorkStartDate1
            // 
            this.colFactoryWorkStartDate1.Caption = "Factory Work Start Date";
            this.colFactoryWorkStartDate1.FieldName = "FactoryWorkStartDate";
            this.colFactoryWorkStartDate1.Name = "colFactoryWorkStartDate1";
            this.colFactoryWorkStartDate1.Visible = true;
            this.colFactoryWorkStartDate1.VisibleIndex = 8;
            this.colFactoryWorkStartDate1.Width = 152;
            // 
            // colLineWorkStartDate
            // 
            this.colLineWorkStartDate.Caption = "Line Work Start Date";
            this.colLineWorkStartDate.FieldName = "LineWorkStartDate_SpecialFactory";
            this.colLineWorkStartDate.Name = "colLineWorkStartDate";
            this.colLineWorkStartDate.Visible = true;
            this.colLineWorkStartDate.VisibleIndex = 9;
            this.colLineWorkStartDate.Width = 136;
            // 
            // btnApplyRatio
            // 
            this.btnApplyRatio.Caption = "Apply Ratio";
            this.btnApplyRatio.Id = 12;
            this.btnApplyRatio.Name = "btnApplyRatio";
            // 
            // barSubItem1
            // 
            this.barSubItem1.Caption = "Report";
            this.barSubItem1.Glyph = global::PH.RWO.UI.Properties.Resources.printrwo;
            this.barSubItem1.Id = 13;
            this.barSubItem1.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.btnRWOKBReport)});
            this.barSubItem1.Name = "barSubItem1";
            // 
            // btnRWOKBReport
            // 
            this.btnRWOKBReport.Caption = "RWO Report (KB)";
            this.btnRWOKBReport.Glyph = global::PH.RWO.UI.Properties.Resources.printrwo;
            this.btnRWOKBReport.Id = 14;
            this.btnRWOKBReport.Name = "btnRWOKBReport";
            this.btnRWOKBReport.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnRWOKBReport_ItemClick);
            // 
            // colProductFactory
            // 
            this.colProductFactory.Caption = "ProductFactory";
            this.colProductFactory.FieldName = "ProductFactory";
            this.colProductFactory.Name = "colProductFactory";
            this.colProductFactory.Visible = true;
            this.colProductFactory.VisibleIndex = 10;
            // 
            // RoundWorkOrderListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.rWO_RoundWorkOrderGridControl);
            this.Name = "RoundWorkOrderListForm";
            this.Size = new System.Drawing.Size(934, 510);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.rWO_RoundWorkOrderGridControl, 0);
            this.Controls.SetChildIndex(this.objListGridControl, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rWO_RoundWorkOrderGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion



        private DevExpress.XtraGrid.GridControl rWO_RoundWorkOrderGridControl;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView1;
        private DevExpress.XtraBars.BarButtonItem btnRWOReport;
        private DevExpress.XtraGrid.Columns.GridColumn colVersion;
        private DevExpress.XtraGrid.Columns.GridColumn colAmendDate;
        private DevExpress.XtraGrid.Columns.GridColumn colWOReviseDate;
        private DevExpress.XtraGrid.Columns.GridColumn colRWOCreateDate;
        private DevExpress.XtraGrid.Columns.GridColumn colColorCode;
        private DevExpress.XtraGrid.Columns.GridColumn colFactoryWorkStartDate;
        private DevExpress.XtraGrid.Columns.GridColumn colCustStyleNO;
        private DevExpress.XtraGrid.Columns.GridColumn colPHStyleNO;
        private DevExpress.XtraGrid.Columns.GridColumn colRoundNos;
        private DevExpress.XtraGrid.Columns.GridColumn colWorkOrderNo;
        private DevExpress.XtraGrid.Columns.GridColumn colSalesOrderLine;
        private DevExpress.XtraGrid.Columns.GridColumn colRoundNos1;
        private DevExpress.XtraGrid.Columns.GridColumn colPHStyleNO1;
        private DevExpress.XtraGrid.Columns.GridColumn colCustStyleNO1;
        private DevExpress.XtraGrid.Columns.GridColumn colColorCode1;
        private DevExpress.XtraGrid.Columns.GridColumn colRWOCreateDate1;
        private DevExpress.XtraGrid.Columns.GridColumn colWOReviseDate1;
        private DevExpress.XtraGrid.Columns.GridColumn colAmendDate1;
        private DevExpress.XtraGrid.Columns.GridColumn colVersion1;
        private DevExpress.XtraGrid.Columns.GridColumn colFactoryWorkStartDate1;
        private DevExpress.XtraGrid.Columns.GridColumn colLineWorkStartDate;
        private DevExpress.XtraBars.BarButtonItem btnApplyRatio;
        private DevExpress.XtraBars.BarSubItem barSubItem1;
        private DevExpress.XtraBars.BarButtonItem btnRWOKBReport;
        private DevExpress.XtraGrid.Columns.GridColumn colProductFactory;
        
    }
}