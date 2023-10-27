namespace PH.FabricInspection.UI
{
    partial class FrmStyleCodeSelect
    {
        /// <summary>
        /// 必需的设计器变量。
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// 清理所有正在使用的资源。
        /// </summary>
        /// <param name="disposing">如果应释放托管资源，为 true；否则为 false。</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows 窗体设计器生成的代码

        /// <summary>
        /// 设计器支持所需的方法 - 不要
        /// 使用代码编辑器修改此方法的内容。
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.sbCancel = new DevExpress.XtraEditors.SimpleButton();
            this.sbSelect = new DevExpress.XtraEditors.SimpleButton();
            this.pnlFuncButtons = new DevExpress.XtraEditors.PanelControl();
            this.panelControl2 = new DevExpress.XtraEditors.PanelControl();
            this.gridControl2 = new DevExpress.XtraGrid.GridControl();
            this.bsStyleCode = new System.Windows.Forms.BindingSource(this.components);
            this.gridView2 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.gridColumn1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcStyleCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colMaterialGroup = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.pnlFuncButtons)).BeginInit();
            this.pnlFuncButtons.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl2)).BeginInit();
            this.panelControl2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bsStyleCode)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView2)).BeginInit();
            this.SuspendLayout();
            // 
            // sbCancel
            // 
            this.sbCancel.Location = new System.Drawing.Point(182, 6);
            this.sbCancel.Margin = new System.Windows.Forms.Padding(2);
            this.sbCancel.Name = "sbCancel";
            this.sbCancel.Size = new System.Drawing.Size(73, 32);
            this.sbCancel.TabIndex = 66;
            this.sbCancel.Text = "Cancel";
            this.sbCancel.Click += new System.EventHandler(this.sbCancel_Click);
            // 
            // sbSelect
            // 
            this.sbSelect.Location = new System.Drawing.Point(88, 6);
            this.sbSelect.Margin = new System.Windows.Forms.Padding(2);
            this.sbSelect.Name = "sbSelect";
            this.sbSelect.Size = new System.Drawing.Size(73, 32);
            this.sbSelect.TabIndex = 68;
            this.sbSelect.Text = "OK";
            this.sbSelect.Click += new System.EventHandler(this.sbSelect_Click);
            // 
            // pnlFuncButtons
            // 
            this.pnlFuncButtons.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.pnlFuncButtons.Controls.Add(this.sbCancel);
            this.pnlFuncButtons.Controls.Add(this.sbSelect);
            this.pnlFuncButtons.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.pnlFuncButtons.Location = new System.Drawing.Point(0, 429);
            this.pnlFuncButtons.Margin = new System.Windows.Forms.Padding(2);
            this.pnlFuncButtons.Name = "pnlFuncButtons";
            this.pnlFuncButtons.Size = new System.Drawing.Size(301, 46);
            this.pnlFuncButtons.TabIndex = 70;
            // 
            // panelControl2
            // 
            this.panelControl2.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.panelControl2.Controls.Add(this.gridControl2);
            this.panelControl2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panelControl2.Location = new System.Drawing.Point(0, 0);
            this.panelControl2.Margin = new System.Windows.Forms.Padding(2);
            this.panelControl2.Name = "panelControl2";
            this.panelControl2.Size = new System.Drawing.Size(301, 429);
            this.panelControl2.TabIndex = 71;
            // 
            // gridControl2
            // 
            this.gridControl2.DataSource = this.bsStyleCode;
            this.gridControl2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gridControl2.EmbeddedNavigator.Margin = new System.Windows.Forms.Padding(2);
            this.gridControl2.EmbeddedNavigator.Name = "";
            this.gridControl2.Location = new System.Drawing.Point(2, 2);
            this.gridControl2.MainView = this.gridView2;
            this.gridControl2.Margin = new System.Windows.Forms.Padding(2);
            this.gridControl2.Name = "gridControl2";
            this.gridControl2.Size = new System.Drawing.Size(297, 425);
            this.gridControl2.TabIndex = 3;
            this.gridControl2.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView2});
            // 
            // gridView2
            // 
            this.gridView2.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.gridColumn1,
            this.gcStyleCode,
            this.colMaterialGroup});
            this.gridView2.GridControl = this.gridControl2;
            this.gridView2.Name = "gridView2";
            this.gridView2.OptionsBehavior.Editable = false;
            this.gridView2.OptionsDetail.AllowZoomDetail = false;
            this.gridView2.OptionsDetail.EnableMasterViewMode = false;
            this.gridView2.OptionsDetail.ShowDetailTabs = false;
            this.gridView2.OptionsDetail.SmartDetailExpand = false;
            this.gridView2.OptionsView.ColumnAutoWidth = false;
            this.gridView2.OptionsView.ShowDetailButtons = false;
            this.gridView2.OptionsView.ShowGroupPanel = false;
            // 
            // gridColumn1
            // 
            this.gridColumn1.Caption = "Company";
            this.gridColumn1.FieldName = "CONO15";
            this.gridColumn1.Name = "gridColumn1";
            this.gridColumn1.Visible = true;
            this.gridColumn1.VisibleIndex = 0;
            this.gridColumn1.Width = 72;
            // 
            // gcStyleCode
            // 
            this.gcStyleCode.Caption = "Item Code";
            this.gcStyleCode.FieldName = "STYLECODE";
            this.gcStyleCode.Name = "gcStyleCode";
            this.gcStyleCode.Visible = true;
            this.gcStyleCode.VisibleIndex = 1;
            this.gcStyleCode.Width = 95;
            // 
            // colMaterialGroup
            // 
            this.colMaterialGroup.Caption = "Item Group";
            this.colMaterialGroup.FieldName = "MATERIALGROUP";
            this.colMaterialGroup.Name = "colMaterialGroup";
            this.colMaterialGroup.Visible = true;
            this.colMaterialGroup.VisibleIndex = 2;
            this.colMaterialGroup.Width = 100;
            // 
            // FrmStyleCodeSelect
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(301, 475);
            this.Controls.Add(this.panelControl2);
            this.Controls.Add(this.pnlFuncButtons);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow;
            this.Margin = new System.Windows.Forms.Padding(2);
            this.Name = "FrmStyleCodeSelect";
            this.ShowInTaskbar = false;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Material Type Select";
            ((System.ComponentModel.ISupportInitialize)(this.pnlFuncButtons)).EndInit();
            this.pnlFuncButtons.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.panelControl2)).EndInit();
            this.panelControl2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.gridControl2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bsStyleCode)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView2)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.SimpleButton sbCancel;
        private DevExpress.XtraEditors.SimpleButton sbSelect;
        private DevExpress.XtraEditors.PanelControl pnlFuncButtons;
        private DevExpress.XtraEditors.PanelControl panelControl2;
        private DevExpress.XtraGrid.GridControl gridControl2;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView2;
        private DevExpress.XtraGrid.Columns.GridColumn gcStyleCode;
        private System.Windows.Forms.BindingSource bsStyleCode;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn1;
        private DevExpress.XtraGrid.Columns.GridColumn colMaterialGroup;

    }
}