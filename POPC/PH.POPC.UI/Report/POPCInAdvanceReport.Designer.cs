namespace PH.POPC.UI.Report
{
    partial class POPCInAdvanceReport
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
            this.barManager1 = new DevExpress.XtraBars.BarManager(this.components);
            this.bar1 = new DevExpress.XtraBars.Bar();
            this.barSubItem1 = new DevExpress.XtraBars.BarSubItem();
            this.btnQA = new DevExpress.XtraBars.BarButtonItem();
            this.btnSupplement = new DevExpress.XtraBars.BarButtonItem();
            this.btnItemSpec = new DevExpress.XtraBars.BarButtonItem();
            this.bar2 = new DevExpress.XtraBars.Bar();
            this.bar3 = new DevExpress.XtraBars.Bar();
            this.barDockControlTop = new DevExpress.XtraBars.BarDockControl();
            this.barDockControlBottom = new DevExpress.XtraBars.BarDockControl();
            this.barDockControlLeft = new DevExpress.XtraBars.BarDockControl();
            this.barDockControlRight = new DevExpress.XtraBars.BarDockControl();
            this.btnPrintReport = new DevExpress.XtraBars.BarButtonItem();
            this.groupControl7 = new DevExpress.XtraEditors.GroupControl();
            this.groupControl1 = new DevExpress.XtraEditors.GroupControl();
            this.deSuppddTo = new DevExpress.XtraEditors.DateEdit();
            this.labelControl13 = new DevExpress.XtraEditors.LabelControl();
            this.deSuppddFrom = new DevExpress.XtraEditors.DateEdit();
            this.labelControl12 = new DevExpress.XtraEditors.LabelControl();
            this.teSuppRefs = new PH.POPC.BackEnd.CustomEditor.TextEditPopUp();
            this.teTeam = new DevExpress.XtraEditors.ComboBoxEdit();
            this.teSupplier = new PH.POPC.BackEnd.CustomEditor.TextEditPopUp();
            this.teOfficer = new DevExpress.XtraEditors.ComboBoxEdit();
            this.teEndCustCode = new PH.POPC.BackEnd.CustomEditor.TextEditPopUp();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.groupControl5 = new DevExpress.XtraEditors.GroupControl();
            this.teBrandNames = new DevExpress.XtraEditors.TextEdit();
            this.cmbStatus = new DevExpress.XtraEditors.ComboBoxEdit();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl6 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl9 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl10 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl7 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl11 = new DevExpress.XtraEditors.LabelControl();
            this.panelControl1 = new DevExpress.XtraEditors.PanelControl();
            this.gridControl1 = new DevExpress.XtraGrid.GridControl();
            this.bindingSource1 = new System.Windows.Forms.BindingSource(this.components);
            this.bandedGridView1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridView();
            this.gridBand1 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            ((System.ComponentModel.ISupportInitialize)(this.barManager1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl7)).BeginInit();
            this.groupControl7.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).BeginInit();
            this.groupControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.deSuppddTo.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deSuppddTo.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deSuppddFrom.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deSuppddFrom.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.teSuppRefs.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.teTeam.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.teSupplier.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.teOfficer.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.teEndCustCode.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl5)).BeginInit();
            this.groupControl5.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.teBrandNames.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cmbStatus.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).BeginInit();
            this.panelControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bandedGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // barManager1
            // 
            this.barManager1.Bars.AddRange(new DevExpress.XtraBars.Bar[] {
            this.bar1,
            this.bar2,
            this.bar3});
            this.barManager1.DockControls.Add(this.barDockControlTop);
            this.barManager1.DockControls.Add(this.barDockControlBottom);
            this.barManager1.DockControls.Add(this.barDockControlLeft);
            this.barManager1.DockControls.Add(this.barDockControlRight);
            this.barManager1.Form = this;
            this.barManager1.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.btnPrintReport,
            this.barSubItem1,
            this.btnQA,
            this.btnSupplement,
            this.btnItemSpec});
            this.barManager1.MainMenu = this.bar2;
            this.barManager1.MaxItemId = 35;
            this.barManager1.StatusBar = this.bar3;
            // 
            // bar1
            // 
            this.bar1.BarName = "Tools";
            this.bar1.DockCol = 0;
            this.bar1.DockRow = 1;
            this.bar1.DockStyle = DevExpress.XtraBars.BarDockStyle.Top;
            this.bar1.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.PaintStyle, this.barSubItem1, DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph)});
            this.bar1.Text = "Tools";
            // 
            // barSubItem1
            // 
            this.barSubItem1.Caption = "Level 1";
            this.barSubItem1.Glyph = global::PH.POPC.UI.Properties.Resources.Print;
            this.barSubItem1.Id = 1;
            this.barSubItem1.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.btnQA),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnSupplement),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnItemSpec)});
            this.barSubItem1.Name = "barSubItem1";
            this.barSubItem1.Tag = 1;
            // 
            // btnQA
            // 
            this.btnQA.Caption = "Color Control";
            this.btnQA.Id = 32;
            this.btnQA.Name = "btnQA";
            this.btnQA.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnQA_ItemClick);
            // 
            // btnSupplement
            // 
            this.btnSupplement.Caption = "Supplement sheet";
            this.btnSupplement.Id = 33;
            this.btnSupplement.Name = "btnSupplement";
            this.btnSupplement.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnSupplementSheet_ItemClick);
            // 
            // btnItemSpec
            // 
            this.btnItemSpec.Caption = "Item\'s Spec in BOM";
            this.btnItemSpec.Id = 34;
            this.btnItemSpec.Name = "btnItemSpec";
            this.btnItemSpec.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnSpec_ItemClick);
            // 
            // bar2
            // 
            this.bar2.BarName = "Main menu";
            this.bar2.DockCol = 0;
            this.bar2.DockRow = 0;
            this.bar2.DockStyle = DevExpress.XtraBars.BarDockStyle.Top;
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
            // btnPrintReport
            // 
            this.btnPrintReport.Caption = "Print";
            this.btnPrintReport.Id = 0;
            this.btnPrintReport.Name = "btnPrintReport";
            // 
            // groupControl7
            // 
            this.groupControl7.AppearanceCaption.ForeColor = System.Drawing.Color.Blue;
            this.groupControl7.AppearanceCaption.Options.UseForeColor = true;
            this.groupControl7.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.groupControl7.Controls.Add(this.groupControl1);
            this.groupControl7.Dock = System.Windows.Forms.DockStyle.Right;
            this.groupControl7.Location = new System.Drawing.Point(428, 2);
            this.groupControl7.Name = "groupControl7";
            this.groupControl7.Size = new System.Drawing.Size(241, 207);
            this.PlatetoolTipController.SetSuperTip(this.groupControl7, null);
            this.groupControl7.TabIndex = 48;
            this.groupControl7.Text = "Choose Range";
            // 
            // groupControl1
            // 
            this.groupControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.groupControl1.Controls.Add(this.deSuppddTo);
            this.groupControl1.Controls.Add(this.labelControl13);
            this.groupControl1.Controls.Add(this.deSuppddFrom);
            this.groupControl1.Controls.Add(this.labelControl12);
            this.groupControl1.Location = new System.Drawing.Point(21, 52);
            this.groupControl1.Name = "groupControl1";
            this.groupControl1.Size = new System.Drawing.Size(200, 83);
            this.PlatetoolTipController.SetSuperTip(this.groupControl1, null);
            this.groupControl1.TabIndex = 31;
            this.groupControl1.Text = "Col info to Supp (dd)";
            // 
            // deSuppddTo
            // 
            this.deSuppddTo.EditValue = null;
            this.deSuppddTo.Location = new System.Drawing.Point(89, 54);
            this.deSuppddTo.Name = "deSuppddTo";
            this.deSuppddTo.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.deSuppddTo.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.deSuppddTo.Size = new System.Drawing.Size(100, 21);
            this.deSuppddTo.TabIndex = 32;
            // 
            // labelControl13
            // 
            this.labelControl13.Location = new System.Drawing.Point(26, 57);
            this.labelControl13.Name = "labelControl13";
            this.labelControl13.Size = new System.Drawing.Size(15, 14);
            this.labelControl13.TabIndex = 31;
            this.labelControl13.Text = "To";
            // 
            // deSuppddFrom
            // 
            this.deSuppddFrom.EditValue = null;
            this.deSuppddFrom.Location = new System.Drawing.Point(89, 27);
            this.deSuppddFrom.Name = "deSuppddFrom";
            this.deSuppddFrom.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.deSuppddFrom.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.deSuppddFrom.Size = new System.Drawing.Size(100, 21);
            this.deSuppddFrom.TabIndex = 30;
            // 
            // labelControl12
            // 
            this.labelControl12.Location = new System.Drawing.Point(26, 30);
            this.labelControl12.Name = "labelControl12";
            this.labelControl12.Size = new System.Drawing.Size(27, 14);
            this.labelControl12.TabIndex = 29;
            this.labelControl12.Text = "From";
            // 
            // teSuppRefs
            // 
            this.teSuppRefs.DataSource = null;
            this.teSuppRefs.DisplayMember = null;
            this.teSuppRefs.Location = new System.Drawing.Point(149, 94);
            this.teSuppRefs.Name = "teSuppRefs";
            this.teSuppRefs.Properties.DataSource = null;
            this.teSuppRefs.Properties.DisplayMember = null;
            this.teSuppRefs.Properties.PopupFormMinSize = new System.Drawing.Size(200, 300);
            this.teSuppRefs.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.Standard;
            this.teSuppRefs.Size = new System.Drawing.Size(262, 21);
            this.teSuppRefs.TabIndex = 50;
            // 
            // teTeam
            // 
            this.teTeam.Location = new System.Drawing.Point(183, 365);
            this.teTeam.Name = "teTeam";
            this.teTeam.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.teTeam.Size = new System.Drawing.Size(165, 21);
            this.teTeam.TabIndex = 48;
            this.teTeam.Visible = false;
            // 
            // teSupplier
            // 
            this.teSupplier.DataSource = null;
            this.teSupplier.DisplayMember = null;
            this.teSupplier.Location = new System.Drawing.Point(149, 121);
            this.teSupplier.Name = "teSupplier";
            this.teSupplier.Properties.DataSource = null;
            this.teSupplier.Properties.DisplayMember = null;
            this.teSupplier.Properties.PopupFormMinSize = new System.Drawing.Size(200, 300);
            this.teSupplier.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.Standard;
            this.teSupplier.Size = new System.Drawing.Size(262, 21);
            this.teSupplier.TabIndex = 46;
            // 
            // teOfficer
            // 
            this.teOfficer.Location = new System.Drawing.Point(183, 392);
            this.teOfficer.Name = "teOfficer";
            this.teOfficer.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.teOfficer.Size = new System.Drawing.Size(262, 21);
            this.teOfficer.TabIndex = 37;
            this.teOfficer.Visible = false;
            // 
            // teEndCustCode
            // 
            this.teEndCustCode.DataSource = null;
            this.teEndCustCode.DisplayMember = null;
            this.teEndCustCode.Location = new System.Drawing.Point(149, 31);
            this.teEndCustCode.Name = "teEndCustCode";
            this.teEndCustCode.Properties.DataSource = null;
            this.teEndCustCode.Properties.DisplayMember = null;
            this.teEndCustCode.Properties.PopupFormMinSize = new System.Drawing.Size(200, 300);
            this.teEndCustCode.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.Standard;
            this.teEndCustCode.Size = new System.Drawing.Size(262, 21);
            this.teEndCustCode.TabIndex = 45;
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(71, 123);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(60, 14);
            this.labelControl1.TabIndex = 8;
            this.labelControl1.Text = "Supp Code";
            // 
            // groupControl5
            // 
            this.groupControl5.AppearanceCaption.ForeColor = System.Drawing.Color.Red;
            this.groupControl5.AppearanceCaption.Options.UseForeColor = true;
            this.groupControl5.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.groupControl5.Controls.Add(this.teBrandNames);
            this.groupControl5.Controls.Add(this.cmbStatus);
            this.groupControl5.Controls.Add(this.labelControl2);
            this.groupControl5.Controls.Add(this.teSuppRefs);
            this.groupControl5.Controls.Add(this.teSupplier);
            this.groupControl5.Controls.Add(this.teEndCustCode);
            this.groupControl5.Controls.Add(this.labelControl1);
            this.groupControl5.Controls.Add(this.labelControl6);
            this.groupControl5.Controls.Add(this.labelControl9);
            this.groupControl5.Controls.Add(this.labelControl10);
            this.groupControl5.Dock = System.Windows.Forms.DockStyle.Fill;
            this.groupControl5.Location = new System.Drawing.Point(2, 2);
            this.groupControl5.Name = "groupControl5";
            this.groupControl5.Size = new System.Drawing.Size(426, 207);
            this.PlatetoolTipController.SetSuperTip(this.groupControl5, null);
            this.groupControl5.TabIndex = 46;
            this.groupControl5.Text = "Filter Field";
            // 
            // teBrandNames
            // 
            this.teBrandNames.Location = new System.Drawing.Point(149, 58);
            this.teBrandNames.Name = "teBrandNames";
            this.teBrandNames.Size = new System.Drawing.Size(262, 21);
            this.teBrandNames.TabIndex = 32;
            // 
            // cmbStatus
            // 
            this.cmbStatus.Location = new System.Drawing.Point(149, 160);
            this.cmbStatus.Name = "cmbStatus";
            this.cmbStatus.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cmbStatus.Properties.Items.AddRange(new object[] {
            "Wait",
            "Pending",
            "Rej",
            "App.",
            "Re-App."});
            this.cmbStatus.Size = new System.Drawing.Size(165, 21);
            this.cmbStatus.TabIndex = 53;
            // 
            // labelControl2
            // 
            this.labelControl2.Location = new System.Drawing.Point(25, 163);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(106, 14);
            this.labelControl2.TabIndex = 52;
            this.labelControl2.Text = "L/D App/Rej Status";
            // 
            // labelControl6
            // 
            this.labelControl6.Location = new System.Drawing.Point(50, 34);
            this.labelControl6.Name = "labelControl6";
            this.labelControl6.Size = new System.Drawing.Size(81, 14);
            this.labelControl6.TabIndex = 17;
            this.labelControl6.Text = "End Cust Code";
            // 
            // labelControl9
            // 
            this.labelControl9.Location = new System.Drawing.Point(51, 97);
            this.labelControl9.Name = "labelControl9";
            this.labelControl9.Size = new System.Drawing.Size(80, 14);
            this.labelControl9.TabIndex = 23;
            this.labelControl9.Text = "Supp Item Ref";
            // 
            // labelControl10
            // 
            this.labelControl10.Location = new System.Drawing.Point(65, 61);
            this.labelControl10.Name = "labelControl10";
            this.labelControl10.Size = new System.Drawing.Size(66, 14);
            this.labelControl10.TabIndex = 25;
            this.labelControl10.Text = "Brand Name";
            // 
            // labelControl7
            // 
            this.labelControl7.Location = new System.Drawing.Point(126, 368);
            this.labelControl7.Name = "labelControl7";
            this.labelControl7.Size = new System.Drawing.Size(39, 14);
            this.labelControl7.TabIndex = 19;
            this.labelControl7.Text = "Division";
            this.labelControl7.Visible = false;
            // 
            // labelControl11
            // 
            this.labelControl11.Location = new System.Drawing.Point(102, 395);
            this.labelControl11.Name = "labelControl11";
            this.labelControl11.Size = new System.Drawing.Size(63, 14);
            this.labelControl11.TabIndex = 27;
            this.labelControl11.Text = "Coordinator";
            this.labelControl11.Visible = false;
            // 
            // panelControl1
            // 
            this.panelControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.panelControl1.Controls.Add(this.groupControl5);
            this.panelControl1.Controls.Add(this.groupControl7);
            this.panelControl1.Location = new System.Drawing.Point(32, 115);
            this.panelControl1.Name = "panelControl1";
            this.panelControl1.Size = new System.Drawing.Size(671, 211);
            this.PlatetoolTipController.SetSuperTip(this.panelControl1, null);
            this.panelControl1.TabIndex = 50;
            // 
            // gridControl1
            // 
            this.gridControl1.DataSource = this.bindingSource1;
            this.gridControl1.EmbeddedNavigator.Name = "";
            this.gridControl1.Location = new System.Drawing.Point(200, 142);
            this.gridControl1.MainView = this.bandedGridView1;
            this.gridControl1.Name = "gridControl1";
            this.gridControl1.Size = new System.Drawing.Size(356, 132);
            this.gridControl1.TabIndex = 51;
            this.gridControl1.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.bandedGridView1});
            // 
            // bandedGridView1
            // 
            this.bandedGridView1.Bands.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand1});
            this.bandedGridView1.GridControl = this.gridControl1;
            this.bandedGridView1.Name = "bandedGridView1";
            // 
            // gridBand1
            // 
            this.gridBand1.Caption = "gridBand1";
            this.gridBand1.Name = "gridBand1";
            // 
            // POPCInAdvanceReport
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.Controls.Add(this.panelControl1);
            this.Controls.Add(this.gridControl1);
            this.Controls.Add(this.teTeam);
            this.Controls.Add(this.labelControl11);
            this.Controls.Add(this.labelControl7);
            this.Controls.Add(this.teOfficer);
            this.Controls.Add(this.barDockControlLeft);
            this.Controls.Add(this.barDockControlRight);
            this.Controls.Add(this.barDockControlBottom);
            this.Controls.Add(this.barDockControlTop);
            this.Name = "POPCInAdvanceReport";
            this.Size = new System.Drawing.Size(755, 600);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.barManager1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl7)).EndInit();
            this.groupControl7.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).EndInit();
            this.groupControl1.ResumeLayout(false);
            this.groupControl1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.deSuppddTo.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deSuppddTo.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deSuppddFrom.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deSuppddFrom.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.teSuppRefs.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.teTeam.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.teSupplier.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.teOfficer.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.teEndCustCode.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl5)).EndInit();
            this.groupControl5.ResumeLayout(false);
            this.groupControl5.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.teBrandNames.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cmbStatus.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).EndInit();
            this.panelControl1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bandedGridView1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraBars.BarManager barManager1;
        private DevExpress.XtraBars.Bar bar1;
        private DevExpress.XtraBars.Bar bar2;
        private DevExpress.XtraBars.BarButtonItem btnPrintReport;
        private DevExpress.XtraBars.Bar bar3;
        private DevExpress.XtraBars.BarDockControl barDockControlTop;
        private DevExpress.XtraBars.BarDockControl barDockControlBottom;
        private DevExpress.XtraBars.BarDockControl barDockControlLeft;
        private DevExpress.XtraBars.BarDockControl barDockControlRight;
        private DevExpress.XtraEditors.GroupControl groupControl7;
        private DevExpress.XtraEditors.GroupControl groupControl1;
        private DevExpress.XtraEditors.DateEdit deSuppddTo;
        private DevExpress.XtraEditors.LabelControl labelControl13;
        private DevExpress.XtraEditors.DateEdit deSuppddFrom;
        private DevExpress.XtraEditors.LabelControl labelControl12;
        private DevExpress.XtraEditors.GroupControl groupControl5;
        private PH.POPC.BackEnd.CustomEditor.TextEditPopUp teSuppRefs;
        private DevExpress.XtraEditors.ComboBoxEdit teTeam;
        private PH.POPC.BackEnd.CustomEditor.TextEditPopUp teSupplier;
        private PH.POPC.BackEnd.CustomEditor.TextEditPopUp teEndCustCode;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.ComboBoxEdit teOfficer;
        private DevExpress.XtraEditors.LabelControl labelControl6;
        private DevExpress.XtraEditors.LabelControl labelControl7;
        private DevExpress.XtraEditors.LabelControl labelControl9;
        private DevExpress.XtraEditors.LabelControl labelControl11;
        private DevExpress.XtraEditors.LabelControl labelControl10;
        private DevExpress.XtraEditors.PanelControl panelControl1;
        private DevExpress.XtraBars.BarSubItem barSubItem1;
        private DevExpress.XtraGrid.GridControl gridControl1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridView bandedGridView1;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand1;
        private System.Windows.Forms.BindingSource bindingSource1;
        private DevExpress.XtraBars.BarButtonItem btnQA;
        private DevExpress.XtraBars.BarButtonItem btnSupplement;
        private DevExpress.XtraBars.BarButtonItem btnItemSpec;
        private DevExpress.XtraEditors.ComboBoxEdit cmbStatus;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.TextEdit teBrandNames;
    }
}
