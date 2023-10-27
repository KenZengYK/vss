namespace PH.POPC.UI
{
    partial class PONotifyDetailForm
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
            System.Windows.Forms.Label remarkLabel1;
            this.handleNoLabel = new System.Windows.Forms.Label();
            this.handleNoSpinEdit = new DevExpress.XtraEditors.SpinEdit();
            this.operateDateLabel = new System.Windows.Forms.Label();
            this.operateDateDateEdit = new DevExpress.XtraEditors.DateEdit();
            this.remarkMemoEdit = new DevExpress.XtraEditors.MemoEdit();
            this.textEdit1 = new DevExpress.XtraEditors.TextEdit();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.textEdit2 = new DevExpress.XtraEditors.TextEdit();
            this.label3 = new System.Windows.Forms.Label();
            this.checkedComboBoxEdit1 = new DevExpress.XtraEditors.CheckedComboBoxEdit();
            this.radioGroup1 = new DevExpress.XtraEditors.RadioGroup();
            this.pageClassification = new DevExpress.XtraTab.XtraTabControl();
            this.pageInternal = new DevExpress.XtraTab.XtraTabPage();
            this.groupControl1 = new DevExpress.XtraEditors.GroupControl();
            this.lbDivision = new System.Windows.Forms.Label();
            this.cbDivision = new DevExpress.XtraEditors.ComboBoxEdit();
            this.rgClassification = new DevExpress.XtraEditors.RadioGroup();
            this.groupControl2 = new DevExpress.XtraEditors.GroupControl();
            this.cbSubCon = new DevExpress.XtraEditors.ComboBoxEdit();
            this.cbSupp = new DevExpress.XtraEditors.ComboBoxEdit();
            this.cbCust = new DevExpress.XtraEditors.ComboBoxEdit();
            this.rgInLevel2 = new DevExpress.XtraEditors.RadioGroup();
            this.pageExternal = new DevExpress.XtraTab.XtraTabPage();
            this.checkEdit1 = new DevExpress.XtraEditors.CheckEdit();
            this.cbSubCon1 = new DevExpress.XtraEditors.ComboBoxEdit();
            this.cbSupp1 = new DevExpress.XtraEditors.ComboBoxEdit();
            this.cbDivision1 = new DevExpress.XtraEditors.ComboBoxEdit();
            this.rgOut = new DevExpress.XtraEditors.RadioGroup();
            this.btnSend = new DevExpress.XtraBars.BarButtonItem();
            this.btnNotepadReport = new DevExpress.XtraBars.BarButtonItem();
            remarkLabel1 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.handleNoSpinEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.operateDateDateEdit.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.operateDateDateEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.remarkMemoEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit2.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.checkedComboBoxEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.radioGroup1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pageClassification)).BeginInit();
            this.pageClassification.SuspendLayout();
            this.pageInternal.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).BeginInit();
            this.groupControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.cbDivision.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rgClassification.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl2)).BeginInit();
            this.groupControl2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.cbSubCon.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbSupp.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbCust.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rgInLevel2.Properties)).BeginInit();
            this.pageExternal.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.checkEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbSubCon1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbSupp1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbDivision1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rgOut.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // objEdtbarManager
            // 
            this.objEdtbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.btnSend,
            this.btnNotepadReport});
            this.objEdtbarManager.MaxItemId = 24;
            // 
            // objEditBar
            // 
            this.objEditBar.Appearance.Options.UseTextOptions = true;
            this.objEditBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.PaintStyle, this.btnNotepadReport, "", true, true, true, 0, null, DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph),
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.PaintStyle, this.btnSend, "", true, true, true, 0, null, DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph)});
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.POPC.BO.PONotify);
            // 
            // remarkLabel1
            // 
            remarkLabel1.AutoSize = true;
            remarkLabel1.Location = new System.Drawing.Point(42, 414);
            remarkLabel1.Name = "remarkLabel1";
            remarkLabel1.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(remarkLabel1, null);
            remarkLabel1.TabIndex = 22;
            remarkLabel1.Text = "Notepad:";
            // 
            // handleNoLabel
            // 
            this.handleNoLabel.AutoSize = true;
            this.handleNoLabel.Location = new System.Drawing.Point(292, 95);
            this.handleNoLabel.Name = "handleNoLabel";
            this.handleNoLabel.Size = new System.Drawing.Size(71, 12);
            this.PlatetoolTipController.SetSuperTip(this.handleNoLabel, null);
            this.handleNoLabel.TabIndex = 6;
            this.handleNoLabel.Text = "Amendment#:";
            // 
            // handleNoSpinEdit
            // 
            this.handleNoSpinEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Amendment", true));
            this.handleNoSpinEdit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.handleNoSpinEdit.Location = new System.Drawing.Point(377, 90);
            this.handleNoSpinEdit.Name = "handleNoSpinEdit";
            this.handleNoSpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.handleNoSpinEdit.Size = new System.Drawing.Size(64, 21);
            this.handleNoSpinEdit.TabIndex = 7;
            // 
            // operateDateLabel
            // 
            this.operateDateLabel.AutoSize = true;
            this.operateDateLabel.Location = new System.Drawing.Point(48, 68);
            this.operateDateLabel.Name = "operateDateLabel";
            this.operateDateLabel.Size = new System.Drawing.Size(35, 12);
            this.PlatetoolTipController.SetSuperTip(this.operateDateLabel, null);
            this.operateDateLabel.TabIndex = 8;
            this.operateDateLabel.Text = "Date:";
            // 
            // operateDateDateEdit
            // 
            this.operateDateDateEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "DT", true));
            this.operateDateDateEdit.EditValue = null;
            this.operateDateDateEdit.Location = new System.Drawing.Point(106, 63);
            this.operateDateDateEdit.Name = "operateDateDateEdit";
            this.operateDateDateEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.operateDateDateEdit.Properties.ReadOnly = true;
            this.operateDateDateEdit.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.operateDateDateEdit.Size = new System.Drawing.Size(115, 21);
            this.operateDateDateEdit.TabIndex = 9;
            // 
            // remarkMemoEdit
            // 
            this.remarkMemoEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Notepad", true));
            this.remarkMemoEdit.Location = new System.Drawing.Point(106, 409);
            this.remarkMemoEdit.Name = "remarkMemoEdit";
            this.remarkMemoEdit.Size = new System.Drawing.Size(594, 127);
            this.remarkMemoEdit.TabIndex = 23;
            // 
            // textEdit1
            // 
            this.textEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Sender", true));
            this.textEdit1.Location = new System.Drawing.Point(106, 90);
            this.textEdit1.Name = "textEdit1";
            this.textEdit1.Properties.ReadOnly = true;
            this.textEdit1.Size = new System.Drawing.Size(115, 21);
            this.textEdit1.TabIndex = 24;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(48, 95);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(47, 12);
            this.PlatetoolTipController.SetSuperTip(this.label1, null);
            this.label1.TabIndex = 25;
            this.label1.Text = "Sender:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(42, 375);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(this.label2, null);
            this.label2.TabIndex = 27;
            this.label2.Text = "Subject:";
            // 
            // textEdit2
            // 
            this.textEdit2.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Subject", true));
            this.textEdit2.Location = new System.Drawing.Point(106, 372);
            this.textEdit2.Name = "textEdit2";
            this.textEdit2.Size = new System.Drawing.Size(594, 21);
            this.textEdit2.TabIndex = 26;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(244, 66);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(119, 12);
            this.PlatetoolTipController.SetSuperTip(this.label3, null);
            this.label3.TabIndex = 28;
            this.label3.Text = "Happening Event On:";
            // 
            // checkedComboBoxEdit1
            // 
            this.checkedComboBoxEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "HappeningEvent", true));
            this.checkedComboBoxEdit1.Location = new System.Drawing.Point(377, 61);
            this.checkedComboBoxEdit1.Name = "checkedComboBoxEdit1";
            this.checkedComboBoxEdit1.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.checkedComboBoxEdit1.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.CheckedListBoxItem[] {
            new DevExpress.XtraEditors.Controls.CheckedListBoxItem("Jan"),
            new DevExpress.XtraEditors.Controls.CheckedListBoxItem("Feb"),
            new DevExpress.XtraEditors.Controls.CheckedListBoxItem("Mar"),
            new DevExpress.XtraEditors.Controls.CheckedListBoxItem("Apr"),
            new DevExpress.XtraEditors.Controls.CheckedListBoxItem("May"),
            new DevExpress.XtraEditors.Controls.CheckedListBoxItem("Jun"),
            new DevExpress.XtraEditors.Controls.CheckedListBoxItem("Jul"),
            new DevExpress.XtraEditors.Controls.CheckedListBoxItem("Aug"),
            new DevExpress.XtraEditors.Controls.CheckedListBoxItem("Sep"),
            new DevExpress.XtraEditors.Controls.CheckedListBoxItem("Oct"),
            new DevExpress.XtraEditors.Controls.CheckedListBoxItem("Nov"),
            new DevExpress.XtraEditors.Controls.CheckedListBoxItem("Dec")});
            this.checkedComboBoxEdit1.Size = new System.Drawing.Size(315, 21);
            this.checkedComboBoxEdit1.TabIndex = 29;
            // 
            // radioGroup1
            // 
            this.radioGroup1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "IsInternal", true));
            this.radioGroup1.Location = new System.Drawing.Point(106, 123);
            this.radioGroup1.Name = "radioGroup1";
            this.radioGroup1.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] {
            new DevExpress.XtraEditors.Controls.RadioGroupItem(true, "Internal"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem(false, "External")});
            this.radioGroup1.Size = new System.Drawing.Size(275, 21);
            this.radioGroup1.TabIndex = 30;
            this.radioGroup1.EditValueChanged += new System.EventHandler(this.radioGroup1_EditValueChanged);
            // 
            // pageClassification
            // 
            this.pageClassification.Location = new System.Drawing.Point(106, 151);
            this.pageClassification.Name = "pageClassification";
            this.pageClassification.SelectedTabPage = this.pageInternal;
            this.pageClassification.Size = new System.Drawing.Size(594, 204);
            this.pageClassification.TabIndex = 31;
            this.pageClassification.TabPages.AddRange(new DevExpress.XtraTab.XtraTabPage[] {
            this.pageInternal,
            this.pageExternal});
            this.pageClassification.Text = "xtraTabControl1";
            // 
            // pageInternal
            // 
            this.pageInternal.Controls.Add(this.groupControl1);
            this.pageInternal.Controls.Add(this.groupControl2);
            this.pageInternal.Name = "pageInternal";
            this.pageInternal.Size = new System.Drawing.Size(585, 172);
            this.pageInternal.Text = "Internal";
            // 
            // groupControl1
            // 
            this.groupControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.groupControl1.Controls.Add(this.lbDivision);
            this.groupControl1.Controls.Add(this.cbDivision);
            this.groupControl1.Controls.Add(this.rgClassification);
            this.groupControl1.Location = new System.Drawing.Point(3, 3);
            this.groupControl1.Name = "groupControl1";
            this.groupControl1.Size = new System.Drawing.Size(251, 166);
            this.PlatetoolTipController.SetSuperTip(this.groupControl1, null);
            this.groupControl1.TabIndex = 3;
            this.groupControl1.Text = "Level 1";
            // 
            // lbDivision
            // 
            this.lbDivision.AutoSize = true;
            this.lbDivision.Location = new System.Drawing.Point(100, 137);
            this.lbDivision.Name = "lbDivision";
            this.lbDivision.Size = new System.Drawing.Size(59, 12);
            this.PlatetoolTipController.SetSuperTip(this.lbDivision, null);
            this.lbDivision.TabIndex = 26;
            this.lbDivision.Text = "Division:";
            this.lbDivision.Visible = false;
            // 
            // cbDivision
            // 
            this.cbDivision.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Division", true));
            this.cbDivision.Location = new System.Drawing.Point(165, 132);
            this.cbDivision.Name = "cbDivision";
            this.cbDivision.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbDivision.Properties.Items.AddRange(new object[] {
            "A",
            "B",
            "C",
            "E"});
            this.cbDivision.Size = new System.Drawing.Size(73, 21);
            this.cbDivision.TabIndex = 3;
            this.cbDivision.Visible = false;
            // 
            // rgClassification
            // 
            this.rgClassification.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Classification", true));
            this.rgClassification.EditValue = 1;
            this.rgClassification.Location = new System.Drawing.Point(10, 30);
            this.rgClassification.Name = "rgClassification";
            this.rgClassification.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] {
            new DevExpress.XtraEditors.Controls.RadioGroupItem(0, "1. Help - (Program issue)"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem(1, "2. Broadcast (All divisions)"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem(2, "3. Division Dependent (A, B, C, E)")});
            this.rgClassification.Size = new System.Drawing.Size(228, 96);
            this.rgClassification.TabIndex = 2;
            this.rgClassification.EditValueChanged += new System.EventHandler(this.radioGroup2_EditValueChanged);
            // 
            // groupControl2
            // 
            this.groupControl2.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.groupControl2.Controls.Add(this.cbSubCon);
            this.groupControl2.Controls.Add(this.cbSupp);
            this.groupControl2.Controls.Add(this.cbCust);
            this.groupControl2.Controls.Add(this.rgInLevel2);
            this.groupControl2.Location = new System.Drawing.Point(260, 3);
            this.groupControl2.Name = "groupControl2";
            this.groupControl2.Size = new System.Drawing.Size(322, 166);
            this.PlatetoolTipController.SetSuperTip(this.groupControl2, null);
            this.groupControl2.TabIndex = 1;
            this.groupControl2.Text = "Level 2";
            // 
            // cbSubCon
            // 
            this.cbSubCon.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "SubContractor", true));
            this.cbSubCon.Location = new System.Drawing.Point(211, 96);
            this.cbSubCon.Name = "cbSubCon";
            this.cbSubCon.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbSubCon.Size = new System.Drawing.Size(100, 21);
            this.cbSubCon.TabIndex = 6;
            this.cbSubCon.Visible = false;
            // 
            // cbSupp
            // 
            this.cbSupp.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Supplier", true));
            this.cbSupp.Location = new System.Drawing.Point(211, 66);
            this.cbSupp.Name = "cbSupp";
            this.cbSupp.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbSupp.Size = new System.Drawing.Size(100, 21);
            this.cbSupp.TabIndex = 5;
            this.cbSupp.Visible = false;
            // 
            // cbCust
            // 
            this.cbCust.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Customer", true));
            this.cbCust.Location = new System.Drawing.Point(211, 35);
            this.cbCust.Name = "cbCust";
            this.cbCust.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbCust.Size = new System.Drawing.Size(100, 21);
            this.cbCust.TabIndex = 4;
            this.cbCust.Visible = false;
            // 
            // rgInLevel2
            // 
            this.rgInLevel2.Location = new System.Drawing.Point(5, 30);
            this.rgInLevel2.Name = "rgInLevel2";
            this.rgInLevel2.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] {
            new DevExpress.XtraEditors.Controls.RadioGroupItem(0, "1. Customer Dependent"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem(1, "2. Supplier Dependent"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem(2, "3. Sub-contractor Dependent")});
            this.rgInLevel2.Size = new System.Drawing.Size(199, 96);
            this.rgInLevel2.TabIndex = 3;
            this.rgInLevel2.EditValueChanged += new System.EventHandler(this.radioGroup3_EditValueChanged);
            // 
            // pageExternal
            // 
            this.pageExternal.Controls.Add(this.checkEdit1);
            this.pageExternal.Controls.Add(this.cbSubCon1);
            this.pageExternal.Controls.Add(this.cbSupp1);
            this.pageExternal.Controls.Add(this.cbDivision1);
            this.pageExternal.Controls.Add(this.rgOut);
            this.pageExternal.Name = "pageExternal";
            this.pageExternal.Size = new System.Drawing.Size(585, 172);
            this.pageExternal.Text = "External";
            // 
            // checkEdit1
            // 
            this.checkEdit1.EditValue = true;
            this.checkEdit1.Location = new System.Drawing.Point(58, 31);
            this.checkEdit1.Name = "checkEdit1";
            this.checkEdit1.Properties.Caption = "1. Division Dependent (A, B, C, E)";
            this.checkEdit1.Properties.CheckStyle = DevExpress.XtraEditors.Controls.CheckStyles.Radio;
            this.checkEdit1.Size = new System.Drawing.Size(226, 19);
            this.checkEdit1.TabIndex = 11;
            // 
            // cbSubCon1
            // 
            this.cbSubCon1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "SubContractor", true));
            this.cbSubCon1.Location = new System.Drawing.Point(299, 100);
            this.cbSubCon1.Name = "cbSubCon1";
            this.cbSubCon1.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbSubCon1.Size = new System.Drawing.Size(100, 21);
            this.cbSubCon1.TabIndex = 10;
            this.cbSubCon1.Visible = false;
            // 
            // cbSupp1
            // 
            this.cbSupp1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Supplier", true));
            this.cbSupp1.Location = new System.Drawing.Point(299, 70);
            this.cbSupp1.Name = "cbSupp1";
            this.cbSupp1.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbSupp1.Size = new System.Drawing.Size(100, 21);
            this.cbSupp1.TabIndex = 9;
            this.cbSupp1.Visible = false;
            // 
            // cbDivision1
            // 
            this.cbDivision1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Division", true));
            this.cbDivision1.Location = new System.Drawing.Point(299, 31);
            this.cbDivision1.Name = "cbDivision1";
            this.cbDivision1.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbDivision1.Properties.Items.AddRange(new object[] {
            "A",
            "B",
            "C",
            "E"});
            this.cbDivision1.Size = new System.Drawing.Size(100, 21);
            this.cbDivision1.TabIndex = 8;
            // 
            // rgOut
            // 
            this.rgOut.Location = new System.Drawing.Point(55, 62);
            this.rgOut.Name = "rgOut";
            this.rgOut.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] {
            new DevExpress.XtraEditors.Controls.RadioGroupItem(1, "2. Supplier Dependent"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem(2, "3. Sub-contractor Dependent")});
            this.rgOut.Size = new System.Drawing.Size(226, 67);
            this.rgOut.TabIndex = 7;
            this.rgOut.EditValueChanged += new System.EventHandler(this.radioGroup4_EditValueChanged);
            // 
            // btnSend
            // 
            this.btnSend.Caption = "Send Email";
            this.btnSend.Glyph = global::PH.POPC.UI.Properties.Resources.Mail;
            this.btnSend.Id = 22;
            this.btnSend.Name = "btnSend";
            this.btnSend.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnSend_ItemClick);
            // 
            // btnNotepadReport
            // 
            this.btnNotepadReport.Caption = "Notepad Report";
            this.btnNotepadReport.Glyph = global::PH.POPC.UI.Properties.Resources.Print;
            this.btnNotepadReport.Id = 23;
            this.btnNotepadReport.Name = "btnNotepadReport";
            this.btnNotepadReport.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnNotepadReport_ItemClick);
            // 
            // PONotifyDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.pageClassification);
            this.Controls.Add(this.radioGroup1);
            this.Controls.Add(this.checkedComboBoxEdit1);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.textEdit2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.textEdit1);
            this.Controls.Add(remarkLabel1);
            this.Controls.Add(this.remarkMemoEdit);
            this.Controls.Add(this.operateDateLabel);
            this.Controls.Add(this.operateDateDateEdit);
            this.Controls.Add(this.handleNoLabel);
            this.Controls.Add(this.handleNoSpinEdit);
            this.Name = "PONotifyDetailForm";
            this.Size = new System.Drawing.Size(1000, 560);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.handleNoSpinEdit, 0);
            this.Controls.SetChildIndex(this.handleNoLabel, 0);
            this.Controls.SetChildIndex(this.operateDateDateEdit, 0);
            this.Controls.SetChildIndex(this.operateDateLabel, 0);
            this.Controls.SetChildIndex(this.remarkMemoEdit, 0);
            this.Controls.SetChildIndex(remarkLabel1, 0);
            this.Controls.SetChildIndex(this.textEdit1, 0);
            this.Controls.SetChildIndex(this.label1, 0);
            this.Controls.SetChildIndex(this.textEdit2, 0);
            this.Controls.SetChildIndex(this.label2, 0);
            this.Controls.SetChildIndex(this.label3, 0);
            this.Controls.SetChildIndex(this.checkedComboBoxEdit1, 0);
            this.Controls.SetChildIndex(this.radioGroup1, 0);
            this.Controls.SetChildIndex(this.pageClassification, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.handleNoSpinEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.operateDateDateEdit.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.operateDateDateEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.remarkMemoEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit2.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.checkedComboBoxEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.radioGroup1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pageClassification)).EndInit();
            this.pageClassification.ResumeLayout(false);
            this.pageInternal.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).EndInit();
            this.groupControl1.ResumeLayout(false);
            this.groupControl1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.cbDivision.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rgClassification.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl2)).EndInit();
            this.groupControl2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.cbSubCon.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbSupp.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbCust.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rgInLevel2.Properties)).EndInit();
            this.pageExternal.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.checkEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbSubCon1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbSupp1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbDivision1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rgOut.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label handleNoLabel;
        private DevExpress.XtraEditors.SpinEdit handleNoSpinEdit;
        private System.Windows.Forms.Label operateDateLabel;
        private DevExpress.XtraEditors.DateEdit operateDateDateEdit;
        private DevExpress.XtraEditors.MemoEdit remarkMemoEdit;
        private DevExpress.XtraEditors.TextEdit textEdit1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private DevExpress.XtraEditors.TextEdit textEdit2;
        private System.Windows.Forms.Label label3;
        private DevExpress.XtraEditors.CheckedComboBoxEdit checkedComboBoxEdit1;
        private DevExpress.XtraEditors.RadioGroup radioGroup1;
        private DevExpress.XtraTab.XtraTabControl pageClassification;
        private DevExpress.XtraTab.XtraTabPage pageInternal;
        private DevExpress.XtraTab.XtraTabPage pageExternal;
        private DevExpress.XtraEditors.GroupControl groupControl2;
        private DevExpress.XtraEditors.RadioGroup rgClassification;
        private DevExpress.XtraEditors.GroupControl groupControl1;
        private System.Windows.Forms.Label lbDivision;
        private DevExpress.XtraEditors.ComboBoxEdit cbDivision;
        private DevExpress.XtraEditors.RadioGroup rgInLevel2;
        private DevExpress.XtraEditors.ComboBoxEdit cbSubCon;
        private DevExpress.XtraEditors.ComboBoxEdit cbSupp;
        private DevExpress.XtraEditors.ComboBoxEdit cbCust;
        private DevExpress.XtraEditors.ComboBoxEdit cbSubCon1;
        private DevExpress.XtraEditors.ComboBoxEdit cbSupp1;
        private DevExpress.XtraEditors.ComboBoxEdit cbDivision1;
        private DevExpress.XtraEditors.RadioGroup rgOut;
        private DevExpress.XtraEditors.CheckEdit checkEdit1;
        private DevExpress.XtraBars.BarButtonItem btnSend;
        private DevExpress.XtraBars.BarButtonItem btnNotepadReport;
    }
}
