namespace PH.MIDc.UI.Other
{
    partial class ImportTariffForm
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
            this.label1 = new System.Windows.Forms.Label();
            this.cbCustomer = new DevExpress.XtraEditors.ComboBoxEdit();
            this.rgReportType = new DevExpress.XtraEditors.RadioGroup();
            this.rgRMBOptiion = new DevExpress.XtraEditors.RadioGroup();
            this.groupControl1 = new DevExpress.XtraEditors.GroupControl();
            this.teProjectTo2 = new DevExpress.XtraEditors.TextEdit();
            this.teProjectTo1 = new DevExpress.XtraEditors.TextEdit();
            this.teProjectFrom2 = new DevExpress.XtraEditors.TextEdit();
            this.teProjectFrom1 = new DevExpress.XtraEditors.TextEdit();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.btnOK = new DevExpress.XtraEditors.SimpleButton();
            ((System.ComponentModel.ISupportInitialize)(this.cbCustomer.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rgReportType.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rgRMBOptiion.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).BeginInit();
            this.groupControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.teProjectTo2.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.teProjectTo1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.teProjectFrom2.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.teProjectFrom1.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(31, 27);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(63, 14);
            this.label1.TabIndex = 0;
            this.label1.Text = "Customer:";
            // 
            // cbCustomer
            // 
            this.cbCustomer.Location = new System.Drawing.Point(108, 24);
            this.cbCustomer.Name = "cbCustomer";
            this.cbCustomer.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbCustomer.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.cbCustomer.Properties.MaxLength = 4;
            this.cbCustomer.Size = new System.Drawing.Size(106, 21);
            this.cbCustomer.TabIndex = 1;
            this.cbCustomer.EditValueChanged += new System.EventHandler(this.cbCustomer_EditValueChanged);
            // 
            // rgReportType
            // 
            this.rgReportType.EditValue = 0;
            this.rgReportType.Location = new System.Drawing.Point(34, 161);
            this.rgReportType.Name = "rgReportType";
            this.rgReportType.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] {
            new DevExpress.XtraEditors.Controls.RadioGroupItem(0, "Detail"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem(1, "Summary"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem(2, "by Style")});
            this.rgReportType.Size = new System.Drawing.Size(390, 31);
            this.rgReportType.TabIndex = 2;
            // 
            // rgRMBOptiion
            // 
            this.rgRMBOptiion.EditValue = false;
            this.rgRMBOptiion.Location = new System.Drawing.Point(34, 214);
            this.rgRMBOptiion.Name = "rgRMBOptiion";
            this.rgRMBOptiion.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] {
            new DevExpress.XtraEditors.Controls.RadioGroupItem(false, "Exclude RMB"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem(true, "RMB")});
            this.rgRMBOptiion.Size = new System.Drawing.Size(257, 31);
            this.rgRMBOptiion.TabIndex = 3;
            // 
            // groupControl1
            // 
            this.groupControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.groupControl1.Controls.Add(this.teProjectTo2);
            this.groupControl1.Controls.Add(this.teProjectTo1);
            this.groupControl1.Controls.Add(this.teProjectFrom2);
            this.groupControl1.Controls.Add(this.teProjectFrom1);
            this.groupControl1.Controls.Add(this.label3);
            this.groupControl1.Controls.Add(this.label2);
            this.groupControl1.Location = new System.Drawing.Point(34, 65);
            this.groupControl1.Name = "groupControl1";
            this.groupControl1.Size = new System.Drawing.Size(390, 67);
            this.groupControl1.TabIndex = 4;
            this.groupControl1.Text = "Project No.";
            // 
            // teProjectTo2
            // 
            this.teProjectTo2.Location = new System.Drawing.Point(306, 33);
            this.teProjectTo2.Name = "teProjectTo2";
            this.teProjectTo2.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.teProjectTo2.Size = new System.Drawing.Size(56, 21);
            this.teProjectTo2.TabIndex = 8;
            // 
            // teProjectTo1
            // 
            this.teProjectTo1.Location = new System.Drawing.Point(244, 33);
            this.teProjectTo1.Name = "teProjectTo1";
            this.teProjectTo1.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.teProjectTo1.Properties.ReadOnly = true;
            this.teProjectTo1.Size = new System.Drawing.Size(56, 21);
            this.teProjectTo1.TabIndex = 7;
            // 
            // teProjectFrom2
            // 
            this.teProjectFrom2.Location = new System.Drawing.Point(124, 33);
            this.teProjectFrom2.Name = "teProjectFrom2";
            this.teProjectFrom2.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.teProjectFrom2.Size = new System.Drawing.Size(56, 21);
            this.teProjectFrom2.TabIndex = 6;
            // 
            // teProjectFrom1
            // 
            this.teProjectFrom1.Location = new System.Drawing.Point(62, 33);
            this.teProjectFrom1.Name = "teProjectFrom1";
            this.teProjectFrom1.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.teProjectFrom1.Properties.ReadOnly = true;
            this.teProjectFrom1.Size = new System.Drawing.Size(56, 21);
            this.teProjectFrom1.TabIndex = 5;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(212, 36);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(26, 14);
            this.label3.TabIndex = 2;
            this.label3.Text = "To:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(18, 36);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(38, 14);
            this.label2.TabIndex = 1;
            this.label2.Text = "From:";
            // 
            // btnOK
            // 
            this.btnOK.Location = new System.Drawing.Point(158, 285);
            this.btnOK.Name = "btnOK";
            this.btnOK.Size = new System.Drawing.Size(105, 37);
            this.btnOK.TabIndex = 5;
            this.btnOK.Text = "OK";
            this.btnOK.Click += new System.EventHandler(this.btnOK_Click);
            // 
            // ImportTariffForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(464, 334);
            this.Controls.Add(this.btnOK);
            this.Controls.Add(this.groupControl1);
            this.Controls.Add(this.rgRMBOptiion);
            this.Controls.Add(this.rgReportType);
            this.Controls.Add(this.cbCustomer);
            this.Controls.Add(this.label1);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "ImportTariffForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "Import Tariff Print...";
            ((System.ComponentModel.ISupportInitialize)(this.cbCustomer.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rgReportType.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rgRMBOptiion.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).EndInit();
            this.groupControl1.ResumeLayout(false);
            this.groupControl1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.teProjectTo2.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.teProjectTo1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.teProjectFrom2.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.teProjectFrom1.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private DevExpress.XtraEditors.ComboBoxEdit cbCustomer;
        private DevExpress.XtraEditors.RadioGroup rgReportType;
        private DevExpress.XtraEditors.RadioGroup rgRMBOptiion;
        private DevExpress.XtraEditors.GroupControl groupControl1;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private DevExpress.XtraEditors.TextEdit teProjectFrom1;
        private DevExpress.XtraEditors.TextEdit teProjectTo2;
        private DevExpress.XtraEditors.TextEdit teProjectTo1;
        private DevExpress.XtraEditors.TextEdit teProjectFrom2;
        private DevExpress.XtraEditors.SimpleButton btnOK;
    }
}