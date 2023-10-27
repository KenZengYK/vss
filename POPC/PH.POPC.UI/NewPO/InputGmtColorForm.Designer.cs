namespace PH.POPC.UI.NewPO
{
    partial class InputGmtColorForm
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
            this.btnCancel = new DevExpress.XtraEditors.SimpleButton();
            this.btnOK = new DevExpress.XtraEditors.SimpleButton();
            this.gridControl1 = new DevExpress.XtraGrid.GridControl();
            this.bindingSource1 = new System.Windows.Forms.BindingSource(this.components);
            this.gridView1 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colItemCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colColorCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colMatch = new DevExpress.XtraGrid.Columns.GridColumn();
            this.checkMatch = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            this.colGmtColorCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.ricbColor = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.colGmtColorName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSuppRef = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCust = new DevExpress.XtraGrid.Columns.GridColumn();
            this.label1 = new System.Windows.Forms.Label();
            this.btnMatchAll = new DevExpress.XtraEditors.SimpleButton();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.checkMatch)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.ricbColor)).BeginInit();
            this.SuspendLayout();
            // 
            // btnCancel
            // 
            this.btnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnCancel.Image = global::PH.POPC.UI.Properties.Resources.cancel;
            this.btnCancel.Location = new System.Drawing.Point(567, 334);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(75, 28);
            this.btnCancel.TabIndex = 296;
            this.btnCancel.Text = "Cancel";
            // 
            // btnOK
            // 
            this.btnOK.Image = global::PH.POPC.UI.Properties.Resources.Save;
            this.btnOK.Location = new System.Drawing.Point(470, 334);
            this.btnOK.Name = "btnOK";
            this.btnOK.Size = new System.Drawing.Size(75, 28);
            this.btnOK.TabIndex = 295;
            this.btnOK.Text = "Save";
            this.btnOK.Click += new System.EventHandler(this.btnOK_Click);
            // 
            // gridControl1
            // 
            this.gridControl1.DataSource = this.bindingSource1;
            this.gridControl1.EmbeddedNavigator.Name = "";
            this.gridControl1.Location = new System.Drawing.Point(12, 22);
            this.gridControl1.MainView = this.gridView1;
            this.gridControl1.Name = "gridControl1";
            this.gridControl1.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.ricbColor,
            this.checkMatch});
            this.gridControl1.Size = new System.Drawing.Size(688, 296);
            this.gridControl1.TabIndex = 297;
            this.gridControl1.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView1});
            // 
            // bindingSource1
            // 
            this.bindingSource1.DataSource = typeof(PH.POPC.BO.POItemColor);
            // 
            // gridView1
            // 
            this.gridView1.ColumnPanelRowHeight = 40;
            this.gridView1.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colItemCode,
            this.colColorCode,
            this.colMatch,
            this.colGmtColorCode,
            this.colGmtColorName,
            this.colSuppRef,
            this.colCust});
            this.gridView1.CustomizationFormBounds = new System.Drawing.Rectangle(1702, 789, 208, 177);
            this.gridView1.GridControl = this.gridControl1;
            this.gridView1.Name = "gridView1";
            this.gridView1.OptionsBehavior.AutoPopulateColumns = false;
            this.gridView1.OptionsCustomization.AllowFilter = false;
            this.gridView1.OptionsCustomization.AllowGroup = false;
            this.gridView1.OptionsDetail.EnableMasterViewMode = false;
            this.gridView1.OptionsView.AllowCellMerge = true;
            this.gridView1.OptionsView.ShowGroupPanel = false;
            // 
            // colItemCode
            // 
            this.colItemCode.Caption = "Our\r\nItem Code";
            this.colItemCode.FieldName = "ItemCode";
            this.colItemCode.Name = "colItemCode";
            this.colItemCode.OptionsColumn.AllowEdit = false;
            this.colItemCode.Visible = true;
            this.colItemCode.VisibleIndex = 0;
            this.colItemCode.Width = 70;
            // 
            // colColorCode
            // 
            this.colColorCode.Caption = "Our Item\r\nClr Code";
            this.colColorCode.FieldName = "ColorCode";
            this.colColorCode.Name = "colColorCode";
            this.colColorCode.OptionsColumn.AllowEdit = false;
            this.colColorCode.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colColorCode.Visible = true;
            this.colColorCode.VisibleIndex = 3;
            this.colColorCode.Width = 68;
            // 
            // colMatch
            // 
            this.colMatch.AppearanceHeader.Options.UseTextOptions = true;
            this.colMatch.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colMatch.Caption = "Match?";
            this.colMatch.ColumnEdit = this.checkMatch;
            this.colMatch.FieldName = "Match";
            this.colMatch.Name = "colMatch";
            this.colMatch.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colMatch.Visible = true;
            this.colMatch.VisibleIndex = 4;
            this.colMatch.Width = 52;
            // 
            // checkMatch
            // 
            this.checkMatch.AutoHeight = false;
            this.checkMatch.Name = "checkMatch";
            this.checkMatch.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            this.checkMatch.EditValueChanging += new DevExpress.XtraEditors.Controls.ChangingEventHandler(this.checkMatch_EditValueChanging);
            // 
            // colGmtColorCode
            // 
            this.colGmtColorCode.Caption = "Gmt\r\nClr Code";
            this.colGmtColorCode.ColumnEdit = this.ricbColor;
            this.colGmtColorCode.FieldName = "GmtColorCode";
            this.colGmtColorCode.Name = "colGmtColorCode";
            this.colGmtColorCode.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colGmtColorCode.Visible = true;
            this.colGmtColorCode.VisibleIndex = 5;
            this.colGmtColorCode.Width = 70;
            // 
            // ricbColor
            // 
            this.ricbColor.AutoHeight = false;
            this.ricbColor.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.ricbColor.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.ricbColor.Name = "ricbColor";
            this.ricbColor.EditValueChanging += new DevExpress.XtraEditors.Controls.ChangingEventHandler(this.ricbColor_EditValueChanging);
            // 
            // colGmtColorName
            // 
            this.colGmtColorName.Caption = "Gmt\r\nClr Name";
            this.colGmtColorName.FieldName = "GmtColorName";
            this.colGmtColorName.Name = "colGmtColorName";
            this.colGmtColorName.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colGmtColorName.Visible = true;
            this.colGmtColorName.VisibleIndex = 6;
            this.colGmtColorName.Width = 279;
            // 
            // colSuppRef
            // 
            this.colSuppRef.Caption = "Supp\r\nItem Ref.";
            this.colSuppRef.FieldName = "SuppRef";
            this.colSuppRef.Name = "colSuppRef";
            this.colSuppRef.OptionsColumn.AllowEdit = false;
            this.colSuppRef.Visible = true;
            this.colSuppRef.VisibleIndex = 2;
            this.colSuppRef.Width = 80;
            // 
            // colCust
            // 
            this.colCust.Caption = "Cust";
            this.colCust.FieldName = "Cust";
            this.colCust.Name = "colCust";
            this.colCust.OptionsColumn.AllowEdit = false;
            this.colCust.Visible = true;
            this.colCust.VisibleIndex = 1;
            this.colCust.Width = 48;
            // 
            // label1
            // 
            this.label1.Location = new System.Drawing.Point(12, 321);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(78, 28);
            this.label1.TabIndex = 298;
            this.label1.DoubleClick += new System.EventHandler(this.label1_DoubleClick);
            // 
            // btnMatchAll
            // 
            this.btnMatchAll.Image = global::PH.POPC.UI.Properties.Resources.State_Validation_Valid;
            this.btnMatchAll.Location = new System.Drawing.Point(256, 334);
            this.btnMatchAll.Name = "btnMatchAll";
            this.btnMatchAll.Size = new System.Drawing.Size(102, 28);
            this.btnMatchAll.TabIndex = 299;
            this.btnMatchAll.Text = "Match All";
            this.btnMatchAll.Click += new System.EventHandler(this.btnMatchAll_Click);
            // 
            // InputGmtColorForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(712, 374);
            this.Controls.Add(this.btnMatchAll);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.gridControl1);
            this.Controls.Add(this.btnCancel);
            this.Controls.Add(this.btnOK);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "InputGmtColorForm";
            this.ShowInTaskbar = false;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "exit key \"Our item color code match Garment color code?\"";
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.checkMatch)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.ricbColor)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.SimpleButton btnOK;
        private DevExpress.XtraEditors.SimpleButton btnCancel;
        private DevExpress.XtraGrid.GridControl gridControl1;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView1;
        private System.Windows.Forms.BindingSource bindingSource1;
        private System.Windows.Forms.Label label1;
        private DevExpress.XtraGrid.Columns.GridColumn colItemCode;
        private DevExpress.XtraGrid.Columns.GridColumn colColorCode;
        private DevExpress.XtraGrid.Columns.GridColumn colMatch;
        private DevExpress.XtraGrid.Columns.GridColumn colGmtColorCode;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox ricbColor;
        private DevExpress.XtraGrid.Columns.GridColumn colGmtColorName;
        private DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit checkMatch;
        private DevExpress.XtraGrid.Columns.GridColumn colSuppRef;
        private DevExpress.XtraEditors.SimpleButton btnMatchAll;
        private DevExpress.XtraGrid.Columns.GridColumn colCust;
    }
}