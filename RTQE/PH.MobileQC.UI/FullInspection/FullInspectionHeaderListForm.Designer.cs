namespace PH.MobileQC.UI.FullInspection
{
    partial class FullInspectionHeaderListForm
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
            this.colWorkShop = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colLine = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colProject = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colLWO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colColorCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colStyleNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colQNQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colInspectionConfirmBy = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colLineLeader = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSewingSupervisior = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colRemark = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colInspectionQtyShow = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colQNStartDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.barPrint = new DevExpress.XtraBars.BarButtonItem();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.barPrint});
            this.objbarManager.MaxItemId = 61;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.barPrint, true)});
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.Size = new System.Drawing.Size(979, 412);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colFactory,
            this.colWorkShop,
            this.colLine,
            this.colProject,
            this.colLWO,
            this.colQNQty,
            this.colInspectionQtyShow,
            this.colInspectionConfirmBy,
            this.colColorCode,
            this.colStyleNo,
            this.colQNStartDate,
            this.colLineLeader,
            this.colSewingSupervisior,
            this.colRemark});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.MobileQC.BO.FullInspectionHeader);
            // 
            // colFactory
            // 
            this.colFactory.Caption = "Fty";
            this.colFactory.FieldName = "Factory";
            this.colFactory.Name = "colFactory";
            this.colFactory.Visible = true;
            this.colFactory.VisibleIndex = 0;
            this.colFactory.Width = 42;
            // 
            // colWorkShop
            // 
            this.colWorkShop.Caption = "Ws";
            this.colWorkShop.FieldName = "WorkShop";
            this.colWorkShop.Name = "colWorkShop";
            this.colWorkShop.Visible = true;
            this.colWorkShop.VisibleIndex = 1;
            this.colWorkShop.Width = 45;
            // 
            // colLine
            // 
            this.colLine.Caption = "Line#";
            this.colLine.FieldName = "Line";
            this.colLine.Name = "colLine";
            this.colLine.Visible = true;
            this.colLine.VisibleIndex = 2;
            this.colLine.Width = 53;
            // 
            // colProject
            // 
            this.colProject.Caption = "Proj#";
            this.colProject.FieldName = "Project";
            this.colProject.Name = "colProject";
            this.colProject.Visible = true;
            this.colProject.VisibleIndex = 3;
            this.colProject.Width = 90;
            // 
            // colLWO
            // 
            this.colLWO.Caption = "QN#";
            this.colLWO.FieldName = "LWO";
            this.colLWO.Name = "colLWO";
            this.colLWO.Visible = true;
            this.colLWO.VisibleIndex = 4;
            this.colLWO.Width = 154;
            // 
            // colColorCode
            // 
            this.colColorCode.Caption = "Clr Cde";
            this.colColorCode.FieldName = "ColorCode";
            this.colColorCode.Name = "colColorCode";
            this.colColorCode.Visible = true;
            this.colColorCode.VisibleIndex = 8;
            // 
            // colStyleNo
            // 
            this.colStyleNo.Caption = "Style#";
            this.colStyleNo.FieldName = "StyleNo";
            this.colStyleNo.Name = "colStyleNo";
            this.colStyleNo.Visible = true;
            this.colStyleNo.VisibleIndex = 9;
            this.colStyleNo.Width = 99;
            // 
            // colQNQty
            // 
            this.colQNQty.Caption = "QN Qty";
            this.colQNQty.FieldName = "QNQty";
            this.colQNQty.Name = "colQNQty";
            this.colQNQty.Visible = true;
            this.colQNQty.VisibleIndex = 5;
            this.colQNQty.Width = 62;
            // 
            // colInspectionConfirmBy
            // 
            this.colInspectionConfirmBy.Caption = "Cmpl cfmd by";
            this.colInspectionConfirmBy.FieldName = "InspectionConfirmBy";
            this.colInspectionConfirmBy.Name = "colInspectionConfirmBy";
            this.colInspectionConfirmBy.Visible = true;
            this.colInspectionConfirmBy.VisibleIndex = 7;
            this.colInspectionConfirmBy.Width = 96;
            // 
            // colLineLeader
            // 
            this.colLineLeader.Caption = "Line Leader";
            this.colLineLeader.FieldName = "LineLeader";
            this.colLineLeader.Name = "colLineLeader";
            this.colLineLeader.Visible = true;
            this.colLineLeader.VisibleIndex = 11;
            this.colLineLeader.Width = 90;
            // 
            // colSewingSupervisior
            // 
            this.colSewingSupervisior.Caption = "Sewing Supervisior";
            this.colSewingSupervisior.FieldName = "SewingSupervisior";
            this.colSewingSupervisior.Name = "colSewingSupervisior";
            this.colSewingSupervisior.Visible = true;
            this.colSewingSupervisior.VisibleIndex = 12;
            this.colSewingSupervisior.Width = 124;
            // 
            // colRemark
            // 
            this.colRemark.Caption = "Remark";
            this.colRemark.FieldName = "Remark";
            this.colRemark.Name = "colRemark";
            // 
            // colInspectionQtyShow
            // 
            this.colInspectionQtyShow.Caption = "Insp. qty";
            this.colInspectionQtyShow.FieldName = "InspectionQtyShow";
            this.colInspectionQtyShow.Name = "colInspectionQtyShow";
            this.colInspectionQtyShow.Visible = true;
            this.colInspectionQtyShow.VisibleIndex = 6;
            // 
            // colQNStartDate
            // 
            this.colQNStartDate.Caption = "QN Start dd";
            this.colQNStartDate.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colQNStartDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colQNStartDate.FieldName = "QNStartDate";
            this.colQNStartDate.Name = "colQNStartDate";
            this.colQNStartDate.Visible = true;
            this.colQNStartDate.VisibleIndex = 10;
            this.colQNStartDate.Width = 88;
            // 
            // barPrint
            // 
            this.barPrint.Caption = "Print";
            this.barPrint.Id = 60;
            this.barPrint.Name = "barPrint";
            this.barPrint.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barPrint_ItemClick);
            // 
            // FullInspectionHeaderListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "FullInspectionHeaderListForm";
            this.Size = new System.Drawing.Size(979, 439);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colFactory;
        private DevExpress.XtraGrid.Columns.GridColumn colWorkShop;
        private DevExpress.XtraGrid.Columns.GridColumn colLine;
        private DevExpress.XtraGrid.Columns.GridColumn colProject;
        private DevExpress.XtraGrid.Columns.GridColumn colLWO;
        private DevExpress.XtraGrid.Columns.GridColumn colColorCode;
        private DevExpress.XtraGrid.Columns.GridColumn colStyleNo;
        private DevExpress.XtraGrid.Columns.GridColumn colQNQty;
        private DevExpress.XtraGrid.Columns.GridColumn colInspectionConfirmBy;
        private DevExpress.XtraGrid.Columns.GridColumn colLineLeader;
        private DevExpress.XtraGrid.Columns.GridColumn colSewingSupervisior;
        private DevExpress.XtraGrid.Columns.GridColumn colRemark;
        private DevExpress.XtraGrid.Columns.GridColumn colInspectionQtyShow;
        private DevExpress.XtraGrid.Columns.GridColumn colQNStartDate;
        private DevExpress.XtraBars.BarButtonItem barPrint;
    }
}
