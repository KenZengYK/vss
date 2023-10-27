namespace PH.MobileQC.UI.CustQC
{
    partial class AdditionalInformationInterimForm
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
            this.gridControl = new DevExpress.XtraGrid.GridControl();
            this.gridView = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.gcCatLog = new DevExpress.XtraGrid.GridControl();
            this.gridCatLog = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colcode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colact_item_e = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colact_item = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gcCatLog)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridCatLog)).BeginInit();
            this.SuspendLayout();
            // 
            // gridControl
            // 
            this.gridControl.Dock = System.Windows.Forms.DockStyle.Top;
            this.gridControl.EmbeddedNavigator.Name = "";
            this.gridControl.Location = new System.Drawing.Point(0, 0);
            this.gridControl.MainView = this.gridView;
            this.gridControl.Name = "gridControl";
            this.gridControl.Size = new System.Drawing.Size(940, 312);
            this.gridControl.TabIndex = 0;
            this.gridControl.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView});
            this.gridControl.DoubleClick += new System.EventHandler(this.gridControl_DoubleClick);
            // 
            // gridView
            // 
            this.gridView.GridControl = this.gridControl;
            this.gridView.Name = "gridView";
            this.gridView.OptionsBehavior.Editable = false;
            this.gridView.OptionsView.ColumnAutoWidth = false;
            this.gridView.OptionsView.ShowGroupPanel = false;
            // 
            // gcCatLog
            // 
            this.gcCatLog.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gcCatLog.EmbeddedNavigator.Name = "";
            this.gcCatLog.Location = new System.Drawing.Point(0, 312);
            this.gcCatLog.MainView = this.gridCatLog;
            this.gcCatLog.Name = "gcCatLog";
            this.gcCatLog.Size = new System.Drawing.Size(940, 195);
            this.gcCatLog.TabIndex = 1;
            this.gcCatLog.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridCatLog});
            // 
            // gridCatLog
            // 
            this.gridCatLog.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colcode,
            this.colact_item_e,
            this.colact_item});
            this.gridCatLog.GridControl = this.gcCatLog;
            this.gridCatLog.Name = "gridCatLog";
            this.gridCatLog.OptionsBehavior.Editable = false;
            this.gridCatLog.OptionsView.ShowGroupPanel = false;
            // 
            // colcode
            // 
            this.colcode.Caption = "Code";
            this.colcode.FieldName = "code";
            this.colcode.Name = "colcode";
            this.colcode.Visible = true;
            this.colcode.VisibleIndex = 0;
            this.colcode.Width = 56;
            // 
            // colact_item_e
            // 
            this.colact_item_e.Caption = "EN";
            this.colact_item_e.FieldName = "act_item_e";
            this.colact_item_e.Name = "colact_item_e";
            this.colact_item_e.Visible = true;
            this.colact_item_e.VisibleIndex = 1;
            this.colact_item_e.Width = 495;
            // 
            // colact_item
            // 
            this.colact_item.Caption = "CN";
            this.colact_item.FieldName = "act_item";
            this.colact_item.Name = "colact_item";
            this.colact_item.Visible = true;
            this.colact_item.VisibleIndex = 2;
            this.colact_item.Width = 368;
            // 
            // AdditionalInformationInterimForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(940, 507);
            this.Controls.Add(this.gcCatLog);
            this.Controls.Add(this.gridControl);
            this.Name = "AdditionalInformationInterimForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.Manual;
            this.Text = "Additional Information\r\n附加資料";
            ((System.ComponentModel.ISupportInitialize)(this.gridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gcCatLog)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridCatLog)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.GridControl gridControl;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView;
        private DevExpress.XtraGrid.GridControl gcCatLog;
        private DevExpress.XtraGrid.Views.Grid.GridView gridCatLog;
        private DevExpress.XtraGrid.Columns.GridColumn colcode;
        private DevExpress.XtraGrid.Columns.GridColumn colact_item_e;
        private DevExpress.XtraGrid.Columns.GridColumn colact_item;
    }
}