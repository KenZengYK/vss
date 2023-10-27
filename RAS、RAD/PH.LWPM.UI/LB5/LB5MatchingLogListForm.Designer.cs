namespace PH.LWPM.UI.LB5
{
    partial class LB5MatchingLogListForm
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
            this.colOperationSN = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colOperationCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colOperationName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colOriginalWF = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCurrentWF = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colFlag = new DevExpress.XtraGrid.Columns.GridColumn();
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
            this.BindingSource.DataSource = typeof(PH.LWPM.BO.LB5MatchingLog);
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colOperationSN,
            this.colOperationCode,
            this.colOperationName,
            this.colOriginalWF,
            this.colCurrentWF,
            this.colFlag});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // colOperationSN
            // 
            this.colOperationSN.Caption = "Ops SN";
            this.colOperationSN.FieldName = "OperationSN";
            this.colOperationSN.Name = "colOperationSN";
            this.colOperationSN.Visible = true;
            this.colOperationSN.VisibleIndex = 0;
            this.colOperationSN.Width = 64;
            // 
            // colOperationCode
            // 
            this.colOperationCode.Caption = "Ops Code";
            this.colOperationCode.FieldName = "OperationCode";
            this.colOperationCode.Name = "colOperationCode";
            this.colOperationCode.Visible = true;
            this.colOperationCode.VisibleIndex = 1;
            // 
            // colOperationName
            // 
            this.colOperationName.Caption = "Ops Name";
            this.colOperationName.FieldName = "OperationName";
            this.colOperationName.Name = "colOperationName";
            this.colOperationName.Visible = true;
            this.colOperationName.VisibleIndex = 2;
            this.colOperationName.Width = 205;
            // 
            // colOriginalWF
            // 
            this.colOriginalWF.Caption = "Original WF";
            this.colOriginalWF.FieldName = "OriginalWF";
            this.colOriginalWF.Name = "colOriginalWF";
            this.colOriginalWF.Visible = true;
            this.colOriginalWF.VisibleIndex = 3;
            this.colOriginalWF.Width = 121;
            // 
            // colCurrentWF
            // 
            this.colCurrentWF.Caption = "Current WF";
            this.colCurrentWF.FieldName = "CurrentWF";
            this.colCurrentWF.Name = "colCurrentWF";
            this.colCurrentWF.Visible = true;
            this.colCurrentWF.VisibleIndex = 4;
            this.colCurrentWF.Width = 119;
            // 
            // colFlag
            // 
            this.colFlag.Caption = "Flag";
            this.colFlag.FieldName = "Flag";
            this.colFlag.Name = "colFlag";
            this.colFlag.Visible = true;
            this.colFlag.VisibleIndex = 13;
            // 
            // LB5MatchingLogListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "LB5MatchingLogListForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colOperationSN;
        private DevExpress.XtraGrid.Columns.GridColumn colOperationCode;
        private DevExpress.XtraGrid.Columns.GridColumn colOperationName;
        private DevExpress.XtraGrid.Columns.GridColumn colOriginalWF;
        private DevExpress.XtraGrid.Columns.GridColumn colCurrentWF;
        private DevExpress.XtraGrid.Columns.GridColumn colFlag;
    }
}
