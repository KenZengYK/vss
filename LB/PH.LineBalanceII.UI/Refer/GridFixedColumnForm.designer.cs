namespace PH.LineBalanceII.UI
{
    partial class GridFixedColumnForm
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
            this.gridControl = new DevExpress.XtraGrid.GridControl();
            this.gridViewSetColumn = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colColumnName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colColumnOp = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemComboBox1 = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.panel1 = new System.Windows.Forms.Panel();
            this.btnOK = new DevExpress.XtraEditors.SimpleButton();
            this.btnCancel = new DevExpress.XtraEditors.SimpleButton();
            this.btnCancelAll = new DevExpress.XtraEditors.SimpleButton();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridViewSetColumn)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            this.panel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // gridControl
            // 
            this.gridControl.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gridControl.EmbeddedNavigator.Name = "";
            this.gridControl.Location = new System.Drawing.Point(0, 0);
            this.gridControl.MainView = this.gridViewSetColumn;
            this.gridControl.Name = "gridControl";
            this.gridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemComboBox1});
            this.gridControl.Size = new System.Drawing.Size(465, 492);
            this.gridControl.TabIndex = 0;
            this.gridControl.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridViewSetColumn});
            // 
            // gridViewSetColumn
            // 
            this.gridViewSetColumn.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colColumnName,
            this.colColumnOp});
            this.gridViewSetColumn.GridControl = this.gridControl;
            this.gridViewSetColumn.Name = "gridViewSetColumn";
            this.gridViewSetColumn.OptionsView.ShowGroupPanel = false;
            // 
            // colColumnName
            // 
            this.colColumnName.Caption = "網格列";
            this.colColumnName.FieldName = "ColName";
            this.colColumnName.Name = "colColumnName";
            this.colColumnName.OptionsColumn.AllowEdit = false;
            this.colColumnName.Visible = true;
            this.colColumnName.VisibleIndex = 0;
            this.colColumnName.Width = 199;
            // 
            // colColumnOp
            // 
            this.colColumnOp.Caption = "鎖定設置";
            this.colColumnOp.ColumnEdit = this.repositoryItemComboBox1;
            this.colColumnOp.FieldName = "ColFixed";
            this.colColumnOp.Name = "colColumnOp";
            this.colColumnOp.Visible = true;
            this.colColumnOp.VisibleIndex = 1;
            this.colColumnOp.Width = 296;
            // 
            // repositoryItemComboBox1
            // 
            this.repositoryItemComboBox1.AutoHeight = false;
            this.repositoryItemComboBox1.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemComboBox1.Items.AddRange(new object[] {
            "None",
            "Left",
            "Right"});
            this.repositoryItemComboBox1.Name = "repositoryItemComboBox1";
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.btnCancelAll);
            this.panel1.Controls.Add(this.btnOK);
            this.panel1.Controls.Add(this.btnCancel);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.panel1.Location = new System.Drawing.Point(0, 443);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(465, 49);
            this.panel1.TabIndex = 1;
            // 
            // btnOK
            // 
            this.btnOK.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.btnOK.Location = new System.Drawing.Point(301, 14);
            this.btnOK.Name = "btnOK";
            this.btnOK.Size = new System.Drawing.Size(75, 23);
            this.btnOK.TabIndex = 8;
            this.btnOK.Text = "確定";
            this.btnOK.Click += new System.EventHandler(this.btnOK_Click);
            // 
            // btnCancel
            // 
            this.btnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnCancel.Location = new System.Drawing.Point(382, 14);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(75, 23);
            this.btnCancel.TabIndex = 7;
            this.btnCancel.Text = "取消";
            this.btnCancel.Click += new System.EventHandler(this.btnCancel_Click);
            // 
            // btnCancelAll
            // 
            this.btnCancelAll.Location = new System.Drawing.Point(12, 14);
            this.btnCancelAll.Name = "btnCancelAll";
            this.btnCancelAll.Size = new System.Drawing.Size(102, 23);
            this.btnCancelAll.TabIndex = 9;
            this.btnCancelAll.Text = "取消所有鎖定";
            this.btnCancelAll.Click += new System.EventHandler(this.btnCancelAll_Click);
            // 
            // GridFixedColumnForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(465, 492);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.gridControl);
            this.MaximizeBox = false;
            this.Name = "GridFixedColumnForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "網格鎖定列";
            ((System.ComponentModel.ISupportInitialize)(this.gridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridViewSetColumn)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            this.panel1.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.GridControl gridControl;
        private DevExpress.XtraGrid.Views.Grid.GridView gridViewSetColumn;
        private DevExpress.XtraGrid.Columns.GridColumn colColumnName;
        private DevExpress.XtraGrid.Columns.GridColumn colColumnOp;
        private System.Windows.Forms.Panel panel1;
        private DevExpress.XtraEditors.SimpleButton btnOK;
        private DevExpress.XtraEditors.SimpleButton btnCancel;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox repositoryItemComboBox1;
        private DevExpress.XtraEditors.SimpleButton btnCancelAll;
    }
}