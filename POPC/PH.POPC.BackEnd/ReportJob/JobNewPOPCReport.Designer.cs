namespace PH.POPC.BackEnd
{
    partial class JobNewPOPCReport
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
            this.editSupplier = new DevExpress.XtraEditors.TextEdit();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.groupControl1 = new DevExpress.XtraEditors.GroupControl();
            this.editVAT = new DevExpress.XtraEditors.CheckEdit();
            this.textEdit1 = new DevExpress.XtraEditors.TextEdit();
            this.labelControl3 = new DevExpress.XtraEditors.LabelControl();
            this.editDetailSumReport = new DevExpress.XtraEditors.RadioGroup();
            this.editLanguage = new DevExpress.XtraEditors.RadioGroup();
            ((System.ComponentModel.ISupportInitialize)(this.editSupplier.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).BeginInit();
            this.groupControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.editVAT.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.editDetailSumReport.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.editLanguage.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // editSupplier
            // 
            this.editSupplier.Location = new System.Drawing.Point(101, 46);
            this.editSupplier.Name = "editSupplier";
            this.editSupplier.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.editSupplier.Properties.MaxLength = 7;
            this.editSupplier.Size = new System.Drawing.Size(126, 21);
            this.editSupplier.TabIndex = 0;
            this.editSupplier.KeyDown += new System.Windows.Forms.KeyEventHandler(this.editPONO_KeyDown);
            // 
            // labelControl2
            // 
            this.labelControl2.Location = new System.Drawing.Point(16, 49);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(47, 14);
            this.labelControl2.TabIndex = 14;
            this.labelControl2.Text = "Supplier:";
            // 
            // groupControl1
            // 
            this.groupControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.groupControl1.Controls.Add(this.editVAT);
            this.groupControl1.Controls.Add(this.textEdit1);
            this.groupControl1.Controls.Add(this.labelControl3);
            this.groupControl1.Controls.Add(this.editDetailSumReport);
            this.groupControl1.Controls.Add(this.editLanguage);
            this.groupControl1.Controls.Add(this.editSupplier);
            this.groupControl1.Controls.Add(this.labelControl2);
            this.groupControl1.Location = new System.Drawing.Point(14, 15);
            this.groupControl1.Name = "groupControl1";
            this.groupControl1.ShowCaption = false;
            this.groupControl1.Size = new System.Drawing.Size(265, 335);
            this.groupControl1.TabIndex = 16;
            this.groupControl1.Text = "groupControl1";
            // 
            // editVAT
            // 
            this.editVAT.Location = new System.Drawing.Point(14, 230);
            this.editVAT.Name = "editVAT";
            this.editVAT.Properties.Caption = " VAT";
            this.editVAT.Size = new System.Drawing.Size(59, 19);
            this.editVAT.TabIndex = 21;
            // 
            // textEdit1
            // 
            this.textEdit1.Location = new System.Drawing.Point(101, 73);
            this.textEdit1.Name = "textEdit1";
            this.textEdit1.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.textEdit1.Properties.MaxLength = 7;
            this.textEdit1.Size = new System.Drawing.Size(126, 21);
            this.textEdit1.TabIndex = 19;
            // 
            // labelControl3
            // 
            this.labelControl3.Location = new System.Drawing.Point(16, 76);
            this.labelControl3.Name = "labelControl3";
            this.labelControl3.Size = new System.Drawing.Size(56, 14);
            this.labelControl3.TabIndex = 20;
            this.labelControl3.Text = "Customer:";
            // 
            // editDetailSumReport
            // 
            this.editDetailSumReport.EditValue = 0;
            this.editDetailSumReport.Location = new System.Drawing.Point(16, 116);
            this.editDetailSumReport.Name = "editDetailSumReport";
            this.editDetailSumReport.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] {
            new DevExpress.XtraEditors.Controls.RadioGroupItem(0, "Summary Report"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem(1, "External Report"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem(2, "Internal Report")});
            this.editDetailSumReport.Size = new System.Drawing.Size(156, 96);
            this.editDetailSumReport.TabIndex = 18;
            // 
            // editLanguage
            // 
            this.editLanguage.EditValue = "EN";
            this.editLanguage.Location = new System.Drawing.Point(16, 268);
            this.editLanguage.Name = "editLanguage";
            this.editLanguage.Properties.Columns = 3;
            this.editLanguage.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] {
            new DevExpress.XtraEditors.Controls.RadioGroupItem("EN", "English"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem("TW", "Chinese"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem("TH", "Thai")});
            this.editLanguage.Size = new System.Drawing.Size(211, 46);
            this.editLanguage.TabIndex = 17;
            // 
            // JobNewPOPCReport
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.groupControl1);
            this.Name = "JobNewPOPCReport";
            this.Size = new System.Drawing.Size(316, 374);
            ((System.ComponentModel.ISupportInitialize)(this.editSupplier.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).EndInit();
            this.groupControl1.ResumeLayout(false);
            this.groupControl1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.editVAT.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.editDetailSumReport.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.editLanguage.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.GroupControl groupControl1;
        public DevExpress.XtraEditors.TextEdit editSupplier;
        private DevExpress.XtraEditors.RadioGroup editLanguage;
        private DevExpress.XtraEditors.RadioGroup editDetailSumReport;
        public DevExpress.XtraEditors.TextEdit textEdit1;
        private DevExpress.XtraEditors.LabelControl labelControl3;
        private DevExpress.XtraEditors.CheckEdit editVAT;
    }
}
