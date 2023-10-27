namespace PH.LWPM.UI.PO
{
    partial class PrintSetupPO
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
            this.groupControl1 = new DevExpress.XtraEditors.GroupControl();
            this.rgReporType = new DevExpress.XtraEditors.RadioGroup();
            this.rgLanguage = new DevExpress.XtraEditors.RadioGroup();
            this.groupControl2 = new DevExpress.XtraEditors.GroupControl();
            this.btnPrint = new DevExpress.XtraEditors.SimpleButton();
            this.simpleButton2 = new DevExpress.XtraEditors.SimpleButton();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).BeginInit();
            this.groupControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.rgReporType.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rgLanguage.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl2)).BeginInit();
            this.SuspendLayout();
            // 
            // groupControl1
            // 
            this.groupControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.groupControl1.Controls.Add(this.rgReporType);
            this.groupControl1.Location = new System.Drawing.Point(35, 108);
            this.groupControl1.Name = "groupControl1";
            this.groupControl1.Size = new System.Drawing.Size(289, 190);
            this.groupControl1.TabIndex = 1;
            this.groupControl1.Text = "Report Type";
            // 
            // rgReporType
            // 
            this.rgReporType.EditValue = 3;
            this.rgReporType.Location = new System.Drawing.Point(14, 36);
            this.rgReporType.Name = "rgReporType";
            this.rgReporType.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] {
            new DevExpress.XtraEditors.Controls.RadioGroupItem(0, "PY-->Enternal"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem(1, "Enternal-->PH HK"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem(2, "PH HK-->Vendor"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem(3, "General PO")});
            this.rgReporType.Size = new System.Drawing.Size(265, 138);
            this.rgReporType.TabIndex = 0;
            // 
            // rgLanguage
            // 
            this.rgLanguage.EditValue = "EN";
            this.rgLanguage.Location = new System.Drawing.Point(62, 51);
            this.rgLanguage.Name = "rgLanguage";
            this.rgLanguage.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] {
            new DevExpress.XtraEditors.Controls.RadioGroupItem("EN", "English"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem("CN", "ÖÐÎÄ")});
            this.rgLanguage.Size = new System.Drawing.Size(234, 25);
            this.rgLanguage.TabIndex = 2;
            // 
            // groupControl2
            // 
            this.groupControl2.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.groupControl2.Location = new System.Drawing.Point(35, 21);
            this.groupControl2.Name = "groupControl2";
            this.groupControl2.Size = new System.Drawing.Size(289, 67);
            this.groupControl2.TabIndex = 3;
            this.groupControl2.Text = "Language";
            // 
            // btnPrint
            // 
            this.btnPrint.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.btnPrint.Location = new System.Drawing.Point(348, 165);
            this.btnPrint.Name = "btnPrint";
            this.btnPrint.Size = new System.Drawing.Size(75, 23);
            this.btnPrint.TabIndex = 4;
            this.btnPrint.Text = "Print";
            // 
            // simpleButton2
            // 
            this.simpleButton2.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.simpleButton2.Location = new System.Drawing.Point(348, 235);
            this.simpleButton2.Name = "simpleButton2";
            this.simpleButton2.Size = new System.Drawing.Size(75, 23);
            this.simpleButton2.TabIndex = 5;
            this.simpleButton2.Text = "Cancel";
            // 
            // PrintSetupPO
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(454, 315);
            this.Controls.Add(this.simpleButton2);
            this.Controls.Add(this.btnPrint);
            this.Controls.Add(this.rgLanguage);
            this.Controls.Add(this.groupControl2);
            this.Controls.Add(this.groupControl1);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "PrintSetupPO";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Print PO Setup";
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).EndInit();
            this.groupControl1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.rgReporType.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rgLanguage.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl2)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.GroupControl groupControl1;
        private DevExpress.XtraEditors.RadioGroup rgReporType;
        private DevExpress.XtraEditors.RadioGroup rgLanguage;
        private DevExpress.XtraEditors.GroupControl groupControl2;
        private DevExpress.XtraEditors.SimpleButton btnPrint;
        private DevExpress.XtraEditors.SimpleButton simpleButton2;

    }
}