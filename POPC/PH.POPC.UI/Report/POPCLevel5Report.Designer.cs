namespace PH.POPC.UI.Report
{
    partial class POPCLevel5Report
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
            this.barButtonItem1 = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonItem2 = new DevExpress.XtraBars.BarButtonItem();
            this.btnNonMatching = new DevExpress.XtraBars.BarButtonItem();
            this.bar2 = new DevExpress.XtraBars.Bar();
            this.bar3 = new DevExpress.XtraBars.Bar();
            this.barDockControlTop = new DevExpress.XtraBars.BarDockControl();
            this.barDockControlBottom = new DevExpress.XtraBars.BarDockControl();
            this.barDockControlLeft = new DevExpress.XtraBars.BarDockControl();
            this.barDockControlRight = new DevExpress.XtraBars.BarDockControl();
            this.teSupplier = new PH.POPC.BackEnd.CustomEditor.TextEditPopUp();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.bindingSource1 = new System.Windows.Forms.BindingSource(this.components);
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.teProject = new DevExpress.XtraEditors.TextEdit();
            this.groupControl2 = new DevExpress.XtraEditors.GroupControl();
            this.deDeliveryTo = new DevExpress.XtraEditors.DateEdit();
            this.labelControl14 = new DevExpress.XtraEditors.LabelControl();
            this.deDeliveryFrom = new DevExpress.XtraEditors.DateEdit();
            this.labelControl15 = new DevExpress.XtraEditors.LabelControl();
            this.rgInvoice = new DevExpress.XtraEditors.RadioGroup();
            this.labelControl3 = new DevExpress.XtraEditors.LabelControl();
            this.groupControl1 = new DevExpress.XtraEditors.GroupControl();
            this.deIssueTo = new DevExpress.XtraEditors.DateEdit();
            this.labelControl13 = new DevExpress.XtraEditors.LabelControl();
            this.deIssueFrom = new DevExpress.XtraEditors.DateEdit();
            this.labelControl12 = new DevExpress.XtraEditors.LabelControl();
            this.groupControl3 = new DevExpress.XtraEditors.GroupControl();
            this.txtPaymentTerms = new DevExpress.XtraEditors.MemoEdit();
            this.labelControl4 = new DevExpress.XtraEditors.LabelControl();
            this.gridControl1 = new DevExpress.XtraGrid.GridControl();
            this.bandedGridView1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridView();
            this.gridBand1 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            ((System.ComponentModel.ISupportInitialize)(this.barManager1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.teSupplier.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.teProject.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl2)).BeginInit();
            this.groupControl2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.deDeliveryTo.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deDeliveryTo.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deDeliveryFrom.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deDeliveryFrom.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rgInvoice.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).BeginInit();
            this.groupControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.deIssueTo.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deIssueTo.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deIssueFrom.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deIssueFrom.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl3)).BeginInit();
            this.groupControl3.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.txtPaymentTerms.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).BeginInit();
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
            this.btnNonMatching,
            this.barSubItem1,
            this.barButtonItem1,
            this.barButtonItem2});
            this.barManager1.MainMenu = this.bar2;
            this.barManager1.MaxItemId = 38;
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
            this.barSubItem1.Caption = "Level 6";
            this.barSubItem1.Glyph = global::PH.POPC.UI.Properties.Resources.Print;
            this.barSubItem1.Id = 35;
            this.barSubItem1.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.barButtonItem1),
            new DevExpress.XtraBars.LinkPersistInfo(this.barButtonItem2),
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.PaintStyle, this.btnNonMatching, "", true, true, true, 0, null, DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph)});
            this.barSubItem1.Name = "barSubItem1";
            // 
            // barButtonItem1
            // 
            this.barButtonItem1.Caption = "PO Summary";
            this.barButtonItem1.Id = 36;
            this.barButtonItem1.Name = "barButtonItem1";
            this.barButtonItem1.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.Level1_POPCForm_ItemClick);
            // 
            // barButtonItem2
            // 
            this.barButtonItem2.Caption = "PO Summary - Supplement Sheet";
            this.barButtonItem2.Id = 37;
            this.barButtonItem2.Name = "barButtonItem2";
            this.barButtonItem2.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.Level1_SupplementSheet_ItemClick);
            // 
            // btnNonMatching
            // 
            this.btnNonMatching.Caption = "Invoice Matching";
            this.btnNonMatching.Glyph = global::PH.POPC.UI.Properties.Resources.Print;
            this.btnNonMatching.Id = 32;
            this.btnNonMatching.Name = "btnNonMatching";
            this.btnNonMatching.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnNonMatching_ItemClick);
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
            // teSupplier
            // 
            this.teSupplier.DataSource = null;
            this.teSupplier.DisplayMember = null;
            this.teSupplier.Location = new System.Drawing.Point(131, 30);
            this.teSupplier.Name = "teSupplier";
            this.teSupplier.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.teSupplier.Properties.DataSource = null;
            this.teSupplier.Properties.DisplayMember = null;
            this.teSupplier.Properties.PopupFormMinSize = new System.Drawing.Size(200, 300);
            this.teSupplier.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.Standard;
            this.teSupplier.Size = new System.Drawing.Size(161, 21);
            this.teSupplier.TabIndex = 46;
            this.teSupplier.EditValueChanged += new System.EventHandler(this.teSupplier_EditValueChanged);
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(53, 32);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(60, 14);
            this.labelControl1.TabIndex = 8;
            this.labelControl1.Text = "Supp Code";
            // 
            // labelControl2
            // 
            this.labelControl2.Location = new System.Drawing.Point(51, 169);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(62, 14);
            this.labelControl2.TabIndex = 47;
            this.labelControl2.Text = "Project No.";
            // 
            // teProject
            // 
            this.teProject.Location = new System.Drawing.Point(131, 166);
            this.teProject.Name = "teProject";
            this.teProject.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.teProject.Size = new System.Drawing.Size(161, 21);
            this.teProject.TabIndex = 48;
            // 
            // groupControl2
            // 
            this.groupControl2.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.groupControl2.Controls.Add(this.deDeliveryTo);
            this.groupControl2.Controls.Add(this.labelControl14);
            this.groupControl2.Controls.Add(this.deDeliveryFrom);
            this.groupControl2.Controls.Add(this.labelControl15);
            this.groupControl2.Location = new System.Drawing.Point(92, 202);
            this.groupControl2.Name = "groupControl2";
            this.groupControl2.Size = new System.Drawing.Size(200, 82);
            this.PlatetoolTipController.SetSuperTip(this.groupControl2, null);
            this.groupControl2.TabIndex = 49;
            this.groupControl2.Text = "PO Delivery Date";
            // 
            // deDeliveryTo
            // 
            this.deDeliveryTo.EditValue = null;
            this.deDeliveryTo.Location = new System.Drawing.Point(89, 54);
            this.deDeliveryTo.Name = "deDeliveryTo";
            this.deDeliveryTo.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.deDeliveryTo.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.deDeliveryTo.Size = new System.Drawing.Size(100, 21);
            this.deDeliveryTo.TabIndex = 32;
            // 
            // labelControl14
            // 
            this.labelControl14.Location = new System.Drawing.Point(26, 57);
            this.labelControl14.Name = "labelControl14";
            this.labelControl14.Size = new System.Drawing.Size(15, 14);
            this.labelControl14.TabIndex = 31;
            this.labelControl14.Text = "To";
            // 
            // deDeliveryFrom
            // 
            this.deDeliveryFrom.EditValue = null;
            this.deDeliveryFrom.Location = new System.Drawing.Point(89, 27);
            this.deDeliveryFrom.Name = "deDeliveryFrom";
            this.deDeliveryFrom.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.deDeliveryFrom.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.deDeliveryFrom.Size = new System.Drawing.Size(100, 21);
            this.deDeliveryFrom.TabIndex = 30;
            // 
            // labelControl15
            // 
            this.labelControl15.Location = new System.Drawing.Point(26, 30);
            this.labelControl15.Name = "labelControl15";
            this.labelControl15.Size = new System.Drawing.Size(27, 14);
            this.labelControl15.TabIndex = 29;
            this.labelControl15.Text = "From";
            // 
            // rgInvoice
            // 
            this.rgInvoice.EditValue = 2;
            this.rgInvoice.Location = new System.Drawing.Point(45, 423);
            this.rgInvoice.Name = "rgInvoice";
            this.rgInvoice.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] {
            new DevExpress.XtraEditors.Controls.RadioGroupItem(0, "Yes"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem(1, "No"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem(2, "Both")});
            this.rgInvoice.Size = new System.Drawing.Size(247, 33);
            this.rgInvoice.TabIndex = 50;
            // 
            // labelControl3
            // 
            this.labelControl3.Location = new System.Drawing.Point(45, 403);
            this.labelControl3.Name = "labelControl3";
            this.labelControl3.Size = new System.Drawing.Size(91, 14);
            this.labelControl3.TabIndex = 51;
            this.labelControl3.Text = "Receive Invoice?";
            // 
            // groupControl1
            // 
            this.groupControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.groupControl1.Controls.Add(this.deIssueTo);
            this.groupControl1.Controls.Add(this.labelControl13);
            this.groupControl1.Controls.Add(this.deIssueFrom);
            this.groupControl1.Controls.Add(this.labelControl12);
            this.groupControl1.Location = new System.Drawing.Point(92, 300);
            this.groupControl1.Name = "groupControl1";
            this.groupControl1.Size = new System.Drawing.Size(200, 83);
            this.PlatetoolTipController.SetSuperTip(this.groupControl1, null);
            this.groupControl1.TabIndex = 52;
            this.groupControl1.Text = "Goods Receiving Date";
            // 
            // deIssueTo
            // 
            this.deIssueTo.EditValue = null;
            this.deIssueTo.Location = new System.Drawing.Point(89, 54);
            this.deIssueTo.Name = "deIssueTo";
            this.deIssueTo.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.deIssueTo.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.deIssueTo.Size = new System.Drawing.Size(100, 21);
            this.deIssueTo.TabIndex = 32;
            // 
            // labelControl13
            // 
            this.labelControl13.Location = new System.Drawing.Point(26, 57);
            this.labelControl13.Name = "labelControl13";
            this.labelControl13.Size = new System.Drawing.Size(15, 14);
            this.labelControl13.TabIndex = 31;
            this.labelControl13.Text = "To";
            // 
            // deIssueFrom
            // 
            this.deIssueFrom.EditValue = null;
            this.deIssueFrom.Location = new System.Drawing.Point(89, 27);
            this.deIssueFrom.Name = "deIssueFrom";
            this.deIssueFrom.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.deIssueFrom.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.deIssueFrom.Size = new System.Drawing.Size(100, 21);
            this.deIssueFrom.TabIndex = 30;
            // 
            // labelControl12
            // 
            this.labelControl12.Location = new System.Drawing.Point(26, 30);
            this.labelControl12.Name = "labelControl12";
            this.labelControl12.Size = new System.Drawing.Size(27, 14);
            this.labelControl12.TabIndex = 29;
            this.labelControl12.Text = "From";
            // 
            // groupControl3
            // 
            this.groupControl3.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.groupControl3.Controls.Add(this.txtPaymentTerms);
            this.groupControl3.Controls.Add(this.labelControl4);
            this.groupControl3.Controls.Add(this.labelControl1);
            this.groupControl3.Controls.Add(this.groupControl1);
            this.groupControl3.Controls.Add(this.teSupplier);
            this.groupControl3.Controls.Add(this.labelControl3);
            this.groupControl3.Controls.Add(this.labelControl2);
            this.groupControl3.Controls.Add(this.rgInvoice);
            this.groupControl3.Controls.Add(this.teProject);
            this.groupControl3.Controls.Add(this.groupControl2);
            this.groupControl3.Location = new System.Drawing.Point(93, 72);
            this.groupControl3.Name = "groupControl3";
            this.groupControl3.Size = new System.Drawing.Size(370, 470);
            this.PlatetoolTipController.SetSuperTip(this.groupControl3, null);
            this.groupControl3.TabIndex = 53;
            // 
            // txtPaymentTerms
            // 
            this.txtPaymentTerms.Location = new System.Drawing.Point(131, 60);
            this.txtPaymentTerms.Name = "txtPaymentTerms";
            this.txtPaymentTerms.Properties.ReadOnly = true;
            this.txtPaymentTerms.Size = new System.Drawing.Size(161, 96);
            this.txtPaymentTerms.TabIndex = 55;
            // 
            // labelControl4
            // 
            this.labelControl4.Location = new System.Drawing.Point(27, 67);
            this.labelControl4.Name = "labelControl4";
            this.labelControl4.Size = new System.Drawing.Size(86, 14);
            this.labelControl4.TabIndex = 53;
            this.labelControl4.Text = "Payment Terms";
            // 
            // gridControl1
            // 
            this.gridControl1.DataSource = this.bindingSource1;
            this.gridControl1.EmbeddedNavigator.Name = "";
            this.gridControl1.Location = new System.Drawing.Point(138, 218);
            this.gridControl1.MainView = this.bandedGridView1;
            this.gridControl1.Name = "gridControl1";
            this.gridControl1.Size = new System.Drawing.Size(275, 200);
            this.gridControl1.TabIndex = 54;
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
            // POPCLevel5Report
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.Controls.Add(this.groupControl3);
            this.Controls.Add(this.gridControl1);
            this.Controls.Add(this.barDockControlLeft);
            this.Controls.Add(this.barDockControlRight);
            this.Controls.Add(this.barDockControlBottom);
            this.Controls.Add(this.barDockControlTop);
            this.Name = "POPCLevel5Report";
            this.Size = new System.Drawing.Size(611, 601);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.barManager1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.teSupplier.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.teProject.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl2)).EndInit();
            this.groupControl2.ResumeLayout(false);
            this.groupControl2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.deDeliveryTo.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deDeliveryTo.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deDeliveryFrom.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deDeliveryFrom.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rgInvoice.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).EndInit();
            this.groupControl1.ResumeLayout(false);
            this.groupControl1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.deIssueTo.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deIssueTo.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deIssueFrom.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deIssueFrom.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl3)).EndInit();
            this.groupControl3.ResumeLayout(false);
            this.groupControl3.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.txtPaymentTerms.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bandedGridView1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraBars.BarManager barManager1;
        private DevExpress.XtraBars.Bar bar1;
        private DevExpress.XtraBars.Bar bar2;
        private DevExpress.XtraBars.Bar bar3;
        private DevExpress.XtraBars.BarDockControl barDockControlTop;
        private DevExpress.XtraBars.BarDockControl barDockControlBottom;
        private DevExpress.XtraBars.BarDockControl barDockControlLeft;
        private DevExpress.XtraBars.BarDockControl barDockControlRight;
        private PH.POPC.BackEnd.CustomEditor.TextEditPopUp teSupplier;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private System.Windows.Forms.BindingSource bindingSource1;
        private DevExpress.XtraBars.BarButtonItem btnNonMatching;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.TextEdit teProject;
        private DevExpress.XtraEditors.GroupControl groupControl2;
        private DevExpress.XtraEditors.DateEdit deDeliveryTo;
        private DevExpress.XtraEditors.LabelControl labelControl14;
        private DevExpress.XtraEditors.DateEdit deDeliveryFrom;
        private DevExpress.XtraEditors.LabelControl labelControl15;
        private DevExpress.XtraEditors.LabelControl labelControl3;
        private DevExpress.XtraEditors.RadioGroup rgInvoice;
        private DevExpress.XtraEditors.GroupControl groupControl1;
        private DevExpress.XtraEditors.DateEdit deIssueTo;
        private DevExpress.XtraEditors.LabelControl labelControl13;
        private DevExpress.XtraEditors.DateEdit deIssueFrom;
        private DevExpress.XtraEditors.LabelControl labelControl12;
        private DevExpress.XtraBars.BarSubItem barSubItem1;
        private DevExpress.XtraBars.BarButtonItem barButtonItem1;
        private DevExpress.XtraBars.BarButtonItem barButtonItem2;
        private DevExpress.XtraEditors.GroupControl groupControl3;
        private DevExpress.XtraGrid.GridControl gridControl1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridView bandedGridView1;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand1;
        private DevExpress.XtraEditors.LabelControl labelControl4;
        private DevExpress.XtraEditors.MemoEdit txtPaymentTerms;
    }
}
