namespace PH.POPC.UI
{
    partial class POLadDipNoPOListForm
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
            this.barButtonItem1 = new DevExpress.XtraBars.BarButtonItem();
            this.repositoryItemMemoExEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemMemoExEdit();
            this.colID = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colEndCustomer = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colProjectNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colReceiveDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCompleteDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSupplier = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSuppRef = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colColorCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colColorName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCustColor = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colColorShade = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSubmitNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colLadDipNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colOperateDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemComboBox2 = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.colRemark = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCreateDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colBrandName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCustStyle = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCustColorName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colComments = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPONO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colItemCode = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemMemoExEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox2)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.barButtonItem1});
            this.objbarManager.MaxItemId = 37;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.POPC.BO.POLadDipNoPO);
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.Location = new System.Drawing.Point(0, 27);
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemMemoExEdit1,
            this.repositoryItemComboBox2});
            this.objListGridControl.Size = new System.Drawing.Size(1377, 470);
            // 
            // objListGridView
            // 
            this.objListGridView.Appearance.HeaderPanel.Options.UseTextOptions = true;
            this.objListGridView.Appearance.HeaderPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.objListGridView.Appearance.HeaderPanel.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.objListGridView.ColumnPanelRowHeight = 50;
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colID,
            this.colEndCustomer,
            this.colProjectNo,
            this.colReceiveDate,
            this.colCompleteDate,
            this.colSupplier,
            this.colSuppRef,
            this.colColorCode,
            this.colColorName,
            this.colCustColor,
            this.colColorShade,
            this.colSubmitNo,
            this.colLadDipNo,
            this.colOperateDate,
            this.colRemark,
            this.colCreateDate,
            this.colBrandName,
            this.colCustStyle,
            this.colCustColorName,
            this.colComments,
            this.colPONO,
            this.colItemCode});
            this.objListGridView.CustomizationFormBounds = new System.Drawing.Rectangle(1058, 271, 208, 407);
            this.objListGridView.OptionsBehavior.AllowIncrementalSearch = true;
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // barButtonItem1
            // 
            this.barButtonItem1.Caption = "Save And Return";
            this.barButtonItem1.Id = 36;
            this.barButtonItem1.Name = "barButtonItem1";
            // 
            // repositoryItemMemoExEdit1
            // 
            this.repositoryItemMemoExEdit1.AutoHeight = false;
            this.repositoryItemMemoExEdit1.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemMemoExEdit1.Name = "repositoryItemMemoExEdit1";
            // 
            // colID
            // 
            this.colID.Caption = "ID";
            this.colID.FieldName = "ID";
            this.colID.Name = "colID";
            // 
            // colEndCustomer
            // 
            this.colEndCustomer.Caption = "End Cust Code";
            this.colEndCustomer.FieldName = "EndCustomer";
            this.colEndCustomer.Name = "colEndCustomer";
            this.colEndCustomer.Visible = true;
            this.colEndCustomer.VisibleIndex = 0;
            this.colEndCustomer.Width = 69;
            // 
            // colProjectNo
            // 
            this.colProjectNo.Caption = "Our Proj. No.";
            this.colProjectNo.FieldName = "ProjectNo";
            this.colProjectNo.Name = "colProjectNo";
            this.colProjectNo.Visible = true;
            this.colProjectNo.VisibleIndex = 15;
            this.colProjectNo.Width = 82;
            // 
            // colReceiveDate
            // 
            this.colReceiveDate.Caption = "Received dd";
            this.colReceiveDate.FieldName = "ReceiveDate";
            this.colReceiveDate.Name = "colReceiveDate";
            this.colReceiveDate.Visible = true;
            this.colReceiveDate.VisibleIndex = 5;
            // 
            // colCompleteDate
            // 
            this.colCompleteDate.Caption = "App/Rej dd";
            this.colCompleteDate.FieldName = "CompleteDate";
            this.colCompleteDate.Name = "colCompleteDate";
            this.colCompleteDate.Visible = true;
            this.colCompleteDate.VisibleIndex = 11;
            this.colCompleteDate.Width = 81;
            // 
            // colSupplier
            // 
            this.colSupplier.Caption = "Supp Code";
            this.colSupplier.FieldName = "Supplier";
            this.colSupplier.Name = "colSupplier";
            this.colSupplier.Visible = true;
            this.colSupplier.VisibleIndex = 6;
            this.colSupplier.Width = 64;
            // 
            // colSuppRef
            // 
            this.colSuppRef.Caption = "Supp Item Ref";
            this.colSuppRef.FieldName = "SuppRef";
            this.colSuppRef.Name = "colSuppRef";
            this.colSuppRef.Visible = true;
            this.colSuppRef.VisibleIndex = 7;
            // 
            // colColorCode
            // 
            this.colColorCode.Caption = "Our Item Clr Code";
            this.colColorCode.FieldName = "ColorCode";
            this.colColorCode.Name = "colColorCode";
            this.colColorCode.Visible = true;
            this.colColorCode.VisibleIndex = 17;
            this.colColorCode.Width = 79;
            // 
            // colColorName
            // 
            this.colColorName.Caption = "Supp Item Color Name";
            this.colColorName.FieldName = "ColorName";
            this.colColorName.Name = "colColorName";
            this.colColorName.Width = 85;
            // 
            // colCustColor
            // 
            this.colCustColor.Caption = "Gmt Clr Code (if any)";
            this.colCustColor.FieldName = "CustColor";
            this.colCustColor.Name = "colCustColor";
            this.colCustColor.Visible = true;
            this.colCustColor.VisibleIndex = 4;
            this.colCustColor.Width = 61;
            // 
            // colColorShade
            // 
            this.colColorShade.Caption = "Supp Item Clr Shade (if any)";
            this.colColorShade.FieldName = "ColorShade";
            this.colColorShade.Name = "colColorShade";
            this.colColorShade.Visible = true;
            this.colColorShade.VisibleIndex = 8;
            this.colColorShade.Width = 79;
            // 
            // colSubmitNo
            // 
            this.colSubmitNo.Caption = "Rcpt Seq No";
            this.colSubmitNo.FieldName = "SubmitNo";
            this.colSubmitNo.Name = "colSubmitNo";
            this.colSubmitNo.Visible = true;
            this.colSubmitNo.VisibleIndex = 9;
            this.colSubmitNo.Width = 51;
            // 
            // colLadDipNo
            // 
            this.colLadDipNo.Caption = "Lab Dip No.";
            this.colLadDipNo.FieldName = "LadDipNo";
            this.colLadDipNo.Name = "colLadDipNo";
            this.colLadDipNo.Visible = true;
            this.colLadDipNo.VisibleIndex = 10;
            // 
            // colOperateDate
            // 
            this.colOperateDate.Caption = "App./Rej. Status";
            this.colOperateDate.ColumnEdit = this.repositoryItemComboBox2;
            this.colOperateDate.FieldName = "Status";
            this.colOperateDate.Name = "colOperateDate";
            this.colOperateDate.Visible = true;
            this.colOperateDate.VisibleIndex = 12;
            // 
            // repositoryItemComboBox2
            // 
            this.repositoryItemComboBox2.AutoHeight = false;
            this.repositoryItemComboBox2.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemComboBox2.Items.AddRange(new object[] {
            "App.",
            "Rej.",
            "Wait",
            "Pending"});
            this.repositoryItemComboBox2.Name = "repositoryItemComboBox2";
            // 
            // colRemark
            // 
            this.colRemark.Caption = "End Cust Comment";
            this.colRemark.ColumnEdit = this.repositoryItemMemoExEdit1;
            this.colRemark.FieldName = "Remark";
            this.colRemark.Name = "colRemark";
            this.colRemark.OptionsColumn.AllowIncrementalSearch = false;
            this.colRemark.Visible = true;
            this.colRemark.VisibleIndex = 14;
            // 
            // colCreateDate
            // 
            this.colCreateDate.Caption = "CreateDate";
            this.colCreateDate.FieldName = "CreateDate";
            this.colCreateDate.Name = "colCreateDate";
            // 
            // colBrandName
            // 
            this.colBrandName.Caption = "Brand Name";
            this.colBrandName.FieldName = "BrandName";
            this.colBrandName.Name = "colBrandName";
            this.colBrandName.Visible = true;
            this.colBrandName.VisibleIndex = 1;
            // 
            // colCustStyle
            // 
            this.colCustStyle.Caption = "End Cust Style";
            this.colCustStyle.FieldName = "CustStyle";
            this.colCustStyle.Name = "colCustStyle";
            this.colCustStyle.Visible = true;
            this.colCustStyle.VisibleIndex = 2;
            // 
            // colCustColorName
            // 
            this.colCustColorName.Caption = "End Cust Clr Name";
            this.colCustColorName.FieldName = "CustColorName";
            this.colCustColorName.Name = "colCustColorName";
            this.colCustColorName.Visible = true;
            this.colCustColorName.VisibleIndex = 3;
            // 
            // colComments
            // 
            this.colComments.Caption = "Our Colorist Comment";
            this.colComments.ColumnEdit = this.repositoryItemMemoExEdit1;
            this.colComments.FieldName = "Comments";
            this.colComments.Name = "colComments";
            this.colComments.Visible = true;
            this.colComments.VisibleIndex = 13;
            // 
            // colPONO
            // 
            this.colPONO.Caption = "Our PO No.";
            this.colPONO.FieldName = "PONO";
            this.colPONO.Name = "colPONO";
            this.colPONO.Visible = true;
            this.colPONO.VisibleIndex = 16;
            // 
            // colItemCode
            // 
            this.colItemCode.Caption = "Our Item Code";
            this.colItemCode.FieldName = "ItemCode";
            this.colItemCode.Name = "colItemCode";
            // 
            // POLadDipNoPOListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "POLadDipNoPOListForm";
            this.Size = new System.Drawing.Size(1377, 497);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemMemoExEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox2)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraBars.BarButtonItem barButtonItem1;
        private DevExpress.XtraEditors.Repository.RepositoryItemMemoExEdit repositoryItemMemoExEdit1;
        private DevExpress.XtraGrid.Columns.GridColumn colID;
        private DevExpress.XtraGrid.Columns.GridColumn colEndCustomer;
        private DevExpress.XtraGrid.Columns.GridColumn colProjectNo;
        private DevExpress.XtraGrid.Columns.GridColumn colReceiveDate;
        private DevExpress.XtraGrid.Columns.GridColumn colCompleteDate;
        private DevExpress.XtraGrid.Columns.GridColumn colSupplier;
        private DevExpress.XtraGrid.Columns.GridColumn colSuppRef;
        private DevExpress.XtraGrid.Columns.GridColumn colColorCode;
        private DevExpress.XtraGrid.Columns.GridColumn colColorName;
        private DevExpress.XtraGrid.Columns.GridColumn colCustColor;
        private DevExpress.XtraGrid.Columns.GridColumn colColorShade;
        private DevExpress.XtraGrid.Columns.GridColumn colSubmitNo;
        private DevExpress.XtraGrid.Columns.GridColumn colLadDipNo;
        private DevExpress.XtraGrid.Columns.GridColumn colOperateDate;
        private DevExpress.XtraGrid.Columns.GridColumn colRemark;
        private DevExpress.XtraGrid.Columns.GridColumn colCreateDate;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox repositoryItemComboBox2;
        private DevExpress.XtraGrid.Columns.GridColumn colBrandName;
        private DevExpress.XtraGrid.Columns.GridColumn colCustStyle;
        private DevExpress.XtraGrid.Columns.GridColumn colCustColorName;
        private DevExpress.XtraGrid.Columns.GridColumn colComments;
        private DevExpress.XtraGrid.Columns.GridColumn colPONO;
        private DevExpress.XtraGrid.Columns.GridColumn colItemCode;
    }
}
