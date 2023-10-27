namespace PH.FabricInspection.UI.SupplierQE.BandLace
{
    partial class sInputDefectForm
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
            this.pnlBottom = new DevExpress.XtraEditors.PanelControl();
            this.btnOK = new DevExpress.XtraEditors.SimpleButton();
            this.btnCancel = new DevExpress.XtraEditors.SimpleButton();
            this.TabControlDefect = new DevExpress.XtraTab.XtraTabControl();
            this.xtraTabPage1 = new DevExpress.XtraTab.XtraTabPage();
            this.gridControl1 = new DevExpress.XtraGrid.GridControl();
            this.bsFrequencyDefect = new System.Windows.Forms.BindingSource(this.components);
            this.gridView1 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colPHDefectCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDefectEnglishName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDefectChineseName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDefectThaiName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.xtraTabPage2 = new DevExpress.XtraTab.XtraTabPage();
            this.bsAllDefect = new System.Windows.Forms.BindingSource(this.components);
            this.gridControl2 = new DevExpress.XtraGrid.GridControl();
            this.gridView2 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.gridColumn1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn2 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn3 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn4 = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.pnlBottom)).BeginInit();
            this.pnlBottom.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.TabControlDefect)).BeginInit();
            this.TabControlDefect.SuspendLayout();
            this.xtraTabPage1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bsFrequencyDefect)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).BeginInit();
            this.xtraTabPage2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.bsAllDefect)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView2)).BeginInit();
            this.SuspendLayout();
            // 
            // pnlBottom
            // 
            this.pnlBottom.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.pnlBottom.Controls.Add(this.btnOK);
            this.pnlBottom.Controls.Add(this.btnCancel);
            this.pnlBottom.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.pnlBottom.Location = new System.Drawing.Point(0, 472);
            this.pnlBottom.Name = "pnlBottom";
            this.pnlBottom.Size = new System.Drawing.Size(918, 55);
            this.pnlBottom.TabIndex = 1;
            // 
            // btnOK
            // 
            this.btnOK.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.btnOK.Location = new System.Drawing.Point(655, 16);
            this.btnOK.Name = "btnOK";
            this.btnOK.Size = new System.Drawing.Size(75, 23);
            this.btnOK.TabIndex = 1;
            this.btnOK.Text = "OK";
            // 
            // btnCancel
            // 
            this.btnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnCancel.Location = new System.Drawing.Point(757, 16);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(75, 23);
            this.btnCancel.TabIndex = 0;
            this.btnCancel.Text = "Cancel";
            // 
            // TabControlDefect
            // 
            this.TabControlDefect.Dock = System.Windows.Forms.DockStyle.Fill;
            this.TabControlDefect.Location = new System.Drawing.Point(0, 0);
            this.TabControlDefect.Name = "TabControlDefect";
            this.TabControlDefect.SelectedTabPage = this.xtraTabPage1;
            this.TabControlDefect.Size = new System.Drawing.Size(918, 472);
            this.TabControlDefect.TabIndex = 2;
            this.TabControlDefect.TabPages.AddRange(new DevExpress.XtraTab.XtraTabPage[] {
            this.xtraTabPage1,
            this.xtraTabPage2});
            this.TabControlDefect.Text = "xtraTabControl1";
            // 
            // xtraTabPage1
            // 
            this.xtraTabPage1.Controls.Add(this.gridControl1);
            this.xtraTabPage1.Name = "xtraTabPage1";
            this.xtraTabPage1.Size = new System.Drawing.Size(909, 440);
            this.xtraTabPage1.Text = "Frequency Defect";
            // 
            // gridControl1
            // 
            this.gridControl1.DataSource = this.bsFrequencyDefect;
            this.gridControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gridControl1.EmbeddedNavigator.Name = "";
            this.gridControl1.Location = new System.Drawing.Point(0, 0);
            this.gridControl1.MainView = this.gridView1;
            this.gridControl1.Name = "gridControl1";
            this.gridControl1.Size = new System.Drawing.Size(909, 440);
            this.gridControl1.TabIndex = 0;
            this.gridControl1.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView1});
            // 
            // gridView1
            // 
            this.gridView1.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colPHDefectCode,
            this.colDefectEnglishName,
            this.colDefectChineseName,
            this.colDefectThaiName});
            this.gridView1.GridControl = this.gridControl1;
            this.gridView1.Name = "gridView1";
            this.gridView1.OptionsBehavior.Editable = false;
            this.gridView1.OptionsView.ShowDetailButtons = false;
            this.gridView1.OptionsView.ShowGroupPanel = false;
            // 
            // colPHDefectCode
            // 
            this.colPHDefectCode.Caption = "Defect Code";
            this.colPHDefectCode.FieldName = "PHDefectCode";
            this.colPHDefectCode.Name = "colPHDefectCode";
            this.colPHDefectCode.Visible = true;
            this.colPHDefectCode.VisibleIndex = 0;
            this.colPHDefectCode.Width = 93;
            // 
            // colDefectEnglishName
            // 
            this.colDefectEnglishName.Caption = "Defect Name (EN)";
            this.colDefectEnglishName.FieldName = "DefectEnglishName";
            this.colDefectEnglishName.Name = "colDefectEnglishName";
            this.colDefectEnglishName.Visible = true;
            this.colDefectEnglishName.VisibleIndex = 1;
            this.colDefectEnglishName.Width = 202;
            // 
            // colDefectChineseName
            // 
            this.colDefectChineseName.Caption = "Defect Name (CN)";
            this.colDefectChineseName.FieldName = "DefectChineseName";
            this.colDefectChineseName.Name = "colDefectChineseName";
            this.colDefectChineseName.Visible = true;
            this.colDefectChineseName.VisibleIndex = 2;
            this.colDefectChineseName.Width = 256;
            // 
            // colDefectThaiName
            // 
            this.colDefectThaiName.AppearanceCell.Font = new System.Drawing.Font("SutonnyOMJ", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.colDefectThaiName.AppearanceCell.Options.UseFont = true;
            this.colDefectThaiName.Caption = "Defect Name (BD)";
            this.colDefectThaiName.FieldName = "DefectThaiName";
            this.colDefectThaiName.Name = "colDefectThaiName";
            this.colDefectThaiName.Visible = true;
            this.colDefectThaiName.VisibleIndex = 3;
            this.colDefectThaiName.Width = 337;
            // 
            // xtraTabPage2
            // 
            this.xtraTabPage2.Controls.Add(this.gridControl2);
            this.xtraTabPage2.Name = "xtraTabPage2";
            this.xtraTabPage2.Size = new System.Drawing.Size(909, 440);
            this.xtraTabPage2.Text = "All Defect";
            // 
            // gridControl2
            // 
            this.gridControl2.DataSource = this.bsAllDefect;
            this.gridControl2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gridControl2.EmbeddedNavigator.Name = "";
            this.gridControl2.Location = new System.Drawing.Point(0, 0);
            this.gridControl2.MainView = this.gridView2;
            this.gridControl2.Name = "gridControl2";
            this.gridControl2.Size = new System.Drawing.Size(909, 440);
            this.gridControl2.TabIndex = 1;
            this.gridControl2.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView2});
            // 
            // gridView2
            // 
            this.gridView2.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.gridColumn1,
            this.gridColumn2,
            this.gridColumn3,
            this.gridColumn4});
            this.gridView2.GridControl = this.gridControl2;
            this.gridView2.Name = "gridView2";
            this.gridView2.OptionsBehavior.Editable = false;
            this.gridView2.OptionsView.ShowDetailButtons = false;
            this.gridView2.OptionsView.ShowGroupPanel = false;
            // 
            // gridColumn1
            // 
            this.gridColumn1.Caption = "Defect Code";
            this.gridColumn1.FieldName = "PHDefectCode";
            this.gridColumn1.Name = "gridColumn1";
            this.gridColumn1.Visible = true;
            this.gridColumn1.VisibleIndex = 0;
            this.gridColumn1.Width = 93;
            // 
            // gridColumn2
            // 
            this.gridColumn2.Caption = "Defect Name (EN)";
            this.gridColumn2.FieldName = "DefectEnglishName";
            this.gridColumn2.Name = "gridColumn2";
            this.gridColumn2.Visible = true;
            this.gridColumn2.VisibleIndex = 1;
            this.gridColumn2.Width = 202;
            // 
            // gridColumn3
            // 
            this.gridColumn3.Caption = "Defect Name (CN)";
            this.gridColumn3.FieldName = "DefectChineseName";
            this.gridColumn3.Name = "gridColumn3";
            this.gridColumn3.Visible = true;
            this.gridColumn3.VisibleIndex = 2;
            this.gridColumn3.Width = 256;
            // 
            // gridColumn4
            // 
            this.gridColumn4.AppearanceCell.Font = new System.Drawing.Font("SutonnyOMJ", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.gridColumn4.AppearanceCell.Options.UseFont = true;
            this.gridColumn4.Caption = "Defect Name (BD)";
            this.gridColumn4.FieldName = "DefectThaiName";
            this.gridColumn4.Name = "gridColumn4";
            this.gridColumn4.Visible = true;
            this.gridColumn4.VisibleIndex = 3;
            this.gridColumn4.Width = 337;
            // 
            // InputDefectForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(918, 527);
            this.Controls.Add(this.TabControlDefect);
            this.Controls.Add(this.pnlBottom);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "InputDefectForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Input Defect";
            ((System.ComponentModel.ISupportInitialize)(this.pnlBottom)).EndInit();
            this.pnlBottom.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.TabControlDefect)).EndInit();
            this.TabControlDefect.ResumeLayout(false);
            this.xtraTabPage1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bsFrequencyDefect)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).EndInit();
            this.xtraTabPage2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.bsAllDefect)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView2)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.PanelControl pnlBottom;
        private DevExpress.XtraTab.XtraTabControl TabControlDefect;
        private DevExpress.XtraTab.XtraTabPage xtraTabPage1;
        private DevExpress.XtraTab.XtraTabPage xtraTabPage2;
        private DevExpress.XtraGrid.GridControl gridControl1;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView1;
        private DevExpress.XtraGrid.Columns.GridColumn colPHDefectCode;
        private DevExpress.XtraGrid.Columns.GridColumn colDefectEnglishName;
        private DevExpress.XtraGrid.Columns.GridColumn colDefectChineseName;
        private DevExpress.XtraGrid.Columns.GridColumn colDefectThaiName;
        private DevExpress.XtraEditors.SimpleButton btnOK;
        private DevExpress.XtraEditors.SimpleButton btnCancel;
        private System.Windows.Forms.BindingSource bsFrequencyDefect;
        private System.Windows.Forms.BindingSource bsAllDefect;
        private DevExpress.XtraGrid.GridControl gridControl2;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView2;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn1;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn2;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn3;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn4;

    }
}