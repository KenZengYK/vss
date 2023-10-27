namespace PH.FabricInspection.UI.SupplierQE.Elastic
{
    partial class sElasticSelectAuditIDForm
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
            this.pnlBottom = new System.Windows.Forms.Panel();
            this.btnCancel = new DevExpress.XtraEditors.SimpleButton();
            this.btnOK = new DevExpress.XtraEditors.SimpleButton();
            this.pnlClient = new System.Windows.Forms.Panel();
            this.gridControl = new DevExpress.XtraGrid.GridControl();
            this.bindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.gridView = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colFlag = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemCheckEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            this.colSUPPITEMREF = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colITEMNO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCOLORCODE = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPROJECTNO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colLOTNO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCUPCODE = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCupDesc = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPackListQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.pnlBottom.SuspendLayout();
            this.pnlClient.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit1)).BeginInit();
            this.SuspendLayout();
            // 
            // pnlBottom
            // 
            this.pnlBottom.Controls.Add(this.btnCancel);
            this.pnlBottom.Controls.Add(this.btnOK);
            this.pnlBottom.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.pnlBottom.Location = new System.Drawing.Point(0, 443);
            this.pnlBottom.Name = "pnlBottom";
            this.pnlBottom.Size = new System.Drawing.Size(942, 58);
            this.pnlBottom.TabIndex = 2;
            // 
            // btnCancel
            // 
            this.btnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnCancel.Location = new System.Drawing.Point(767, 17);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(75, 23);
            this.btnCancel.TabIndex = 8;
            this.btnCancel.Text = "Cancel";
            // 
            // btnOK
            // 
            this.btnOK.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.btnOK.Location = new System.Drawing.Point(669, 17);
            this.btnOK.Name = "btnOK";
            this.btnOK.Size = new System.Drawing.Size(75, 23);
            this.btnOK.TabIndex = 7;
            this.btnOK.Text = "OK";
            // 
            // pnlClient
            // 
            this.pnlClient.Controls.Add(this.gridControl);
            this.pnlClient.Dock = System.Windows.Forms.DockStyle.Fill;
            this.pnlClient.Location = new System.Drawing.Point(0, 0);
            this.pnlClient.Name = "pnlClient";
            this.pnlClient.Size = new System.Drawing.Size(942, 443);
            this.pnlClient.TabIndex = 3;
            // 
            // gridControl
            // 
            this.gridControl.DataSource = this.bindingSource;
            this.gridControl.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gridControl.EmbeddedNavigator.Name = "";
            this.gridControl.Location = new System.Drawing.Point(0, 0);
            this.gridControl.MainView = this.gridView;
            this.gridControl.Name = "gridControl";
            this.gridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemCheckEdit1});
            this.gridControl.Size = new System.Drawing.Size(942, 443);
            this.gridControl.TabIndex = 1;
            this.gridControl.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView});
            // 
            // gridView
            // 
            this.gridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colFlag,
            this.colSUPPITEMREF,
            this.colITEMNO,
            this.colCOLORCODE,
            this.colPROJECTNO,
            this.colLOTNO,
            this.colCUPCODE,
            this.colCupDesc,
            this.colPackListQty});
            this.gridView.GridControl = this.gridControl;
            this.gridView.Name = "gridView";
            this.gridView.OptionsView.ColumnAutoWidth = false;
            this.gridView.OptionsView.ShowDetailButtons = false;
            this.gridView.OptionsView.ShowGroupPanel = false;
            // 
            // colFlag
            // 
            this.colFlag.ColumnEdit = this.repositoryItemCheckEdit1;
            this.colFlag.FieldName = "CheckFlag";
            this.colFlag.Name = "colFlag";
            this.colFlag.UnboundType = DevExpress.Data.UnboundColumnType.Boolean;
            this.colFlag.Visible = true;
            this.colFlag.VisibleIndex = 0;
            this.colFlag.Width = 41;
            // 
            // repositoryItemCheckEdit1
            // 
            this.repositoryItemCheckEdit1.AutoHeight = false;
            this.repositoryItemCheckEdit1.Name = "repositoryItemCheckEdit1";
            this.repositoryItemCheckEdit1.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            // 
            // colSUPPITEMREF
            // 
            this.colSUPPITEMREF.Caption = "Supp. Item Ref";
            this.colSUPPITEMREF.FieldName = "SuppItemRef";
            this.colSUPPITEMREF.Name = "colSUPPITEMREF";
            this.colSUPPITEMREF.OptionsColumn.AllowEdit = false;
            this.colSUPPITEMREF.Visible = true;
            this.colSUPPITEMREF.VisibleIndex = 1;
            this.colSUPPITEMREF.Width = 146;
            // 
            // colITEMNO
            // 
            this.colITEMNO.Caption = "Item Cde";
            this.colITEMNO.FieldName = "ItemNO";
            this.colITEMNO.Name = "colITEMNO";
            this.colITEMNO.OptionsColumn.AllowEdit = false;
            this.colITEMNO.Visible = true;
            this.colITEMNO.VisibleIndex = 2;
            this.colITEMNO.Width = 110;
            // 
            // colCOLORCODE
            // 
            this.colCOLORCODE.Caption = "Clr Cde";
            this.colCOLORCODE.FieldName = "ColorCode";
            this.colCOLORCODE.Name = "colCOLORCODE";
            this.colCOLORCODE.OptionsColumn.AllowEdit = false;
            this.colCOLORCODE.Visible = true;
            this.colCOLORCODE.VisibleIndex = 4;
            this.colCOLORCODE.Width = 60;
            // 
            // colPROJECTNO
            // 
            this.colPROJECTNO.Caption = "Proj#";
            this.colPROJECTNO.FieldName = "ProjectNO";
            this.colPROJECTNO.Name = "colPROJECTNO";
            this.colPROJECTNO.OptionsColumn.AllowEdit = false;
            this.colPROJECTNO.Visible = true;
            this.colPROJECTNO.VisibleIndex = 3;
            this.colPROJECTNO.Width = 101;
            // 
            // colLOTNO
            // 
            this.colLOTNO.Caption = "Item id# (SKU)";
            this.colLOTNO.FieldName = "LotNO";
            this.colLOTNO.Name = "colLOTNO";
            this.colLOTNO.OptionsColumn.AllowEdit = false;
            this.colLOTNO.Visible = true;
            this.colLOTNO.VisibleIndex = 7;
            this.colLOTNO.Width = 173;
            // 
            // colCUPCODE
            // 
            this.colCUPCODE.Caption = "Size Cde";
            this.colCUPCODE.FieldName = "CupCode";
            this.colCUPCODE.Name = "colCUPCODE";
            this.colCUPCODE.OptionsColumn.AllowEdit = false;
            this.colCUPCODE.Visible = true;
            this.colCUPCODE.VisibleIndex = 5;
            this.colCUPCODE.Width = 68;
            // 
            // colCupDesc
            // 
            this.colCupDesc.Caption = "Size Desc.";
            this.colCupDesc.FieldName = "CupDesc";
            this.colCupDesc.Name = "colCupDesc";
            this.colCupDesc.Visible = true;
            this.colCupDesc.VisibleIndex = 6;
            // 
            // colPackListQty
            // 
            this.colPackListQty.Caption = "PackList Qty";
            this.colPackListQty.FieldName = "PackListQty";
            this.colPackListQty.Name = "colPackListQty";
            this.colPackListQty.OptionsColumn.AllowEdit = false;
            this.colPackListQty.Visible = true;
            this.colPackListQty.VisibleIndex = 8;
            this.colPackListQty.Width = 89;
            // 
            // ElasticSelectAuditIDForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(942, 501);
            this.Controls.Add(this.pnlClient);
            this.Controls.Add(this.pnlBottom);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "ElasticSelectAuditIDForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Elastic - Select Aduit ID";
            this.pnlBottom.ResumeLayout(false);
            this.pnlClient.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.gridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel pnlBottom;
        private System.Windows.Forms.Panel pnlClient;
        private DevExpress.XtraGrid.GridControl gridControl;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView;
        private DevExpress.XtraEditors.SimpleButton btnCancel;
        private DevExpress.XtraEditors.SimpleButton btnOK;
        private System.Windows.Forms.BindingSource bindingSource;
        private DevExpress.XtraGrid.Columns.GridColumn colSUPPITEMREF;
        private DevExpress.XtraGrid.Columns.GridColumn colITEMNO;
        private DevExpress.XtraGrid.Columns.GridColumn colCOLORCODE;
        private DevExpress.XtraGrid.Columns.GridColumn colPROJECTNO;
        private DevExpress.XtraGrid.Columns.GridColumn colLOTNO;
        private DevExpress.XtraGrid.Columns.GridColumn colCUPCODE;
        private DevExpress.XtraGrid.Columns.GridColumn colPackListQty;
        private DevExpress.XtraGrid.Columns.GridColumn colFlag;
        private DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit repositoryItemCheckEdit1;
        private DevExpress.XtraGrid.Columns.GridColumn colCupDesc;

    }
}