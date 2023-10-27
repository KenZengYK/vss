namespace PH.MIDc.UI
{
    partial class DetailVersionControlForm
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
            PH.MIDc.BO.DetailChangeConfirm detailChangeConfirm1 = new PH.MIDc.BO.DetailChangeConfirm();
            this.detailVersionControlCtrl1 = new PH.MIDc.UI.DetailVersionControlCtrl();
            this.panelControl1 = new DevExpress.XtraEditors.PanelControl();
            this.sBtn_Rise = new DevExpress.XtraEditors.SimpleButton();
            this.xtraTabControl1 = new DevExpress.XtraTab.XtraTabControl();
            this.xtraTabPage_CurrVersion = new DevExpress.XtraTab.XtraTabPage();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.xtraTabPage_VersionHistory = new DevExpress.XtraTab.XtraTabPage();
            this.gridControl1 = new DevExpress.XtraGrid.GridControl();
            this.bindingSource1 = new System.Windows.Forms.BindingSource(this.components);
            this.gridView1 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colSuppRef = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colVersion = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colChangeTypeMsg = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colChangeUser = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colChangeDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colConfirmTypeMsg = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colConfirmUser = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colConfirmDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colStatus = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridView2 = new DevExpress.XtraGrid.Views.Grid.GridView();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).BeginInit();
            this.panelControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.xtraTabControl1)).BeginInit();
            this.xtraTabControl1.SuspendLayout();
            this.xtraTabPage_CurrVersion.SuspendLayout();
            this.xtraTabPage_VersionHistory.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView2)).BeginInit();
            this.SuspendLayout();
            // 
            // detailVersionControlCtrl1
            // 
            this.detailVersionControlCtrl1.CurrDetail = null;
            detailChangeConfirm1.BOWorkMode = PH.Platform.BO.Interface.WorkMode.Read;
            detailChangeConfirm1.ChangeDate = null;
            detailChangeConfirm1.ChangeType = null;
            detailChangeConfirm1.ChangeUser = null;
            detailChangeConfirm1.CheckFlag = false;
            detailChangeConfirm1.ConfirmDate = null;
            detailChangeConfirm1.ConfirmType = null;
            detailChangeConfirm1.ConfirmUser = null;
            detailChangeConfirm1.CurrentBindingSource = null;
            detailChangeConfirm1.CurrentDataContext = null;
            detailChangeConfirm1.Detail = null;
            detailChangeConfirm1.Status = null;
            detailChangeConfirm1.SuppRef = null;
            detailChangeConfirm1.Version = 0;
            this.detailVersionControlCtrl1.CurrDetailChangeConfirm = detailChangeConfirm1;
            this.detailVersionControlCtrl1.Location = new System.Drawing.Point(182, 38);
            this.detailVersionControlCtrl1.Name = "detailVersionControlCtrl1";
            this.detailVersionControlCtrl1.Size = new System.Drawing.Size(366, 150);
            this.detailVersionControlCtrl1.TabIndex = 0;
            // 
            // panelControl1
            // 
            this.panelControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.panelControl1.Controls.Add(this.sBtn_Rise);
            this.panelControl1.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.panelControl1.Location = new System.Drawing.Point(0, 265);
            this.panelControl1.Name = "panelControl1";
            this.panelControl1.Size = new System.Drawing.Size(729, 34);
            this.panelControl1.TabIndex = 1;
            // 
            // sBtn_Rise
            // 
            this.sBtn_Rise.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.sBtn_Rise.Location = new System.Drawing.Point(609, 3);
            this.sBtn_Rise.Name = "sBtn_Rise";
            this.sBtn_Rise.Size = new System.Drawing.Size(114, 26);
            this.sBtn_Rise.TabIndex = 0;
            this.sBtn_Rise.Text = "Save And Close";
            this.sBtn_Rise.Click += new System.EventHandler(this.sBtn_Rise_Click);
            // 
            // xtraTabControl1
            // 
            this.xtraTabControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.xtraTabControl1.Location = new System.Drawing.Point(0, 0);
            this.xtraTabControl1.Name = "xtraTabControl1";
            this.xtraTabControl1.SelectedTabPage = this.xtraTabPage_CurrVersion;
            this.xtraTabControl1.Size = new System.Drawing.Size(729, 265);
            this.xtraTabControl1.TabIndex = 2;
            this.xtraTabControl1.TabPages.AddRange(new DevExpress.XtraTab.XtraTabPage[] {
            this.xtraTabPage_CurrVersion,
            this.xtraTabPage_VersionHistory});
            this.xtraTabControl1.Text = "xtraTabControl1";
            // 
            // xtraTabPage_CurrVersion
            // 
            this.xtraTabPage_CurrVersion.Controls.Add(this.labelControl1);
            this.xtraTabPage_CurrVersion.Controls.Add(this.detailVersionControlCtrl1);
            this.xtraTabPage_CurrVersion.Name = "xtraTabPage_CurrVersion";
            this.xtraTabPage_CurrVersion.Size = new System.Drawing.Size(723, 238);
            this.xtraTabPage_CurrVersion.Text = "Current Version";
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(54, 29);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(113, 14);
            this.labelControl1.TabIndex = 1;
            this.labelControl1.Text = "Current Use Version:";
            // 
            // xtraTabPage_VersionHistory
            // 
            this.xtraTabPage_VersionHistory.Controls.Add(this.gridControl1);
            this.xtraTabPage_VersionHistory.Name = "xtraTabPage_VersionHistory";
            this.xtraTabPage_VersionHistory.Size = new System.Drawing.Size(723, 238);
            this.xtraTabPage_VersionHistory.Text = "Version History";
            // 
            // gridControl1
            // 
            this.gridControl1.DataSource = this.bindingSource1;
            this.gridControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gridControl1.EmbeddedNavigator.Name = "";
            this.gridControl1.Location = new System.Drawing.Point(0, 0);
            this.gridControl1.MainView = this.gridView1;
            this.gridControl1.Name = "gridControl1";
            this.gridControl1.Size = new System.Drawing.Size(723, 238);
            this.gridControl1.TabIndex = 0;
            this.gridControl1.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView1,
            this.gridView2});
            // 
            // bindingSource1
            // 
            this.bindingSource1.DataSource = typeof(PH.MIDc.BO.DetailChangeConfirm);
            // 
            // gridView1
            // 
            this.gridView1.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colSuppRef,
            this.colVersion,
            this.colChangeTypeMsg,
            this.colChangeUser,
            this.colChangeDate,
            this.colConfirmTypeMsg,
            this.colConfirmUser,
            this.colConfirmDate,
            this.colStatus});
            this.gridView1.GridControl = this.gridControl1;
            this.gridView1.Name = "gridView1";
            this.gridView1.OptionsBehavior.Editable = false;
            this.gridView1.OptionsView.ColumnAutoWidth = false;
            // 
            // colSuppRef
            // 
            this.colSuppRef.Caption = "SuppRef";
            this.colSuppRef.FieldName = "SuppRef";
            this.colSuppRef.Name = "colSuppRef";
            this.colSuppRef.Visible = true;
            this.colSuppRef.VisibleIndex = 0;
            // 
            // colVersion
            // 
            this.colVersion.Caption = "Version";
            this.colVersion.FieldName = "Version";
            this.colVersion.Name = "colVersion";
            this.colVersion.Visible = true;
            this.colVersion.VisibleIndex = 1;
            this.colVersion.Width = 59;
            // 
            // colChangeTypeMsg
            // 
            this.colChangeTypeMsg.Caption = "Change Type Msg";
            this.colChangeTypeMsg.FieldName = "ChangeTypeMsg";
            this.colChangeTypeMsg.Name = "colChangeTypeMsg";
            this.colChangeTypeMsg.Visible = true;
            this.colChangeTypeMsg.VisibleIndex = 2;
            this.colChangeTypeMsg.Width = 150;
            // 
            // colChangeUser
            // 
            this.colChangeUser.Caption = "Change User";
            this.colChangeUser.FieldName = "ChangeUser";
            this.colChangeUser.Name = "colChangeUser";
            this.colChangeUser.Visible = true;
            this.colChangeUser.VisibleIndex = 3;
            this.colChangeUser.Width = 90;
            // 
            // colChangeDate
            // 
            this.colChangeDate.Caption = "Change Date";
            this.colChangeDate.FieldName = "ChangeDate";
            this.colChangeDate.Name = "colChangeDate";
            this.colChangeDate.Visible = true;
            this.colChangeDate.VisibleIndex = 4;
            this.colChangeDate.Width = 110;
            // 
            // colConfirmTypeMsg
            // 
            this.colConfirmTypeMsg.Caption = "Confirm Type Msg";
            this.colConfirmTypeMsg.FieldName = "ConfirmTypeMsg";
            this.colConfirmTypeMsg.Name = "colConfirmTypeMsg";
            this.colConfirmTypeMsg.Visible = true;
            this.colConfirmTypeMsg.VisibleIndex = 5;
            this.colConfirmTypeMsg.Width = 150;
            // 
            // colConfirmUser
            // 
            this.colConfirmUser.Caption = "Confirm User";
            this.colConfirmUser.FieldName = "ConfirmUser";
            this.colConfirmUser.Name = "colConfirmUser";
            this.colConfirmUser.Visible = true;
            this.colConfirmUser.VisibleIndex = 6;
            this.colConfirmUser.Width = 90;
            // 
            // colConfirmDate
            // 
            this.colConfirmDate.Caption = "Confirm Date";
            this.colConfirmDate.FieldName = "ConfirmDate";
            this.colConfirmDate.Name = "colConfirmDate";
            this.colConfirmDate.Visible = true;
            this.colConfirmDate.VisibleIndex = 7;
            this.colConfirmDate.Width = 110;
            // 
            // colStatus
            // 
            this.colStatus.Caption = "Status";
            this.colStatus.FieldName = "Status";
            this.colStatus.Name = "colStatus";
            this.colStatus.Visible = true;
            this.colStatus.VisibleIndex = 8;
            this.colStatus.Width = 80;
            // 
            // gridView2
            // 
            this.gridView2.GridControl = this.gridControl1;
            this.gridView2.Name = "gridView2";
            // 
            // DetailVersionControlForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(729, 299);
            this.Controls.Add(this.xtraTabControl1);
            this.Controls.Add(this.panelControl1);
            this.Name = "DetailVersionControlForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "DetailVersionControlForm";
            this.Load += new System.EventHandler(this.DetailVersionControlForm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).EndInit();
            this.panelControl1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.xtraTabControl1)).EndInit();
            this.xtraTabControl1.ResumeLayout(false);
            this.xtraTabPage_CurrVersion.ResumeLayout(false);
            this.xtraTabPage_CurrVersion.PerformLayout();
            this.xtraTabPage_VersionHistory.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView2)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DetailVersionControlCtrl detailVersionControlCtrl1;
        private DevExpress.XtraEditors.PanelControl panelControl1;
        private DevExpress.XtraEditors.SimpleButton sBtn_Rise;
        private DevExpress.XtraTab.XtraTabControl xtraTabControl1;
        private DevExpress.XtraTab.XtraTabPage xtraTabPage_CurrVersion;
        private DevExpress.XtraTab.XtraTabPage xtraTabPage_VersionHistory;
        private DevExpress.XtraGrid.GridControl gridControl1;
        private System.Windows.Forms.BindingSource bindingSource1;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView1;
        private DevExpress.XtraGrid.Columns.GridColumn colSuppRef;
        private DevExpress.XtraGrid.Columns.GridColumn colVersion;
        private DevExpress.XtraGrid.Columns.GridColumn colChangeUser;
        private DevExpress.XtraGrid.Columns.GridColumn colChangeDate;
        private DevExpress.XtraGrid.Columns.GridColumn colConfirmUser;
        private DevExpress.XtraGrid.Columns.GridColumn colConfirmDate;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView2;
        private DevExpress.XtraGrid.Columns.GridColumn colChangeTypeMsg;
        private DevExpress.XtraGrid.Columns.GridColumn colConfirmTypeMsg;
        private DevExpress.XtraGrid.Columns.GridColumn colStatus;
        private DevExpress.XtraEditors.LabelControl labelControl1;
    }
}