namespace PH.POPC.UI
{
    partial class PoListForm
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
            this.grdPOLog = new DevExpress.XtraGrid.GridControl();
            this.grvPOLog = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.gridColumn1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn2 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn3 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemCheckEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            this.gridColumn4 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn5 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemTextEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemTextEdit();
            this.repositoryItemTimeEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemTimeEdit();
            this.panelControl1 = new DevExpress.XtraEditors.PanelControl();
            this.chkUpdated = new DevExpress.XtraEditors.CheckEdit();
            this.cbToday = new DevExpress.XtraEditors.CheckEdit();
            this.cbAllDays = new DevExpress.XtraEditors.CheckEdit();
            this.butClose = new DevExpress.XtraEditors.SimpleButton();
            this.butRefresh = new DevExpress.XtraEditors.SimpleButton();
            this.panelControl2 = new DevExpress.XtraEditors.PanelControl();
            ((System.ComponentModel.ISupportInitialize)(this.grdPOLog)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.grvPOLog)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemTextEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemTimeEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).BeginInit();
            this.panelControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.chkUpdated.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbToday.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbAllDays.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl2)).BeginInit();
            this.panelControl2.SuspendLayout();
            this.SuspendLayout();
            // 
            // grdPOLog
            // 
            this.grdPOLog.Dock = System.Windows.Forms.DockStyle.Fill;
            this.grdPOLog.EmbeddedNavigator.Name = "";
            this.grdPOLog.Location = new System.Drawing.Point(4, 4);
            this.grdPOLog.MainView = this.grvPOLog;
            this.grdPOLog.Name = "grdPOLog";
            this.grdPOLog.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemCheckEdit1,
            this.repositoryItemTextEdit1,
            this.repositoryItemTimeEdit1});
            this.grdPOLog.Size = new System.Drawing.Size(632, 428);
            this.grdPOLog.TabIndex = 0;
            this.grdPOLog.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.grvPOLog});
            // 
            // grvPOLog
            // 
            this.grvPOLog.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.gridColumn1,
            this.gridColumn2,
            this.gridColumn3,
            this.gridColumn4,
            this.gridColumn5});
            this.grvPOLog.GridControl = this.grdPOLog;
            this.grvPOLog.GroupFormat = "[#image]{1} {2}";
            this.grvPOLog.Name = "grvPOLog";
            this.grvPOLog.OptionsBehavior.Editable = false;
            this.grvPOLog.CustomColumnDisplayText += new DevExpress.XtraGrid.Views.Base.CustomColumnDisplayTextEventHandler(this.grvPOLog_CustomColumnDisplayText);
            // 
            // gridColumn1
            // 
            this.gridColumn1.Caption = "Company";
            this.gridColumn1.FieldName = "COMPANY";
            this.gridColumn1.Name = "gridColumn1";
            this.gridColumn1.Visible = true;
            this.gridColumn1.VisibleIndex = 1;
            this.gridColumn1.Width = 90;
            // 
            // gridColumn2
            // 
            this.gridColumn2.Caption = "PO NO";
            this.gridColumn2.FieldName = "PONO";
            this.gridColumn2.Name = "gridColumn2";
            this.gridColumn2.Visible = true;
            this.gridColumn2.VisibleIndex = 2;
            this.gridColumn2.Width = 111;
            // 
            // gridColumn3
            // 
            this.gridColumn3.Caption = "Updated";
            this.gridColumn3.ColumnEdit = this.repositoryItemCheckEdit1;
            this.gridColumn3.FieldName = "FLAG";
            this.gridColumn3.Name = "gridColumn3";
            this.gridColumn3.Visible = true;
            this.gridColumn3.VisibleIndex = 0;
            this.gridColumn3.Width = 76;
            // 
            // repositoryItemCheckEdit1
            // 
            this.repositoryItemCheckEdit1.AutoHeight = false;
            this.repositoryItemCheckEdit1.Name = "repositoryItemCheckEdit1";
            this.repositoryItemCheckEdit1.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            this.repositoryItemCheckEdit1.ValueChecked = 1;
            this.repositoryItemCheckEdit1.ValueUnchecked = 0;
            // 
            // gridColumn4
            // 
            this.gridColumn4.Caption = "Erp Update Time";
            this.gridColumn4.FieldName = "UPDATETIME";
            this.gridColumn4.Name = "gridColumn4";
            this.gridColumn4.Visible = true;
            this.gridColumn4.VisibleIndex = 3;
            this.gridColumn4.Width = 160;
            // 
            // gridColumn5
            // 
            this.gridColumn5.Caption = "POPC Update Time";
            this.gridColumn5.FieldName = "PCDATETIME";
            this.gridColumn5.Name = "gridColumn5";
            this.gridColumn5.Visible = true;
            this.gridColumn5.VisibleIndex = 4;
            this.gridColumn5.Width = 176;
            // 
            // repositoryItemTextEdit1
            // 
            this.repositoryItemTextEdit1.AutoHeight = false;
            this.repositoryItemTextEdit1.DisplayFormat.FormatString = "yyyy-MM-dd hh:mm:ss";
            this.repositoryItemTextEdit1.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.repositoryItemTextEdit1.Name = "repositoryItemTextEdit1";
            // 
            // repositoryItemTimeEdit1
            // 
            this.repositoryItemTimeEdit1.AutoHeight = false;
            this.repositoryItemTimeEdit1.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.repositoryItemTimeEdit1.Name = "repositoryItemTimeEdit1";
            // 
            // panelControl1
            // 
            this.panelControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.panelControl1.Controls.Add(this.chkUpdated);
            this.panelControl1.Controls.Add(this.cbToday);
            this.panelControl1.Controls.Add(this.cbAllDays);
            this.panelControl1.Controls.Add(this.butClose);
            this.panelControl1.Controls.Add(this.butRefresh);
            this.panelControl1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelControl1.Location = new System.Drawing.Point(0, 0);
            this.panelControl1.Name = "panelControl1";
            this.panelControl1.Size = new System.Drawing.Size(640, 64);
            this.panelControl1.TabIndex = 1;
            // 
            // chkUpdated
            // 
            this.chkUpdated.EditValue = true;
            this.chkUpdated.Location = new System.Drawing.Point(126, 12);
            this.chkUpdated.Name = "chkUpdated";
            this.chkUpdated.Properties.Caption = "Include Updated PO";
            this.chkUpdated.Size = new System.Drawing.Size(141, 19);
            this.chkUpdated.TabIndex = 7;
            // 
            // cbToday
            // 
            this.cbToday.EditValue = true;
            this.cbToday.Location = new System.Drawing.Point(22, 37);
            this.cbToday.Name = "cbToday";
            this.cbToday.Properties.Caption = "Today";
            this.cbToday.Properties.CheckStyle = DevExpress.XtraEditors.Controls.CheckStyles.Radio;
            this.cbToday.Properties.RadioGroupIndex = 1;
            this.cbToday.Size = new System.Drawing.Size(73, 19);
            this.cbToday.TabIndex = 6;
            // 
            // cbAllDays
            // 
            this.cbAllDays.Location = new System.Drawing.Point(22, 12);
            this.cbAllDays.Name = "cbAllDays";
            this.cbAllDays.Properties.Caption = "All days";
            this.cbAllDays.Properties.CheckStyle = DevExpress.XtraEditors.Controls.CheckStyles.Radio;
            this.cbAllDays.Properties.RadioGroupIndex = 1;
            this.cbAllDays.Size = new System.Drawing.Size(70, 19);
            this.cbAllDays.TabIndex = 5;
            this.cbAllDays.TabStop = false;
            // 
            // butClose
            // 
            this.butClose.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.butClose.Location = new System.Drawing.Point(539, 6);
            this.butClose.Name = "butClose";
            this.butClose.Size = new System.Drawing.Size(95, 30);
            this.butClose.TabIndex = 1;
            this.butClose.Text = "Close";
            this.butClose.Click += new System.EventHandler(this.butClose_Click);
            // 
            // butRefresh
            // 
            this.butRefresh.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.butRefresh.Location = new System.Drawing.Point(445, 6);
            this.butRefresh.Name = "butRefresh";
            this.butRefresh.Size = new System.Drawing.Size(88, 30);
            this.butRefresh.TabIndex = 0;
            this.butRefresh.Text = "Refresh";
            this.butRefresh.Click += new System.EventHandler(this.butRefresh_Click);
            // 
            // panelControl2
            // 
            this.panelControl2.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.panelControl2.Controls.Add(this.grdPOLog);
            this.panelControl2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panelControl2.Location = new System.Drawing.Point(0, 64);
            this.panelControl2.Name = "panelControl2";
            this.panelControl2.Size = new System.Drawing.Size(640, 436);
            this.panelControl2.TabIndex = 2;
            // 
            // PoListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(640, 500);
            this.Controls.Add(this.panelControl2);
            this.Controls.Add(this.panelControl1);
            this.Name = "PoListForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "PO Update List ";
            ((System.ComponentModel.ISupportInitialize)(this.grdPOLog)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.grvPOLog)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemTextEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemTimeEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).EndInit();
            this.panelControl1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.chkUpdated.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbToday.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbAllDays.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl2)).EndInit();
            this.panelControl2.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.GridControl grdPOLog;
        private DevExpress.XtraGrid.Views.Grid.GridView grvPOLog;
        private DevExpress.XtraEditors.PanelControl panelControl1;
        private DevExpress.XtraEditors.PanelControl panelControl2;
        private DevExpress.XtraEditors.SimpleButton butClose;
        private DevExpress.XtraEditors.SimpleButton butRefresh;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn1;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn2;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn3;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn4;
        private DevExpress.XtraEditors.Repository.RepositoryItemTextEdit repositoryItemTextEdit1;
        private DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit repositoryItemCheckEdit1;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn5;
        private DevExpress.XtraEditors.CheckEdit cbToday;
        private DevExpress.XtraEditors.CheckEdit cbAllDays;
        private DevExpress.XtraEditors.CheckEdit chkUpdated;
        private DevExpress.XtraEditors.Repository.RepositoryItemTimeEdit repositoryItemTimeEdit1;
    }
}