namespace PH.SPC.UI.Main
{
    partial class ActionNavigationForm
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
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.gridControl = new DevExpress.XtraGrid.GridControl();
            this.bindingSource1 = new System.Windows.Forms.BindingSource(this.components);
            this.gridView = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colCheckFlag = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemCheckEdit_Flag = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            this.colFactory = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSampleOrderType = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colEnglish_Name = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colChinese_Name = new DevExpress.XtraGrid.Columns.GridColumn();
            this.txtStage = new DevExpress.XtraEditors.LookUpEdit();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.pnlBottom = new System.Windows.Forms.Panel();
            this.btnCancel = new DevExpress.XtraEditors.SimpleButton();
            this.btnOK = new DevExpress.XtraEditors.SimpleButton();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit_Flag)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtStage.Properties)).BeginInit();
            this.pnlBottom.SuspendLayout();
            this.SuspendLayout();
            // 
            // labelControl2
            // 
            this.labelControl2.Location = new System.Drawing.Point(26, 46);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(111, 14);
            this.labelControl2.TabIndex = 9;
            this.labelControl2.Text = "2. Select Smpl Type";
            // 
            // gridControl
            // 
            this.gridControl.DataSource = this.bindingSource1;
            this.gridControl.EmbeddedNavigator.Name = "";
            this.gridControl.Location = new System.Drawing.Point(26, 71);
            this.gridControl.MainView = this.gridView;
            this.gridControl.Name = "gridControl";
            this.gridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemCheckEdit_Flag});
            this.gridControl.Size = new System.Drawing.Size(656, 275);
            this.gridControl.TabIndex = 8;
            this.gridControl.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView});
            // 
            // gridView
            // 
            this.gridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colCheckFlag,
            this.colFactory,
            this.colSampleOrderType,
            this.colEnglish_Name,
            this.colChinese_Name});
            this.gridView.GridControl = this.gridControl;
            this.gridView.Name = "gridView";
            this.gridView.OptionsView.ColumnAutoWidth = false;
            this.gridView.OptionsView.ShowGroupPanel = false;
            // 
            // colCheckFlag
            // 
            this.colCheckFlag.ColumnEdit = this.repositoryItemCheckEdit_Flag;
            this.colCheckFlag.FieldName = "CheckFlag";
            this.colCheckFlag.Name = "colCheckFlag";
            this.colCheckFlag.UnboundType = DevExpress.Data.UnboundColumnType.Boolean;
            this.colCheckFlag.Visible = true;
            this.colCheckFlag.VisibleIndex = 0;
            this.colCheckFlag.Width = 56;
            // 
            // repositoryItemCheckEdit_Flag
            // 
            this.repositoryItemCheckEdit_Flag.AutoHeight = false;
            this.repositoryItemCheckEdit_Flag.Name = "repositoryItemCheckEdit_Flag";
            this.repositoryItemCheckEdit_Flag.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            // 
            // colFactory
            // 
            this.colFactory.Caption = "Factory";
            this.colFactory.FieldName = "Factory";
            this.colFactory.Name = "colFactory";
            this.colFactory.OptionsColumn.AllowEdit = false;
            // 
            // colSampleOrderType
            // 
            this.colSampleOrderType.Caption = "Smpl Type";
            this.colSampleOrderType.FieldName = "SampleOrderType";
            this.colSampleOrderType.Name = "colSampleOrderType";
            this.colSampleOrderType.OptionsColumn.AllowEdit = false;
            this.colSampleOrderType.Visible = true;
            this.colSampleOrderType.VisibleIndex = 1;
            this.colSampleOrderType.Width = 80;
            // 
            // colEnglish_Name
            // 
            this.colEnglish_Name.Caption = "Desc. (EN)";
            this.colEnglish_Name.FieldName = "English_Name";
            this.colEnglish_Name.Name = "colEnglish_Name";
            this.colEnglish_Name.OptionsColumn.AllowEdit = false;
            this.colEnglish_Name.Visible = true;
            this.colEnglish_Name.VisibleIndex = 2;
            this.colEnglish_Name.Width = 240;
            // 
            // colChinese_Name
            // 
            this.colChinese_Name.Caption = "Desc. (CN)";
            this.colChinese_Name.FieldName = "Chinese_Name";
            this.colChinese_Name.Name = "colChinese_Name";
            this.colChinese_Name.OptionsColumn.AllowEdit = false;
            this.colChinese_Name.Visible = true;
            this.colChinese_Name.VisibleIndex = 3;
            this.colChinese_Name.Width = 240;
            // 
            // txtStage
            // 
            this.txtStage.Location = new System.Drawing.Point(135, 15);
            this.txtStage.Name = "txtStage";
            this.txtStage.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtStage.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("DataType", "Code", 50),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("DescEN", "Desc. (EN)", 160),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("DescCN", "Desc. (CN)", 160)});
            this.txtStage.Properties.NullText = "";
            this.txtStage.Properties.PopupWidth = 550;
            this.txtStage.Size = new System.Drawing.Size(208, 21);
            this.txtStage.TabIndex = 7;
            this.txtStage.EditValueChanged += new System.EventHandler(this.txtStage_EditValueChanged);
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(26, 18);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(85, 14);
            this.labelControl1.TabIndex = 6;
            this.labelControl1.Text = "1. Select Stage";
            // 
            // pnlBottom
            // 
            this.pnlBottom.Controls.Add(this.btnCancel);
            this.pnlBottom.Controls.Add(this.btnOK);
            this.pnlBottom.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.pnlBottom.Location = new System.Drawing.Point(0, 352);
            this.pnlBottom.Name = "pnlBottom";
            this.pnlBottom.Size = new System.Drawing.Size(694, 46);
            this.pnlBottom.TabIndex = 3;
            // 
            // btnCancel
            // 
            this.btnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnCancel.Location = new System.Drawing.Point(563, 12);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(75, 23);
            this.btnCancel.TabIndex = 8;
            this.btnCancel.Text = "Cancel";
            // 
            // btnOK
            // 
            this.btnOK.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.btnOK.Location = new System.Drawing.Point(454, 12);
            this.btnOK.Name = "btnOK";
            this.btnOK.Size = new System.Drawing.Size(75, 23);
            this.btnOK.TabIndex = 7;
            this.btnOK.Text = "OK";
            // 
            // ActionNavigationForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(694, 398);
            this.Controls.Add(this.labelControl2);
            this.Controls.Add(this.pnlBottom);
            this.Controls.Add(this.gridControl);
            this.Controls.Add(this.txtStage);
            this.Controls.Add(this.labelControl1);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "ActionNavigationForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Action Navigation Form";
            ((System.ComponentModel.ISupportInitialize)(this.gridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit_Flag)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtStage.Properties)).EndInit();
            this.pnlBottom.ResumeLayout(false);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraGrid.GridControl gridControl;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView;
        private DevExpress.XtraGrid.Columns.GridColumn colCheckFlag;
        private DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit repositoryItemCheckEdit_Flag;
        private DevExpress.XtraGrid.Columns.GridColumn colFactory;
        private DevExpress.XtraGrid.Columns.GridColumn colSampleOrderType;
        private DevExpress.XtraGrid.Columns.GridColumn colEnglish_Name;
        private DevExpress.XtraGrid.Columns.GridColumn colChinese_Name;
        private DevExpress.XtraEditors.LookUpEdit txtStage;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private System.Windows.Forms.Panel pnlBottom;
        private DevExpress.XtraEditors.SimpleButton btnCancel;
        private DevExpress.XtraEditors.SimpleButton btnOK;
        private System.Windows.Forms.BindingSource bindingSource1;
    }
}