namespace PH.LWPM.UI.PurchasePlan
{
    partial class SelectSellerForm
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
            this.gcVendor = new DevExpress.XtraGrid.GridControl();
            this.bsSeller = new System.Windows.Forms.BindingSource(this.components);
            this.gridView1 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colName_EN = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colName_TW = new DevExpress.XtraGrid.Columns.GridColumn();
            this.pnlBottom = new DevExpress.XtraEditors.PanelControl();
            this.btnCancel = new DevExpress.XtraEditors.SimpleButton();
            this.btnOK = new DevExpress.XtraEditors.SimpleButton();
            ((System.ComponentModel.ISupportInitialize)(this.gcVendor)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bsSeller)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pnlBottom)).BeginInit();
            this.pnlBottom.SuspendLayout();
            this.SuspendLayout();
            // 
            // gcVendor
            // 
            this.gcVendor.DataSource = this.bsSeller;
            this.gcVendor.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gcVendor.EmbeddedNavigator.Name = "";
            this.gcVendor.Location = new System.Drawing.Point(0, 0);
            this.gcVendor.MainView = this.gridView1;
            this.gcVendor.Name = "gcVendor";
            this.gcVendor.Size = new System.Drawing.Size(919, 491);
            this.gcVendor.TabIndex = 0;
            this.gcVendor.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView1});
            // 
            // bsSeller
            // 
            this.bsSeller.DataSource = typeof(PH.LWPM.BO.Buyer);
            // 
            // gridView1
            // 
            this.gridView1.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colCode,
            this.colName_EN,
            this.colName_TW});
            this.gridView1.GridControl = this.gcVendor;
            this.gridView1.Name = "gridView1";
            this.gridView1.OptionsBehavior.Editable = false;
            this.gridView1.OptionsView.ShowDetailButtons = false;
            this.gridView1.OptionsView.ShowGroupPanel = false;
            // 
            // colCode
            // 
            this.colCode.Caption = "Seller Code";
            this.colCode.FieldName = "Code";
            this.colCode.Name = "colCode";
            this.colCode.Visible = true;
            this.colCode.VisibleIndex = 0;
            this.colCode.Width = 94;
            // 
            // colName_EN
            // 
            this.colName_EN.Caption = "Name";
            this.colName_EN.FieldName = "Name_EN";
            this.colName_EN.Name = "colName_EN";
            this.colName_EN.Visible = true;
            this.colName_EN.VisibleIndex = 1;
            this.colName_EN.Width = 318;
            // 
            // colName_TW
            // 
            this.colName_TW.Caption = "Name (CN)";
            this.colName_TW.FieldName = "Name_TW";
            this.colName_TW.Name = "colName_TW";
            this.colName_TW.Visible = true;
            this.colName_TW.VisibleIndex = 2;
            this.colName_TW.Width = 266;
            // 
            // pnlBottom
            // 
            this.pnlBottom.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.pnlBottom.Controls.Add(this.btnCancel);
            this.pnlBottom.Controls.Add(this.btnOK);
            this.pnlBottom.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.pnlBottom.Location = new System.Drawing.Point(0, 439);
            this.pnlBottom.Name = "pnlBottom";
            this.pnlBottom.Size = new System.Drawing.Size(919, 52);
            this.pnlBottom.TabIndex = 1;
            // 
            // btnCancel
            // 
            this.btnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnCancel.Location = new System.Drawing.Point(781, 17);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(75, 23);
            this.btnCancel.TabIndex = 1;
            this.btnCancel.Text = "Cancel";
            // 
            // btnOK
            // 
            this.btnOK.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.btnOK.Location = new System.Drawing.Point(700, 17);
            this.btnOK.Name = "btnOK";
            this.btnOK.Size = new System.Drawing.Size(75, 23);
            this.btnOK.TabIndex = 0;
            this.btnOK.Text = "OK";
            // 
            // SelectSellerForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(919, 491);
            this.Controls.Add(this.pnlBottom);
            this.Controls.Add(this.gcVendor);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "SelectSellerForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Select Seller";
            ((System.ComponentModel.ISupportInitialize)(this.gcVendor)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bsSeller)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pnlBottom)).EndInit();
            this.pnlBottom.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.GridControl gcVendor;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView1;
        private DevExpress.XtraEditors.PanelControl pnlBottom;
        private DevExpress.XtraEditors.SimpleButton btnCancel;
        private DevExpress.XtraEditors.SimpleButton btnOK;
        private System.Windows.Forms.BindingSource bsSeller;
        private DevExpress.XtraGrid.Columns.GridColumn colCode;
        private DevExpress.XtraGrid.Columns.GridColumn colName_TW;
        private DevExpress.XtraGrid.Columns.GridColumn colName_EN;
    }
}