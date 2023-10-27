namespace PH.POPC.UI.NewPO
{
    partial class InputReplenishmentsForm
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
            this.colReplenishment = new DevExpress.XtraGrid.Columns.GridColumn();
            this.ricbReplenishment = new DevExpress.XtraEditors.Repository.RepositoryItemLookUpEdit();
            this.colReplenishmentDesc = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colClassCodeENDesc = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSupplier = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colWorkOrderNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.ribeWO = new DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit();
            this.label1 = new System.Windows.Forms.Label();
            this.popupMenu1 = new DevExpress.XtraBars.PopupMenu(this.components);
            this.btnCopyClassCode = new DevExpress.XtraBars.BarButtonItem();
            this.barManager1 = new DevExpress.XtraBars.BarManager(this.components);
            this.bar2 = new DevExpress.XtraBars.Bar();
            this.barDockControlTop = new DevExpress.XtraBars.BarDockControl();
            this.barDockControlBottom = new DevExpress.XtraBars.BarDockControl();
            this.barDockControlLeft = new DevExpress.XtraBars.BarDockControl();
            this.barDockControlRight = new DevExpress.XtraBars.BarDockControl();
            this.btnDefaultAll = new DevExpress.XtraEditors.SimpleButton();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.ricbReplenishment)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.ribeWO)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.popupMenu1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.barManager1)).BeginInit();
            this.SuspendLayout();
            // 
            // btnCancel
            // 
            this.btnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnCancel.Image = global::PH.POPC.UI.Properties.Resources.cancel;
            this.btnCancel.Location = new System.Drawing.Point(770, 532);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(75, 28);
            this.btnCancel.TabIndex = 296;
            this.btnCancel.Text = "Cancel";
            // 
            // btnOK
            // 
            this.btnOK.Image = global::PH.POPC.UI.Properties.Resources.Save;
            this.btnOK.Location = new System.Drawing.Point(673, 532);
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
            this.ricbReplenishment,
            this.ribeWO});
            this.gridControl1.Size = new System.Drawing.Size(869, 493);
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
            this.colReplenishment,
            this.colReplenishmentDesc,
            this.colClassCodeENDesc,
            this.colSupplier,
            this.colWorkOrderNo});
            this.gridView1.CustomizationFormBounds = new System.Drawing.Rectangle(1702, 789, 208, 177);
            this.gridView1.GridControl = this.gridControl1;
            this.gridView1.Name = "gridView1";
            this.gridView1.OptionsBehavior.AutoPopulateColumns = false;
            this.gridView1.OptionsCustomization.AllowFilter = false;
            this.gridView1.OptionsCustomization.AllowGroup = false;
            this.gridView1.OptionsDetail.EnableMasterViewMode = false;
            this.gridView1.OptionsSelection.MultiSelect = true;
            this.gridView1.OptionsSelection.MultiSelectMode = DevExpress.XtraGrid.Views.Grid.GridMultiSelectMode.CellSelect;
            this.gridView1.OptionsView.AllowCellMerge = true;
            this.gridView1.OptionsView.ShowGroupPanel = false;
            this.gridView1.CellMerge += new DevExpress.XtraGrid.Views.Grid.CellMergeEventHandler(this.gridView1_CellMerge);
            this.gridView1.MouseDown += new System.Windows.Forms.MouseEventHandler(this.gridView1_MouseDown);
            // 
            // colPONO
            // 
            this.colPONO.Caption = "PO No.";
            this.colPONO.FieldName = "PONO";
            this.colPONO.Name = "colPONO";
            this.colPONO.OptionsColumn.AllowEdit = false;
            this.colPONO.Visible = true;
            this.colPONO.VisibleIndex = 0;
            this.colPONO.Width = 73;
            // 
            // colOrderLine
            // 
            this.colOrderLine.AppearanceCell.Options.UseTextOptions = true;
            this.colOrderLine.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colOrderLine.Caption = "Line#";
            this.colOrderLine.FieldName = "OrderLine";
            this.colOrderLine.Name = "colOrderLine";
            this.colOrderLine.OptionsColumn.AllowEdit = false;
            this.colOrderLine.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colOrderLine.Visible = true;
            this.colOrderLine.VisibleIndex = 2;
            this.colOrderLine.Width = 53;
            // 
            // colItemCode
            // 
            this.colItemCode.Caption = "Item Code";
            this.colItemCode.FieldName = "ItemCode";
            this.colItemCode.Name = "colItemCode";
            this.colItemCode.OptionsColumn.AllowEdit = false;
            this.colItemCode.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colItemCode.Visible = true;
            this.colItemCode.VisibleIndex = 3;
            this.colItemCode.Width = 91;
            // 
            // colProjectNo
            // 
            this.colProjectNo.Caption = "Proj. No.";
            this.colProjectNo.FieldName = "ProjectNo";
            this.colProjectNo.Name = "colProjectNo";
            this.colProjectNo.OptionsColumn.AllowEdit = false;
            this.colProjectNo.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colProjectNo.Visible = true;
            this.colProjectNo.VisibleIndex = 7;
            this.colProjectNo.Width = 101;
            // 
            // colSupplierReference
            // 
            this.colSupplierReference.Caption = "Supp Item Ref.";
            this.colSupplierReference.FieldName = "SupplierReference";
            this.colSupplierReference.Name = "colSupplierReference";
            this.colSupplierReference.OptionsColumn.AllowEdit = false;
            this.colSupplierReference.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colSupplierReference.Visible = true;
            this.colSupplierReference.VisibleIndex = 4;
            this.colSupplierReference.Width = 116;
            // 
            // colReplenishment
            // 
            this.colReplenishment.AppearanceCell.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.colReplenishment.AppearanceCell.Options.UseBackColor = true;
            this.colReplenishment.AppearanceCell.Options.UseTextOptions = true;
            this.colReplenishment.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colReplenishment.Caption = "Replenishment";
            this.colReplenishment.ColumnEdit = this.ricbReplenishment;
            this.colReplenishment.FieldName = "Replenishment";
            this.colReplenishment.Name = "colReplenishment";
            this.colReplenishment.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colReplenishment.Visible = true;
            this.colReplenishment.VisibleIndex = 5;
            this.colReplenishment.Width = 99;
            // 
            // ricbReplenishment
            // 
            this.ricbReplenishment.AutoHeight = false;
            this.ricbReplenishment.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.ricbReplenishment.DropDownRows = 8;
            this.ricbReplenishment.Name = "ricbReplenishment";
            this.ricbReplenishment.NullText = "--";
            this.ricbReplenishment.ShowDropDown = DevExpress.XtraEditors.Controls.ShowDropDown.DoubleClick;
            // 
            // colReplenishmentDesc
            // 
            this.colReplenishmentDesc.Caption = "Replenishment Desc.";
            this.colReplenishmentDesc.FieldName = "ReplenishmentDesc";
            this.colReplenishmentDesc.Name = "colReplenishmentDesc";
            this.colReplenishmentDesc.OptionsColumn.AllowEdit = false;
            this.colReplenishmentDesc.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colReplenishmentDesc.Visible = true;
            this.colReplenishmentDesc.VisibleIndex = 6;
            this.colReplenishmentDesc.Width = 166;
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
            this.colSupplier.Width = 46;
            // 
            // colWorkOrderNo
            // 
            this.colWorkOrderNo.AppearanceCell.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.colWorkOrderNo.AppearanceCell.Options.UseBackColor = true;
            this.colWorkOrderNo.Caption = "WO No";
            this.colWorkOrderNo.ColumnEdit = this.ribeWO;
            this.colWorkOrderNo.FieldName = "WorkOrderNo";
            this.colWorkOrderNo.Name = "colWorkOrderNo";
            this.colWorkOrderNo.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colWorkOrderNo.Visible = true;
            this.colWorkOrderNo.VisibleIndex = 8;
            this.colWorkOrderNo.Width = 103;
            // 
            // ribeWO
            // 
            this.ribeWO.AutoHeight = false;
            this.ribeWO.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.ribeWO.Name = "ribeWO";
            this.ribeWO.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.ribeWO.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(this.ribeWO_ButtonClick);
            // 
            // label1
            // 
            this.label1.Location = new System.Drawing.Point(12, 532);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(78, 28);
            this.label1.TabIndex = 298;
            this.label1.DoubleClick += new System.EventHandler(this.label1_DoubleClick);
            // 
            // popupMenu1
            // 
            this.popupMenu1.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.btnCopyClassCode)});
            this.popupMenu1.Manager = this.barManager1;
            this.popupMenu1.Name = "popupMenu1";
            // 
            // btnCopyClassCode
            // 
            this.btnCopyClassCode.Caption = "Copy Class Code";
            this.btnCopyClassCode.Id = 0;
            this.btnCopyClassCode.Name = "btnCopyClassCode";
            this.btnCopyClassCode.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnCopyClassCode_ItemClick);
            // 
            // barManager1
            // 
            this.barManager1.Bars.AddRange(new DevExpress.XtraBars.Bar[] {
            this.bar2});
            this.barManager1.DockControls.Add(this.barDockControlTop);
            this.barManager1.DockControls.Add(this.barDockControlBottom);
            this.barManager1.DockControls.Add(this.barDockControlLeft);
            this.barManager1.DockControls.Add(this.barDockControlRight);
            this.barManager1.Form = this;
            this.barManager1.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.btnCopyClassCode});
            this.barManager1.MainMenu = this.bar2;
            this.barManager1.MaxItemId = 1;
            // 
            // bar2
            // 
            this.bar2.BarName = "Main menu";
            this.bar2.DockCol = 0;
            this.bar2.DockRow = 0;
            this.bar2.DockStyle = DevExpress.XtraBars.BarDockStyle.Top;
            this.bar2.OptionsBar.MultiLine = true;
            this.bar2.OptionsBar.UseWholeRow = true;
            this.bar2.Text = "Main menu";
            this.bar2.Visible = false;
            // 
            // btnDefaultAll
            // 
            this.btnDefaultAll.Image = global::PH.POPC.UI.Properties.Resources.State_Validation_Valid;
            this.btnDefaultAll.Location = new System.Drawing.Point(334, 532);
            this.btnDefaultAll.Name = "btnDefaultAll";
            this.btnDefaultAll.Size = new System.Drawing.Size(150, 28);
            this.btnDefaultAll.TabIndex = 300;
            this.btnDefaultAll.Text = "ALL default to \"N\"";
            this.btnDefaultAll.Click += new System.EventHandler(this.btnDefaultAll_Click);
            // 
            // InputReplenishmentsForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(893, 583);
            this.Controls.Add(this.btnDefaultAll);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.gridControl1);
            this.Controls.Add(this.btnCancel);
            this.Controls.Add(this.btnOK);
            this.Controls.Add(this.barDockControlLeft);
            this.Controls.Add(this.barDockControlRight);
            this.Controls.Add(this.barDockControlBottom);
            this.Controls.Add(this.barDockControlTop);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "InputReplenishmentsForm";
            this.ShowInTaskbar = false;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "Multi POs Replenishment";
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.ricbReplenishment)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.ribeWO)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.popupMenu1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.barManager1)).EndInit();
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
        private DevExpress.XtraGrid.Columns.GridColumn colReplenishment;
        private DevExpress.XtraGrid.Columns.GridColumn colReplenishmentDesc;
        private DevExpress.XtraGrid.Columns.GridColumn colClassCodeENDesc;
        private DevExpress.XtraEditors.Repository.RepositoryItemLookUpEdit ricbReplenishment;
        private System.Windows.Forms.Label label1;
        private DevExpress.XtraGrid.Columns.GridColumn colSupplier;
        private DevExpress.XtraBars.PopupMenu popupMenu1;
        private DevExpress.XtraBars.BarManager barManager1;
        private DevExpress.XtraBars.Bar bar2;
        private DevExpress.XtraBars.BarDockControl barDockControlTop;
        private DevExpress.XtraBars.BarDockControl barDockControlBottom;
        private DevExpress.XtraBars.BarDockControl barDockControlLeft;
        private DevExpress.XtraBars.BarDockControl barDockControlRight;
        private DevExpress.XtraBars.BarButtonItem btnCopyClassCode;
        private DevExpress.XtraEditors.SimpleButton btnDefaultAll;
        private DevExpress.XtraGrid.Columns.GridColumn colWorkOrderNo;
        private DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit ribeWO;
    }
}