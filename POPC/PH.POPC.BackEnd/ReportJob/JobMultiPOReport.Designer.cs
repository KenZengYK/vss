namespace PH.POPC.BackEnd
{
    partial class JobMultiPOReport
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
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.editCONO = new DevExpress.XtraEditors.TextEdit();
            this.groupControl1 = new DevExpress.XtraEditors.GroupControl();
            this.chkDomesticPurchase = new DevExpress.XtraEditors.CheckEdit();
            this.btnSelectPO = new DevExpress.XtraEditors.SimpleButton();
            this.rgReportTitleType = new DevExpress.XtraEditors.RadioGroup();
            this.chk_POForHS = new DevExpress.XtraEditors.CheckEdit();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.editMarkets = new DevExpress.XtraEditors.RadioGroup();
            this.editVAT = new DevExpress.XtraEditors.CheckEdit();
            this.editDetailSumReport = new DevExpress.XtraEditors.RadioGroup();
            this.editLanguage = new DevExpress.XtraEditors.RadioGroup();
            this.editPrintColor = new DevExpress.XtraEditors.RadioGroup();
            this.editReportType = new DevExpress.XtraEditors.RadioGroup();
            this.textRegion = new DevExpress.XtraEditors.TextEdit();
            this.tePOs = new PH.POPC.BackEnd.CustomEditor.TextEditPopUp();
            ((System.ComponentModel.ISupportInitialize)(this.editCONO.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).BeginInit();
            this.groupControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.chkDomesticPurchase.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rgReportTitleType.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.chk_POForHS.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.editMarkets.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.editVAT.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.editDetailSumReport.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.editLanguage.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.editPrintColor.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.editReportType.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textRegion.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.tePOs.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(16, 12);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(50, 14);
            this.labelControl1.TabIndex = 12;
            this.labelControl1.Text = "Company";
            // 
            // editCONO
            // 
            this.editCONO.EditValue = "P1";
            this.editCONO.Location = new System.Drawing.Point(101, 9);
            this.editCONO.Name = "editCONO";
            this.editCONO.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.editCONO.Size = new System.Drawing.Size(48, 21);
            this.editCONO.TabIndex = 2;
            // 
            // groupControl1
            // 
            this.groupControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.groupControl1.Controls.Add(this.chkDomesticPurchase);
            this.groupControl1.Controls.Add(this.btnSelectPO);
            this.groupControl1.Controls.Add(this.rgReportTitleType);
            this.groupControl1.Controls.Add(this.chk_POForHS);
            this.groupControl1.Controls.Add(this.tePOs);
            this.groupControl1.Controls.Add(this.labelControl2);
            this.groupControl1.Controls.Add(this.editMarkets);
            this.groupControl1.Controls.Add(this.editVAT);
            this.groupControl1.Controls.Add(this.editDetailSumReport);
            this.groupControl1.Controls.Add(this.editLanguage);
            this.groupControl1.Controls.Add(this.editPrintColor);
            this.groupControl1.Controls.Add(this.editReportType);
            this.groupControl1.Controls.Add(this.textRegion);
            this.groupControl1.Controls.Add(this.labelControl1);
            this.groupControl1.Controls.Add(this.editCONO);
            this.groupControl1.Location = new System.Drawing.Point(14, 15);
            this.groupControl1.Name = "groupControl1";
            this.groupControl1.ShowCaption = false;
            this.groupControl1.Size = new System.Drawing.Size(676, 350);
            this.groupControl1.TabIndex = 16;
            this.groupControl1.Text = "groupControl1";
            // 
            // chkDomesticPurchase
            // 
            this.chkDomesticPurchase.Location = new System.Drawing.Point(16, 184);
            this.chkDomesticPurchase.Name = "chkDomesticPurchase";
            this.chkDomesticPurchase.Properties.Caption = "Domestic Purchase";
            this.chkDomesticPurchase.Size = new System.Drawing.Size(335, 19);
            this.chkDomesticPurchase.TabIndex = 31;
            this.chkDomesticPurchase.CheckedChanged += new System.EventHandler(this.chkDomesticPurchase_CheckedChanged);
            // 
            // btnSelectPO
            // 
            this.btnSelectPO.Location = new System.Drawing.Point(638, 51);
            this.btnSelectPO.Name = "btnSelectPO";
            this.btnSelectPO.Size = new System.Drawing.Size(27, 23);
            this.btnSelectPO.TabIndex = 30;
            this.btnSelectPO.Text = "...";
            this.btnSelectPO.Click += new System.EventHandler(this.btnSelectPO_Click);
            // 
            // rgReportTitleType
            // 
            this.rgReportTitleType.EditValue = "Dongguan";
            this.rgReportTitleType.Location = new System.Drawing.Point(17, 225);
            this.rgReportTitleType.Name = "rgReportTitleType";
            this.rgReportTitleType.Properties.Columns = 3;
            this.rgReportTitleType.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] {
            new DevExpress.XtraEditors.Controls.RadioGroupItem("Dongguan", "PH-GD"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem("PYHK", "PY-HK"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem("PHHK", "PH-HK")});
            this.rgReportTitleType.Size = new System.Drawing.Size(334, 30);
            this.rgReportTitleType.TabIndex = 29;
            this.rgReportTitleType.Visible = false;
            // 
            // chk_POForHS
            // 
            this.chk_POForHS.Location = new System.Drawing.Point(14, 304);
            this.chk_POForHS.Name = "chk_POForHS";
            this.chk_POForHS.Properties.Appearance.BorderColor = System.Drawing.Color.Red;
            this.chk_POForHS.Properties.Appearance.Options.UseBorderColor = true;
            this.chk_POForHS.Properties.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.Simple;
            this.chk_POForHS.Properties.Caption = "IS Print PO For HS";
            this.chk_POForHS.Properties.ReadOnly = true;
            this.chk_POForHS.Size = new System.Drawing.Size(337, 21);
            this.chk_POForHS.TabIndex = 28;
            this.chk_POForHS.Visible = false;
            // 
            // labelControl2
            // 
            this.labelControl2.Location = new System.Drawing.Point(16, 55);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(50, 14);
            this.labelControl2.TabIndex = 27;
            this.labelControl2.Text = "PO No(s)";
            // 
            // editMarkets
            // 
            this.editMarkets.EditValue = 0;
            this.editMarkets.Location = new System.Drawing.Point(107, 268);
            this.editMarkets.Name = "editMarkets";
            this.editMarkets.Properties.Columns = 2;
            this.editMarkets.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] {
            new DevExpress.XtraEditors.Controls.RadioGroupItem(false, "Normal Markets"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem(true, "Domestic Markets")});
            this.editMarkets.Size = new System.Drawing.Size(244, 30);
            this.editMarkets.TabIndex = 20;
            this.editMarkets.Visible = false;
            // 
            // editVAT
            // 
            this.editVAT.Location = new System.Drawing.Point(14, 279);
            this.editVAT.Name = "editVAT";
            this.editVAT.Properties.Caption = " VAT";
            this.editVAT.Size = new System.Drawing.Size(59, 19);
            this.editVAT.TabIndex = 19;
            this.editVAT.Visible = false;
            // 
            // editDetailSumReport
            // 
            this.editDetailSumReport.EditValue = true;
            this.editDetailSumReport.Location = new System.Drawing.Point(16, 324);
            this.editDetailSumReport.Name = "editDetailSumReport";
            this.editDetailSumReport.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] {
            new DevExpress.XtraEditors.Controls.RadioGroupItem(true, "PO - Front page only"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem(false, "PO has supplement sheet")});
            this.editDetailSumReport.Size = new System.Drawing.Size(244, 68);
            this.editDetailSumReport.TabIndex = 18;
            this.editDetailSumReport.Visible = false;
            // 
            // editLanguage
            // 
            this.editLanguage.EditValue = "EN";
            this.editLanguage.Location = new System.Drawing.Point(357, 224);
            this.editLanguage.Name = "editLanguage";
            this.editLanguage.Properties.Columns = 3;
            this.editLanguage.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] {
            new DevExpress.XtraEditors.Controls.RadioGroupItem("EN", "English Form"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem("TW", "Domestic Purchase")});
            this.editLanguage.Size = new System.Drawing.Size(265, 31);
            this.editLanguage.TabIndex = 17;
            this.editLanguage.Visible = false;
            // 
            // editPrintColor
            // 
            this.editPrintColor.EditValue = false;
            this.editPrintColor.Location = new System.Drawing.Point(16, 140);
            this.editPrintColor.Name = "editPrintColor";
            this.editPrintColor.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] {
            new DevExpress.XtraEditors.Controls.RadioGroupItem(true, "Color Printing"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem(false, "Black && White Printing")});
            this.editPrintColor.Size = new System.Drawing.Size(335, 31);
            this.editPrintColor.TabIndex = 17;
            // 
            // editReportType
            // 
            this.editReportType.EditValue = 1;
            this.editReportType.Location = new System.Drawing.Point(16, 97);
            this.editReportType.Name = "editReportType";
            this.editReportType.Properties.Columns = 3;
            this.editReportType.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] {
            new DevExpress.XtraEditors.Controls.RadioGroupItem(0, "Our duplicate"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem(1, "Original"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem(2, "All")});
            this.editReportType.Size = new System.Drawing.Size(335, 31);
            this.editReportType.TabIndex = 16;
            // 
            // textRegion
            // 
            this.textRegion.EditValue = "SL";
            this.textRegion.Location = new System.Drawing.Point(179, 9);
            this.textRegion.Name = "textRegion";
            this.textRegion.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.textRegion.Size = new System.Drawing.Size(48, 21);
            this.textRegion.TabIndex = 15;
            this.textRegion.Visible = false;
            // 
            // tePOs
            // 
            this.tePOs.DataSource = null;
            this.tePOs.DisplayMember = null;
            this.tePOs.Location = new System.Drawing.Point(81, 52);
            this.tePOs.Name = "tePOs";
            this.tePOs.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.tePOs.Properties.DataSource = null;
            this.tePOs.Properties.DisplayMember = null;
            this.tePOs.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.Standard;
            this.tePOs.Size = new System.Drawing.Size(557, 21);
            this.tePOs.TabIndex = 21;
            // 
            // JobMultiPOReport
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.groupControl1);
            this.Name = "JobMultiPOReport";
            this.Size = new System.Drawing.Size(709, 383);
            ((System.ComponentModel.ISupportInitialize)(this.editCONO.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).EndInit();
            this.groupControl1.ResumeLayout(false);
            this.groupControl1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.chkDomesticPurchase.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rgReportTitleType.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.chk_POForHS.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.editMarkets.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.editVAT.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.editDetailSumReport.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.editLanguage.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.editPrintColor.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.editReportType.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textRegion.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.tePOs.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.GroupControl groupControl1;
        public DevExpress.XtraEditors.TextEdit editCONO;
        public DevExpress.XtraEditors.TextEdit textRegion;
        private DevExpress.XtraEditors.RadioGroup editReportType;
        private DevExpress.XtraEditors.RadioGroup editPrintColor;
        private DevExpress.XtraEditors.RadioGroup editLanguage;
        private DevExpress.XtraEditors.RadioGroup editDetailSumReport;
        private DevExpress.XtraEditors.CheckEdit editVAT;
        private DevExpress.XtraEditors.RadioGroup editMarkets;
        private PH.POPC.BackEnd.CustomEditor.TextEditPopUp tePOs;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.CheckEdit chk_POForHS;
        private DevExpress.XtraEditors.RadioGroup rgReportTitleType;
        private DevExpress.XtraEditors.SimpleButton btnSelectPO;
        private DevExpress.XtraEditors.CheckEdit chkDomesticPurchase;
    }
}
