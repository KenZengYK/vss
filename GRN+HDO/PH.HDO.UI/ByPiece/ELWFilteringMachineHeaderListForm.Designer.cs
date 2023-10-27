namespace PH.HDO.UI.ByPiece
{
    partial class ELWFilteringMachineHeaderListForm
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
            this.xrOID = new DevExpress.XtraGrid.Columns.GridColumn();
            this.xrCreateDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.xrIDONo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.xrProjectNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.xrIssueQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.xrRemark = new DevExpress.XtraGrid.Columns.GridColumn();
            this.xrNumOfTime = new DevExpress.XtraGrid.Columns.GridColumn();
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
            this.BindingSource.DataSource = typeof(PH.PHGDB2.BO.ByPiece_ELWFilteringMachineHeader);
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.xrOID,
            this.xrCreateDate,
            this.xrIDONo,
            this.xrProjectNo,
            this.xrIssueQty,
            this.xrRemark,
            this.xrNumOfTime});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // xrOID
            // 
            this.xrOID.Caption = "OID";
            this.xrOID.FieldName = "OID";
            this.xrOID.Name = "xrOID";
            // 
            // xrCreateDate
            // 
            this.xrCreateDate.Caption = "Create Date";
            this.xrCreateDate.FieldName = "CreateDate";
            this.xrCreateDate.Name = "xrCreateDate";
            this.xrCreateDate.Visible = true;
            this.xrCreateDate.VisibleIndex = 0;
            // 
            // xrIDONo
            // 
            this.xrIDONo.Caption = "IDO No";
            this.xrIDONo.FieldName = "IDONo";
            this.xrIDONo.Name = "xrIDONo";
            this.xrIDONo.Visible = true;
            this.xrIDONo.VisibleIndex = 1;
            // 
            // xrProjectNo
            // 
            this.xrProjectNo.Caption = "Project No";
            this.xrProjectNo.FieldName = "ProjectNo";
            this.xrProjectNo.Name = "xrProjectNo";
            this.xrProjectNo.Visible = true;
            this.xrProjectNo.VisibleIndex = 2;
            // 
            // xrIssueQty
            // 
            this.xrIssueQty.Caption = "Issue Qty";
            this.xrIssueQty.FieldName = "IssueQty";
            this.xrIssueQty.Name = "xrIssueQty";
            this.xrIssueQty.Visible = true;
            this.xrIssueQty.VisibleIndex = 3;
            // 
            // xrRemark
            // 
            this.xrRemark.Caption = "Remark";
            this.xrRemark.FieldName = "Remark";
            this.xrRemark.Name = "xrRemark";
            this.xrRemark.Visible = true;
            this.xrRemark.VisibleIndex = 4;
            // 
            // xrNumOfTime
            // 
            this.xrNumOfTime.Caption = "ß^™C´Î”µ";
            this.xrNumOfTime.FieldName = "NumOfTime";
            this.xrNumOfTime.Name = "xrNumOfTime";
            this.xrNumOfTime.Visible = true;
            this.xrNumOfTime.VisibleIndex = 5;
            this.xrNumOfTime.Width = 70;
            // 
            // ELWFilteringMachineHeaderListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "ELWFilteringMachineHeaderListForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn xrOID;
        private DevExpress.XtraGrid.Columns.GridColumn xrCreateDate;
        private DevExpress.XtraGrid.Columns.GridColumn xrIDONo;
        private DevExpress.XtraGrid.Columns.GridColumn xrProjectNo;
        private DevExpress.XtraGrid.Columns.GridColumn xrIssueQty;
        private DevExpress.XtraGrid.Columns.GridColumn xrRemark;
        private DevExpress.XtraGrid.Columns.GridColumn xrNumOfTime;
    }
}