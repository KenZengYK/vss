namespace PH.POPC.UI
{
    partial class SelectRWOForm
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
            this.gridControl1 = new DevExpress.XtraGrid.GridControl();
            this.roundWorkOrderBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.gridView1 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colWorkOrderNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colColorCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colRoundNos = new DevExpress.XtraGrid.Columns.GridColumn();
            this.panelControl2 = new DevExpress.XtraEditors.PanelControl();
            this.but_Ok = new DevExpress.XtraEditors.SimpleButton();
            this.but_Close = new DevExpress.XtraEditors.SimpleButton();
            this.colFactoryWorkStartDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colLCLExFtyDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemDateEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemDateEdit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).BeginInit();
            this.panelControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.roundWorkOrderBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl2)).BeginInit();
            this.panelControl2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit1.VistaTimeProperties)).BeginInit();
            this.SuspendLayout();
            // 
            // panelControl1
            // 
            this.panelControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.panelControl1.Controls.Add(this.gridControl1);
            this.panelControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panelControl1.Location = new System.Drawing.Point(5, 5);
            this.panelControl1.Name = "panelControl1";
            this.panelControl1.Size = new System.Drawing.Size(466, 375);
            this.panelControl1.TabIndex = 0;
            // 
            // gridControl1
            // 
            this.gridControl1.DataSource = this.roundWorkOrderBindingSource;
            this.gridControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gridControl1.EmbeddedNavigator.Name = "";
            this.gridControl1.Location = new System.Drawing.Point(2, 2);
            this.gridControl1.MainView = this.gridView1;
            this.gridControl1.Name = "gridControl1";
            this.gridControl1.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemDateEdit1});
            this.gridControl1.Size = new System.Drawing.Size(462, 371);
            this.gridControl1.TabIndex = 0;
            this.gridControl1.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView1});
            // 
            // roundWorkOrderBindingSource
            // 
            this.roundWorkOrderBindingSource.DataSource = typeof(PH.RWO.BO.RoundWorkOrder);
            // 
            // gridView1
            // 
            this.gridView1.Appearance.HeaderPanel.Options.UseTextOptions = true;
            this.gridView1.Appearance.HeaderPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridView1.Appearance.Row.Options.UseTextOptions = true;
            this.gridView1.Appearance.Row.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridView1.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colWorkOrderNo,
            this.colColorCode,
            this.colRoundNos,
            this.colFactoryWorkStartDate,
            this.colLCLExFtyDate});
            this.gridView1.GridControl = this.gridControl1;
            this.gridView1.Name = "gridView1";
            this.gridView1.OptionsBehavior.Editable = false;
            this.gridView1.OptionsCustomization.AllowFilter = false;
            this.gridView1.OptionsCustomization.AllowGroup = false;
            this.gridView1.OptionsDetail.EnableMasterViewMode = false;
            this.gridView1.OptionsView.AllowCellMerge = true;
            this.gridView1.OptionsView.ShowGroupPanel = false;
            this.gridView1.DoubleClick += new System.EventHandler(this.gridView1_DoubleClick);
            // 
            // colWorkOrderNo
            // 
            this.colWorkOrderNo.Caption = "WO";
            this.colWorkOrderNo.FieldName = "WorkOrderNo";
            this.colWorkOrderNo.Name = "colWorkOrderNo";
            this.colWorkOrderNo.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.True;
            this.colWorkOrderNo.Visible = true;
            this.colWorkOrderNo.VisibleIndex = 0;
            this.colWorkOrderNo.Width = 97;
            // 
            // colColorCode
            // 
            this.colColorCode.Caption = "Clr Code";
            this.colColorCode.FieldName = "ColorCode";
            this.colColorCode.Name = "colColorCode";
            this.colColorCode.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.True;
            this.colColorCode.Visible = true;
            this.colColorCode.VisibleIndex = 1;
            this.colColorCode.Width = 62;
            // 
            // colRoundNos
            // 
            this.colRoundNos.Caption = "Round No.";
            this.colRoundNos.FieldName = "RoundNos";
            this.colRoundNos.Name = "colRoundNos";
            this.colRoundNos.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colRoundNos.Visible = true;
            this.colRoundNos.VisibleIndex = 2;
            this.colRoundNos.Width = 83;
            // 
            // panelControl2
            // 
            this.panelControl2.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.panelControl2.Controls.Add(this.but_Ok);
            this.panelControl2.Controls.Add(this.but_Close);
            this.panelControl2.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.panelControl2.Location = new System.Drawing.Point(5, 380);
            this.panelControl2.Name = "panelControl2";
            this.panelControl2.Size = new System.Drawing.Size(466, 48);
            this.panelControl2.TabIndex = 1;
            // 
            // but_Ok
            // 
            this.but_Ok.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.but_Ok.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.but_Ok.Location = new System.Drawing.Point(299, 7);
            this.but_Ok.Name = "but_Ok";
            this.but_Ok.Size = new System.Drawing.Size(75, 32);
            this.but_Ok.TabIndex = 1;
            this.but_Ok.Text = "OK";
            // 
            // but_Close
            // 
            this.but_Close.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.but_Close.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.but_Close.Location = new System.Drawing.Point(380, 7);
            this.but_Close.Name = "but_Close";
            this.but_Close.Size = new System.Drawing.Size(75, 32);
            this.but_Close.TabIndex = 0;
            this.but_Close.Text = "Close";
            // 
            // colFactoryWorkStartDate
            // 
            this.colFactoryWorkStartDate.Caption = "FW Start dd";
            this.colFactoryWorkStartDate.ColumnEdit = this.repositoryItemDateEdit1;
            this.colFactoryWorkStartDate.FieldName = "FactoryWorkStartDate";
            this.colFactoryWorkStartDate.Name = "colFactoryWorkStartDate";
            this.colFactoryWorkStartDate.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colFactoryWorkStartDate.Visible = true;
            this.colFactoryWorkStartDate.VisibleIndex = 3;
            this.colFactoryWorkStartDate.Width = 101;
            // 
            // colLCLExFtyDate
            // 
            this.colLCLExFtyDate.Caption = "Ex-fty dd";
            this.colLCLExFtyDate.ColumnEdit = this.repositoryItemDateEdit1;
            this.colLCLExFtyDate.FieldName = "LCLExFtyDate";
            this.colLCLExFtyDate.Name = "colLCLExFtyDate";
            this.colLCLExFtyDate.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colLCLExFtyDate.Visible = true;
            this.colLCLExFtyDate.VisibleIndex = 4;
            this.colLCLExFtyDate.Width = 103;
            // 
            // repositoryItemDateEdit1
            // 
            this.repositoryItemDateEdit1.AutoHeight = false;
            this.repositoryItemDateEdit1.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemDateEdit1.DisplayFormat.FormatString = "yyyy/MM/dd";
            this.repositoryItemDateEdit1.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.repositoryItemDateEdit1.Name = "repositoryItemDateEdit1";
            this.repositoryItemDateEdit1.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            // 
            // SelectRWOForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(476, 433);
            this.Controls.Add(this.panelControl1);
            this.Controls.Add(this.panelControl2);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow;
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "SelectRWOForm";
            this.Padding = new System.Windows.Forms.Padding(5);
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Choose RWO No.";
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).EndInit();
            this.panelControl1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.roundWorkOrderBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl2)).EndInit();
            this.panelControl2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit1.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.PanelControl panelControl1;
        private DevExpress.XtraEditors.PanelControl panelControl2;
        private DevExpress.XtraEditors.SimpleButton but_Close;
        private DevExpress.XtraEditors.SimpleButton but_Ok;
        private DevExpress.XtraGrid.GridControl gridControl1;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView1;
        private System.Windows.Forms.BindingSource roundWorkOrderBindingSource;
        private DevExpress.XtraGrid.Columns.GridColumn colWorkOrderNo;
        private DevExpress.XtraGrid.Columns.GridColumn colColorCode;
        private DevExpress.XtraGrid.Columns.GridColumn colRoundNos;
        private DevExpress.XtraGrid.Columns.GridColumn colFactoryWorkStartDate;
        private DevExpress.XtraGrid.Columns.GridColumn colLCLExFtyDate;
        private DevExpress.XtraEditors.Repository.RepositoryItemDateEdit repositoryItemDateEdit1;
    }
}