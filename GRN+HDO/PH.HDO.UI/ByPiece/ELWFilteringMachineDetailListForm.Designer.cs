namespace PH.HDO.UI.ByPiece
{
    partial class ELWFilteringMachineDetailListForm
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
            this.components = new System.ComponentModel.Container();
            this.xrOID = new DevExpress.XtraGrid.Columns.GridColumn();
            this.xrHeaderOID = new DevExpress.XtraGrid.Columns.GridColumn();
            this.xrEmpID = new DevExpress.XtraGrid.Columns.GridColumn();
            this.xrEmpName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemLookUpEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemLookUpEdit();
            this.BsEmp = new System.Windows.Forms.BindingSource(this.components);
            this.xrQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.xrRemark = new DevExpress.XtraGrid.Columns.GridColumn();
            this.xrSAH = new DevExpress.XtraGrid.Columns.GridColumn();
            this.xrWorkTime = new DevExpress.XtraGrid.Columns.GridColumn();
            this.xrAmount = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemLookUpEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BsEmp)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.PHGDB2.BO.ByPiece_ELWFilteringMachineDetail);
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemLookUpEdit1});
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.xrOID,
            this.xrHeaderOID,
            this.xrEmpName,
            this.xrEmpID,
            this.xrQty,
            this.xrRemark,
            this.xrSAH,
            this.xrWorkTime,
            this.xrAmount});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            this.objListGridView.OptionsView.ShowFooter = true;
            // 
            // xrOID
            // 
            this.xrOID.Caption = "OID";
            this.xrOID.FieldName = "OID";
            this.xrOID.Name = "xrOID";
            this.xrOID.Width = 33;
            // 
            // xrHeaderOID
            // 
            this.xrHeaderOID.Caption = "HeaderOID";
            this.xrHeaderOID.FieldName = "HeaderOID";
            this.xrHeaderOID.Name = "xrHeaderOID";
            this.xrHeaderOID.Width = 72;
            // 
            // xrEmpID
            // 
            this.xrEmpID.Caption = "Emp ID";
            this.xrEmpID.FieldName = "EmpID";
            this.xrEmpID.Name = "xrEmpID";
            this.xrEmpID.OptionsColumn.AllowEdit = false;
            this.xrEmpID.OptionsColumn.AllowFocus = false;
            this.xrEmpID.Visible = true;
            this.xrEmpID.VisibleIndex = 1;
            this.xrEmpID.Width = 62;
            // 
            // xrEmpName
            // 
            this.xrEmpName.Caption = "Emp Name";
            this.xrEmpName.ColumnEdit = this.repositoryItemLookUpEdit1;
            this.xrEmpName.FieldName = "EmpName";
            this.xrEmpName.Name = "xrEmpName";
            this.xrEmpName.Visible = true;
            this.xrEmpName.VisibleIndex = 0;
            this.xrEmpName.Width = 81;
            // 
            // repositoryItemLookUpEdit1
            // 
            this.repositoryItemLookUpEdit1.AllowNullInput = DevExpress.Utils.DefaultBoolean.True;
            this.repositoryItemLookUpEdit1.AutoHeight = false;
            this.repositoryItemLookUpEdit1.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemLookUpEdit1.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("EmpName", "Name", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("EmpId", "ID", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None)});
            this.repositoryItemLookUpEdit1.DataSource = this.BsEmp;
            this.repositoryItemLookUpEdit1.DisplayFormat.FormatString = "string";
            this.repositoryItemLookUpEdit1.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Custom;
            this.repositoryItemLookUpEdit1.DisplayMember = "EmpName";
            this.repositoryItemLookUpEdit1.Name = "repositoryItemLookUpEdit1";
            this.repositoryItemLookUpEdit1.NullText = "";
            this.repositoryItemLookUpEdit1.ValueMember = "EmpName";
            // 
            // BsEmp
            // 
            this.BsEmp.DataSource = typeof(PH.PHGDB2.BO.ByPiece_Employee);
            // 
            // xrQty
            // 
            this.xrQty.Caption = "Qty";
            this.xrQty.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.xrQty.FieldName = "Qty";
            this.xrQty.Name = "xrQty";
            this.xrQty.SummaryItem.DisplayFormat = "∫œ”ã£∫{0}";
            this.xrQty.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Sum;
            this.xrQty.Visible = true;
            this.xrQty.VisibleIndex = 2;
            this.xrQty.Width = 80;
            // 
            // xrRemark
            // 
            this.xrRemark.Caption = "Remark";
            this.xrRemark.FieldName = "Remark";
            this.xrRemark.Name = "xrRemark";
            this.xrRemark.Visible = true;
            this.xrRemark.VisibleIndex = 6;
            this.xrRemark.Width = 62;
            // 
            // xrSAH
            // 
            this.xrSAH.Caption = "SAH";
            this.xrSAH.FieldName = "ELWSAH";
            this.xrSAH.Name = "xrSAH";
            this.xrSAH.OptionsColumn.AllowEdit = false;
            this.xrSAH.OptionsColumn.AllowFocus = false;
            this.xrSAH.Visible = true;
            this.xrSAH.VisibleIndex = 3;
            this.xrSAH.Width = 45;
            // 
            // xrWorkTime
            // 
            this.xrWorkTime.Caption = "Work Time";
            this.xrWorkTime.FieldName = "WorkTime";
            this.xrWorkTime.Name = "xrWorkTime";
            this.xrWorkTime.OptionsColumn.AllowEdit = false;
            this.xrWorkTime.OptionsColumn.AllowFocus = false;
            this.xrWorkTime.Visible = true;
            this.xrWorkTime.VisibleIndex = 4;
            this.xrWorkTime.Width = 82;
            // 
            // xrAmount
            // 
            this.xrAmount.Caption = "Amount";
            this.xrAmount.FieldName = "Amount";
            this.xrAmount.Name = "xrAmount";
            this.xrAmount.OptionsColumn.AllowEdit = false;
            this.xrAmount.OptionsColumn.AllowFocus = false;
            this.xrAmount.Visible = true;
            this.xrAmount.VisibleIndex = 5;
            this.xrAmount.Width = 66;
            // 
            // ELWFilteringMachineDetailListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "ELWFilteringMachineDetailListForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemLookUpEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BsEmp)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn xrOID;
        private DevExpress.XtraGrid.Columns.GridColumn xrHeaderOID;
        private DevExpress.XtraGrid.Columns.GridColumn xrEmpID;
        private DevExpress.XtraGrid.Columns.GridColumn xrEmpName;
        private DevExpress.XtraGrid.Columns.GridColumn xrQty;
        private DevExpress.XtraGrid.Columns.GridColumn xrRemark;
        private DevExpress.XtraEditors.Repository.RepositoryItemLookUpEdit repositoryItemLookUpEdit1;
        private DevExpress.XtraGrid.Columns.GridColumn xrSAH;
        private DevExpress.XtraGrid.Columns.GridColumn xrWorkTime;
        private DevExpress.XtraGrid.Columns.GridColumn xrAmount;
        public System.Windows.Forms.BindingSource BsEmp;
    }
}