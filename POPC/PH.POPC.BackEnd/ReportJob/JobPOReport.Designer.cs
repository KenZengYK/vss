namespace PH.POPC.BackEnd
{
    partial class JobPOReport
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
            this.editPONO = new DevExpress.XtraEditors.TextEdit();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.groupControl1 = new DevExpress.XtraEditors.GroupControl();
            this.rgReportTitleType = new DevExpress.XtraEditors.RadioGroup();
            this.chkDomesticPurchase = new DevExpress.XtraEditors.CheckEdit();
            this.chk_POForHS = new DevExpress.XtraEditors.CheckEdit();
            this.editMarkets = new DevExpress.XtraEditors.RadioGroup();
            this.editVAT = new DevExpress.XtraEditors.CheckEdit();
            this.editDetailSumReport = new DevExpress.XtraEditors.RadioGroup();
            this.editPrintColor = new DevExpress.XtraEditors.RadioGroup();
            this.editReportType = new DevExpress.XtraEditors.RadioGroup();
            this.textRegion = new DevExpress.XtraEditors.TextEdit();
            ((System.ComponentModel.ISupportInitialize)(this.editCONO.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.editPONO.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).BeginInit();
            this.groupControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.rgReportTitleType.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkDomesticPurchase.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.chk_POForHS.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.editMarkets.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.editVAT.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.editDetailSumReport.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.editPrintColor.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.editReportType.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textRegion.Properties)).BeginInit();
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
            // editPONO
            // 
            this.editPONO.Location = new System.Drawing.Point(101, 46);
            this.editPONO.Name = "editPONO";
            this.editPONO.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.editPONO.Properties.MaxLength = 70;
            this.editPONO.Size = new System.Drawing.Size(126, 21);
            this.editPONO.TabIndex = 0;
            this.editPONO.KeyDown += new System.Windows.Forms.KeyEventHandler(this.editPONO_KeyDown);
            // 
            // labelControl2
            // 
            this.labelControl2.Location = new System.Drawing.Point(16, 49);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(48, 14);
            this.labelControl2.TabIndex = 14;
            this.labelControl2.Text = "PO No#:";
            // 
            // groupControl1
            // 
            this.groupControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.groupControl1.Controls.Add(this.rgReportTitleType);
            this.groupControl1.Controls.Add(this.chkDomesticPurchase);
            this.groupControl1.Controls.Add(this.chk_POForHS);
            this.groupControl1.Controls.Add(this.editMarkets);
            this.groupControl1.Controls.Add(this.editVAT);
            this.groupControl1.Controls.Add(this.editDetailSumReport);
            this.groupControl1.Controls.Add(this.editPrintColor);
            this.groupControl1.Controls.Add(this.editReportType);
            this.groupControl1.Controls.Add(this.textRegion);
            this.groupControl1.Controls.Add(this.editPONO);
            this.groupControl1.Controls.Add(this.labelControl1);
            this.groupControl1.Controls.Add(this.labelControl2);
            this.groupControl1.Controls.Add(this.editCONO);
            this.groupControl1.Location = new System.Drawing.Point(14, 15);
            this.groupControl1.Name = "groupControl1";
            this.groupControl1.ShowCaption = false;
            this.groupControl1.Size = new System.Drawing.Size(285, 443);
            this.groupControl1.TabIndex = 16;
            this.groupControl1.Text = "groupControl1";
            // 
            // rgReportTitleType
            // 
            this.rgReportTitleType.EditValue = "PHDG";
            this.rgReportTitleType.Location = new System.Drawing.Point(21, 213);
            this.rgReportTitleType.Name = "rgReportTitleType";
            this.rgReportTitleType.Properties.Columns = 3;
            this.rgReportTitleType.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] {
            new DevExpress.XtraEditors.Controls.RadioGroupItem("PHDG", "PHDG"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem("PHHK", "PHHK"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem("PYDvp", "PYDvp")});
            this.rgReportTitleType.Size = new System.Drawing.Size(239, 30);
            this.rgReportTitleType.TabIndex = 32;
            this.rgReportTitleType.Visible = false;
            // 
            // chkDomesticPurchase
            // 
            this.chkDomesticPurchase.Location = new System.Drawing.Point(19, 188);
            this.chkDomesticPurchase.Name = "chkDomesticPurchase";
            this.chkDomesticPurchase.Properties.Caption = "Domestic Purchase";
            this.chkDomesticPurchase.Size = new System.Drawing.Size(168, 19);
            this.chkDomesticPurchase.TabIndex = 33;
            // 
            // chk_POForHS
            // 
            this.chk_POForHS.Location = new System.Drawing.Point(18, 287);
            this.chk_POForHS.Name = "chk_POForHS";
            this.chk_POForHS.Properties.Appearance.BackColor = System.Drawing.Color.Transparent;
            this.chk_POForHS.Properties.Appearance.BorderColor = System.Drawing.Color.Red;
            this.chk_POForHS.Properties.Appearance.Options.UseBackColor = true;
            this.chk_POForHS.Properties.Appearance.Options.UseBorderColor = true;
            this.chk_POForHS.Properties.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.Simple;
            this.chk_POForHS.Properties.Caption = "IS Print PO For HS";
            this.chk_POForHS.Properties.ReadOnly = true;
            this.chk_POForHS.Size = new System.Drawing.Size(242, 21);
            this.chk_POForHS.TabIndex = 21;
            this.chk_POForHS.Visible = false;
            // 
            // editMarkets
            // 
            this.editMarkets.EditValue = 0;
            this.editMarkets.Location = new System.Drawing.Point(16, 314);
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
            this.editVAT.Location = new System.Drawing.Point(14, 420);
            this.editVAT.Name = "editVAT";
            this.editVAT.Properties.Caption = " VAT";
            this.editVAT.Size = new System.Drawing.Size(59, 19);
            this.editVAT.TabIndex = 19;
            this.editVAT.Visible = false;
            // 
            // editDetailSumReport
            // 
            this.editDetailSumReport.EditValue = true;
            this.editDetailSumReport.Location = new System.Drawing.Point(16, 348);
            this.editDetailSumReport.Name = "editDetailSumReport";
            this.editDetailSumReport.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] {
            new DevExpress.XtraEditors.Controls.RadioGroupItem(true, "PO - Front page only"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem(false, "PO has supplement sheet")});
            this.editDetailSumReport.Size = new System.Drawing.Size(244, 68);
            this.editDetailSumReport.TabIndex = 18;
            this.editDetailSumReport.Visible = false;
            // 
            // editPrintColor
            // 
            this.editPrintColor.EditValue = false;
            this.editPrintColor.Location = new System.Drawing.Point(16, 123);
            this.editPrintColor.Name = "editPrintColor";
            this.editPrintColor.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] {
            new DevExpress.XtraEditors.Controls.RadioGroupItem(true, "Color Printing"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem(false, "Black && White Printing")});
            this.editPrintColor.Size = new System.Drawing.Size(171, 59);
            this.editPrintColor.TabIndex = 17;
            // 
            // editReportType
            // 
            this.editReportType.EditValue = 1;
            this.editReportType.Location = new System.Drawing.Point(16, 83);
            this.editReportType.Name = "editReportType";
            this.editReportType.Properties.Columns = 2;
            this.editReportType.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] {
            new DevExpress.XtraEditors.Controls.RadioGroupItem(0, "PH Copy"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem(1, "Original")});
            this.editReportType.Size = new System.Drawing.Size(211, 30);
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
            // JobPOReport
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.groupControl1);
            this.Name = "JobPOReport";
            this.Size = new System.Drawing.Size(318, 472);
            ((System.ComponentModel.ISupportInitialize)(this.editCONO.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.editPONO.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).EndInit();
            this.groupControl1.ResumeLayout(false);
            this.groupControl1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.rgReportTitleType.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkDomesticPurchase.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.chk_POForHS.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.editMarkets.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.editVAT.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.editDetailSumReport.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.editPrintColor.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.editReportType.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textRegion.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.GroupControl groupControl1;
        public DevExpress.XtraEditors.TextEdit editCONO;
        public DevExpress.XtraEditors.TextEdit editPONO;
        public DevExpress.XtraEditors.TextEdit textRegion;
        private DevExpress.XtraEditors.RadioGroup editReportType;
        private DevExpress.XtraEditors.RadioGroup editPrintColor;
        private DevExpress.XtraEditors.RadioGroup editDetailSumReport;
        private DevExpress.XtraEditors.CheckEdit editVAT;
        private DevExpress.XtraEditors.RadioGroup editMarkets;
        private DevExpress.XtraEditors.CheckEdit chk_POForHS;
        public DevExpress.XtraEditors.CheckEdit chkDomesticPurchase;
        public DevExpress.XtraEditors.RadioGroup rgReportTitleType;
    }
}
