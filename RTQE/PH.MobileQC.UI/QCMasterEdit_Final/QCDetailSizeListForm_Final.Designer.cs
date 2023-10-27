namespace PH.MobileQC.UI.QCMasterEdit
{
    partial class QCDetailSizeListForm_Final
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
            this.colProductSeq = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colArtNO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colStyleNO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSizeCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPosition = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colStandard = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colUom = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colAuditValue = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSizeWindageShowText = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSizeWindage = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colAuditResult = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTolerence = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colMethod = new DevExpress.XtraGrid.Columns.GridColumn();
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
            // barBtnDel
            // 
            this.barBtnDel.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // barBtnAddNew
            // 
            this.barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.MobileQC.BO.QC_Detail_SizeAudit_Final);
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colProductSeq,
            this.colArtNO,
            this.colStyleNO,
            this.colSizeCode,
            this.colPosition,
            this.colStandard,
            this.colUom,
            this.colAuditValue,
            this.colSizeWindageShowText,
            this.colSizeWindage,
            this.colAuditResult,
            this.colTolerence,
            this.colMethod});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // colProductSeq
            // 
            this.colProductSeq.Caption = "ProductSeq";
            this.colProductSeq.FieldName = "ProductSeq";
            this.colProductSeq.Name = "colProductSeq";
            this.colProductSeq.Visible = true;
            this.colProductSeq.VisibleIndex = 0;
            // 
            // colArtNO
            // 
            this.colArtNO.Caption = "ArtNO";
            this.colArtNO.FieldName = "ArtNO";
            this.colArtNO.Name = "colArtNO";
            this.colArtNO.Visible = true;
            this.colArtNO.VisibleIndex = 1;
            // 
            // colStyleNO
            // 
            this.colStyleNO.Caption = "StyleNO";
            this.colStyleNO.FieldName = "StyleNO";
            this.colStyleNO.Name = "colStyleNO";
            this.colStyleNO.Visible = true;
            this.colStyleNO.VisibleIndex = 2;
            // 
            // colSizeCode
            // 
            this.colSizeCode.Caption = "SizeCode";
            this.colSizeCode.FieldName = "SizeCode";
            this.colSizeCode.Name = "colSizeCode";
            this.colSizeCode.Visible = true;
            this.colSizeCode.VisibleIndex = 3;
            // 
            // colPosition
            // 
            this.colPosition.Caption = "Position";
            this.colPosition.FieldName = "Position";
            this.colPosition.Name = "colPosition";
            this.colPosition.Visible = true;
            this.colPosition.VisibleIndex = 4;
            // 
            // colStandard
            // 
            this.colStandard.Caption = "Standard";
            this.colStandard.FieldName = "Standard";
            this.colStandard.Name = "colStandard";
            this.colStandard.Visible = true;
            this.colStandard.VisibleIndex = 5;
            // 
            // colUom
            // 
            this.colUom.Caption = "Uom";
            this.colUom.FieldName = "Uom";
            this.colUom.Name = "colUom";
            this.colUom.Visible = true;
            this.colUom.VisibleIndex = 6;
            // 
            // colAuditValue
            // 
            this.colAuditValue.Caption = "AuditValue";
            this.colAuditValue.FieldName = "AuditValue";
            this.colAuditValue.Name = "colAuditValue";
            this.colAuditValue.Visible = true;
            this.colAuditValue.VisibleIndex = 7;
            // 
            // colSizeWindageShowText
            // 
            this.colSizeWindageShowText.Caption = "SizeWindageShowText";
            this.colSizeWindageShowText.FieldName = "SizeWindageShowText";
            this.colSizeWindageShowText.Name = "colSizeWindageShowText";
            this.colSizeWindageShowText.Visible = true;
            this.colSizeWindageShowText.VisibleIndex = 8;
            // 
            // colSizeWindage
            // 
            this.colSizeWindage.Caption = "SizeWindage";
            this.colSizeWindage.FieldName = "SizeWindage";
            this.colSizeWindage.Name = "colSizeWindage";
            this.colSizeWindage.Visible = true;
            this.colSizeWindage.VisibleIndex = 9;
            // 
            // colAuditResult
            // 
            this.colAuditResult.Caption = "AuditResult";
            this.colAuditResult.FieldName = "AuditResult";
            this.colAuditResult.Name = "colAuditResult";
            this.colAuditResult.Visible = true;
            this.colAuditResult.VisibleIndex = 10;
            // 
            // colTolerence
            // 
            this.colTolerence.Caption = "Tolerence";
            this.colTolerence.FieldName = "Tolerence";
            this.colTolerence.Name = "colTolerence";
            this.colTolerence.Visible = true;
            this.colTolerence.VisibleIndex = 11;
            // 
            // colMethod
            // 
            this.colMethod.Caption = "Method";
            this.colMethod.FieldName = "Method";
            this.colMethod.Name = "colMethod";
            this.colMethod.Visible = true;
            this.colMethod.VisibleIndex = 12;
            // 
            // QCDetailSizeListForm_Final
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "QCDetailSizeListForm_Final";
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colProductSeq;
        private DevExpress.XtraGrid.Columns.GridColumn colArtNO;
        private DevExpress.XtraGrid.Columns.GridColumn colStyleNO;
        private DevExpress.XtraGrid.Columns.GridColumn colSizeCode;
        private DevExpress.XtraGrid.Columns.GridColumn colPosition;
        private DevExpress.XtraGrid.Columns.GridColumn colStandard;
        private DevExpress.XtraGrid.Columns.GridColumn colUom;
        private DevExpress.XtraGrid.Columns.GridColumn colAuditValue;
        private DevExpress.XtraGrid.Columns.GridColumn colSizeWindageShowText;
        private DevExpress.XtraGrid.Columns.GridColumn colSizeWindage;
        private DevExpress.XtraGrid.Columns.GridColumn colAuditResult;
        private DevExpress.XtraGrid.Columns.GridColumn colTolerence;
        private DevExpress.XtraGrid.Columns.GridColumn colMethod;
    }
}