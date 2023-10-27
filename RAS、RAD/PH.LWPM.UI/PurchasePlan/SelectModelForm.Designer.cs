namespace PH.LWPM.UI.PurchasePlan
{
    partial class SelectModelForm
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
            this.gridHWType = new DevExpress.XtraGrid.GridControl();
            this.bsModel = new System.Windows.Forms.BindingSource(this.components);
            this.gridView1 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colBrandName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colHWCategoryCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colHWGroupCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colHWTypeCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colHWTypeCodeNameEN = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colHWTypeCodeNameCN = new DevExpress.XtraGrid.Columns.GridColumn();
            this.pnlBottom = new DevExpress.XtraEditors.PanelControl();
            this.btnCancel = new DevExpress.XtraEditors.SimpleButton();
            this.btnOK = new DevExpress.XtraEditors.SimpleButton();
            ((System.ComponentModel.ISupportInitialize)(this.gridHWType)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bsModel)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pnlBottom)).BeginInit();
            this.pnlBottom.SuspendLayout();
            this.SuspendLayout();
            // 
            // gridHWType
            // 
            this.gridHWType.DataSource = this.bsModel;
            this.gridHWType.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gridHWType.EmbeddedNavigator.Name = "";
            this.gridHWType.Location = new System.Drawing.Point(0, 0);
            this.gridHWType.MainView = this.gridView1;
            this.gridHWType.Name = "gridHWType";
            this.gridHWType.Size = new System.Drawing.Size(1084, 546);
            this.gridHWType.TabIndex = 0;
            this.gridHWType.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView1});
            // 
            // bsModel
            // 
            this.bsModel.DataSource = typeof(PH.LWPM.BO.McBrand);
            // 
            // gridView1
            // 
            this.gridView1.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colBrandName,
            this.colHWCategoryCode,
            this.colHWGroupCode,
            this.colHWTypeCode,
            this.colHWTypeCodeNameEN,
            this.colHWTypeCodeNameCN});
            this.gridView1.GridControl = this.gridHWType;
            this.gridView1.Name = "gridView1";
            this.gridView1.OptionsBehavior.Editable = false;
            this.gridView1.OptionsView.ColumnAutoWidth = false;
            this.gridView1.OptionsView.ShowDetailButtons = false;
            this.gridView1.OptionsView.ShowGroupPanel = false;
            // 
            // colBrandName
            // 
            this.colBrandName.Caption = "Model";
            this.colBrandName.FieldName = "BrandName";
            this.colBrandName.Name = "colBrandName";
            this.colBrandName.Visible = true;
            this.colBrandName.VisibleIndex = 0;
            this.colBrandName.Width = 91;
            // 
            // colHWCategoryCode
            // 
            this.colHWCategoryCode.Caption = "HW Cat. Code";
            this.colHWCategoryCode.FieldName = "HWCategoryCode";
            this.colHWCategoryCode.Name = "colHWCategoryCode";
            this.colHWCategoryCode.Visible = true;
            this.colHWCategoryCode.VisibleIndex = 1;
            this.colHWCategoryCode.Width = 98;
            // 
            // colHWGroupCode
            // 
            this.colHWGroupCode.Caption = "HW Grp Code";
            this.colHWGroupCode.FieldName = "HWGroupCode";
            this.colHWGroupCode.Name = "colHWGroupCode";
            this.colHWGroupCode.Visible = true;
            this.colHWGroupCode.VisibleIndex = 2;
            this.colHWGroupCode.Width = 98;
            // 
            // colHWTypeCode
            // 
            this.colHWTypeCode.Caption = "HW Type Code";
            this.colHWTypeCode.FieldName = "HWTypeCode";
            this.colHWTypeCode.Name = "colHWTypeCode";
            this.colHWTypeCode.Visible = true;
            this.colHWTypeCode.VisibleIndex = 3;
            this.colHWTypeCode.Width = 105;
            // 
            // colHWTypeCodeNameEN
            // 
            this.colHWTypeCodeNameEN.Caption = "HW Type Description";
            this.colHWTypeCodeNameEN.FieldName = "HWTypeCodeNameEN";
            this.colHWTypeCodeNameEN.Name = "colHWTypeCodeNameEN";
            this.colHWTypeCodeNameEN.Visible = true;
            this.colHWTypeCodeNameEN.VisibleIndex = 4;
            this.colHWTypeCodeNameEN.Width = 214;
            // 
            // colHWTypeCodeNameCN
            // 
            this.colHWTypeCodeNameCN.Caption = "HW Type Description (CN)";
            this.colHWTypeCodeNameCN.FieldName = "HWTypeCodeNameCN";
            this.colHWTypeCodeNameCN.Name = "colHWTypeCodeNameCN";
            this.colHWTypeCodeNameCN.Visible = true;
            this.colHWTypeCodeNameCN.VisibleIndex = 5;
            this.colHWTypeCodeNameCN.Width = 508;
            // 
            // pnlBottom
            // 
            this.pnlBottom.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.pnlBottom.Controls.Add(this.btnCancel);
            this.pnlBottom.Controls.Add(this.btnOK);
            this.pnlBottom.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.pnlBottom.Location = new System.Drawing.Point(0, 494);
            this.pnlBottom.Name = "pnlBottom";
            this.pnlBottom.Size = new System.Drawing.Size(1084, 52);
            this.pnlBottom.TabIndex = 1;
            // 
            // btnCancel
            // 
            this.btnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnCancel.Location = new System.Drawing.Point(986, 17);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(75, 23);
            this.btnCancel.TabIndex = 1;
            this.btnCancel.Text = "Cancel";
            // 
            // btnOK
            // 
            this.btnOK.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.btnOK.Location = new System.Drawing.Point(882, 17);
            this.btnOK.Name = "btnOK";
            this.btnOK.Size = new System.Drawing.Size(75, 23);
            this.btnOK.TabIndex = 0;
            this.btnOK.Text = "OK";
            // 
            // SelectModelForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1084, 546);
            this.Controls.Add(this.pnlBottom);
            this.Controls.Add(this.gridHWType);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "SelectModelForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Select Model";
            ((System.ComponentModel.ISupportInitialize)(this.gridHWType)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bsModel)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pnlBottom)).EndInit();
            this.pnlBottom.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.GridControl gridHWType;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView1;
        private DevExpress.XtraEditors.PanelControl pnlBottom;
        private DevExpress.XtraEditors.SimpleButton btnCancel;
        private DevExpress.XtraEditors.SimpleButton btnOK;
        private System.Windows.Forms.BindingSource bsModel;
        private DevExpress.XtraGrid.Columns.GridColumn colBrandName;
        private DevExpress.XtraGrid.Columns.GridColumn colHWCategoryCode;
        private DevExpress.XtraGrid.Columns.GridColumn colHWGroupCode;
        private DevExpress.XtraGrid.Columns.GridColumn colHWTypeCode;
        private DevExpress.XtraGrid.Columns.GridColumn colHWTypeCodeNameCN;
        private DevExpress.XtraGrid.Columns.GridColumn colHWTypeCodeNameEN;
    }
}