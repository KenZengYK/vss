namespace PH.LWPM.UI.LB4
{
    partial class CopyWFMCFrm
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
            this.colstrEndTime = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridControl1 = new DevExpress.XtraGrid.GridControl();
            this.bindingSource1 = new System.Windows.Forms.BindingSource(this.components);
            this.gridView1 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colLineCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPHStyleCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCustStyleCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.ColVersion = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colIsConfirmed = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colConfirmTime = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colstrStartTime = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colJ_NO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colJ2_job = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colRwo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colQn = new DevExpress.XtraGrid.Columns.GridColumn();
            this.ColBcolor = new DevExpress.XtraGrid.Columns.GridColumn();
            this.BtnCancel = new DevExpress.XtraEditors.SimpleButton();
            this.BtnOK = new DevExpress.XtraEditors.SimpleButton();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // colstrEndTime
            // 
            this.colstrEndTime.Caption = "EndTime";
            this.colstrEndTime.FieldName = "EndTime";
            this.colstrEndTime.Name = "colstrEndTime";
            this.colstrEndTime.OptionsColumn.AllowEdit = false;
            this.colstrEndTime.OptionsColumn.ReadOnly = true;
            this.colstrEndTime.Visible = true;
            this.colstrEndTime.VisibleIndex = 7;
            // 
            // gridControl1
            // 
            this.gridControl1.DataSource = this.bindingSource1;
            this.gridControl1.Dock = System.Windows.Forms.DockStyle.Top;
            this.gridControl1.EmbeddedNavigator.Name = "";
            this.gridControl1.Location = new System.Drawing.Point(0, 0);
            this.gridControl1.MainView = this.gridView1;
            this.gridControl1.Name = "gridControl1";
            this.gridControl1.Size = new System.Drawing.Size(1019, 450);
            this.gridControl1.TabIndex = 11;
            this.gridControl1.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView1});
            // 
            // gridView1
            // 
            this.gridView1.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colLineCode,
            this.colPHStyleCode,
            this.colCustStyleCode,
            this.ColVersion,
            this.colIsConfirmed,
            this.colConfirmTime,
            this.colstrStartTime,
            this.colstrEndTime,
            this.colJ_NO,
            this.colJ2_job,
            this.colRwo,
            this.colQn,
            this.ColBcolor});
            this.gridView1.GridControl = this.gridControl1;
            this.gridView1.Name = "gridView1";
            this.gridView1.OptionsDetail.ShowDetailTabs = false;
            this.gridView1.OptionsView.ColumnAutoWidth = false;
            this.gridView1.OptionsView.ShowDetailButtons = false;
            // 
            // colLineCode
            // 
            this.colLineCode.Caption = "Line";
            this.colLineCode.FieldName = "LineCode";
            this.colLineCode.Name = "colLineCode";
            this.colLineCode.OptionsColumn.AllowEdit = false;
            this.colLineCode.OptionsColumn.ReadOnly = true;
            this.colLineCode.Visible = true;
            this.colLineCode.VisibleIndex = 0;
            // 
            // colPHStyleCode
            // 
            this.colPHStyleCode.Caption = "PHStyle";
            this.colPHStyleCode.FieldName = "PHStyleCode";
            this.colPHStyleCode.Name = "colPHStyleCode";
            this.colPHStyleCode.OptionsColumn.AllowEdit = false;
            this.colPHStyleCode.OptionsColumn.ReadOnly = true;
            this.colPHStyleCode.Visible = true;
            this.colPHStyleCode.VisibleIndex = 1;
            // 
            // colCustStyleCode
            // 
            this.colCustStyleCode.Caption = "CustStyle";
            this.colCustStyleCode.FieldName = "CustStyleCode";
            this.colCustStyleCode.Name = "colCustStyleCode";
            this.colCustStyleCode.OptionsColumn.AllowEdit = false;
            this.colCustStyleCode.OptionsColumn.ReadOnly = true;
            this.colCustStyleCode.Visible = true;
            this.colCustStyleCode.VisibleIndex = 2;
            // 
            // ColVersion
            // 
            this.ColVersion.Caption = "Version";
            this.ColVersion.FieldName = "Version";
            this.ColVersion.Name = "ColVersion";
            this.ColVersion.Visible = true;
            this.ColVersion.VisibleIndex = 3;
            this.ColVersion.Width = 63;
            // 
            // colIsConfirmed
            // 
            this.colIsConfirmed.Caption = "Confirmed";
            this.colIsConfirmed.FieldName = "IsConfirmed";
            this.colIsConfirmed.Name = "colIsConfirmed";
            this.colIsConfirmed.OptionsColumn.AllowEdit = false;
            this.colIsConfirmed.OptionsColumn.ReadOnly = true;
            this.colIsConfirmed.Visible = true;
            this.colIsConfirmed.VisibleIndex = 4;
            // 
            // colConfirmTime
            // 
            this.colConfirmTime.Caption = "ConfirmTime";
            this.colConfirmTime.FieldName = "ConfirmTime";
            this.colConfirmTime.Name = "colConfirmTime";
            this.colConfirmTime.OptionsColumn.AllowEdit = false;
            this.colConfirmTime.OptionsColumn.ReadOnly = true;
            this.colConfirmTime.Visible = true;
            this.colConfirmTime.VisibleIndex = 5;
            this.colConfirmTime.Width = 93;
            // 
            // colstrStartTime
            // 
            this.colstrStartTime.Caption = "StartTime";
            this.colstrStartTime.FieldName = "StartTime";
            this.colstrStartTime.Name = "colstrStartTime";
            this.colstrStartTime.OptionsColumn.AllowEdit = false;
            this.colstrStartTime.OptionsColumn.ReadOnly = true;
            this.colstrStartTime.Visible = true;
            this.colstrStartTime.VisibleIndex = 6;
            this.colstrStartTime.Width = 93;
            // 
            // colJ_NO
            // 
            this.colJ_NO.Caption = "ProjectNO";
            this.colJ_NO.FieldName = "j_NO";
            this.colJ_NO.Name = "colJ_NO";
            this.colJ_NO.OptionsColumn.AllowEdit = false;
            this.colJ_NO.OptionsColumn.ReadOnly = true;
            this.colJ_NO.Visible = true;
            this.colJ_NO.VisibleIndex = 8;
            // 
            // colJ2_job
            // 
            this.colJ2_job.Caption = "WO";
            this.colJ2_job.FieldName = "J2_job";
            this.colJ2_job.Name = "colJ2_job";
            this.colJ2_job.OptionsColumn.AllowEdit = false;
            this.colJ2_job.OptionsColumn.ReadOnly = true;
            this.colJ2_job.Visible = true;
            this.colJ2_job.VisibleIndex = 9;
            // 
            // colRwo
            // 
            this.colRwo.Caption = "Rwo";
            this.colRwo.FieldName = "Rwo";
            this.colRwo.Name = "colRwo";
            this.colRwo.OptionsColumn.AllowEdit = false;
            this.colRwo.OptionsColumn.ReadOnly = true;
            this.colRwo.Visible = true;
            this.colRwo.VisibleIndex = 10;
            // 
            // colQn
            // 
            this.colQn.Caption = "Qn";
            this.colQn.FieldName = "Qn";
            this.colQn.Name = "colQn";
            this.colQn.OptionsColumn.AllowEdit = false;
            this.colQn.OptionsColumn.ReadOnly = true;
            this.colQn.Visible = true;
            this.colQn.VisibleIndex = 11;
            // 
            // ColBcolor
            // 
            this.ColBcolor.Caption = "color";
            this.ColBcolor.FieldName = "Bcolor";
            this.ColBcolor.Name = "ColBcolor";
            this.ColBcolor.Visible = true;
            this.ColBcolor.VisibleIndex = 12;
            // 
            // BtnCancel
            // 
            this.BtnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.BtnCancel.Location = new System.Drawing.Point(800, 495);
            this.BtnCancel.Name = "BtnCancel";
            this.BtnCancel.Size = new System.Drawing.Size(75, 23);
            this.BtnCancel.TabIndex = 13;
            this.BtnCancel.Text = "Cancel";
            // 
            // BtnOK
            // 
            this.BtnOK.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.BtnOK.Location = new System.Drawing.Point(719, 495);
            this.BtnOK.Name = "BtnOK";
            this.BtnOK.Size = new System.Drawing.Size(75, 23);
            this.BtnOK.TabIndex = 12;
            this.BtnOK.Text = "OK";
            this.BtnOK.Click += new System.EventHandler(this.BtnOK_Click);
            // 
            // CopyWFMCFrm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1019, 559);
            this.Controls.Add(this.gridControl1);
            this.Controls.Add(this.BtnCancel);
            this.Controls.Add(this.BtnOK);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "CopyWFMCFrm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Copy Worker and Machine";
            this.Load += new System.EventHandler(this.CopyWFMCFrm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colstrEndTime;
        private DevExpress.XtraGrid.GridControl gridControl1;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView1;
        private DevExpress.XtraGrid.Columns.GridColumn colLineCode;
        private DevExpress.XtraGrid.Columns.GridColumn colPHStyleCode;
        private DevExpress.XtraGrid.Columns.GridColumn colCustStyleCode;
        private DevExpress.XtraGrid.Columns.GridColumn colIsConfirmed;
        private DevExpress.XtraGrid.Columns.GridColumn colConfirmTime;
        private DevExpress.XtraGrid.Columns.GridColumn colstrStartTime;
        private DevExpress.XtraGrid.Columns.GridColumn colJ_NO;
        private DevExpress.XtraGrid.Columns.GridColumn colJ2_job;
        private DevExpress.XtraGrid.Columns.GridColumn colRwo;
        private DevExpress.XtraGrid.Columns.GridColumn colQn;
        private DevExpress.XtraGrid.Columns.GridColumn ColBcolor;
        private DevExpress.XtraEditors.SimpleButton BtnCancel;
        private DevExpress.XtraEditors.SimpleButton BtnOK;
        private System.Windows.Forms.BindingSource bindingSource1;
        private DevExpress.XtraGrid.Columns.GridColumn ColVersion;
    }
}