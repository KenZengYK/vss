namespace PH.MobileQC.UI.CustQC
{
    partial class CustQC_DetailListForm
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
            this.colDefectCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDefectQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDefectPicture1URL = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDefectPicture2URL = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colRemark = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDefectNameCN = new DevExpress.XtraGrid.Columns.GridColumn();
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
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.MobileQC.BO.CustQC_Detail);
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.Size = new System.Drawing.Size(1042, 354);
            // 
            // objListGridView
            // 
            this.objListGridView.ColumnPanelRowHeight = 36;
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colDefectCode,
            this.colDefectQty,
            this.colDefectPicture1URL,
            this.colDefectPicture2URL,
            this.colRemark,
            this.colDefectNameCN});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // colDefectCode
            // 
            this.colDefectCode.Caption = "Defect Code\r\n次點編號";
            this.colDefectCode.FieldName = "DefectCode";
            this.colDefectCode.Name = "colDefectCode";
            this.colDefectCode.Visible = true;
            this.colDefectCode.VisibleIndex = 0;
            this.colDefectCode.Width = 92;
            // 
            // colDefectQty
            // 
            this.colDefectQty.Caption = "Defect Qty\r\n次點個數";
            this.colDefectQty.FieldName = "DefectQty";
            this.colDefectQty.Name = "colDefectQty";
            this.colDefectQty.Visible = true;
            this.colDefectQty.VisibleIndex = 2;
            this.colDefectQty.Width = 85;
            // 
            // colDefectPicture1URL
            // 
            this.colDefectPicture1URL.Caption = "DefectPicture1URL\r\n圖片1";
            this.colDefectPicture1URL.FieldName = "DefectPicture1URL";
            this.colDefectPicture1URL.Name = "colDefectPicture1URL";
            this.colDefectPicture1URL.Visible = true;
            this.colDefectPicture1URL.VisibleIndex = 3;
            this.colDefectPicture1URL.Width = 127;
            // 
            // colDefectPicture2URL
            // 
            this.colDefectPicture2URL.Caption = "DefectPicture2URL\r\n圖片2";
            this.colDefectPicture2URL.FieldName = "DefectPicture2URL";
            this.colDefectPicture2URL.Name = "colDefectPicture2URL";
            this.colDefectPicture2URL.Visible = true;
            this.colDefectPicture2URL.VisibleIndex = 4;
            this.colDefectPicture2URL.Width = 130;
            // 
            // colRemark
            // 
            this.colRemark.Caption = "Remark\r\n備注";
            this.colRemark.FieldName = "Remark";
            this.colRemark.Name = "colRemark";
            this.colRemark.Visible = true;
            this.colRemark.VisibleIndex = 5;
            this.colRemark.Width = 216;
            // 
            // colDefectNameCN
            // 
            this.colDefectNameCN.Caption = "Defect Name\r\n次點名稱";
            this.colDefectNameCN.FieldName = "DefectNameCN";
            this.colDefectNameCN.Name = "colDefectNameCN";
            this.colDefectNameCN.Visible = true;
            this.colDefectNameCN.VisibleIndex = 1;
            this.colDefectNameCN.Width = 382;
            // 
            // CustQC_DetailListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "CustQC_DetailListForm";
            this.Size = new System.Drawing.Size(1042, 381);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colDefectCode;
        private DevExpress.XtraGrid.Columns.GridColumn colDefectQty;
        private DevExpress.XtraGrid.Columns.GridColumn colDefectPicture1URL;
        private DevExpress.XtraGrid.Columns.GridColumn colDefectPicture2URL;
        private DevExpress.XtraGrid.Columns.GridColumn colRemark;
        private DevExpress.XtraGrid.Columns.GridColumn colDefectNameCN;
    }
}
