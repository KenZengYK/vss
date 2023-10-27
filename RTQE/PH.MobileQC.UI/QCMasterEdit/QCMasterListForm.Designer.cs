namespace PH.MobileQC.UI
{
    partial class QCMasterListForm
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
            this.colLine = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colProject = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colWO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colRWO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colArtNO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colStyle = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colW_procedure = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colWorker = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colQC_time = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colQCCount = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colQCMan = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colQNNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colColor = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSize = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colWOc = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colOTN = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colFactory = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colWorkShop = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colProductTypeCode = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // barBtnAddNew
            // 
            this.barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // barBtnFind
            // 
            this.barBtnFind.Visibility = DevExpress.XtraBars.BarItemVisibility.Always;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.MobileQC.BO.QC_Master);
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.Size = new System.Drawing.Size(1602, 272);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colFactory,
            this.colWorkShop,
            this.colLine,
            this.colProject,
            this.colWO,
            this.colRWO,
            this.colArtNO,
            this.colStyle,
            this.colW_procedure,
            this.colWorker,
            this.colQC_time,
            this.colQCCount,
            this.colQCMan,
            this.colQNNo,
            this.colColor,
            this.colSize,
            this.colWOc,
            this.colOTN,
            this.colProductTypeCode});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // colLine
            // 
            this.colLine.Caption = "Line";
            this.colLine.FieldName = "Line";
            this.colLine.Name = "colLine";
            this.colLine.Visible = true;
            this.colLine.VisibleIndex = 2;
            // 
            // colProject
            // 
            this.colProject.Caption = "Project";
            this.colProject.FieldName = "Project";
            this.colProject.Name = "colProject";
            this.colProject.Visible = true;
            this.colProject.VisibleIndex = 3;
            // 
            // colWO
            // 
            this.colWO.Caption = "WO";
            this.colWO.FieldName = "WO";
            this.colWO.Name = "colWO";
            this.colWO.Visible = true;
            this.colWO.VisibleIndex = 4;
            // 
            // colRWO
            // 
            this.colRWO.Caption = "RWO";
            this.colRWO.FieldName = "RWO";
            this.colRWO.Name = "colRWO";
            this.colRWO.Visible = true;
            this.colRWO.VisibleIndex = 5;
            // 
            // colArtNO
            // 
            this.colArtNO.Caption = "ArtNO";
            this.colArtNO.FieldName = "ArtNO";
            this.colArtNO.Name = "colArtNO";
            this.colArtNO.Visible = true;
            this.colArtNO.VisibleIndex = 6;
            // 
            // colStyle
            // 
            this.colStyle.Caption = "Style";
            this.colStyle.FieldName = "Style";
            this.colStyle.Name = "colStyle";
            this.colStyle.Visible = true;
            this.colStyle.VisibleIndex = 7;
            // 
            // colW_procedure
            // 
            this.colW_procedure.Caption = "W_procedure";
            this.colW_procedure.FieldName = "W_procedure";
            this.colW_procedure.Name = "colW_procedure";
            this.colW_procedure.Visible = true;
            this.colW_procedure.VisibleIndex = 8;
            // 
            // colWorker
            // 
            this.colWorker.Caption = "Worker";
            this.colWorker.FieldName = "Worker";
            this.colWorker.Name = "colWorker";
            this.colWorker.Visible = true;
            this.colWorker.VisibleIndex = 9;
            // 
            // colQC_time
            // 
            this.colQC_time.Caption = "QC_time";
            this.colQC_time.FieldName = "QC_time";
            this.colQC_time.Name = "colQC_time";
            this.colQC_time.Visible = true;
            this.colQC_time.VisibleIndex = 10;
            // 
            // colQCCount
            // 
            this.colQCCount.Caption = "QCCount";
            this.colQCCount.FieldName = "QCCount";
            this.colQCCount.Name = "colQCCount";
            this.colQCCount.Visible = true;
            this.colQCCount.VisibleIndex = 11;
            // 
            // colQCMan
            // 
            this.colQCMan.Caption = "QCMan";
            this.colQCMan.FieldName = "QCMan";
            this.colQCMan.Name = "colQCMan";
            this.colQCMan.Visible = true;
            this.colQCMan.VisibleIndex = 12;
            // 
            // colQNNo
            // 
            this.colQNNo.Caption = "QNNo";
            this.colQNNo.FieldName = "QNNo";
            this.colQNNo.Name = "colQNNo";
            this.colQNNo.Visible = true;
            this.colQNNo.VisibleIndex = 13;
            // 
            // colColor
            // 
            this.colColor.Caption = "Color";
            this.colColor.FieldName = "Color";
            this.colColor.Name = "colColor";
            this.colColor.Visible = true;
            this.colColor.VisibleIndex = 14;
            // 
            // colSize
            // 
            this.colSize.Caption = "Size";
            this.colSize.FieldName = "Size";
            this.colSize.Name = "colSize";
            this.colSize.Visible = true;
            this.colSize.VisibleIndex = 15;
            // 
            // colWOc
            // 
            this.colWOc.Caption = "WOc";
            this.colWOc.FieldName = "WOc";
            this.colWOc.Name = "colWOc";
            this.colWOc.Visible = true;
            this.colWOc.VisibleIndex = 16;
            // 
            // colOTN
            // 
            this.colOTN.Caption = "OTN";
            this.colOTN.FieldName = "OTN";
            this.colOTN.Name = "colOTN";
            this.colOTN.Visible = true;
            this.colOTN.VisibleIndex = 17;
            // 
            // colFactory
            // 
            this.colFactory.Caption = "Factory";
            this.colFactory.FieldName = "Factory";
            this.colFactory.Name = "colFactory";
            this.colFactory.Visible = true;
            this.colFactory.VisibleIndex = 0;
            // 
            // colWorkShop
            // 
            this.colWorkShop.Caption = "WorkShop";
            this.colWorkShop.FieldName = "WorkShop";
            this.colWorkShop.Name = "colWorkShop";
            this.colWorkShop.Visible = true;
            this.colWorkShop.VisibleIndex = 1;
            // 
            // colProductTypeCode
            // 
            this.colProductTypeCode.Caption = "ProductTypeCode";
            this.colProductTypeCode.FieldName = "ProductTypeCode";
            this.colProductTypeCode.Name = "colProductTypeCode";
            this.colProductTypeCode.Visible = true;
            this.colProductTypeCode.VisibleIndex = 18;
            // 
            // QCMasterListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "QCMasterListForm";
            this.Size = new System.Drawing.Size(1602, 299);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colLine;
        private DevExpress.XtraGrid.Columns.GridColumn colProject;
        private DevExpress.XtraGrid.Columns.GridColumn colWO;
        private DevExpress.XtraGrid.Columns.GridColumn colRWO;
        private DevExpress.XtraGrid.Columns.GridColumn colArtNO;
        private DevExpress.XtraGrid.Columns.GridColumn colStyle;
        private DevExpress.XtraGrid.Columns.GridColumn colW_procedure;
        private DevExpress.XtraGrid.Columns.GridColumn colWorker;
        private DevExpress.XtraGrid.Columns.GridColumn colQC_time;
        private DevExpress.XtraGrid.Columns.GridColumn colQCCount;
        private DevExpress.XtraGrid.Columns.GridColumn colQCMan;
        private DevExpress.XtraGrid.Columns.GridColumn colQNNo;
        private DevExpress.XtraGrid.Columns.GridColumn colColor;
        private DevExpress.XtraGrid.Columns.GridColumn colSize;
        private DevExpress.XtraGrid.Columns.GridColumn colWOc;
        private DevExpress.XtraGrid.Columns.GridColumn colOTN;
        private DevExpress.XtraGrid.Columns.GridColumn colFactory;
        private DevExpress.XtraGrid.Columns.GridColumn colWorkShop;
        private DevExpress.XtraGrid.Columns.GridColumn colProductTypeCode;
    }
}