namespace PH.BasicInfo.UI.MasterDB
{
    partial class TransitPointAreaListForm
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
            this.colSeqNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTransitPoint_Area = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colAreaNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCargoReceiving = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTransitMode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTimeFrame = new DevExpress.XtraGrid.Columns.GridColumn();
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
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colSeqNo,
            this.colTransitPoint_Area,
            this.colAreaNo,
            this.colCargoReceiving,
            this.colTransitMode,
            this.colTimeFrame});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.BasicInfo.BO.TransitPointArea);
            // 
            // colSeqNo
            // 
            this.colSeqNo.Caption = "Seq No.";
            this.colSeqNo.FieldName = "SeqNo";
            this.colSeqNo.Name = "colSeqNo";
            this.colSeqNo.Visible = true;
            this.colSeqNo.VisibleIndex = 0;
            this.colSeqNo.Width = 66;
            // 
            // colTransitPoint_Area
            // 
            this.colTransitPoint_Area.Caption = "Transit Point";
            this.colTransitPoint_Area.FieldName = "TransitPoint_Area";
            this.colTransitPoint_Area.Name = "colTransitPoint_Area";
            this.colTransitPoint_Area.Visible = true;
            this.colTransitPoint_Area.VisibleIndex = 1;
            this.colTransitPoint_Area.Width = 235;
            // 
            // colAreaNo
            // 
            this.colAreaNo.Caption = "Area No.";
            this.colAreaNo.FieldName = "AreaNo";
            this.colAreaNo.Name = "colAreaNo";
            this.colAreaNo.Visible = true;
            this.colAreaNo.VisibleIndex = 2;
            this.colAreaNo.Width = 70;
            // 
            // colCargoReceiving
            // 
            this.colCargoReceiving.Caption = "Cargo Receiving & Consolidation";
            this.colCargoReceiving.FieldName = "CargoReceiving";
            this.colCargoReceiving.Name = "colCargoReceiving";
            this.colCargoReceiving.Visible = true;
            this.colCargoReceiving.VisibleIndex = 3;
            this.colCargoReceiving.Width = 195;
            // 
            // colTransitMode
            // 
            this.colTransitMode.Caption = "Transit Mode";
            this.colTransitMode.FieldName = "TransitMode";
            this.colTransitMode.Name = "colTransitMode";
            this.colTransitMode.Visible = true;
            this.colTransitMode.VisibleIndex = 4;
            this.colTransitMode.Width = 105;
            // 
            // colTimeFrame
            // 
            this.colTimeFrame.Caption = "Time Frame";
            this.colTimeFrame.FieldName = "TimeFrame";
            this.colTimeFrame.Name = "colTimeFrame";
            this.colTimeFrame.Visible = true;
            this.colTimeFrame.VisibleIndex = 5;
            this.colTimeFrame.Width = 86;
            // 
            // TransitPointAreaListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "TransitPointAreaListForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colSeqNo;
        private DevExpress.XtraGrid.Columns.GridColumn colTransitPoint_Area;
        private DevExpress.XtraGrid.Columns.GridColumn colAreaNo;
        private DevExpress.XtraGrid.Columns.GridColumn colCargoReceiving;
        private DevExpress.XtraGrid.Columns.GridColumn colTransitMode;
        private DevExpress.XtraGrid.Columns.GridColumn colTimeFrame;





    }
}
