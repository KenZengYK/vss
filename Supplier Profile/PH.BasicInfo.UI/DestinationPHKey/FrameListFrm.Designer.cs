namespace PH.BasicInfo.UI.DestinationPHKey
{
    partial class FrameListFrm
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
            this.colPHFactory = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTimeFrame = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colRemark = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTransitMode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.ComboBoxTransitMode = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.colEndPoint = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.ComboBoxTransitMode)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.ComboBoxTransitMode});
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colPHFactory,
            this.colTransitMode,
            this.colTimeFrame,
            this.colRemark,
            this.colEndPoint});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            this.objListGridView.OptionsView.ShowGroupPanel = false;
            // 
            // colPHFactory
            // 
            this.colPHFactory.Caption = "Buyer Production Site";
            this.colPHFactory.FieldName = "PHFactory";
            this.colPHFactory.Name = "colPHFactory";
            this.colPHFactory.Visible = true;
            this.colPHFactory.VisibleIndex = 0;
            this.colPHFactory.Width = 162;
            // 
            // colTimeFrame
            // 
            this.colTimeFrame.Caption = "Time Frame 2";
            this.colTimeFrame.FieldName = "TimeFrame";
            this.colTimeFrame.Name = "colTimeFrame";
            this.colTimeFrame.Visible = true;
            this.colTimeFrame.VisibleIndex = 3;
            this.colTimeFrame.Width = 111;
            // 
            // colRemark
            // 
            this.colRemark.Caption = "Remark";
            this.colRemark.FieldName = "Remark";
            this.colRemark.Name = "colRemark";
            this.colRemark.Visible = true;
            this.colRemark.VisibleIndex = 4;
            this.colRemark.Width = 398;
            // 
            // colTransitMode
            // 
            this.colTransitMode.Caption = "Transit Mode";
            this.colTransitMode.FieldName = "TransitMode";
            this.colTransitMode.Name = "colTransitMode";
            this.colTransitMode.Visible = true;
            this.colTransitMode.VisibleIndex = 2;
            this.colTransitMode.Width = 110;
            // 
            // ComboBoxTransitMode
            // 
            this.ComboBoxTransitMode.AutoHeight = false;
            this.ComboBoxTransitMode.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.ComboBoxTransitMode.Name = "ComboBoxTransitMode";
            // 
            // colEndPoint
            // 
            this.colEndPoint.Caption = "End Point";
            this.colEndPoint.FieldName = "EndPoint";
            this.colEndPoint.Name = "colEndPoint";
            this.colEndPoint.Visible = true;
            this.colEndPoint.VisibleIndex = 1;
            // 
            // FrameListFrm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "FrameListFrm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.ComboBoxTransitMode)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colPHFactory;
        private DevExpress.XtraGrid.Columns.GridColumn colTimeFrame;
        private DevExpress.XtraGrid.Columns.GridColumn colRemark;
        private DevExpress.XtraGrid.Columns.GridColumn colTransitMode;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox ComboBoxTransitMode;
        private DevExpress.XtraGrid.Columns.GridColumn colEndPoint;
    }
}
