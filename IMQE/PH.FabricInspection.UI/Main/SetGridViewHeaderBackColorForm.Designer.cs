namespace PH.FabricInspection.UI.Main
{
    partial class SetGridViewHeaderBackColorForm
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
            this.btnColor1 = new DevExpress.XtraEditors.SimpleButton();
            this.btnColor2 = new DevExpress.XtraEditors.SimpleButton();
            this.colorEdit1 = new DevExpress.XtraEditors.ColorEdit();
            this.colorEdit2 = new DevExpress.XtraEditors.ColorEdit();
            this.txtFlag = new DevExpress.XtraEditors.ComboBoxEdit();
            this.txtColumnName = new DevExpress.XtraEditors.TextEdit();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.txtFieldName = new DevExpress.XtraEditors.TextEdit();
            this.colorEdit3 = new DevExpress.XtraEditors.ColorEdit();
            this.btnColor3 = new DevExpress.XtraEditors.SimpleButton();
            this.gridControl1 = new DevExpress.XtraGrid.GridControl();
            this.gridView1 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.gridColumn1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn2 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn3 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn4 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn5 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemMemoEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemMemoEdit();
            this.gridView2 = new DevExpress.XtraGrid.Views.Grid.GridView();
            ((System.ComponentModel.ISupportInitialize)(this.colorEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.colorEdit2.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtFlag.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtColumnName.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtFieldName.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.colorEdit3.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemMemoEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView2)).BeginInit();
            this.SuspendLayout();
            // 
            // btnColor1
            // 
            this.btnColor1.Location = new System.Drawing.Point(212, 38);
            this.btnColor1.Name = "btnColor1";
            this.btnColor1.Size = new System.Drawing.Size(75, 23);
            this.btnColor1.TabIndex = 0;
            this.btnColor1.Text = "Set Color1";
            this.btnColor1.Click += new System.EventHandler(this.btnColor1_Click);
            // 
            // btnColor2
            // 
            this.btnColor2.Location = new System.Drawing.Point(212, 71);
            this.btnColor2.Name = "btnColor2";
            this.btnColor2.Size = new System.Drawing.Size(75, 23);
            this.btnColor2.TabIndex = 1;
            this.btnColor2.Text = "Set Color2";
            this.btnColor2.Click += new System.EventHandler(this.btnColor2_Click);
            // 
            // colorEdit1
            // 
            this.colorEdit1.EditValue = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colorEdit1.Location = new System.Drawing.Point(48, 40);
            this.colorEdit1.Name = "colorEdit1";
            this.colorEdit1.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.colorEdit1.Size = new System.Drawing.Size(145, 21);
            this.colorEdit1.TabIndex = 2;
            // 
            // colorEdit2
            // 
            this.colorEdit2.EditValue = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.colorEdit2.Location = new System.Drawing.Point(48, 73);
            this.colorEdit2.Name = "colorEdit2";
            this.colorEdit2.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.colorEdit2.Size = new System.Drawing.Size(145, 21);
            this.colorEdit2.TabIndex = 3;
            // 
            // txtFlag
            // 
            this.txtFlag.EditValue = "Fabric";
            this.txtFlag.Location = new System.Drawing.Point(48, 10);
            this.txtFlag.Name = "txtFlag";
            this.txtFlag.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtFlag.Properties.Items.AddRange(new object[] {
            "Fabric",
            "BandLace",
            "Elastic",
            "BraCup",
            "Accessories"});
            this.txtFlag.Size = new System.Drawing.Size(145, 21);
            this.txtFlag.TabIndex = 4;
            // 
            // txtColumnName
            // 
            this.txtColumnName.Location = new System.Drawing.Point(48, 153);
            this.txtColumnName.Name = "txtColumnName";
            this.txtColumnName.Size = new System.Drawing.Size(239, 21);
            this.txtColumnName.TabIndex = 5;
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(48, 137);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(79, 14);
            this.labelControl1.TabIndex = 6;
            this.labelControl1.Text = "Column Name:";
            // 
            // labelControl2
            // 
            this.labelControl2.Location = new System.Drawing.Point(48, 183);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(63, 14);
            this.labelControl2.TabIndex = 8;
            this.labelControl2.Text = "Field Name:";
            // 
            // txtFieldName
            // 
            this.txtFieldName.Location = new System.Drawing.Point(48, 199);
            this.txtFieldName.Name = "txtFieldName";
            this.txtFieldName.Size = new System.Drawing.Size(239, 21);
            this.txtFieldName.TabIndex = 7;
            // 
            // colorEdit3
            // 
            this.colorEdit3.EditValue = System.Drawing.Color.FromArgb(((int)(((byte)(217)))), ((int)(((byte)(217)))), ((int)(((byte)(217)))));
            this.colorEdit3.Location = new System.Drawing.Point(48, 106);
            this.colorEdit3.Name = "colorEdit3";
            this.colorEdit3.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.colorEdit3.Size = new System.Drawing.Size(145, 21);
            this.colorEdit3.TabIndex = 10;
            // 
            // btnColor3
            // 
            this.btnColor3.Location = new System.Drawing.Point(212, 104);
            this.btnColor3.Name = "btnColor3";
            this.btnColor3.Size = new System.Drawing.Size(75, 23);
            this.btnColor3.TabIndex = 9;
            this.btnColor3.Text = "Set Color3";
            this.btnColor3.Click += new System.EventHandler(this.btnColor3_Click);
            // 
            // gridControl1
            // 
            this.gridControl1.EmbeddedNavigator.Name = "";
            this.gridControl1.Location = new System.Drawing.Point(301, 12);
            this.gridControl1.MainView = this.gridView1;
            this.gridControl1.Name = "gridControl1";
            this.gridControl1.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemMemoEdit1});
            this.gridControl1.Size = new System.Drawing.Size(584, 453);
            this.gridControl1.TabIndex = 11;
            this.gridControl1.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView1,
            this.gridView2});
            // 
            // gridView1
            // 
            this.gridView1.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.gridColumn1,
            this.gridColumn2,
            this.gridColumn3,
            this.gridColumn4,
            this.gridColumn5});
            this.gridView1.GridControl = this.gridControl1;
            this.gridView1.Name = "gridView1";
            this.gridView1.OptionsSelection.MultiSelectMode = DevExpress.XtraGrid.Views.Grid.GridMultiSelectMode.CellSelect;
            this.gridView1.OptionsView.ColumnAutoWidth = false;
            this.gridView1.OptionsView.RowAutoHeight = true;
            this.gridView1.OptionsView.ShowDetailButtons = false;
            this.gridView1.OptionsView.ShowGroupPanel = false;
            this.gridView1.ValidateRow += new DevExpress.XtraGrid.Views.Base.ValidateRowEventHandler(this.gridView1_ValidateRow);
            // 
            // gridColumn1
            // 
            this.gridColumn1.Caption = "FormName";
            this.gridColumn1.FieldName = "FormName";
            this.gridColumn1.Name = "gridColumn1";
            this.gridColumn1.OptionsColumn.AllowEdit = false;
            // 
            // gridColumn2
            // 
            this.gridColumn2.Caption = "ControlName";
            this.gridColumn2.FieldName = "ControlName";
            this.gridColumn2.Name = "gridColumn2";
            this.gridColumn2.OptionsColumn.AllowEdit = false;
            this.gridColumn2.Visible = true;
            this.gridColumn2.VisibleIndex = 0;
            this.gridColumn2.Width = 111;
            // 
            // gridColumn3
            // 
            this.gridColumn3.Caption = "ControlProperty";
            this.gridColumn3.FieldName = "ControlProperty";
            this.gridColumn3.Name = "gridColumn3";
            this.gridColumn3.OptionsColumn.AllowEdit = false;
            this.gridColumn3.Visible = true;
            this.gridColumn3.VisibleIndex = 1;
            this.gridColumn3.Width = 119;
            // 
            // gridColumn4
            // 
            this.gridColumn4.Caption = "LangID";
            this.gridColumn4.FieldName = "LangID";
            this.gridColumn4.Name = "gridColumn4";
            this.gridColumn4.OptionsColumn.AllowEdit = false;
            this.gridColumn4.Visible = true;
            this.gridColumn4.VisibleIndex = 2;
            this.gridColumn4.Width = 50;
            // 
            // gridColumn5
            // 
            this.gridColumn5.Caption = "Text";
            this.gridColumn5.ColumnEdit = this.repositoryItemMemoEdit1;
            this.gridColumn5.FieldName = "Text";
            this.gridColumn5.Name = "gridColumn5";
            this.gridColumn5.Visible = true;
            this.gridColumn5.VisibleIndex = 3;
            this.gridColumn5.Width = 271;
            // 
            // repositoryItemMemoEdit1
            // 
            this.repositoryItemMemoEdit1.Name = "repositoryItemMemoEdit1";
            // 
            // gridView2
            // 
            this.gridView2.GridControl = this.gridControl1;
            this.gridView2.Name = "gridView2";
            // 
            // SetGridViewHeaderBackColorForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(897, 477);
            this.Controls.Add(this.gridControl1);
            this.Controls.Add(this.colorEdit3);
            this.Controls.Add(this.btnColor3);
            this.Controls.Add(this.labelControl2);
            this.Controls.Add(this.txtFieldName);
            this.Controls.Add(this.labelControl1);
            this.Controls.Add(this.txtColumnName);
            this.Controls.Add(this.txtFlag);
            this.Controls.Add(this.colorEdit2);
            this.Controls.Add(this.colorEdit1);
            this.Controls.Add(this.btnColor2);
            this.Controls.Add(this.btnColor1);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "SetGridViewHeaderBackColorForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "SetGridViewHeaderBackColorForm";
            ((System.ComponentModel.ISupportInitialize)(this.colorEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.colorEdit2.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtFlag.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtColumnName.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtFieldName.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.colorEdit3.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemMemoEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView2)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.SimpleButton btnColor1;
        private DevExpress.XtraEditors.SimpleButton btnColor2;
        private DevExpress.XtraEditors.ColorEdit colorEdit1;
        private DevExpress.XtraEditors.ColorEdit colorEdit2;
        private DevExpress.XtraEditors.ComboBoxEdit txtFlag;
        private DevExpress.XtraEditors.TextEdit txtColumnName;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.TextEdit txtFieldName;
        private DevExpress.XtraEditors.ColorEdit colorEdit3;
        private DevExpress.XtraEditors.SimpleButton btnColor3;
        private DevExpress.XtraGrid.GridControl gridControl1;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView1;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView2;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn1;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn2;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn3;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn4;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn5;
        private DevExpress.XtraEditors.Repository.RepositoryItemMemoEdit repositoryItemMemoEdit1;
    }
}