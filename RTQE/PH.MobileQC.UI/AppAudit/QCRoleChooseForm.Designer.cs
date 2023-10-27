namespace PH.MobileQC.UI.AppAudit
{
    partial class QCRoleChooseForm
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
            this.sBtn_OK = new DevExpress.XtraEditors.SimpleButton();
            this.sBtn_Cancel = new DevExpress.XtraEditors.SimpleButton();
            this.gridView_QCRoles = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colRoleCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colRoleName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridControl_QCRoles = new DevExpress.XtraGrid.GridControl();
            this.bindingSource_QCRoles = new System.Windows.Forms.BindingSource(this.components);
            this.gridView2 = new DevExpress.XtraGrid.Views.Grid.GridView();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).BeginInit();
            this.panelControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gridView_QCRoles)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl_QCRoles)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource_QCRoles)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView2)).BeginInit();
            this.SuspendLayout();
            // 
            // panelControl1
            // 
            this.panelControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.panelControl1.Controls.Add(this.sBtn_OK);
            this.panelControl1.Controls.Add(this.sBtn_Cancel);
            this.panelControl1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelControl1.Location = new System.Drawing.Point(0, 0);
            this.panelControl1.Name = "panelControl1";
            this.panelControl1.Size = new System.Drawing.Size(474, 33);
            this.panelControl1.TabIndex = 2;
            // 
            // sBtn_OK
            // 
            this.sBtn_OK.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.sBtn_OK.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.sBtn_OK.Location = new System.Drawing.Point(394, 5);
            this.sBtn_OK.Name = "sBtn_OK";
            this.sBtn_OK.Size = new System.Drawing.Size(75, 23);
            this.sBtn_OK.TabIndex = 0;
            this.sBtn_OK.Text = "OK";
            // 
            // sBtn_Cancel
            // 
            this.sBtn_Cancel.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.sBtn_Cancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.sBtn_Cancel.Location = new System.Drawing.Point(317, 5);
            this.sBtn_Cancel.Name = "sBtn_Cancel";
            this.sBtn_Cancel.Size = new System.Drawing.Size(75, 23);
            this.sBtn_Cancel.TabIndex = 0;
            this.sBtn_Cancel.Text = "Cancel";
            // 
            // gridView_QCRoles
            // 
            this.gridView_QCRoles.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colRoleCode,
            this.colRoleName});
            this.gridView_QCRoles.GridControl = this.gridControl_QCRoles;
            this.gridView_QCRoles.Name = "gridView_QCRoles";
            this.gridView_QCRoles.OptionsBehavior.Editable = false;
            this.gridView_QCRoles.OptionsView.ShowAutoFilterRow = true;
            this.gridView_QCRoles.OptionsView.ShowDetailButtons = false;
            this.gridView_QCRoles.OptionsView.ShowGroupPanel = false;
            this.gridView_QCRoles.FocusedRowChanged += new DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventHandler(this.gridView_QCRoles_FocusedRowChanged);
            // 
            // colRoleCode
            // 
            this.colRoleCode.Caption = "RoleCode";
            this.colRoleCode.FieldName = "RoleCode";
            this.colRoleCode.Name = "colRoleCode";
            this.colRoleCode.Visible = true;
            this.colRoleCode.VisibleIndex = 0;
            // 
            // colRoleName
            // 
            this.colRoleName.Caption = "RoleName";
            this.colRoleName.FieldName = "RoleName";
            this.colRoleName.Name = "colRoleName";
            this.colRoleName.Visible = true;
            this.colRoleName.VisibleIndex = 1;
            // 
            // gridControl_QCRoles
            // 
            this.gridControl_QCRoles.DataSource = this.bindingSource_QCRoles;
            this.gridControl_QCRoles.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gridControl_QCRoles.EmbeddedNavigator.Name = "";
            this.gridControl_QCRoles.Location = new System.Drawing.Point(0, 33);
            this.gridControl_QCRoles.MainView = this.gridView_QCRoles;
            this.gridControl_QCRoles.Name = "gridControl_QCRoles";
            this.gridControl_QCRoles.Size = new System.Drawing.Size(474, 361);
            this.gridControl_QCRoles.TabIndex = 3;
            this.gridControl_QCRoles.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView_QCRoles,
            this.gridView2});
            // 
            // bindingSource_QCRoles
            // 
            this.bindingSource_QCRoles.DataSource = typeof(PH.MobileQC.BO.QC_QCRole);
            // 
            // gridView2
            // 
            this.gridView2.GridControl = this.gridControl_QCRoles;
            this.gridView2.Name = "gridView2";
            // 
            // QCRoleChooseForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(474, 394);
            this.Controls.Add(this.gridControl_QCRoles);
            this.Controls.Add(this.panelControl1);
            this.Name = "QCRoleChooseForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "QCRoleChooseForm";
            this.Load += new System.EventHandler(this.QCRoleChooseForm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).EndInit();
            this.panelControl1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.gridView_QCRoles)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl_QCRoles)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource_QCRoles)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView2)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.PanelControl panelControl1;
        private DevExpress.XtraEditors.SimpleButton sBtn_OK;
        private DevExpress.XtraEditors.SimpleButton sBtn_Cancel;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView_QCRoles;
        private DevExpress.XtraGrid.GridControl gridControl_QCRoles;
        private System.Windows.Forms.BindingSource bindingSource_QCRoles;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView2;
        private DevExpress.XtraGrid.Columns.GridColumn colRoleCode;
        private DevExpress.XtraGrid.Columns.GridColumn colRoleName;
    }
}