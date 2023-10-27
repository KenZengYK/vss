namespace PH.MobileQC.UI.Setup
{
    partial class FrmSelectDefect
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
            this.gcDefect = new DevExpress.XtraGrid.GridControl();
            this.bsDefect = new System.Windows.Forms.BindingSource(this.components);
            this.gvDefect = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.gcSel = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.btnConfirm = new DevExpress.XtraEditors.SimpleButton();
            this.btnCancel = new DevExpress.XtraEditors.SimpleButton();
            this.chkAll = new DevExpress.XtraEditors.CheckEdit();
            ((System.ComponentModel.ISupportInitialize)(this.gcDefect)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bsDefect)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvDefect)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkAll.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // gcDefect
            // 
            this.gcDefect.DataSource = this.bsDefect;
            this.gcDefect.Dock = System.Windows.Forms.DockStyle.Top;
            this.gcDefect.EmbeddedNavigator.Name = "";
            this.gcDefect.Location = new System.Drawing.Point(0, 0);
            this.gcDefect.MainView = this.gvDefect;
            this.gcDefect.Name = "gcDefect";
            this.gcDefect.Size = new System.Drawing.Size(622, 326);
            this.gcDefect.TabIndex = 0;
            this.gcDefect.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gvDefect});
            // 
            // bsDefect
            // 
            this.bsDefect.DataSource = typeof(PH.MobileQC.BO.QC_ProductTypeInfo);
            // 
            // gvDefect
            // 
            this.gvDefect.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.gcSel,
            this.gcCode,
            this.gcName});
            this.gvDefect.GridControl = this.gcDefect;
            this.gvDefect.Name = "gvDefect";
            this.gvDefect.OptionsView.ShowDetailButtons = false;
            // 
            // gcSel
            // 
            this.gcSel.Caption = "請選擇";
            this.gcSel.FieldName = "CheckFlag";
            this.gcSel.Name = "gcSel";
            this.gcSel.UnboundType = DevExpress.Data.UnboundColumnType.Boolean;
            this.gcSel.Visible = true;
            this.gcSel.VisibleIndex = 0;
            this.gcSel.Width = 56;
            // 
            // gcCode
            // 
            this.gcCode.Caption = "暇疵代號";
            this.gcCode.FieldName = "DefectCode";
            this.gcCode.Name = "gcCode";
            this.gcCode.OptionsColumn.AllowEdit = false;
            this.gcCode.Visible = true;
            this.gcCode.VisibleIndex = 1;
            this.gcCode.Width = 69;
            // 
            // gcName
            // 
            this.gcName.Caption = "暇疵名稱";
            this.gcName.FieldName = "DefectName";
            this.gcName.Name = "gcName";
            this.gcName.OptionsColumn.AllowEdit = false;
            this.gcName.Visible = true;
            this.gcName.VisibleIndex = 2;
            this.gcName.Width = 400;
            // 
            // btnConfirm
            // 
            this.btnConfirm.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.btnConfirm.Location = new System.Drawing.Point(89, 348);
            this.btnConfirm.Name = "btnConfirm";
            this.btnConfirm.Size = new System.Drawing.Size(75, 23);
            this.btnConfirm.TabIndex = 1;
            this.btnConfirm.Text = "確定";
            this.btnConfirm.Click += new System.EventHandler(this.btnConfirm_Click);
            // 
            // btnCancel
            // 
            this.btnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnCancel.Location = new System.Drawing.Point(220, 348);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(75, 23);
            this.btnCancel.TabIndex = 2;
            this.btnCancel.Text = "取消";
            this.btnCancel.Click += new System.EventHandler(this.btnCancel_Click);
            // 
            // chkAll
            // 
            this.chkAll.Location = new System.Drawing.Point(399, 352);
            this.chkAll.Name = "chkAll";
            this.chkAll.Properties.Caption = "全選";
            this.chkAll.Size = new System.Drawing.Size(75, 19);
            this.chkAll.TabIndex = 3;
            this.chkAll.CheckedChanged += new System.EventHandler(this.chkAll_CheckedChanged);
            // 
            // FrmSelectDefect
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(622, 414);
            this.Controls.Add(this.chkAll);
            this.Controls.Add(this.btnCancel);
            this.Controls.Add(this.btnConfirm);
            this.Controls.Add(this.gcDefect);
            this.Name = "FrmSelectDefect";
            this.Text = "請選擇常見暇疵";
            ((System.ComponentModel.ISupportInitialize)(this.gcDefect)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bsDefect)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvDefect)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkAll.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.GridControl gcDefect;
        private DevExpress.XtraGrid.Views.Grid.GridView gvDefect;
        private DevExpress.XtraGrid.Columns.GridColumn gcSel;
        private DevExpress.XtraGrid.Columns.GridColumn gcCode;
        private DevExpress.XtraGrid.Columns.GridColumn gcName;
        private DevExpress.XtraEditors.SimpleButton btnConfirm;
        private DevExpress.XtraEditors.SimpleButton btnCancel;
        private System.Windows.Forms.BindingSource bsDefect;
        private DevExpress.XtraEditors.CheckEdit chkAll;
    }
}