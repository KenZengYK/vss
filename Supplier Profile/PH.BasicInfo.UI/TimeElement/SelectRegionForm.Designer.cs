namespace PH.BasicInfo.UI.TimeElement
{
    partial class SelectRegionForm
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
            this.panelBottom = new DevExpress.XtraEditors.PanelControl();
            this.btnCancel = new DevExpress.XtraEditors.SimpleButton();
            this.btnOK = new DevExpress.XtraEditors.SimpleButton();
            this.panelClient = new DevExpress.XtraEditors.PanelControl();
            this.gridControl1 = new DevExpress.XtraGrid.GridControl();
            this.bsRegion = new System.Windows.Forms.BindingSource(this.components);
            this.gridView1 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colSeqNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCountryCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colRegionCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colRegionName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colRegionNameCN = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTransitMode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTimeFrame_PHDG_D = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTimeFrame_PYBD_D = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTimeFrame_PHHK_C = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colIncotermsCode = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.panelBottom)).BeginInit();
            this.panelBottom.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.panelClient)).BeginInit();
            this.panelClient.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bsRegion)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // panelBottom
            // 
            this.panelBottom.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.panelBottom.Controls.Add(this.btnCancel);
            this.panelBottom.Controls.Add(this.btnOK);
            this.panelBottom.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.panelBottom.Location = new System.Drawing.Point(0, 512);
            this.panelBottom.Name = "panelBottom";
            this.panelBottom.Size = new System.Drawing.Size(744, 49);
            this.panelBottom.TabIndex = 1;
            // 
            // btnCancel
            // 
            this.btnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnCancel.Location = new System.Drawing.Point(596, 14);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(75, 23);
            this.btnCancel.TabIndex = 1;
            this.btnCancel.Text = "Cancel";
            // 
            // btnOK
            // 
            this.btnOK.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.btnOK.Location = new System.Drawing.Point(476, 14);
            this.btnOK.Name = "btnOK";
            this.btnOK.Size = new System.Drawing.Size(75, 23);
            this.btnOK.TabIndex = 0;
            this.btnOK.Text = "OK";
            // 
            // panelClient
            // 
            this.panelClient.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.panelClient.Controls.Add(this.gridControl1);
            this.panelClient.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panelClient.Location = new System.Drawing.Point(0, 0);
            this.panelClient.Name = "panelClient";
            this.panelClient.Size = new System.Drawing.Size(744, 512);
            this.panelClient.TabIndex = 2;
            // 
            // gridControl1
            // 
            this.gridControl1.DataSource = this.bsRegion;
            this.gridControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gridControl1.EmbeddedNavigator.Name = "";
            this.gridControl1.Location = new System.Drawing.Point(2, 2);
            this.gridControl1.MainView = this.gridView1;
            this.gridControl1.Name = "gridControl1";
            this.gridControl1.Size = new System.Drawing.Size(740, 508);
            this.gridControl1.TabIndex = 2;
            this.gridControl1.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView1});
            // 
            // bsRegion
            // 
            this.bsRegion.DataSource = typeof(PH.BasicInfo.BO.SupplierRegion);
            // 
            // gridView1
            // 
            this.gridView1.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colSeqNo,
            this.colCountryCode,
            this.colRegionCode,
            this.colRegionName,
            this.colRegionNameCN,
            this.colTransitMode,
            this.colTimeFrame_PHDG_D,
            this.colTimeFrame_PYBD_D,
            this.colTimeFrame_PHHK_C,
            this.colIncotermsCode});
            this.gridView1.GridControl = this.gridControl1;
            this.gridView1.Name = "gridView1";
            this.gridView1.OptionsBehavior.Editable = false;
            this.gridView1.OptionsDetail.EnableMasterViewMode = false;
            this.gridView1.OptionsPrint.AutoWidth = false;
            this.gridView1.OptionsView.ColumnAutoWidth = false;
            this.gridView1.OptionsView.ShowGroupPanel = false;
            this.gridView1.DoubleClick += new System.EventHandler(this.gridView1_DoubleClick);
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
            // colCountryCode
            // 
            this.colCountryCode.Caption = "Country Cde";
            this.colCountryCode.FieldName = "CountryCode";
            this.colCountryCode.Name = "colCountryCode";
            this.colCountryCode.Visible = true;
            this.colCountryCode.VisibleIndex = 1;
            this.colCountryCode.Width = 90;
            // 
            // colRegionCode
            // 
            this.colRegionCode.Caption = "Region Cde";
            this.colRegionCode.FieldName = "RegionCode";
            this.colRegionCode.Name = "colRegionCode";
            this.colRegionCode.Visible = true;
            this.colRegionCode.VisibleIndex = 2;
            this.colRegionCode.Width = 84;
            // 
            // colRegionName
            // 
            this.colRegionName.Caption = "Region Name (EN)";
            this.colRegionName.FieldName = "RegionNameEN";
            this.colRegionName.Name = "colRegionName";
            this.colRegionName.Visible = true;
            this.colRegionName.VisibleIndex = 3;
            this.colRegionName.Width = 250;
            // 
            // colRegionNameCN
            // 
            this.colRegionNameCN.Caption = "Region Name (CN)";
            this.colRegionNameCN.FieldName = "RegionNameCN";
            this.colRegionNameCN.Name = "colRegionNameCN";
            this.colRegionNameCN.Visible = true;
            this.colRegionNameCN.VisibleIndex = 4;
            this.colRegionNameCN.Width = 200;
            // 
            // colTransitMode
            // 
            this.colTransitMode.Caption = "Transit Mode";
            this.colTransitMode.FieldName = "TransitMode";
            this.colTransitMode.Name = "colTransitMode";
            this.colTransitMode.Width = 93;
            // 
            // colTimeFrame_PHDG_D
            // 
            this.colTimeFrame_PHDG_D.Caption = "Time Frame PHDG (CRS)";
            this.colTimeFrame_PHDG_D.FieldName = "TimeFrame_PHDG_D";
            this.colTimeFrame_PHDG_D.Name = "colTimeFrame_PHDG_D";
            this.colTimeFrame_PHDG_D.Width = 156;
            // 
            // colTimeFrame_PYBD_D
            // 
            this.colTimeFrame_PYBD_D.Caption = "Time Frame PYBD (CRS)";
            this.colTimeFrame_PYBD_D.FieldName = "TimeFrame_PYBD_D";
            this.colTimeFrame_PYBD_D.Name = "colTimeFrame_PYBD_D";
            this.colTimeFrame_PYBD_D.Width = 155;
            // 
            // colTimeFrame_PHHK_C
            // 
            this.colTimeFrame_PHHK_C.Caption = "Time Frame PHHK (CCS)";
            this.colTimeFrame_PHHK_C.FieldName = "TimeFrame_PHHK_C";
            this.colTimeFrame_PHHK_C.Name = "colTimeFrame_PHHK_C";
            this.colTimeFrame_PHHK_C.Width = 155;
            // 
            // colIncotermsCode
            // 
            this.colIncotermsCode.Caption = "Incoterms Cde";
            this.colIncotermsCode.FieldName = "IncotermsCode";
            this.colIncotermsCode.Name = "colIncotermsCode";
            this.colIncotermsCode.Width = 102;
            // 
            // SelectRegionForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(744, 561);
            this.Controls.Add(this.panelClient);
            this.Controls.Add(this.panelBottom);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "SelectRegionForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Select Region";
            ((System.ComponentModel.ISupportInitialize)(this.panelBottom)).EndInit();
            this.panelBottom.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.panelClient)).EndInit();
            this.panelClient.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bsRegion)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.PanelControl panelBottom;
        private DevExpress.XtraEditors.SimpleButton btnCancel;
        private DevExpress.XtraEditors.SimpleButton btnOK;
        private DevExpress.XtraEditors.PanelControl panelClient;
        private DevExpress.XtraGrid.GridControl gridControl1;
        private System.Windows.Forms.BindingSource bsRegion;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView1;
        private DevExpress.XtraGrid.Columns.GridColumn colSeqNo;
        private DevExpress.XtraGrid.Columns.GridColumn colCountryCode;
        private DevExpress.XtraGrid.Columns.GridColumn colRegionCode;
        private DevExpress.XtraGrid.Columns.GridColumn colRegionName;
        private DevExpress.XtraGrid.Columns.GridColumn colRegionNameCN;
        private DevExpress.XtraGrid.Columns.GridColumn colTransitMode;
        private DevExpress.XtraGrid.Columns.GridColumn colTimeFrame_PHDG_D;
        private DevExpress.XtraGrid.Columns.GridColumn colTimeFrame_PYBD_D;
        private DevExpress.XtraGrid.Columns.GridColumn colTimeFrame_PHHK_C;
        private DevExpress.XtraGrid.Columns.GridColumn colIncotermsCode;
    }
}