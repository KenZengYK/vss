namespace PH.MobileQC.UI.CustQC
{
    partial class SelectDefectCodeForm
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
            DevExpress.XtraGrid.GridLevelNode gridLevelNode1 = new DevExpress.XtraGrid.GridLevelNode();
            this.pnlClient = new System.Windows.Forms.Panel();
            this.gridControl1 = new DevExpress.XtraGrid.GridControl();
            this.bsDefectCode = new System.Windows.Forms.BindingSource(this.components);
            this.gridView1 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colPHDefectCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDefectChineseName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDefectEnglishName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDefectThaiName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.pnlButton = new System.Windows.Forms.Panel();
            this.btnCancel = new DevExpress.XtraEditors.SimpleButton();
            this.btnOK = new DevExpress.XtraEditors.SimpleButton();
            this.pnlClient.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bsDefectCode)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).BeginInit();
            this.pnlButton.SuspendLayout();
            this.SuspendLayout();
            // 
            // pnlClient
            // 
            this.pnlClient.Controls.Add(this.gridControl1);
            this.pnlClient.Location = new System.Drawing.Point(0, 0);
            this.pnlClient.Name = "pnlClient";
            this.pnlClient.Size = new System.Drawing.Size(663, 396);
            this.pnlClient.TabIndex = 4;
            // 
            // gridControl1
            // 
            this.gridControl1.DataSource = this.bsDefectCode;
            this.gridControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gridControl1.EmbeddedNavigator.Name = "";
            gridLevelNode1.RelationName = "Level1";
            this.gridControl1.LevelTree.Nodes.AddRange(new DevExpress.XtraGrid.GridLevelNode[] {
            gridLevelNode1});
            this.gridControl1.Location = new System.Drawing.Point(0, 0);
            this.gridControl1.MainView = this.gridView1;
            this.gridControl1.Name = "gridControl1";
            this.gridControl1.Size = new System.Drawing.Size(663, 396);
            this.gridControl1.TabIndex = 0;
            this.gridControl1.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView1});
            this.gridControl1.Load += new System.EventHandler(this.gridControl1_Load);
            // 
            // gridView1
            // 
            this.gridView1.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colPHDefectCode,
            this.colDefectChineseName,
            this.colDefectEnglishName,
            this.colDefectThaiName});
            this.gridView1.GridControl = this.gridControl1;
            this.gridView1.Name = "gridView1";
            this.gridView1.OptionsView.ShowDetailButtons = false;
            // 
            // colPHDefectCode
            // 
            this.colPHDefectCode.AppearanceCell.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F);
            this.colPHDefectCode.AppearanceCell.Options.UseFont = true;
            this.colPHDefectCode.Caption = "Defect Code";
            this.colPHDefectCode.FieldName = "PHDefectCode";
            this.colPHDefectCode.Name = "colPHDefectCode";
            this.colPHDefectCode.OptionsColumn.AllowEdit = false;
            this.colPHDefectCode.Visible = true;
            this.colPHDefectCode.VisibleIndex = 0;
            this.colPHDefectCode.Width = 101;
            // 
            // colDefectChineseName
            // 
            this.colDefectChineseName.AppearanceCell.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F);
            this.colDefectChineseName.AppearanceCell.Options.UseFont = true;
            this.colDefectChineseName.Caption = "Defect Name(CN)";
            this.colDefectChineseName.FieldName = "DefectChineseName";
            this.colDefectChineseName.Name = "colDefectChineseName";
            this.colDefectChineseName.OptionsColumn.AllowEdit = false;
            this.colDefectChineseName.Visible = true;
            this.colDefectChineseName.VisibleIndex = 1;
            this.colDefectChineseName.Width = 179;
            // 
            // colDefectEnglishName
            // 
            this.colDefectEnglishName.AppearanceCell.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F);
            this.colDefectEnglishName.AppearanceCell.Options.UseFont = true;
            this.colDefectEnglishName.Caption = "Defect Name(EN)";
            this.colDefectEnglishName.FieldName = "DefectEnglishName";
            this.colDefectEnglishName.Name = "colDefectEnglishName";
            this.colDefectEnglishName.OptionsColumn.AllowEdit = false;
            this.colDefectEnglishName.Visible = true;
            this.colDefectEnglishName.VisibleIndex = 2;
            this.colDefectEnglishName.Width = 179;
            // 
            // colDefectThaiName
            // 
            this.colDefectThaiName.AppearanceCell.Font = new System.Drawing.Font("SutonnyOMJ", 9F);
            this.colDefectThaiName.AppearanceCell.Options.UseFont = true;
            this.colDefectThaiName.Caption = "Defect Name(BD)";
            this.colDefectThaiName.FieldName = "DefectThaiName";
            this.colDefectThaiName.Name = "colDefectThaiName";
            this.colDefectThaiName.OptionsColumn.AllowEdit = false;
            this.colDefectThaiName.Visible = true;
            this.colDefectThaiName.VisibleIndex = 3;
            this.colDefectThaiName.Width = 183;
            // 
            // pnlButton
            // 
            this.pnlButton.Controls.Add(this.btnCancel);
            this.pnlButton.Controls.Add(this.btnOK);
            this.pnlButton.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.pnlButton.Location = new System.Drawing.Point(0, 396);
            this.pnlButton.Name = "pnlButton";
            this.pnlButton.Size = new System.Drawing.Size(663, 54);
            this.pnlButton.TabIndex = 5;
            // 
            // btnCancel
            // 
            this.btnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnCancel.Location = new System.Drawing.Point(508, 18);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(75, 23);
            this.btnCancel.TabIndex = 6;
            this.btnCancel.Text = "Cancel";
            // 
            // btnOK
            // 
            this.btnOK.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.btnOK.Location = new System.Drawing.Point(405, 18);
            this.btnOK.Name = "btnOK";
            this.btnOK.Size = new System.Drawing.Size(75, 23);
            this.btnOK.TabIndex = 5;
            this.btnOK.Text = "OK";
            // 
            // SelectDefectCodeForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(663, 450);
            this.Controls.Add(this.pnlButton);
            this.Controls.Add(this.pnlClient);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "SelectDefectCodeForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Select Defect Form";
            this.pnlClient.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bsDefectCode)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).EndInit();
            this.pnlButton.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel pnlClient;
        private System.Windows.Forms.Panel pnlButton;
        private DevExpress.XtraEditors.SimpleButton btnCancel;
        private DevExpress.XtraEditors.SimpleButton btnOK;
        private System.Windows.Forms.BindingSource bsDefectCode;
        private DevExpress.XtraGrid.GridControl gridControl1;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView1;
        private DevExpress.XtraGrid.Columns.GridColumn colPHDefectCode;
        private DevExpress.XtraGrid.Columns.GridColumn colDefectChineseName;
        private DevExpress.XtraGrid.Columns.GridColumn colDefectEnglishName;
        private DevExpress.XtraGrid.Columns.GridColumn colDefectThaiName;
    }
}