namespace PH.MobileQC.UI.CustQC
{
    partial class CustQCDetail_InterimListForm
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
            this.colOID = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDefectCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCriticalDefectQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colMarjorDefectQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colMinorDefectQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDefectPicture1URL = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDefectPicture2URL = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDefectNameCN = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDefectNameEN = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDefectNameBD = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.MaxItemId = 61;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.MobileQC.BO.CustQCDetail);
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.Size = new System.Drawing.Size(970, 369);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colOID,
            this.colDefectCode,
            this.colCriticalDefectQty,
            this.colMarjorDefectQty,
            this.colMinorDefectQty,
            this.colDefectPicture1URL,
            this.colDefectPicture2URL,
            this.colDefectNameCN,
            this.colDefectNameEN,
            this.colDefectNameBD});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // colOID
            // 
            this.colOID.Caption = "OID";
            this.colOID.FieldName = "OID";
            this.colOID.Name = "colOID";
            this.colOID.Width = 33;
            // 
            // colDefectCode
            // 
            this.colDefectCode.Caption = "Defect Code";
            this.colDefectCode.FieldName = "DefectCode";
            this.colDefectCode.Name = "colDefectCode";
            this.colDefectCode.Visible = true;
            this.colDefectCode.VisibleIndex = 0;
            this.colDefectCode.Width = 91;
            // 
            // colCriticalDefectQty
            // 
            this.colCriticalDefectQty.Caption = "Critical Defect Qty";
            this.colCriticalDefectQty.FieldName = "CriticalDefectQty";
            this.colCriticalDefectQty.Name = "colCriticalDefectQty";
            this.colCriticalDefectQty.Visible = true;
            this.colCriticalDefectQty.VisibleIndex = 4;
            this.colCriticalDefectQty.Width = 121;
            // 
            // colMarjorDefectQty
            // 
            this.colMarjorDefectQty.Caption = "Marjor Defect Qty";
            this.colMarjorDefectQty.FieldName = "MarjorDefectQty";
            this.colMarjorDefectQty.Name = "colMarjorDefectQty";
            this.colMarjorDefectQty.Visible = true;
            this.colMarjorDefectQty.VisibleIndex = 5;
            this.colMarjorDefectQty.Width = 120;
            // 
            // colMinorDefectQty
            // 
            this.colMinorDefectQty.Caption = "Minor Defect Qty";
            this.colMinorDefectQty.FieldName = "MinorDefectQty";
            this.colMinorDefectQty.Name = "colMinorDefectQty";
            this.colMinorDefectQty.Visible = true;
            this.colMinorDefectQty.VisibleIndex = 6;
            this.colMinorDefectQty.Width = 116;
            // 
            // colDefectPicture1URL
            // 
            this.colDefectPicture1URL.Caption = "Defect Picture 1";
            this.colDefectPicture1URL.FieldName = "DefectPicture1URL";
            this.colDefectPicture1URL.Name = "colDefectPicture1URL";
            this.colDefectPicture1URL.Visible = true;
            this.colDefectPicture1URL.VisibleIndex = 7;
            this.colDefectPicture1URL.Width = 112;
            // 
            // colDefectPicture2URL
            // 
            this.colDefectPicture2URL.Caption = "Defect Picture 2";
            this.colDefectPicture2URL.FieldName = "DefectPicture2URL";
            this.colDefectPicture2URL.Name = "colDefectPicture2URL";
            this.colDefectPicture2URL.Visible = true;
            this.colDefectPicture2URL.VisibleIndex = 8;
            this.colDefectPicture2URL.Width = 112;
            // 
            // colDefectNameCN
            // 
            this.colDefectNameCN.Caption = "Defect Name(CN)";
            this.colDefectNameCN.FieldName = "DefectNameCN";
            this.colDefectNameCN.Name = "colDefectNameCN";
            this.colDefectNameCN.Visible = true;
            this.colDefectNameCN.VisibleIndex = 1;
            this.colDefectNameCN.Width = 180;
            // 
            // colDefectNameEN
            // 
            this.colDefectNameEN.Caption = "Defect Name(EN)";
            this.colDefectNameEN.FieldName = "DefectNameEN";
            this.colDefectNameEN.Name = "colDefectNameEN";
            this.colDefectNameEN.Visible = true;
            this.colDefectNameEN.VisibleIndex = 2;
            this.colDefectNameEN.Width = 191;
            // 
            // colDefectNameBD
            // 
            this.colDefectNameBD.AppearanceCell.Font = new System.Drawing.Font("SutonnyOMJ", 9F);
            this.colDefectNameBD.AppearanceCell.Options.UseFont = true;
            this.colDefectNameBD.Caption = "Defect Name(BD)";
            this.colDefectNameBD.FieldName = "DefectNameBD";
            this.colDefectNameBD.Name = "colDefectNameBD";
            this.colDefectNameBD.Visible = true;
            this.colDefectNameBD.VisibleIndex = 3;
            this.colDefectNameBD.Width = 235;
            // 
            // CustQCDetailListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "CustQCDetailListForm";
            this.Size = new System.Drawing.Size(970, 396);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colOID;
        private DevExpress.XtraGrid.Columns.GridColumn colDefectCode;
        private DevExpress.XtraGrid.Columns.GridColumn colCriticalDefectQty;
        private DevExpress.XtraGrid.Columns.GridColumn colMarjorDefectQty;
        private DevExpress.XtraGrid.Columns.GridColumn colMinorDefectQty;
        private DevExpress.XtraGrid.Columns.GridColumn colDefectPicture1URL;
        private DevExpress.XtraGrid.Columns.GridColumn colDefectPicture2URL;
        private DevExpress.XtraGrid.Columns.GridColumn colDefectNameCN;
        private DevExpress.XtraGrid.Columns.GridColumn colDefectNameEN;
        private DevExpress.XtraGrid.Columns.GridColumn colDefectNameBD;
    }
}
