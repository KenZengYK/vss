namespace PH.POPC.BackEnd
{
    partial class JobNewMIDcPOReport
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
            this.editDetailSumReport = new DevExpress.XtraEditors.RadioGroup();
            this.editLanguage = new DevExpress.XtraEditors.RadioGroup();
            this.editPrintColor = new DevExpress.XtraEditors.RadioGroup();
            this.editReportType = new DevExpress.XtraEditors.RadioGroup();
            this.textRegion = new DevExpress.XtraEditors.TextEdit();
            ((System.ComponentModel.ISupportInitialize)(this.editCONO.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.editPONO.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).BeginInit();
            this.groupControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.editDetailSumReport.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.editLanguage.Properties)).BeginInit();
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
            this.editCONO.Location = new System.Drawing.Point(72, 9);
            this.editCONO.Name = "editCONO";
            this.editCONO.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.editCONO.Properties.ReadOnly = true;
            this.editCONO.Size = new System.Drawing.Size(48, 21);
            this.editCONO.TabIndex = 2;
            // 
            // editPONO
            // 
            this.editPONO.Location = new System.Drawing.Point(247, 9);
            this.editPONO.Name = "editPONO";
            this.editPONO.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.editPONO.Properties.MaxLength = 70;
            this.editPONO.Properties.ReadOnly = true;
            this.editPONO.Size = new System.Drawing.Size(135, 21);
            this.editPONO.TabIndex = 0;
            this.editPONO.KeyDown += new System.Windows.Forms.KeyEventHandler(this.editPONO_KeyDown);
            // 
            // labelControl2
            // 
            this.labelControl2.Location = new System.Drawing.Point(193, 12);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(48, 14);
            this.labelControl2.TabIndex = 14;
            this.labelControl2.Text = "PO No#:";
            // 
            // groupControl1
            // 
            this.groupControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.groupControl1.Controls.Add(this.editDetailSumReport);
            this.groupControl1.Controls.Add(this.editLanguage);
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
            this.groupControl1.Size = new System.Drawing.Size(426, 242);
            this.groupControl1.TabIndex = 16;
            this.groupControl1.Text = "groupControl1";
            // 
            // editDetailSumReport
            // 
            this.editDetailSumReport.EditValue = true;
            this.editDetailSumReport.Location = new System.Drawing.Point(16, 199);
            this.editDetailSumReport.Name = "editDetailSumReport";
            this.editDetailSumReport.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] {
            new DevExpress.XtraEditors.Controls.RadioGroupItem(true, "Detail Report")});
            this.editDetailSumReport.Size = new System.Drawing.Size(244, 31);
            this.editDetailSumReport.TabIndex = 18;
            // 
            // editLanguage
            // 
            this.editLanguage.EditValue = "EN";
            this.editLanguage.Location = new System.Drawing.Point(16, 147);
            this.editLanguage.Name = "editLanguage";
            this.editLanguage.Properties.Columns = 3;
            this.editLanguage.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] {
            new DevExpress.XtraEditors.Controls.RadioGroupItem("EN", "English"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem("TW", "Chinese")});
            this.editLanguage.Size = new System.Drawing.Size(211, 46);
            this.editLanguage.TabIndex = 17;
            // 
            // editPrintColor
            // 
            this.editPrintColor.EditValue = false;
            this.editPrintColor.Location = new System.Drawing.Point(16, 82);
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
            this.editReportType.Location = new System.Drawing.Point(16, 46);
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
            this.textRegion.Location = new System.Drawing.Point(126, 9);
            this.textRegion.Name = "textRegion";
            this.textRegion.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.textRegion.Size = new System.Drawing.Size(48, 21);
            this.textRegion.TabIndex = 15;
            this.textRegion.Visible = false;
            // 
            // JobNewMIDcPOReport
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.groupControl1);
            this.Name = "JobNewMIDcPOReport";
            this.Size = new System.Drawing.Size(507, 268);
            ((System.ComponentModel.ISupportInitialize)(this.editCONO.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.editPONO.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).EndInit();
            this.groupControl1.ResumeLayout(false);
            this.groupControl1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.editDetailSumReport.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.editLanguage.Properties)).EndInit();
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
        private DevExpress.XtraEditors.RadioGroup editLanguage;
        private DevExpress.XtraEditors.RadioGroup editDetailSumReport;
    }
}
