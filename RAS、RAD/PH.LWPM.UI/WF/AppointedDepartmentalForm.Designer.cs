namespace PH.LWPM.UI.WF
{
    partial class AppointedDepartmentalForm
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
            this.pnlBottom = new System.Windows.Forms.Panel();
            this.btnCancel = new DevExpress.XtraEditors.SimpleButton();
            this.btnOK = new DevExpress.XtraEditors.SimpleButton();
            this.gridControl = new DevExpress.XtraGrid.GridControl();
            this.gridView = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colFlag = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemCheckEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            this.colCustomerPO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDeptmental_EN = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSection_EN = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTeam_EN = new DevExpress.XtraGrid.Columns.GridColumn();
            this.pnlBottom.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit1)).BeginInit();
            this.SuspendLayout();
            // 
            // pnlBottom
            // 
            this.pnlBottom.Controls.Add(this.btnCancel);
            this.pnlBottom.Controls.Add(this.btnOK);
            this.pnlBottom.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.pnlBottom.Location = new System.Drawing.Point(0, 357);
            this.pnlBottom.Name = "pnlBottom";
            this.pnlBottom.Size = new System.Drawing.Size(954, 58);
            this.pnlBottom.TabIndex = 3;
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
            // gridControl
            // 
            this.gridControl.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gridControl.EmbeddedNavigator.Name = "";
            this.gridControl.Location = new System.Drawing.Point(0, 0);
            this.gridControl.MainView = this.gridView;
            this.gridControl.Name = "gridControl";
            this.gridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemCheckEdit1});
            this.gridControl.Size = new System.Drawing.Size(954, 357);
            this.gridControl.TabIndex = 4;
            this.gridControl.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView});
            // 
            // gridView
            // 
            this.gridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colFlag,
            this.colCustomerPO,
            this.colDeptmental_EN,
            this.colSection_EN,
            this.colTeam_EN});
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
            this.colFlag.Width = 33;
            // 
            // repositoryItemCheckEdit1
            // 
            this.repositoryItemCheckEdit1.AutoHeight = false;
            this.repositoryItemCheckEdit1.Name = "repositoryItemCheckEdit1";
            this.repositoryItemCheckEdit1.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            // 
            // colCustomerPO
            // 
            this.colCustomerPO.Caption = "Seq No.";
            this.colCustomerPO.FieldName = "SeqNo";
            this.colCustomerPO.Name = "colCustomerPO";
            this.colCustomerPO.OptionsColumn.AllowEdit = false;
            this.colCustomerPO.Visible = true;
            this.colCustomerPO.VisibleIndex = 1;
            this.colCustomerPO.Width = 73;
            // 
            // colDeptmental_EN
            // 
            this.colDeptmental_EN.Caption = "Deptmental";
            this.colDeptmental_EN.FieldName = "Deptmental_EN";
            this.colDeptmental_EN.Name = "colDeptmental_EN";
            this.colDeptmental_EN.OptionsColumn.AllowEdit = false;
            this.colDeptmental_EN.Visible = true;
            this.colDeptmental_EN.VisibleIndex = 2;
            this.colDeptmental_EN.Width = 254;
            // 
            // colSection_EN
            // 
            this.colSection_EN.Caption = "Section";
            this.colSection_EN.FieldName = "Section_EN";
            this.colSection_EN.Name = "colSection_EN";
            this.colSection_EN.OptionsColumn.AllowEdit = false;
            this.colSection_EN.Visible = true;
            this.colSection_EN.VisibleIndex = 3;
            this.colSection_EN.Width = 270;
            // 
            // colTeam_EN
            // 
            this.colTeam_EN.Caption = "Team";
            this.colTeam_EN.FieldName = "Team_EN";
            this.colTeam_EN.Name = "colTeam_EN";
            this.colTeam_EN.OptionsColumn.AllowEdit = false;
            this.colTeam_EN.Visible = true;
            this.colTeam_EN.VisibleIndex = 4;
            this.colTeam_EN.Width = 302;
            // 
            // AppointedDepartmentalForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(954, 415);
            this.Controls.Add(this.gridControl);
            this.Controls.Add(this.pnlBottom);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "AppointedDepartmentalForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "REC Appointed Departmental";
            this.pnlBottom.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.gridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel pnlBottom;
        private DevExpress.XtraEditors.SimpleButton btnCancel;
        private DevExpress.XtraEditors.SimpleButton btnOK;
        private DevExpress.XtraGrid.GridControl gridControl;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView;
        private DevExpress.XtraGrid.Columns.GridColumn colFlag;
        private DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit repositoryItemCheckEdit1;
        private DevExpress.XtraGrid.Columns.GridColumn colCustomerPO;
        private DevExpress.XtraGrid.Columns.GridColumn colDeptmental_EN;
        private DevExpress.XtraGrid.Columns.GridColumn colSection_EN;
        private DevExpress.XtraGrid.Columns.GridColumn colTeam_EN;

    }
}