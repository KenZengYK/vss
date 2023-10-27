namespace PH.POPC.UI.NewPO
{
    partial class InputItemClassCodeForm
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
            this.colPONO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colOrderLine = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colItemCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colProjectNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSupplierReference = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colClassCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.ricbClassCode = new DevExpress.XtraEditors.Repository.RepositoryItemLookUpEdit();
            this.colClassCodeCNDesc = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colClassCodeENDesc = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSupplier = new DevExpress.XtraGrid.Columns.GridColumn();
            this.label1 = new System.Windows.Forms.Label();
            this.sBtn_MatchALL = new DevExpress.XtraEditors.SimpleButton();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.ricbClassCode)).BeginInit();
            this.SuspendLayout();
            // 
            // btnCancel
            // 
            this.btnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnCancel.Image = global::PH.POPC.UI.Properties.Resources.cancel;
            this.btnCancel.Location = new System.Drawing.Point(770, 236);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(75, 28);
            this.btnCancel.TabIndex = 296;
            this.btnCancel.Text = "Cancel";
            // 
            // btnOK
            // 
            this.btnOK.Image = global::PH.POPC.UI.Properties.Resources.Save;
            this.btnOK.Location = new System.Drawing.Point(673, 236);
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
            this.ricbClassCode});
            this.gridControl1.Size = new System.Drawing.Size(833, 196);
            this.gridControl1.TabIndex = 297;
            this.gridControl1.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView1});
            // 
            // bindingSource1
            // 
            this.bindingSource1.DataSource = typeof(PH.POPC.BO.PODetail);
            // 
            // gridView1
            // 
            this.gridView1.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colPONO,
            this.colOrderLine,
            this.colItemCode,
            this.colProjectNo,
            this.colSupplierReference,
            this.colClassCode,
            this.colClassCodeCNDesc,
            this.colClassCodeENDesc,
            this.colSupplier});
            this.gridView1.CustomizationFormBounds = new System.Drawing.Rectangle(1158, 435, 208, 177);
            this.gridView1.GridControl = this.gridControl1;
            this.gridView1.Name = "gridView1";
            this.gridView1.OptionsBehavior.AutoPopulateColumns = false;
            this.gridView1.OptionsCustomization.AllowFilter = false;
            this.gridView1.OptionsCustomization.AllowGroup = false;
            this.gridView1.OptionsDetail.EnableMasterViewMode = false;
            this.gridView1.OptionsView.ShowGroupPanel = false;
            // 
            // colPONO
            // 
            this.colPONO.Caption = "PO No.";
            this.colPONO.FieldName = "PONO";
            this.colPONO.Name = "colPONO";
            this.colPONO.OptionsColumn.AllowEdit = false;
            this.colPONO.Visible = true;
            this.colPONO.VisibleIndex = 0;
            this.colPONO.Width = 71;
            // 
            // colOrderLine
            // 
            this.colOrderLine.AppearanceCell.Options.UseTextOptions = true;
            this.colOrderLine.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colOrderLine.Caption = "Line#";
            this.colOrderLine.FieldName = "OrderLine";
            this.colOrderLine.Name = "colOrderLine";
            this.colOrderLine.OptionsColumn.AllowEdit = false;
            this.colOrderLine.Visible = true;
            this.colOrderLine.VisibleIndex = 2;
            this.colOrderLine.Width = 49;
            // 
            // colItemCode
            // 
            this.colItemCode.Caption = "Our Item Code";
            this.colItemCode.FieldName = "ItemCode";
            this.colItemCode.Name = "colItemCode";
            this.colItemCode.OptionsColumn.AllowEdit = false;
            this.colItemCode.Visible = true;
            this.colItemCode.VisibleIndex = 3;
            this.colItemCode.Width = 110;
            // 
            // colProjectNo
            // 
            this.colProjectNo.Caption = "Our Proj. No.";
            this.colProjectNo.FieldName = "ProjectNo";
            this.colProjectNo.Name = "colProjectNo";
            this.colProjectNo.OptionsColumn.AllowEdit = false;
            // 
            // colSupplierReference
            // 
            this.colSupplierReference.Caption = "Supp Item Ref.";
            this.colSupplierReference.FieldName = "SupplierReference";
            this.colSupplierReference.Name = "colSupplierReference";
            this.colSupplierReference.OptionsColumn.AllowEdit = false;
            this.colSupplierReference.Visible = true;
            this.colSupplierReference.VisibleIndex = 4;
            this.colSupplierReference.Width = 116;
            // 
            // colClassCode
            // 
            this.colClassCode.AppearanceCell.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.colClassCode.AppearanceCell.Options.UseBackColor = true;
            this.colClassCode.AppearanceCell.Options.UseTextOptions = true;
            this.colClassCode.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colClassCode.Caption = "Class Code";
            this.colClassCode.ColumnEdit = this.ricbClassCode;
            this.colClassCode.FieldName = "ClassCode";
            this.colClassCode.Name = "colClassCode";
            this.colClassCode.Visible = true;
            this.colClassCode.VisibleIndex = 5;
            this.colClassCode.Width = 88;
            // 
            // ricbClassCode
            // 
            this.ricbClassCode.AutoHeight = false;
            this.ricbClassCode.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.ricbClassCode.DropDownRows = 8;
            this.ricbClassCode.Name = "ricbClassCode";
            this.ricbClassCode.NullText = "--";
            // 
            // colClassCodeCNDesc
            // 
            this.colClassCodeCNDesc.Caption = "Class Code Desc.(Chinese)";
            this.colClassCodeCNDesc.FieldName = "ClassCodeCNDesc";
            this.colClassCodeCNDesc.Name = "colClassCodeCNDesc";
            this.colClassCodeCNDesc.OptionsColumn.AllowEdit = false;
            this.colClassCodeCNDesc.Visible = true;
            this.colClassCodeCNDesc.VisibleIndex = 6;
            this.colClassCodeCNDesc.Width = 321;
            // 
            // colClassCodeENDesc
            // 
            this.colClassCodeENDesc.Caption = "Class Code Desc.(English)";
            this.colClassCodeENDesc.FieldName = "ClassCodeENDesc";
            this.colClassCodeENDesc.Name = "colClassCodeENDesc";
            this.colClassCodeENDesc.OptionsColumn.AllowEdit = false;
            // 
            // colSupplier
            // 
            this.colSupplier.Caption = "Supp";
            this.colSupplier.FieldName = "Supplier";
            this.colSupplier.Name = "colSupplier";
            this.colSupplier.Visible = true;
            this.colSupplier.VisibleIndex = 1;
            this.colSupplier.Width = 57;
            // 
            // label1
            // 
            this.label1.Location = new System.Drawing.Point(12, 251);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(78, 28);
            this.label1.TabIndex = 298;
            this.label1.DoubleClick += new System.EventHandler(this.label1_DoubleClick);
            // 
            // sBtn_MatchALL
            // 
            this.sBtn_MatchALL.Image = global::PH.POPC.UI.Properties.Resources.State_Validation_Valid;
            this.sBtn_MatchALL.Location = new System.Drawing.Point(497, 236);
            this.sBtn_MatchALL.Name = "sBtn_MatchALL";
            this.sBtn_MatchALL.Size = new System.Drawing.Size(101, 28);
            this.sBtn_MatchALL.TabIndex = 300;
            this.sBtn_MatchALL.Text = "Match ALL";
            this.sBtn_MatchALL.Click += new System.EventHandler(this.sBtn_MatchALL_Click);
            // 
            // InputItemClassCodeForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(857, 286);
            this.Controls.Add(this.sBtn_MatchALL);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.gridControl1);
            this.Controls.Add(this.btnCancel);
            this.Controls.Add(this.btnOK);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "InputItemClassCodeForm";
            this.ShowInTaskbar = false;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "Input Class Code ";
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.ricbClassCode)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.SimpleButton btnOK;
        private DevExpress.XtraEditors.SimpleButton btnCancel;
        private DevExpress.XtraGrid.GridControl gridControl1;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView1;
        private System.Windows.Forms.BindingSource bindingSource1;
        private DevExpress.XtraGrid.Columns.GridColumn colPONO;
        private DevExpress.XtraGrid.Columns.GridColumn colOrderLine;
        private DevExpress.XtraGrid.Columns.GridColumn colItemCode;
        private DevExpress.XtraGrid.Columns.GridColumn colProjectNo;
        private DevExpress.XtraGrid.Columns.GridColumn colSupplierReference;
        private DevExpress.XtraGrid.Columns.GridColumn colClassCode;
        private DevExpress.XtraGrid.Columns.GridColumn colClassCodeCNDesc;
        private DevExpress.XtraGrid.Columns.GridColumn colClassCodeENDesc;
        private DevExpress.XtraEditors.Repository.RepositoryItemLookUpEdit ricbClassCode;
        private System.Windows.Forms.Label label1;
        private DevExpress.XtraGrid.Columns.GridColumn colSupplier;
        private DevExpress.XtraEditors.SimpleButton sBtn_MatchALL;
    }
}