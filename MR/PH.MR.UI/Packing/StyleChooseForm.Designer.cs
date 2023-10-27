namespace PH.MR.UI.Packing
{
    partial class StyleChooseForm
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
            this.panelControl1 = new DevExpress.XtraEditors.PanelControl();
            this.sBtn_Select = new DevExpress.XtraEditors.SimpleButton();
            this.sBtn_Cancel = new DevExpress.XtraEditors.SimpleButton();
            this.panelControl2 = new DevExpress.XtraEditors.PanelControl();
            this.gridControl_StyleBO = new DevExpress.XtraGrid.GridControl();
            this.styleBOBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.gridView_StyleBO = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colSalesOrderNO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colProjectNO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colStyleNO = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).BeginInit();
            this.panelControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl2)).BeginInit();
            this.panelControl2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl_StyleBO)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.styleBOBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView_StyleBO)).BeginInit();
            this.SuspendLayout();
            // 
            // panelControl1
            // 
            this.panelControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.panelControl1.Controls.Add(this.sBtn_Select);
            this.panelControl1.Controls.Add(this.sBtn_Cancel);
            this.panelControl1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelControl1.Location = new System.Drawing.Point(0, 0);
            this.panelControl1.Name = "panelControl1";
            this.panelControl1.Size = new System.Drawing.Size(618, 34);
            this.panelControl1.TabIndex = 0;
            // 
            // sBtn_Select
            // 
            this.sBtn_Select.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.sBtn_Select.Location = new System.Drawing.Point(523, 5);
            this.sBtn_Select.Name = "sBtn_Select";
            this.sBtn_Select.Size = new System.Drawing.Size(75, 25);
            this.sBtn_Select.TabIndex = 0;
            this.sBtn_Select.Text = "Select";
            this.sBtn_Select.Click += new System.EventHandler(this.sBtn_Select_Click);
            // 
            // sBtn_Cancel
            // 
            this.sBtn_Cancel.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.sBtn_Cancel.Location = new System.Drawing.Point(442, 5);
            this.sBtn_Cancel.Name = "sBtn_Cancel";
            this.sBtn_Cancel.Size = new System.Drawing.Size(75, 25);
            this.sBtn_Cancel.TabIndex = 0;
            this.sBtn_Cancel.Text = "Cancel";
            this.sBtn_Cancel.Click += new System.EventHandler(this.sBtn_Cancel_Click);
            // 
            // panelControl2
            // 
            this.panelControl2.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.panelControl2.Controls.Add(this.gridControl_StyleBO);
            this.panelControl2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panelControl2.Location = new System.Drawing.Point(0, 34);
            this.panelControl2.Name = "panelControl2";
            this.panelControl2.Size = new System.Drawing.Size(618, 363);
            this.panelControl2.TabIndex = 1;
            // 
            // gridControl_StyleBO
            // 
            this.gridControl_StyleBO.DataSource = this.styleBOBindingSource;
            this.gridControl_StyleBO.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gridControl_StyleBO.EmbeddedNavigator.Name = "";
            this.gridControl_StyleBO.Location = new System.Drawing.Point(2, 2);
            this.gridControl_StyleBO.MainView = this.gridView_StyleBO;
            this.gridControl_StyleBO.Name = "gridControl_StyleBO";
            this.gridControl_StyleBO.Size = new System.Drawing.Size(614, 359);
            this.gridControl_StyleBO.TabIndex = 0;
            this.gridControl_StyleBO.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView_StyleBO});
            // 
            // styleBOBindingSource
            // 
            this.styleBOBindingSource.DataSource = typeof(PH.MR.BO.V_StyleNO);
            // 
            // gridView_StyleBO
            // 
            this.gridView_StyleBO.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colSalesOrderNO,
            this.colProjectNO,
            this.colStyleNO});
            this.gridView_StyleBO.GridControl = this.gridControl_StyleBO;
            this.gridView_StyleBO.Name = "gridView_StyleBO";
            this.gridView_StyleBO.OptionsBehavior.Editable = false;
            this.gridView_StyleBO.OptionsView.ShowAutoFilterRow = true;
            // 
            // colSalesOrderNO
            // 
            this.colSalesOrderNO.Caption = "SalesOrder";
            this.colSalesOrderNO.FieldName = "SalesOrder";
            this.colSalesOrderNO.Name = "colSalesOrderNO";
            this.colSalesOrderNO.Visible = true;
            this.colSalesOrderNO.VisibleIndex = 0;
            // 
            // colProjectNO
            // 
            this.colProjectNO.Caption = "ProjectNO";
            this.colProjectNO.FieldName = "ProjectNO";
            this.colProjectNO.Name = "colProjectNO";
            this.colProjectNO.Visible = true;
            this.colProjectNO.VisibleIndex = 1;
            // 
            // colStyleNO
            // 
            this.colStyleNO.Caption = "StyleNO";
            this.colStyleNO.FieldName = "StyleNO";
            this.colStyleNO.Name = "colStyleNO";
            this.colStyleNO.Visible = true;
            this.colStyleNO.VisibleIndex = 2;
            // 
            // StyleChooseForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(618, 397);
            this.Controls.Add(this.panelControl2);
            this.Controls.Add(this.panelControl1);
            this.Name = "StyleChooseForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "StyleChooseForm";
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).EndInit();
            this.panelControl1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.panelControl2)).EndInit();
            this.panelControl2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.gridControl_StyleBO)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.styleBOBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView_StyleBO)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.PanelControl panelControl1;
        private DevExpress.XtraEditors.SimpleButton sBtn_Select;
        private DevExpress.XtraEditors.SimpleButton sBtn_Cancel;
        private DevExpress.XtraEditors.PanelControl panelControl2;
        private DevExpress.XtraGrid.GridControl gridControl_StyleBO;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView_StyleBO;
        private System.Windows.Forms.BindingSource styleBOBindingSource;
        private DevExpress.XtraGrid.Columns.GridColumn colSalesOrderNO;
        private DevExpress.XtraGrid.Columns.GridColumn colProjectNO;
        private DevExpress.XtraGrid.Columns.GridColumn colStyleNO;
    }
}