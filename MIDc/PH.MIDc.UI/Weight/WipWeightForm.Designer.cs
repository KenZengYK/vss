namespace PH.MIDc.UI
{
    partial class WipWeightForm
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

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.barManager1 = new DevExpress.XtraBars.BarManager(this.components);
            this.bar2 = new DevExpress.XtraBars.Bar();
            this.bar3 = new DevExpress.XtraBars.Bar();
            this.bar1 = new DevExpress.XtraBars.Bar();
            this.barSubItem1 = new DevExpress.XtraBars.BarSubItem();
            this.btnAddMaterial = new DevExpress.XtraBars.BarButtonItem();
            this.btnEditMaterial = new DevExpress.XtraBars.BarButtonItem();
            this.btnDeleteMaterial = new DevExpress.XtraBars.BarButtonItem();
            this.barSubItem2 = new DevExpress.XtraBars.BarSubItem();
            this.btnAddStyle = new DevExpress.XtraBars.BarButtonItem();
            this.btnEditStyle = new DevExpress.XtraBars.BarButtonItem();
            this.btnDeleteStyle = new DevExpress.XtraBars.BarButtonItem();
            this.btnSave = new DevExpress.XtraBars.BarButtonItem();
            this.btnRefresh = new DevExpress.XtraBars.BarButtonItem();
            this.barSubItem3 = new DevExpress.XtraBars.BarSubItem();
            this.btnStyleQtyReport = new DevExpress.XtraBars.BarButtonItem();
            this.btnMaterialWeightReport = new DevExpress.XtraBars.BarButtonItem();
            this.btnStyleMaterialReport = new DevExpress.XtraBars.BarButtonItem();
            this.barDockControlTop = new DevExpress.XtraBars.BarDockControl();
            this.barDockControlBottom = new DevExpress.XtraBars.BarDockControl();
            this.barDockControlLeft = new DevExpress.XtraBars.BarDockControl();
            this.barDockControlRight = new DevExpress.XtraBars.BarDockControl();
            this.gcWeight = new DevExpress.XtraGrid.GridControl();
            this.gvWeight = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridView();
            this.gridBand1 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.bindingSource1 = new System.Windows.Forms.BindingSource(this.components);
            ((System.ComponentModel.ISupportInitialize)(this.barManager1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gcWeight)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvWeight)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).BeginInit();
            this.SuspendLayout();
            // 
            // barManager1
            // 
            this.barManager1.Bars.AddRange(new DevExpress.XtraBars.Bar[] {
            this.bar2,
            this.bar3,
            this.bar1});
            this.barManager1.DockControls.Add(this.barDockControlTop);
            this.barManager1.DockControls.Add(this.barDockControlBottom);
            this.barManager1.DockControls.Add(this.barDockControlLeft);
            this.barManager1.DockControls.Add(this.barDockControlRight);
            this.barManager1.Form = this;
            this.barManager1.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.btnAddStyle,
            this.btnAddMaterial,
            this.btnSave,
            this.btnEditMaterial,
            this.btnDeleteMaterial,
            this.btnEditStyle,
            this.btnDeleteStyle,
            this.btnRefresh,
            this.barSubItem1,
            this.barSubItem2,
            this.btnStyleQtyReport,
            this.btnMaterialWeightReport,
            this.btnStyleMaterialReport,
            this.barSubItem3});
            this.barManager1.MainMenu = this.bar2;
            this.barManager1.MaxItemId = 14;
            this.barManager1.StatusBar = this.bar3;
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
            // bar3
            // 
            this.bar3.BarName = "Status bar";
            this.bar3.CanDockStyle = DevExpress.XtraBars.BarCanDockStyle.Bottom;
            this.bar3.DockCol = 0;
            this.bar3.DockRow = 0;
            this.bar3.DockStyle = DevExpress.XtraBars.BarDockStyle.Bottom;
            this.bar3.OptionsBar.AllowQuickCustomization = false;
            this.bar3.OptionsBar.DrawDragBorder = false;
            this.bar3.OptionsBar.UseWholeRow = true;
            this.bar3.Text = "Status bar";
            this.bar3.Visible = false;
            // 
            // bar1
            // 
            this.bar1.BarName = "Tools";
            this.bar1.DockCol = 0;
            this.bar1.DockRow = 1;
            this.bar1.DockStyle = DevExpress.XtraBars.BarDockStyle.Top;
            this.bar1.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.PaintStyle, this.barSubItem1, DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph),
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.PaintStyle, this.barSubItem2, "", true, true, true, 0, null, DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph),
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.PaintStyle, this.btnSave, "", true, true, true, 0, null, DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph),
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.PaintStyle, this.btnRefresh, "", true, true, true, 0, null, DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph),
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.PaintStyle, this.barSubItem3, "", true, true, true, 0, null, DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph)});
            this.bar1.OptionsBar.UseWholeRow = true;
            this.bar1.Text = "Tools";
            // 
            // barSubItem1
            // 
            this.barSubItem1.Caption = "Material";
            this.barSubItem1.Glyph = global::PH.MIDc.UI.Properties.Resources.photo_add;
            this.barSubItem1.Id = 8;
            this.barSubItem1.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.PaintStyle, this.btnAddMaterial, DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnEditMaterial),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnDeleteMaterial)});
            this.barSubItem1.Name = "barSubItem1";
            // 
            // btnAddMaterial
            // 
            this.btnAddMaterial.Caption = "Add Material";
            this.btnAddMaterial.Glyph = global::PH.MIDc.UI.Properties.Resources.add;
            this.btnAddMaterial.Id = 1;
            this.btnAddMaterial.Name = "btnAddMaterial";
            this.btnAddMaterial.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnAddMaterial_ItemClick);
            // 
            // btnEditMaterial
            // 
            this.btnEditMaterial.Caption = "Modify Material";
            this.btnEditMaterial.Glyph = global::PH.MIDc.UI.Properties.Resources.Pen;
            this.btnEditMaterial.Id = 3;
            this.btnEditMaterial.Name = "btnEditMaterial";
            this.btnEditMaterial.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnEditMaterial_ItemClick);
            // 
            // btnDeleteMaterial
            // 
            this.btnDeleteMaterial.Caption = "Remove Material";
            this.btnDeleteMaterial.Glyph = global::PH.MIDc.UI.Properties.Resources.Delete;
            this.btnDeleteMaterial.Id = 4;
            this.btnDeleteMaterial.Name = "btnDeleteMaterial";
            this.btnDeleteMaterial.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnDeleteMaterial_ItemClick);
            // 
            // barSubItem2
            // 
            this.barSubItem2.Caption = "Style";
            this.barSubItem2.Glyph = global::PH.MIDc.UI.Properties.Resources.plugin_add;
            this.barSubItem2.Id = 9;
            this.barSubItem2.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.PaintStyle, this.btnAddStyle, DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnEditStyle),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnDeleteStyle)});
            this.barSubItem2.Name = "barSubItem2";
            // 
            // btnAddStyle
            // 
            this.btnAddStyle.Caption = "Add Style";
            this.btnAddStyle.Glyph = global::PH.MIDc.UI.Properties.Resources.add;
            this.btnAddStyle.Id = 0;
            this.btnAddStyle.Name = "btnAddStyle";
            this.btnAddStyle.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnAddStyle_ItemClick);
            // 
            // btnEditStyle
            // 
            this.btnEditStyle.Caption = "Modify Style";
            this.btnEditStyle.Glyph = global::PH.MIDc.UI.Properties.Resources.Pen;
            this.btnEditStyle.Id = 5;
            this.btnEditStyle.Name = "btnEditStyle";
            this.btnEditStyle.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnEditStyle_ItemClick);
            // 
            // btnDeleteStyle
            // 
            this.btnDeleteStyle.Caption = "Remove Style";
            this.btnDeleteStyle.Glyph = global::PH.MIDc.UI.Properties.Resources.Delete;
            this.btnDeleteStyle.Id = 6;
            this.btnDeleteStyle.Name = "btnDeleteStyle";
            this.btnDeleteStyle.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnDeleteStyle_ItemClick);
            // 
            // btnSave
            // 
            this.btnSave.Caption = "Save";
            this.btnSave.Glyph = global::PH.MIDc.UI.Properties.Resources.Save;
            this.btnSave.Id = 2;
            this.btnSave.Name = "btnSave";
            this.btnSave.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnSave_ItemClick);
            // 
            // btnRefresh
            // 
            this.btnRefresh.Caption = "Refresh";
            this.btnRefresh.Glyph = global::PH.MIDc.UI.Properties.Resources.Refresh;
            this.btnRefresh.Id = 7;
            this.btnRefresh.Name = "btnRefresh";
            this.btnRefresh.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnRefresh_ItemClick);
            // 
            // barSubItem3
            // 
            this.barSubItem3.Caption = "Report";
            this.barSubItem3.Glyph = global::PH.MIDc.UI.Properties.Resources.Report_Bound;
            this.barSubItem3.Id = 13;
            this.barSubItem3.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.btnStyleQtyReport),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnMaterialWeightReport)});
            this.barSubItem3.Name = "barSubItem3";
            // 
            // btnStyleQtyReport
            // 
            this.btnStyleQtyReport.Caption = "by Style";
            this.btnStyleQtyReport.Id = 10;
            this.btnStyleQtyReport.Name = "btnStyleQtyReport";
            this.btnStyleQtyReport.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnStyleQtyReport_ItemClick);
            // 
            // btnMaterialWeightReport
            // 
            this.btnMaterialWeightReport.Caption = "by Material";
            this.btnMaterialWeightReport.Id = 11;
            this.btnMaterialWeightReport.Name = "btnMaterialWeightReport";
            this.btnMaterialWeightReport.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnMaterialWeightReport_ItemClick);
            // 
            // btnStyleMaterialReport
            // 
            this.btnStyleMaterialReport.Caption = "Style/Material Weight Report";
            this.btnStyleMaterialReport.Id = 12;
            this.btnStyleMaterialReport.Name = "btnStyleMaterialReport";
            this.btnStyleMaterialReport.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnStyleMaterialReport_ItemClick);
            // 
            // barDockControlTop
            // 
            this.PlatetoolTipController.SetSuperTip(this.barDockControlTop, null);
            // 
            // barDockControlBottom
            // 
            this.PlatetoolTipController.SetSuperTip(this.barDockControlBottom, null);
            // 
            // barDockControlLeft
            // 
            this.PlatetoolTipController.SetSuperTip(this.barDockControlLeft, null);
            // 
            // barDockControlRight
            // 
            this.PlatetoolTipController.SetSuperTip(this.barDockControlRight, null);
            // 
            // gcWeight
            // 
            this.gcWeight.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gcWeight.EmbeddedNavigator.Name = "";
            this.gcWeight.Location = new System.Drawing.Point(0, 51);
            this.gcWeight.MainView = this.gvWeight;
            this.gcWeight.Name = "gcWeight";
            this.gcWeight.Size = new System.Drawing.Size(1170, 649);
            this.gcWeight.TabIndex = 4;
            this.gcWeight.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gvWeight});
            // 
            // gvWeight
            // 
            this.gvWeight.Bands.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand1});
            this.gvWeight.GridControl = this.gcWeight;
            this.gvWeight.Name = "gvWeight";
            this.gvWeight.OptionsBehavior.AutoPopulateColumns = false;
            this.gvWeight.OptionsCustomization.AllowColumnMoving = false;
            this.gvWeight.OptionsCustomization.AllowFilter = false;
            this.gvWeight.OptionsCustomization.AllowGroup = false;
            this.gvWeight.OptionsCustomization.AllowSort = false;
            this.gvWeight.OptionsCustomization.ShowBandsInCustomizationForm = false;
            this.gvWeight.OptionsSelection.EnableAppearanceHideSelection = false;
            this.gvWeight.OptionsSelection.MultiSelectMode = DevExpress.XtraGrid.Views.Grid.GridMultiSelectMode.CellSelect;
            this.gvWeight.OptionsView.ColumnAutoWidth = false;
            this.gvWeight.CustomDrawColumnHeader += new DevExpress.XtraGrid.Views.Grid.ColumnHeaderCustomDrawEventHandler(this.gvWeight_CustomDrawColumnHeader);
            // 
            // gridBand1
            // 
            this.gridBand1.Caption = "gridBand1";
            this.gridBand1.Name = "gridBand1";
            // 
            // WipWeightForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.gcWeight);
            this.Controls.Add(this.barDockControlLeft);
            this.Controls.Add(this.barDockControlRight);
            this.Controls.Add(this.barDockControlBottom);
            this.Controls.Add(this.barDockControlTop);
            this.Name = "WipWeightForm";
            this.Size = new System.Drawing.Size(1170, 722);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.barManager1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gcWeight)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvWeight)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraBars.BarManager barManager1;
        private DevExpress.XtraBars.Bar bar2;
        private DevExpress.XtraBars.Bar bar3;
        private DevExpress.XtraBars.BarDockControl barDockControlTop;
        private DevExpress.XtraBars.BarDockControl barDockControlBottom;
        private DevExpress.XtraBars.BarDockControl barDockControlLeft;
        private DevExpress.XtraBars.BarDockControl barDockControlRight;
        private DevExpress.XtraGrid.GridControl gcWeight;
        private System.Windows.Forms.BindingSource bindingSource1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridView gvWeight;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand1;
        private DevExpress.XtraBars.BarButtonItem btnAddStyle;
        private DevExpress.XtraBars.BarButtonItem btnAddMaterial;
        private DevExpress.XtraBars.BarButtonItem btnSave;
        private DevExpress.XtraBars.BarButtonItem btnEditMaterial;
        private DevExpress.XtraBars.BarButtonItem btnDeleteMaterial;
        private DevExpress.XtraBars.BarButtonItem btnEditStyle;
        private DevExpress.XtraBars.BarButtonItem btnDeleteStyle;
        private DevExpress.XtraBars.BarButtonItem btnRefresh;
        private DevExpress.XtraBars.BarSubItem barSubItem1;
        private DevExpress.XtraBars.BarSubItem barSubItem2;
        private DevExpress.XtraBars.Bar bar1;
        private DevExpress.XtraBars.BarSubItem barSubItem3;
        private DevExpress.XtraBars.BarButtonItem btnStyleQtyReport;
        private DevExpress.XtraBars.BarButtonItem btnMaterialWeightReport;
        private DevExpress.XtraBars.BarButtonItem btnStyleMaterialReport;

    }
}
