namespace PH.BasicInfo.UI.EndPointFrame
{
    partial class EPFParentListFrm
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
            this.colEndPointCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPHFactory = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTimeFrame = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colRemark = new DevExpress.XtraGrid.Columns.GridColumn();
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
            this.BindingSource.DataSource = typeof(PH.BasicInfo.BO.EndPointFactoryFrame);
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colEndPointCode,
            this.colPHFactory,
            this.colTimeFrame,
            this.colRemark});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // colEndPointCode
            // 
            this.colEndPointCode.Caption = "EndPointCode";
            this.colEndPointCode.FieldName = "EndPointCode";
            this.colEndPointCode.Name = "colEndPointCode";
            this.colEndPointCode.Visible = true;
            this.colEndPointCode.VisibleIndex = 0;
            // 
            // colPHFactory
            // 
            this.colPHFactory.Caption = "PHFactory";
            this.colPHFactory.FieldName = "PHFactory";
            this.colPHFactory.Name = "colPHFactory";
            this.colPHFactory.Visible = true;
            this.colPHFactory.VisibleIndex = 1;
            // 
            // colTimeFrame
            // 
            this.colTimeFrame.Caption = "TimeFrame";
            this.colTimeFrame.FieldName = "TimeFrame";
            this.colTimeFrame.Name = "colTimeFrame";
            this.colTimeFrame.Visible = true;
            this.colTimeFrame.VisibleIndex = 2;
            // 
            // colRemark
            // 
            this.colRemark.Caption = "Remark";
            this.colRemark.FieldName = "Remark";
            this.colRemark.Name = "colRemark";
            this.colRemark.Visible = true;
            this.colRemark.VisibleIndex = 3;
            // 
            // EPFParentListFrm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "EPFParentListFrm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colEndPointCode;
        private DevExpress.XtraGrid.Columns.GridColumn colPHFactory;
        private DevExpress.XtraGrid.Columns.GridColumn colTimeFrame;
        private DevExpress.XtraGrid.Columns.GridColumn colRemark;
    }
}
