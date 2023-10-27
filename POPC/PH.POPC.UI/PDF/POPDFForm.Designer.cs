namespace PH.POPC.UI.PDF
{
    partial class POPDFForm
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(POPDFForm));
            this.panelDrives = new DevExpress.XtraEditors.PanelControl();
            this.btnViewPDF = new DevExpress.XtraEditors.SimpleButton();
            this.labelCurrentPath = new System.Windows.Forms.Label();
            this.gridControl1 = new DevExpress.XtraGrid.GridControl();
            this.gridView1 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.gridColumnImage = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemImageComboBox1 = new DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox();
            this.imageList1 = new System.Windows.Forms.ImageList(this.components);
            this.gridColumnName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumnSize = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumnModified = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumnType = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.panelDrives)).BeginInit();
            this.panelDrives.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemImageComboBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // panelDrives
            // 
            this.panelDrives.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.panelDrives.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
            this.panelDrives.Controls.Add(this.btnViewPDF);
            this.panelDrives.Controls.Add(this.labelCurrentPath);
            this.panelDrives.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelDrives.Location = new System.Drawing.Point(0, 0);
            this.panelDrives.Name = "panelDrives";
            this.panelDrives.Size = new System.Drawing.Size(1105, 32);
            this.PlatetoolTipController.SetSuperTip(this.panelDrives, null);
            this.panelDrives.TabIndex = 5;
            // 
            // btnViewPDF
            // 
            this.btnViewPDF.Location = new System.Drawing.Point(11, 6);
            this.btnViewPDF.Name = "btnViewPDF";
            this.btnViewPDF.Size = new System.Drawing.Size(91, 23);
            this.btnViewPDF.TabIndex = 3;
            this.btnViewPDF.Text = "View PDF";
            this.btnViewPDF.Click += new System.EventHandler(this.btnViewPDF_Click);
            // 
            // labelCurrentPath
            // 
            this.labelCurrentPath.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.labelCurrentPath.Font = new System.Drawing.Font("Arial", 9F, System.Drawing.FontStyle.Bold);
            this.labelCurrentPath.Location = new System.Drawing.Point(168, 8);
            this.labelCurrentPath.Name = "labelCurrentPath";
            this.labelCurrentPath.Size = new System.Drawing.Size(921, 16);
            this.PlatetoolTipController.SetSuperTip(this.labelCurrentPath, null);
            this.labelCurrentPath.TabIndex = 2;
            this.labelCurrentPath.Text = "label1";
            this.labelCurrentPath.TextAlign = System.Drawing.ContentAlignment.TopRight;
            // 
            // gridControl1
            // 
            this.gridControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gridControl1.EmbeddedNavigator.Name = "";
            this.gridControl1.Location = new System.Drawing.Point(0, 32);
            this.gridControl1.MainView = this.gridView1;
            this.gridControl1.Name = "gridControl1";
            this.gridControl1.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemImageComboBox1});
            this.gridControl1.Size = new System.Drawing.Size(1105, 611);
            this.gridControl1.TabIndex = 6;
            this.gridControl1.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView1});
            // 
            // gridView1
            // 
            this.gridView1.Appearance.EvenRow.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(225)))), ((int)(((byte)(245)))), ((int)(((byte)(255)))));
            this.gridView1.Appearance.EvenRow.Options.UseBackColor = true;
            this.gridView1.Appearance.FooterPanel.Font = new System.Drawing.Font("Tahoma", 8.25F, System.Drawing.FontStyle.Bold);
            this.gridView1.Appearance.FooterPanel.Options.UseFont = true;
            this.gridView1.Appearance.HeaderPanel.Font = new System.Drawing.Font("Tahoma", 8.25F, System.Drawing.FontStyle.Bold);
            this.gridView1.Appearance.HeaderPanel.Options.UseFont = true;
            this.gridView1.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.gridColumnImage,
            this.gridColumnName,
            this.gridColumnSize,
            this.gridColumnModified,
            this.gridColumnType});
            this.gridView1.GridControl = this.gridControl1;
            this.gridView1.Name = "gridView1";
            this.gridView1.OptionsBehavior.AllowIncrementalSearch = true;
            this.gridView1.OptionsBehavior.Editable = false;
            this.gridView1.OptionsMenu.EnableFooterMenu = false;
            this.gridView1.OptionsMenu.EnableGroupPanelMenu = false;
            this.gridView1.OptionsView.AutoCalcPreviewLineCount = true;
            this.gridView1.OptionsView.ShowFooter = true;
            this.gridView1.OptionsView.ShowGroupPanel = false;
            this.gridView1.OptionsView.ShowHorzLines = false;
            this.gridView1.OptionsView.ShowIndicator = false;
            this.gridView1.OptionsView.ShowVertLines = false;
            this.gridView1.SortInfo.AddRange(new DevExpress.XtraGrid.Columns.GridColumnSortInfo[] {
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.gridColumnName, DevExpress.Data.ColumnSortOrder.Ascending)});
            this.gridView1.KeyDown += new System.Windows.Forms.KeyEventHandler(this.gridView1_KeyDown);
            this.gridView1.CustomDrawCell += new DevExpress.XtraGrid.Views.Base.RowCellCustomDrawEventHandler(this.gridView1_CustomDrawCell);
            this.gridView1.CustomColumnSort += new DevExpress.XtraGrid.Views.Base.CustomColumnSortEventHandler(this.gridView1_CustomColumnSort);
            this.gridView1.MouseDown += new System.Windows.Forms.MouseEventHandler(this.gridView1_MouseDown);
            this.gridView1.CalcPreviewText += new DevExpress.XtraGrid.Views.Grid.CalcPreviewTextEventHandler(this.gridView1_CalcPreviewText);
            // 
            // gridColumnImage
            // 
            this.gridColumnImage.ColumnEdit = this.repositoryItemImageComboBox1;
            this.gridColumnImage.FieldName = "ImageIndex";
            this.gridColumnImage.Name = "gridColumnImage";
            this.gridColumnImage.OptionsColumn.AllowFocus = false;
            this.gridColumnImage.OptionsColumn.AllowGroup = DevExpress.Utils.DefaultBoolean.False;
            this.gridColumnImage.OptionsColumn.AllowMove = false;
            this.gridColumnImage.OptionsColumn.AllowSize = false;
            this.gridColumnImage.OptionsColumn.AllowSort = DevExpress.Utils.DefaultBoolean.False;
            this.gridColumnImage.OptionsColumn.FixedWidth = true;
            this.gridColumnImage.OptionsColumn.ShowInCustomizationForm = false;
            this.gridColumnImage.OptionsFilter.AllowFilter = false;
            this.gridColumnImage.Visible = true;
            this.gridColumnImage.VisibleIndex = 0;
            this.gridColumnImage.Width = 20;
            // 
            // repositoryItemImageComboBox1
            // 
            this.repositoryItemImageComboBox1.AutoHeight = false;
            this.repositoryItemImageComboBox1.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
            this.repositoryItemImageComboBox1.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemImageComboBox1.CaseSensitiveSearch = true;
            this.repositoryItemImageComboBox1.Items.AddRange(new DevExpress.XtraEditors.Controls.ImageComboBoxItem[] {
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("", 0, 0),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("", 1, 1)});
            this.repositoryItemImageComboBox1.Name = "repositoryItemImageComboBox1";
            this.repositoryItemImageComboBox1.SmallImages = this.imageList1;
            // 
            // imageList1
            // 
            this.imageList1.ImageStream = ((System.Windows.Forms.ImageListStreamer)(resources.GetObject("imageList1.ImageStream")));
            this.imageList1.TransparentColor = System.Drawing.Color.Magenta;
            this.imageList1.Images.SetKeyName(0, "adobe_16.png");
            this.imageList1.Images.SetKeyName(1, "");
            this.imageList1.Images.SetKeyName(2, "");
            // 
            // gridColumnName
            // 
            this.gridColumnName.Caption = "Name";
            this.gridColumnName.FieldName = "Name";
            this.gridColumnName.Name = "gridColumnName";
            this.gridColumnName.OptionsColumn.AllowGroup = DevExpress.Utils.DefaultBoolean.False;
            this.gridColumnName.SortMode = DevExpress.XtraGrid.ColumnSortMode.Custom;
            this.gridColumnName.SummaryItem.DisplayFormat = "Files And Folders ({0})";
            this.gridColumnName.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Count;
            this.gridColumnName.Visible = true;
            this.gridColumnName.VisibleIndex = 1;
            this.gridColumnName.Width = 348;
            // 
            // gridColumnSize
            // 
            this.gridColumnSize.Caption = "Size";
            this.gridColumnSize.FieldName = "Size";
            this.gridColumnSize.Name = "gridColumnSize";
            this.gridColumnSize.OptionsColumn.AllowFocus = false;
            this.gridColumnSize.OptionsColumn.AllowGroup = DevExpress.Utils.DefaultBoolean.False;
            this.gridColumnSize.SortMode = DevExpress.XtraGrid.ColumnSortMode.Custom;
            this.gridColumnSize.Visible = true;
            this.gridColumnSize.VisibleIndex = 2;
            this.gridColumnSize.Width = 105;
            // 
            // gridColumnModified
            // 
            this.gridColumnModified.Caption = "Modified";
            this.gridColumnModified.FieldName = "Modified";
            this.gridColumnModified.Name = "gridColumnModified";
            this.gridColumnModified.OptionsColumn.AllowFocus = false;
            this.gridColumnModified.OptionsColumn.AllowGroup = DevExpress.Utils.DefaultBoolean.False;
            this.gridColumnModified.SortMode = DevExpress.XtraGrid.ColumnSortMode.Custom;
            this.gridColumnModified.Visible = true;
            this.gridColumnModified.VisibleIndex = 3;
            this.gridColumnModified.Width = 157;
            // 
            // gridColumnType
            // 
            this.gridColumnType.Caption = "Type";
            this.gridColumnType.FieldName = "ItemType";
            this.gridColumnType.Name = "gridColumnType";
            this.gridColumnType.OptionsColumn.ShowInCustomizationForm = false;
            // 
            // POPDFForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.Controls.Add(this.gridControl1);
            this.Controls.Add(this.panelDrives);
            this.Name = "POPDFForm";
            this.Size = new System.Drawing.Size(1105, 643);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.panelDrives)).EndInit();
            this.panelDrives.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemImageComboBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.PanelControl panelDrives;
        private System.Windows.Forms.Label labelCurrentPath;
        private DevExpress.XtraGrid.GridControl gridControl1;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView1;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumnImage;
        private DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox repositoryItemImageComboBox1;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumnName;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumnSize;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumnModified;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumnType;
        private System.Windows.Forms.ImageList imageList1;
        private DevExpress.XtraEditors.SimpleButton btnViewPDF;
    }
}
