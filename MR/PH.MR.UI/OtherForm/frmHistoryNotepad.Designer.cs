namespace PH.MR.UI
{
    partial class frmHistoryNotepad
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmHistoryNotepad));
            this.panelControl1 = new DevExpress.XtraEditors.PanelControl();
            this.btnPrint = new DevExpress.XtraEditors.SimpleButton();
            this.imageList1 = new System.Windows.Forms.ImageList(this.components);
            this.btnExport = new DevExpress.XtraEditors.ComboBoxEdit();
            this.btnClose = new DevExpress.XtraEditors.SimpleButton();
            this.btnSave = new DevExpress.XtraEditors.SimpleButton();
            this.gridControl1 = new DevExpress.XtraGrid.GridControl();
            this.gridView1 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.gridColumn2 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn3 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn4 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn9 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn6 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcolDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcolQTY1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcolQTY2 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn5 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcolNotepad = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemMemoExEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemMemoExEdit();
            this.gcolNotepad_Temp = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcCAC1 = new DevExpress.XtraGrid.GridControl();
            this.bgvCAC1 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.gridColumn7 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn8 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemMemoEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemMemoEdit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).BeginInit();
            this.panelControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.btnExport.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemMemoExEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gcCAC1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bgvCAC1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemMemoEdit1)).BeginInit();
            this.SuspendLayout();
            // 
            // panelControl1
            // 
            this.panelControl1.Controls.Add(this.btnPrint);
            this.panelControl1.Controls.Add(this.btnExport);
            this.panelControl1.Controls.Add(this.btnClose);
            this.panelControl1.Controls.Add(this.btnSave);
            this.panelControl1.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.panelControl1.Location = new System.Drawing.Point(5, 510);
            this.panelControl1.Name = "panelControl1";
            this.panelControl1.Size = new System.Drawing.Size(782, 51);
            this.panelControl1.TabIndex = 0;
            // 
            // btnPrint
            // 
            this.btnPrint.ImageIndex = 2;
            this.btnPrint.ImageList = this.imageList1;
            this.btnPrint.Location = new System.Drawing.Point(21, 15);
            this.btnPrint.Name = "btnPrint";
            this.btnPrint.Size = new System.Drawing.Size(120, 27);
            this.btnPrint.TabIndex = 62;
            this.btnPrint.Tag = "MR";
            this.btnPrint.Text = "Print Preview";
            this.btnPrint.Click += new System.EventHandler(this.btnPrint_Click);
            // 
            // imageList1
            // 
            this.imageList1.ImageStream = ((System.Windows.Forms.ImageListStreamer)(resources.GetObject("imageList1.ImageStream")));
            this.imageList1.TransparentColor = System.Drawing.Color.Transparent;
            this.imageList1.Images.SetKeyName(0, "OK.bmp");
            this.imageList1.Images.SetKeyName(1, "Cancel.bmp");
            this.imageList1.Images.SetKeyName(2, "Print.bmp");
            this.imageList1.Images.SetKeyName(3, "export.bmp");
            this.imageList1.Images.SetKeyName(4, "Save.png");
            this.imageList1.Images.SetKeyName(5, "Stencil.png");
            // 
            // btnExport
            // 
            this.btnExport.Location = new System.Drawing.Point(147, 15);
            this.btnExport.Name = "btnExport";
            this.btnExport.Properties.ActionButtonIndex = 1;
            this.btnExport.Properties.AutoHeight = false;
            this.btnExport.Properties.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
            this.btnExport.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Glyph, "Export", -1, true, true, false, DevExpress.Utils.HorzAlignment.Center, null),
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo, "", 0, true, true, false, DevExpress.Utils.HorzAlignment.Center, null)});
            this.btnExport.Properties.DropDownRows = 8;
            this.btnExport.Properties.Items.AddRange(new object[] {
            "Export To PDF",
            "Export To XLS",
            "Export To HTML",
            "Export To TXT",
            "Export To XML",
            "Export To MHT",
            "Export To RTF",
            "Export To BMP"});
            this.btnExport.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.HideTextEditor;
            this.btnExport.Properties.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(this.btnInExport_Properties_ButtonClick);
            this.btnExport.Size = new System.Drawing.Size(128, 27);
            this.btnExport.TabIndex = 61;
            this.btnExport.Tag = "MR";
            this.btnExport.CloseUp += new DevExpress.XtraEditors.Controls.CloseUpEventHandler(this.btnExport_CloseUp);
            this.btnExport.SelectedIndexChanged += new System.EventHandler(this.btnExport_SelectedIndexChanged);
            // 
            // btnClose
            // 
            this.btnClose.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnClose.Location = new System.Drawing.Point(601, 15);
            this.btnClose.Name = "btnClose";
            this.btnClose.Size = new System.Drawing.Size(83, 28);
            this.btnClose.TabIndex = 1;
            this.btnClose.Text = "Close";
            // 
            // btnSave
            // 
            this.btnSave.Enabled = false;
            this.btnSave.ImageIndex = 4;
            this.btnSave.ImageList = this.imageList1;
            this.btnSave.Location = new System.Drawing.Point(479, 15);
            this.btnSave.Name = "btnSave";
            this.btnSave.Size = new System.Drawing.Size(83, 28);
            this.btnSave.TabIndex = 0;
            this.btnSave.Text = "Save";
            this.btnSave.Click += new System.EventHandler(this.btnSave_Click);
            // 
            // gridControl1
            // 
            this.gridControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gridControl1.EmbeddedNavigator.Name = "";
            this.gridControl1.Location = new System.Drawing.Point(5, 5);
            this.gridControl1.MainView = this.gridView1;
            this.gridControl1.Name = "gridControl1";
            this.gridControl1.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemMemoExEdit1});
            this.gridControl1.Size = new System.Drawing.Size(782, 505);
            this.gridControl1.TabIndex = 1;
            this.gridControl1.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView1});
            // 
            // gridView1
            // 
            this.gridView1.Appearance.HeaderPanel.Options.UseTextOptions = true;
            this.gridView1.Appearance.HeaderPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridView1.AppearancePrint.Row.Font = new System.Drawing.Font("Arial Unicode MS", 9F);
            this.gridView1.AppearancePrint.Row.Options.UseFont = true;
            this.gridView1.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.gridColumn2,
            this.gridColumn3,
            this.gridColumn4,
            this.gridColumn1,
            this.gridColumn9,
            this.gridColumn6,
            this.gcolDate,
            this.gcolQTY1,
            this.gcolQTY2,
            this.gridColumn5,
            this.gcolNotepad,
            this.gcolNotepad_Temp});
            this.gridView1.GridControl = this.gridControl1;
            this.gridView1.Name = "gridView1";
            this.gridView1.OptionsCustomization.AllowFilter = false;
            this.gridView1.OptionsCustomization.AllowGroup = false;
            this.gridView1.OptionsPrint.AutoWidth = false;
            this.gridView1.OptionsPrint.UsePrintStyles = true;
            this.gridView1.OptionsView.ColumnAutoWidth = false;
            this.gridView1.OptionsView.RowAutoHeight = true;
            this.gridView1.OptionsView.ShowGroupPanel = false;
            this.gridView1.FocusedRowChanged += new DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventHandler(this.gridView1_FocusedRowChanged);
            this.gridView1.CellValueChanged += new DevExpress.XtraGrid.Views.Base.CellValueChangedEventHandler(this.gridView1_CellValueChanged);
            // 
            // gridColumn2
            // 
            this.gridColumn2.Caption = "Material";
            this.gridColumn2.FieldName = "CSTL";
            this.gridColumn2.Name = "gridColumn2";
            this.gridColumn2.OptionsColumn.AllowEdit = false;
            this.gridColumn2.Visible = true;
            this.gridColumn2.VisibleIndex = 0;
            this.gridColumn2.Width = 80;
            // 
            // gridColumn3
            // 
            this.gridColumn3.Caption = "Color";
            this.gridColumn3.FieldName = "PCOL";
            this.gridColumn3.Name = "gridColumn3";
            this.gridColumn3.OptionsColumn.AllowEdit = false;
            this.gridColumn3.Visible = true;
            this.gridColumn3.VisibleIndex = 1;
            this.gridColumn3.Width = 48;
            // 
            // gridColumn4
            // 
            this.gridColumn4.Caption = "Size";
            this.gridColumn4.FieldName = "PSIZ";
            this.gridColumn4.Name = "gridColumn4";
            this.gridColumn4.OptionsColumn.AllowEdit = false;
            this.gridColumn4.Visible = true;
            this.gridColumn4.VisibleIndex = 2;
            this.gridColumn4.Width = 50;
            // 
            // gridColumn1
            // 
            this.gridColumn1.AppearanceCell.Options.UseTextOptions = true;
            this.gridColumn1.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridColumn1.Caption = "Version";
            this.gridColumn1.FieldName = "VERSION";
            this.gridColumn1.Name = "gridColumn1";
            this.gridColumn1.OptionsColumn.AllowEdit = false;
            this.gridColumn1.Visible = true;
            this.gridColumn1.VisibleIndex = 3;
            this.gridColumn1.Width = 60;
            // 
            // gridColumn9
            // 
            this.gridColumn9.Caption = "Dept Version";
            this.gridColumn9.FieldName = "DEPT_VERSION";
            this.gridColumn9.Name = "gridColumn9";
            this.gridColumn9.OptionsColumn.AllowEdit = false;
            this.gridColumn9.Visible = true;
            this.gridColumn9.VisibleIndex = 4;
            this.gridColumn9.Width = 90;
            // 
            // gridColumn6
            // 
            this.gridColumn6.Caption = "User";
            this.gridColumn6.FieldName = "FUSER";
            this.gridColumn6.Name = "gridColumn6";
            this.gridColumn6.OptionsColumn.AllowEdit = false;
            this.gridColumn6.Width = 77;
            // 
            // gcolDate
            // 
            this.gcolDate.Caption = "Date";
            this.gcolDate.DisplayFormat.FormatString = "d";
            this.gcolDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.gcolDate.FieldName = "FDATE";
            this.gcolDate.Name = "gcolDate";
            this.gcolDate.OptionsColumn.AllowEdit = false;
            this.gcolDate.Width = 77;
            // 
            // gcolQTY1
            // 
            this.gcolQTY1.Caption = "QTY1";
            this.gcolQTY1.FieldName = "QTY1";
            this.gcolQTY1.Name = "gcolQTY1";
            this.gcolQTY1.OptionsColumn.AllowEdit = false;
            this.gcolQTY1.Visible = true;
            this.gcolQTY1.VisibleIndex = 5;
            this.gcolQTY1.Width = 110;
            // 
            // gcolQTY2
            // 
            this.gcolQTY2.Caption = "QTY2";
            this.gcolQTY2.FieldName = "QTY2";
            this.gcolQTY2.Name = "gcolQTY2";
            this.gcolQTY2.OptionsColumn.AllowEdit = false;
            this.gcolQTY2.Visible = true;
            this.gcolQTY2.VisibleIndex = 6;
            this.gcolQTY2.Width = 108;
            // 
            // gridColumn5
            // 
            this.gridColumn5.AppearanceCell.Options.UseTextOptions = true;
            this.gridColumn5.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridColumn5.Caption = "UOM";
            this.gridColumn5.FieldName = "UOM";
            this.gridColumn5.Name = "gridColumn5";
            this.gridColumn5.OptionsColumn.AllowEdit = false;
            this.gridColumn5.Visible = true;
            this.gridColumn5.VisibleIndex = 7;
            this.gridColumn5.Width = 50;
            // 
            // gcolNotepad
            // 
            this.gcolNotepad.Caption = "Notepad";
            this.gcolNotepad.ColumnEdit = this.repositoryItemMemoExEdit1;
            this.gcolNotepad.FieldName = "NOTEPAD";
            this.gcolNotepad.Name = "gcolNotepad";
            this.gcolNotepad.OptionsColumn.ReadOnly = true;
            this.gcolNotepad.Visible = true;
            this.gcolNotepad.VisibleIndex = 8;
            this.gcolNotepad.Width = 85;
            // 
            // repositoryItemMemoExEdit1
            // 
            this.repositoryItemMemoExEdit1.AutoHeight = false;
            this.repositoryItemMemoExEdit1.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemMemoExEdit1.Name = "repositoryItemMemoExEdit1";
            this.repositoryItemMemoExEdit1.PopupStartSize = new System.Drawing.Size(500, 300);
            this.repositoryItemMemoExEdit1.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            this.repositoryItemMemoExEdit1.EditValueChanged += new System.EventHandler(this.repositoryItemMemoExEdit1_EditValueChanged);
            // 
            // gcolNotepad_Temp
            // 
            this.gcolNotepad_Temp.Caption = "New Notepad";
            this.gcolNotepad_Temp.ColumnEdit = this.repositoryItemMemoExEdit1;
            this.gcolNotepad_Temp.FieldName = "NOTEPAD_NEW";
            this.gcolNotepad_Temp.Name = "gcolNotepad_Temp";
            this.gcolNotepad_Temp.Visible = true;
            this.gcolNotepad_Temp.VisibleIndex = 9;
            this.gcolNotepad_Temp.Width = 100;
            // 
            // gcCAC1
            // 
            this.gcCAC1.EmbeddedNavigator.Name = "";
            this.gcCAC1.Location = new System.Drawing.Point(5, 276);
            this.gcCAC1.MainView = this.bgvCAC1;
            this.gcCAC1.Name = "gcCAC1";
            this.gcCAC1.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemMemoEdit1});
            this.gcCAC1.Size = new System.Drawing.Size(706, 205);
            this.gcCAC1.TabIndex = 4;
            this.gcCAC1.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.bgvCAC1});
            // 
            // bgvCAC1
            // 
            this.bgvCAC1.Appearance.HeaderPanel.Options.UseTextOptions = true;
            this.bgvCAC1.Appearance.HeaderPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bgvCAC1.Appearance.HeaderPanel.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.bgvCAC1.Appearance.HeaderPanel.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.bgvCAC1.Appearance.Row.Options.UseTextOptions = true;
            this.bgvCAC1.Appearance.Row.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.bgvCAC1.AppearancePrint.Row.Font = new System.Drawing.Font("Arial Unicode MS", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.bgvCAC1.AppearancePrint.Row.Options.UseFont = true;
            this.bgvCAC1.AppearancePrint.Row.Options.UseTextOptions = true;
            this.bgvCAC1.AppearancePrint.Row.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.bgvCAC1.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.gridColumn7,
            this.gridColumn8});
            this.bgvCAC1.GridControl = this.gcCAC1;
            this.bgvCAC1.GroupCount = 1;
            this.bgvCAC1.GroupFormat = "[#image]{1} {2}";
            this.bgvCAC1.Name = "bgvCAC1";
            this.bgvCAC1.OptionsCustomization.AllowColumnResizing = false;
            this.bgvCAC1.OptionsCustomization.AllowFilter = false;
            this.bgvCAC1.OptionsCustomization.AllowGroup = false;
            this.bgvCAC1.OptionsCustomization.AllowSort = false;
            this.bgvCAC1.OptionsMenu.EnableColumnMenu = false;
            this.bgvCAC1.OptionsMenu.EnableFooterMenu = false;
            this.bgvCAC1.OptionsMenu.EnableGroupPanelMenu = false;
            this.bgvCAC1.OptionsPrint.AutoWidth = false;
            this.bgvCAC1.OptionsPrint.PrintGroupFooter = false;
            this.bgvCAC1.OptionsPrint.UsePrintStyles = true;
            this.bgvCAC1.OptionsView.ColumnAutoWidth = false;
            this.bgvCAC1.OptionsView.RowAutoHeight = true;
            this.bgvCAC1.OptionsView.ShowGroupPanel = false;
            this.bgvCAC1.SortInfo.AddRange(new DevExpress.XtraGrid.Columns.GridColumnSortInfo[] {
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.gridColumn7, DevExpress.Data.ColumnSortOrder.Ascending)});
            // 
            // gridColumn7
            // 
            this.gridColumn7.FieldName = "Attachment";
            this.gridColumn7.Name = "gridColumn7";
            this.gridColumn7.Visible = true;
            this.gridColumn7.VisibleIndex = 0;
            // 
            // gridColumn8
            // 
            this.gridColumn8.Caption = "Attachment";
            this.gridColumn8.ColumnEdit = this.repositoryItemMemoEdit1;
            this.gridColumn8.FieldName = "NOTEPAD";
            this.gridColumn8.Name = "gridColumn8";
            this.gridColumn8.Visible = true;
            this.gridColumn8.VisibleIndex = 0;
            this.gridColumn8.Width = 700;
            // 
            // repositoryItemMemoEdit1
            // 
            this.repositoryItemMemoEdit1.Appearance.Options.UseTextOptions = true;
            this.repositoryItemMemoEdit1.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.repositoryItemMemoEdit1.Appearance.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.repositoryItemMemoEdit1.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
            this.repositoryItemMemoEdit1.Name = "repositoryItemMemoEdit1";
            // 
            // frmHistoryNotepad
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(792, 566);
            this.Controls.Add(this.gridControl1);
            this.Controls.Add(this.gcCAC1);
            this.Controls.Add(this.panelControl1);
            this.MinimizeBox = false;
            this.Name = "frmHistoryNotepad";
            this.Padding = new System.Windows.Forms.Padding(5);
            this.ShowInTaskbar = false;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Notepad";
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).EndInit();
            this.panelControl1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.btnExport.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemMemoExEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gcCAC1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bgvCAC1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemMemoEdit1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.PanelControl panelControl1;
        private DevExpress.XtraGrid.GridControl gridControl1;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView1;
        private DevExpress.XtraEditors.SimpleButton btnClose;
        private DevExpress.XtraEditors.SimpleButton btnSave;
        private System.Windows.Forms.ImageList imageList1;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn1;
        private DevExpress.XtraGrid.Columns.GridColumn gcolDate;
        private DevExpress.XtraGrid.Columns.GridColumn gcolQTY1;
        private DevExpress.XtraGrid.Columns.GridColumn gcolQTY2;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn5;
        private DevExpress.XtraGrid.Columns.GridColumn gcolNotepad;
        private DevExpress.XtraEditors.Repository.RepositoryItemMemoExEdit repositoryItemMemoExEdit1;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn2;
        private DevExpress.XtraEditors.SimpleButton btnPrint;
        private DevExpress.XtraEditors.ComboBoxEdit btnExport;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn3;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn4;
        private DevExpress.XtraGrid.GridControl gcCAC1;
        private DevExpress.XtraGrid.Views.Grid.GridView bgvCAC1;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn7;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn8;
        private DevExpress.XtraEditors.Repository.RepositoryItemMemoEdit repositoryItemMemoEdit1;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn6;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn9;
        private DevExpress.XtraGrid.Columns.GridColumn gcolNotepad_Temp;
    }
}