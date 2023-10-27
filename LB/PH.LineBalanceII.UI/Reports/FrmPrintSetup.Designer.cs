namespace PH.LineBalanceII.UI.Reports
{
    partial class FrmPrintSetup
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
            this.grpRadio = new DevExpress.XtraEditors.RadioGroup();
            this.sbtnOK = new DevExpress.XtraEditors.SimpleButton();
            this.sbtnCnacel = new DevExpress.XtraEditors.SimpleButton();
            this.RadGrpLanguage = new DevExpress.XtraEditors.RadioGroup();
            ((System.ComponentModel.ISupportInitialize)(this.grpRadio.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.RadGrpLanguage.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // grpRadio
            // 
            this.grpRadio.EditValue = 1;
            this.grpRadio.Location = new System.Drawing.Point(56, 28);
            this.grpRadio.Name = "grpRadio";
            this.grpRadio.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] {
            new DevExpress.XtraEditors.Controls.RadioGroupItem(1, "僅主表"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem(2, "僅附表"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem(3, "全部(主表+附表)")});
            this.grpRadio.Size = new System.Drawing.Size(245, 103);
            this.grpRadio.TabIndex = 0;
            // 
            // sbtnOK
            // 
            this.sbtnOK.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.sbtnOK.Location = new System.Drawing.Point(80, 171);
            this.sbtnOK.Name = "sbtnOK";
            this.sbtnOK.Size = new System.Drawing.Size(75, 23);
            this.sbtnOK.TabIndex = 4;
            this.sbtnOK.Text = "打印";
            this.sbtnOK.Click += new System.EventHandler(this.sbtnOK_Click);
            // 
            // sbtnCnacel
            // 
            this.sbtnCnacel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.sbtnCnacel.Location = new System.Drawing.Point(197, 171);
            this.sbtnCnacel.Name = "sbtnCnacel";
            this.sbtnCnacel.Size = new System.Drawing.Size(75, 23);
            this.sbtnCnacel.TabIndex = 5;
            this.sbtnCnacel.Text = "取消";
            // 
            // RadGrpLanguage
            // 
            this.RadGrpLanguage.EditValue = "Print Chinese";
            this.RadGrpLanguage.Location = new System.Drawing.Point(67, 140);
            this.RadGrpLanguage.Name = "RadGrpLanguage";
            this.RadGrpLanguage.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] {
            new DevExpress.XtraEditors.Controls.RadioGroupItem("Print Chinese", "Print Chinese"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem("Print English", "Print English")});
            this.RadGrpLanguage.Size = new System.Drawing.Size(218, 25);
            this.RadGrpLanguage.TabIndex = 7;
            // 
            // FrmPrintSetup
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(365, 212);
            this.Controls.Add(this.RadGrpLanguage);
            this.Controls.Add(this.sbtnCnacel);
            this.Controls.Add(this.sbtnOK);
            this.Controls.Add(this.grpRadio);
            this.Name = "FrmPrintSetup";
            this.Text = "選擇打印內容";
            ((System.ComponentModel.ISupportInitialize)(this.grpRadio.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.RadGrpLanguage.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.RadioGroup grpRadio;
        private DevExpress.XtraEditors.SimpleButton sbtnOK;
        private DevExpress.XtraEditors.SimpleButton sbtnCnacel;
        private DevExpress.XtraEditors.RadioGroup RadGrpLanguage;
    }
}