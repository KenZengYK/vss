namespace PH.FabricInspection.UI.Main.ActionLog
{
    partial class ActionLogCompleteReasonListForm
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
            this.colSortID = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colRemark = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colRemarkCN = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colRemarkBD = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.Size = new System.Drawing.Size(1189, 272);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colSortID,
            this.colRemark,
            this.colRemarkCN,
            this.colRemarkBD});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.FabricInspection.BO.ActionLogCompleteReason);
            // 
            // colSortID
            // 
            this.colSortID.Caption = "Code";
            this.colSortID.FieldName = "SeqNo";
            this.colSortID.Name = "colSortID";
            this.colSortID.Visible = true;
            this.colSortID.VisibleIndex = 0;
            // 
            // colRemark
            // 
            this.colRemark.Caption = "Action log completed reason (EN)";
            this.colRemark.FieldName = "Remark";
            this.colRemark.Name = "colRemark";
            this.colRemark.Visible = true;
            this.colRemark.VisibleIndex = 1;
            this.colRemark.Width = 383;
            // 
            // colRemarkCN
            // 
            this.colRemarkCN.Caption = "Action log completed reason (CN)";
            this.colRemarkCN.FieldName = "RemarkCN";
            this.colRemarkCN.Name = "colRemarkCN";
            this.colRemarkCN.Visible = true;
            this.colRemarkCN.VisibleIndex = 2;
            this.colRemarkCN.Width = 286;
            // 
            // colRemarkBD
            // 
            this.colRemarkBD.AppearanceCell.Font = new System.Drawing.Font("SutonnyOMJ", 9F);
            this.colRemarkBD.AppearanceCell.Options.UseFont = true;
            this.colRemarkBD.Caption = "Action log completed reason (BD)";
            this.colRemarkBD.FieldName = "RemarkBD";
            this.colRemarkBD.Name = "colRemarkBD";
            this.colRemarkBD.Visible = true;
            this.colRemarkBD.VisibleIndex = 3;
            this.colRemarkBD.Width = 356;
            // 
            // ActionLogCompleteReasonListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "ActionLogCompleteReasonListForm";
            this.Size = new System.Drawing.Size(1189, 299);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colSortID;
        private DevExpress.XtraGrid.Columns.GridColumn colRemark;
        private DevExpress.XtraGrid.Columns.GridColumn colRemarkCN;
        private DevExpress.XtraGrid.Columns.GridColumn colRemarkBD;
    }
}
