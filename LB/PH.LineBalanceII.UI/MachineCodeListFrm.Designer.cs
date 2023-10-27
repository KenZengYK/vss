namespace PH.LineBalanceII.UI
{
    partial class MachineCodeListFrm
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
            DevExpress.XtraGrid.GridLevelNode gridLevelNode1 = new DevExpress.XtraGrid.GridLevelNode();
            DevExpress.XtraGrid.GridLevelNode gridLevelNode2 = new DevExpress.XtraGrid.GridLevelNode();
            this.colSeq = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colMcTypeCN = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colMcTypeEN = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colMcCode = new DevExpress.XtraGrid.Columns.GridColumn();
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
            this.BindingSource.DataSource = typeof(PH.LineBalanceII.BO.MachineCodeMatch);
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            gridLevelNode1.RelationName = "Level1";
            gridLevelNode2.RelationName = "CurrentBindingSource";
            this.objListGridControl.LevelTree.Nodes.AddRange(new DevExpress.XtraGrid.GridLevelNode[] {
            gridLevelNode1,
            gridLevelNode2});
            this.objListGridControl.Size = new System.Drawing.Size(803, 326);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colSeq,
            this.colMcTypeCN,
            this.colMcTypeEN,
            this.colMcCode});
            this.objListGridView.CustomizationFormBounds = new System.Drawing.Rectangle(637, 300, 208, 191);
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // colSeq
            // 
            this.colSeq.AppearanceCell.Options.UseTextOptions = true;
            this.colSeq.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colSeq.AppearanceHeader.Options.UseTextOptions = true;
            this.colSeq.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colSeq.Caption = "Seq";
            this.colSeq.FieldName = "Seq";
            this.colSeq.Name = "colSeq";
            this.colSeq.OptionsFilter.AllowFilter = false;
            this.colSeq.Visible = true;
            this.colSeq.VisibleIndex = 0;
            this.colSeq.Width = 83;
            // 
            // colMcTypeCN
            // 
            this.colMcTypeCN.AppearanceHeader.Options.UseTextOptions = true;
            this.colMcTypeCN.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colMcTypeCN.Caption = "Mc Type CN";
            this.colMcTypeCN.FieldName = "McTypeCN";
            this.colMcTypeCN.Name = "colMcTypeCN";
            this.colMcTypeCN.Visible = true;
            this.colMcTypeCN.VisibleIndex = 1;
            this.colMcTypeCN.Width = 111;
            // 
            // colMcTypeEN
            // 
            this.colMcTypeEN.AppearanceHeader.Options.UseTextOptions = true;
            this.colMcTypeEN.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colMcTypeEN.Caption = "Mc Type EN";
            this.colMcTypeEN.FieldName = "McTypeEN";
            this.colMcTypeEN.Name = "colMcTypeEN";
            this.colMcTypeEN.Visible = true;
            this.colMcTypeEN.VisibleIndex = 2;
            this.colMcTypeEN.Width = 114;
            // 
            // colMcCode
            // 
            this.colMcCode.AppearanceHeader.Options.UseTextOptions = true;
            this.colMcCode.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colMcCode.Caption = "Mc Code";
            this.colMcCode.FieldName = "McCode";
            this.colMcCode.Name = "colMcCode";
            this.colMcCode.Visible = true;
            this.colMcCode.VisibleIndex = 3;
            this.colMcCode.Width = 96;
            // 
            // MachineCodeListFrm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "MachineCodeListFrm";
            this.Size = new System.Drawing.Size(803, 352);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colSeq;
        private DevExpress.XtraGrid.Columns.GridColumn colMcTypeCN;
        private DevExpress.XtraGrid.Columns.GridColumn colMcTypeEN;
        private DevExpress.XtraGrid.Columns.GridColumn colMcCode;

    }
}
