namespace PH.RWO.UI.Amend
{
    partial class FrmConfirm
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
            this.splitContainerControl1 = new DevExpress.XtraEditors.SplitContainerControl();
            this.medtRemark = new DevExpress.XtraEditors.MemoEdit();
            this.splitContainerControl2 = new DevExpress.XtraEditors.SplitContainerControl();
            this.splitContainerControl3 = new DevExpress.XtraEditors.SplitContainerControl();
            this.groupControl1 = new DevExpress.XtraEditors.GroupControl();
            this.gcSendTo = new DevExpress.XtraGrid.GridControl();
            this.gvTo = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.gcCheck = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repItemChk1 = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            this.gcEmailTo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcDesc1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.groupControl2 = new DevExpress.XtraEditors.GroupControl();
            this.gcSendCC = new DevExpress.XtraGrid.GridControl();
            this.gvCC = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.gcChkCC = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcCC = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcRemark = new DevExpress.XtraGrid.Columns.GridColumn();
            this.btnCancel = new DevExpress.XtraEditors.SimpleButton();
            this.btnSend = new DevExpress.XtraEditors.SimpleButton();
            ((System.ComponentModel.ISupportInitialize)(this.splitContainerControl1)).BeginInit();
            this.splitContainerControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.medtRemark.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.splitContainerControl2)).BeginInit();
            this.splitContainerControl2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.splitContainerControl3)).BeginInit();
            this.splitContainerControl3.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).BeginInit();
            this.groupControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gcSendTo)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvTo)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repItemChk1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl2)).BeginInit();
            this.groupControl2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gcSendCC)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvCC)).BeginInit();
            this.SuspendLayout();
            // 
            // splitContainerControl1
            // 
            this.splitContainerControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.splitContainerControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.splitContainerControl1.Horizontal = false;
            this.splitContainerControl1.Location = new System.Drawing.Point(0, 0);
            this.splitContainerControl1.Name = "splitContainerControl1";
            this.splitContainerControl1.Panel1.Appearance.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(128)))), ((int)(((byte)(128)))));
            this.splitContainerControl1.Panel1.Appearance.Options.UseForeColor = true;
            this.splitContainerControl1.Panel1.Appearance.Options.UseTextOptions = true;
            this.splitContainerControl1.Panel1.Appearance.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.splitContainerControl1.Panel1.Controls.Add(this.medtRemark);
            this.splitContainerControl1.Panel2.Controls.Add(this.splitContainerControl2);
            this.splitContainerControl1.Panel2.Text = "Panel2";
            this.splitContainerControl1.Size = new System.Drawing.Size(815, 473);
            this.splitContainerControl1.SplitterPosition = 67;
            this.splitContainerControl1.TabIndex = 0;
            this.splitContainerControl1.Text = "splitContainerControl1";
            // 
            // medtRemark
            // 
            this.medtRemark.Dock = System.Windows.Forms.DockStyle.Fill;
            this.medtRemark.EditValue = "";
            this.medtRemark.Location = new System.Drawing.Point(0, 0);
            this.medtRemark.Name = "medtRemark";
            this.medtRemark.Properties.Appearance.ForeColor = System.Drawing.Color.Red;
            this.medtRemark.Properties.Appearance.Options.UseForeColor = true;
            this.medtRemark.Properties.ReadOnly = true;
            this.medtRemark.Size = new System.Drawing.Size(811, 63);
            this.medtRemark.TabIndex = 0;
            // 
            // splitContainerControl2
            // 
            this.splitContainerControl2.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.splitContainerControl2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.splitContainerControl2.Horizontal = false;
            this.splitContainerControl2.Location = new System.Drawing.Point(0, 0);
            this.splitContainerControl2.Name = "splitContainerControl2";
            this.splitContainerControl2.Panel1.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
            this.splitContainerControl2.Panel1.Controls.Add(this.splitContainerControl3);
            this.splitContainerControl2.Panel1.Text = "Panel1";
            this.splitContainerControl2.Panel2.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
            this.splitContainerControl2.Panel2.Controls.Add(this.btnCancel);
            this.splitContainerControl2.Panel2.Controls.Add(this.btnSend);
            this.splitContainerControl2.Panel2.Text = "Panel2";
            this.splitContainerControl2.Size = new System.Drawing.Size(811, 396);
            this.splitContainerControl2.SplitterPosition = 350;
            this.splitContainerControl2.TabIndex = 0;
            this.splitContainerControl2.Text = "splitContainerControl2";
            // 
            // splitContainerControl3
            // 
            this.splitContainerControl3.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.splitContainerControl3.Dock = System.Windows.Forms.DockStyle.Fill;
            this.splitContainerControl3.Location = new System.Drawing.Point(0, 0);
            this.splitContainerControl3.Name = "splitContainerControl3";
            this.splitContainerControl3.Panel1.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
            this.splitContainerControl3.Panel1.Controls.Add(this.groupControl1);
            this.splitContainerControl3.Panel1.Text = "Panel1";
            this.splitContainerControl3.Panel2.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
            this.splitContainerControl3.Panel2.Controls.Add(this.groupControl2);
            this.splitContainerControl3.Panel2.Text = "Panel2";
            this.splitContainerControl3.Size = new System.Drawing.Size(811, 350);
            this.splitContainerControl3.SplitterPosition = 355;
            this.splitContainerControl3.TabIndex = 0;
            this.splitContainerControl3.Text = "splitContainerControl3";
            // 
            // groupControl1
            // 
            this.groupControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.groupControl1.Controls.Add(this.gcSendTo);
            this.groupControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.groupControl1.Location = new System.Drawing.Point(0, 0);
            this.groupControl1.Name = "groupControl1";
            this.groupControl1.Size = new System.Drawing.Size(355, 350);
            this.groupControl1.TabIndex = 0;
            this.groupControl1.Text = "Send to list :";
            // 
            // gcSendTo
            // 
            this.gcSendTo.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gcSendTo.EmbeddedNavigator.Name = "";
            this.gcSendTo.Location = new System.Drawing.Point(2, 21);
            this.gcSendTo.MainView = this.gvTo;
            this.gcSendTo.Name = "gcSendTo";
            this.gcSendTo.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repItemChk1});
            this.gcSendTo.Size = new System.Drawing.Size(351, 327);
            this.gcSendTo.TabIndex = 0;
            this.gcSendTo.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gvTo});
            // 
            // gvTo
            // 
            this.gvTo.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.gcCheck,
            this.gcEmailTo,
            this.gcDesc1});
            this.gvTo.GridControl = this.gcSendTo;
            this.gvTo.Name = "gvTo";
            this.gvTo.OptionsSelection.MultiSelect = true;
            // 
            // gcCheck
            // 
            this.gcCheck.Caption = "請選擇";
            this.gcCheck.ColumnEdit = this.repItemChk1;
            this.gcCheck.FieldName = "fchk1";
            this.gcCheck.Name = "gcCheck";
            this.gcCheck.Visible = true;
            this.gcCheck.VisibleIndex = 0;
            this.gcCheck.Width = 156;
            // 
            // repItemChk1
            // 
            this.repItemChk1.AutoHeight = false;
            this.repItemChk1.Name = "repItemChk1";
            // 
            // gcEmailTo
            // 
            this.gcEmailTo.Caption = "Email To";
            this.gcEmailTo.FieldName = "dataname";
            this.gcEmailTo.Name = "gcEmailTo";
            this.gcEmailTo.Visible = true;
            this.gcEmailTo.VisibleIndex = 1;
            this.gcEmailTo.Width = 252;
            // 
            // gcDesc1
            // 
            this.gcDesc1.Caption = "備注";
            this.gcDesc1.FieldName = "Description";
            this.gcDesc1.Name = "gcDesc1";
            this.gcDesc1.Visible = true;
            this.gcDesc1.VisibleIndex = 2;
            this.gcDesc1.Width = 680;
            // 
            // groupControl2
            // 
            this.groupControl2.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.groupControl2.Controls.Add(this.gcSendCC);
            this.groupControl2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.groupControl2.Location = new System.Drawing.Point(0, 0);
            this.groupControl2.Name = "groupControl2";
            this.groupControl2.Size = new System.Drawing.Size(450, 350);
            this.groupControl2.TabIndex = 0;
            this.groupControl2.Text = "CC :";
            // 
            // gcSendCC
            // 
            this.gcSendCC.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gcSendCC.EmbeddedNavigator.Name = "";
            this.gcSendCC.Location = new System.Drawing.Point(2, 21);
            this.gcSendCC.MainView = this.gvCC;
            this.gcSendCC.Name = "gcSendCC";
            this.gcSendCC.Size = new System.Drawing.Size(446, 327);
            this.gcSendCC.TabIndex = 0;
            this.gcSendCC.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gvCC});
            // 
            // gvCC
            // 
            this.gvCC.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.gcChkCC,
            this.gcCC,
            this.gcRemark});
            this.gvCC.GridControl = this.gcSendCC;
            this.gvCC.Name = "gvCC";
            this.gvCC.OptionsSelection.MultiSelect = true;
            // 
            // gcChkCC
            // 
            this.gcChkCC.Caption = "請選擇";
            this.gcChkCC.FieldName = "fchk2";
            this.gcChkCC.Name = "gcChkCC";
            this.gcChkCC.Visible = true;
            this.gcChkCC.VisibleIndex = 0;
            this.gcChkCC.Width = 148;
            // 
            // gcCC
            // 
            this.gcCC.Caption = "CC ";
            this.gcCC.FieldName = "dataname";
            this.gcCC.Name = "gcCC";
            this.gcCC.Visible = true;
            this.gcCC.VisibleIndex = 1;
            this.gcCC.Width = 296;
            // 
            // gcRemark
            // 
            this.gcRemark.Caption = "備注";
            this.gcRemark.FieldName = "Description";
            this.gcRemark.Name = "gcRemark";
            this.gcRemark.Visible = true;
            this.gcRemark.VisibleIndex = 2;
            this.gcRemark.Width = 644;
            // 
            // btnCancel
            // 
            this.btnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnCancel.Location = new System.Drawing.Point(309, 7);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(75, 23);
            this.btnCancel.TabIndex = 1;
            this.btnCancel.Text = "取消";
            // 
            // btnSend
            // 
            this.btnSend.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.btnSend.Location = new System.Drawing.Point(118, 7);
            this.btnSend.Name = "btnSend";
            this.btnSend.Size = new System.Drawing.Size(108, 23);
            this.btnSend.TabIndex = 0;
            this.btnSend.Text = "批核并發送郵件";
            this.btnSend.Click += new System.EventHandler(this.btnSend_Click);
            // 
            // FrmConfirm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(815, 473);
            this.Controls.Add(this.splitContainerControl1);
            this.Name = "FrmConfirm";
            this.Text = "確認并發送郵件(請確認無誤后進行確認并發送郵件)";
            ((System.ComponentModel.ISupportInitialize)(this.splitContainerControl1)).EndInit();
            this.splitContainerControl1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.medtRemark.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.splitContainerControl2)).EndInit();
            this.splitContainerControl2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.splitContainerControl3)).EndInit();
            this.splitContainerControl3.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).EndInit();
            this.groupControl1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.gcSendTo)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvTo)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repItemChk1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl2)).EndInit();
            this.groupControl2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.gcSendCC)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvCC)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.SplitContainerControl splitContainerControl1;
        private DevExpress.XtraEditors.SplitContainerControl splitContainerControl2;
        private DevExpress.XtraEditors.SplitContainerControl splitContainerControl3;
        private DevExpress.XtraEditors.GroupControl groupControl1;
        private DevExpress.XtraGrid.GridControl gcSendTo;
        private DevExpress.XtraGrid.Views.Grid.GridView gvTo;
        private DevExpress.XtraEditors.GroupControl groupControl2;
        private DevExpress.XtraGrid.GridControl gcSendCC;
        private DevExpress.XtraGrid.Views.Grid.GridView gvCC;
        private DevExpress.XtraEditors.SimpleButton btnCancel;
        private DevExpress.XtraEditors.SimpleButton btnSend;
        private DevExpress.XtraGrid.Columns.GridColumn gcCheck;
        private DevExpress.XtraGrid.Columns.GridColumn gcEmailTo;
        private DevExpress.XtraGrid.Columns.GridColumn gcChkCC;
        private DevExpress.XtraGrid.Columns.GridColumn gcCC;
        private DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit repItemChk1;
        private DevExpress.XtraGrid.Columns.GridColumn gcDesc1;
        private DevExpress.XtraGrid.Columns.GridColumn gcRemark;
        private DevExpress.XtraEditors.MemoEdit medtRemark;
    }
}