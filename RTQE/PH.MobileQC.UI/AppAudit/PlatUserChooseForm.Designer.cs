namespace PH.MobileQC.UI.AppAudit
{
    partial class PlatUserChooseForm
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
            this.gridControl_PlatUsers = new DevExpress.XtraGrid.GridControl();
            this.bindingSource_PlatUsers = new System.Windows.Forms.BindingSource(this.components);
            this.gridView_PlatUsers = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colUserCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colUserName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridView2 = new DevExpress.XtraGrid.Views.Grid.GridView();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).BeginInit();
            this.panelControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl_PlatUsers)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource_PlatUsers)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView_PlatUsers)).BeginInit();
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
            this.panelControl1.Size = new System.Drawing.Size(655, 33);
            this.panelControl1.TabIndex = 0;
            // 
            // sBtn_OK
            // 
            this.sBtn_OK.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.sBtn_OK.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.sBtn_OK.Location = new System.Drawing.Point(575, 5);
            this.sBtn_OK.Name = "sBtn_OK";
            this.sBtn_OK.Size = new System.Drawing.Size(75, 23);
            this.sBtn_OK.TabIndex = 0;
            this.sBtn_OK.Text = "OK";
            // 
            // sBtn_Cancel
            // 
            this.sBtn_Cancel.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.sBtn_Cancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.sBtn_Cancel.Location = new System.Drawing.Point(498, 5);
            this.sBtn_Cancel.Name = "sBtn_Cancel";
            this.sBtn_Cancel.Size = new System.Drawing.Size(75, 23);
            this.sBtn_Cancel.TabIndex = 0;
            this.sBtn_Cancel.Text = "Cancel";
            // 
            // gridControl_PlatUsers
            // 
            this.gridControl_PlatUsers.DataSource = this.bindingSource_PlatUsers;
            this.gridControl_PlatUsers.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gridControl_PlatUsers.EmbeddedNavigator.Name = "";
            this.gridControl_PlatUsers.Location = new System.Drawing.Point(0, 33);
            this.gridControl_PlatUsers.MainView = this.gridView_PlatUsers;
            this.gridControl_PlatUsers.Name = "gridControl_PlatUsers";
            this.gridControl_PlatUsers.Size = new System.Drawing.Size(655, 399);
            this.gridControl_PlatUsers.TabIndex = 1;
            this.gridControl_PlatUsers.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView_PlatUsers,
            this.gridView2});
            // 
            // bindingSource_PlatUsers
            // 
            this.bindingSource_PlatUsers.DataSource = typeof(PH.MobileQC.UI.AppAudit.PlatUserBO);
            // 
            // gridView_PlatUsers
            // 
            this.gridView_PlatUsers.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colUserCode,
            this.colUserName});
            this.gridView_PlatUsers.GridControl = this.gridControl_PlatUsers;
            this.gridView_PlatUsers.Name = "gridView_PlatUsers";
            this.gridView_PlatUsers.OptionsBehavior.Editable = false;
            this.gridView_PlatUsers.OptionsView.ShowAutoFilterRow = true;
            this.gridView_PlatUsers.OptionsView.ShowGroupPanel = false;
            this.gridView_PlatUsers.FocusedRowChanged += new DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventHandler(this.gridView_PlatUsers_FocusedRowChanged);
            // 
            // colUserCode
            // 
            this.colUserCode.Caption = "UserCode";
            this.colUserCode.FieldName = "UserCode";
            this.colUserCode.Name = "colUserCode";
            this.colUserCode.Visible = true;
            this.colUserCode.VisibleIndex = 0;
            this.colUserCode.Width = 263;
            // 
            // colUserName
            // 
            this.colUserName.Caption = "UserName";
            this.colUserName.FieldName = "UserName";
            this.colUserName.Name = "colUserName";
            this.colUserName.Visible = true;
            this.colUserName.VisibleIndex = 1;
            this.colUserName.Width = 371;
            // 
            // gridView2
            // 
            this.gridView2.GridControl = this.gridControl_PlatUsers;
            this.gridView2.Name = "gridView2";
            // 
            // PlatUserChooseForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(655, 432);
            this.Controls.Add(this.gridControl_PlatUsers);
            this.Controls.Add(this.panelControl1);
            this.Name = "PlatUserChooseForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "PlatUserChooseForm";
            this.Load += new System.EventHandler(this.PlatUserChooseForm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).EndInit();
            this.panelControl1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.gridControl_PlatUsers)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource_PlatUsers)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView_PlatUsers)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView2)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.PanelControl panelControl1;
        private DevExpress.XtraGrid.GridControl gridControl_PlatUsers;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView_PlatUsers;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView2;
        private DevExpress.XtraEditors.SimpleButton sBtn_OK;
        private DevExpress.XtraEditors.SimpleButton sBtn_Cancel;
        private System.Windows.Forms.BindingSource bindingSource_PlatUsers;
        private DevExpress.XtraGrid.Columns.GridColumn colUserCode;
        private DevExpress.XtraGrid.Columns.GridColumn colUserName;
    }
}