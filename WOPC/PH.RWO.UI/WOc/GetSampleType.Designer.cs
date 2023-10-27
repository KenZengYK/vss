namespace PH.RWO.UI
{
    partial class GetSampleType
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
            this.cbSampleOrderType = new DevExpress.XtraEditors.ComboBoxEdit();
            this.labSampleType = new DevExpress.XtraEditors.LabelControl();
            this.btnOK = new DevExpress.XtraEditors.SimpleButton();
            ((System.ComponentModel.ISupportInitialize)(this.cbSampleOrderType.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // cbSampleOrderType
            // 
            this.cbSampleOrderType.Location = new System.Drawing.Point(108, 26);
            this.cbSampleOrderType.Name = "cbSampleOrderType";
            this.cbSampleOrderType.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbSampleOrderType.Size = new System.Drawing.Size(220, 21);
            this.cbSampleOrderType.TabIndex = 0;
            // 
            // labSampleType
            // 
            this.labSampleType.Location = new System.Drawing.Point(12, 29);
            this.labSampleType.Name = "labSampleType";
            this.labSampleType.Size = new System.Drawing.Size(75, 14);
            this.labSampleType.TabIndex = 1;
            this.labSampleType.Text = "Sample Type:";
            // 
            // btnOK
            // 
            this.btnOK.Location = new System.Drawing.Point(244, 81);
            this.btnOK.Name = "btnOK";
            this.btnOK.Size = new System.Drawing.Size(75, 23);
            this.btnOK.TabIndex = 2;
            this.btnOK.Text = "OK ";
            this.btnOK.Click += new System.EventHandler(this.btnOK_Click);
            // 
            // GetSampleType
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(340, 128);
            this.Controls.Add(this.btnOK);
            this.Controls.Add(this.labSampleType);
            this.Controls.Add(this.cbSampleOrderType);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "GetSampleType";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "SampleType";
            ((System.ComponentModel.ISupportInitialize)(this.cbSampleOrderType.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.ComboBoxEdit cbSampleOrderType;
        private DevExpress.XtraEditors.LabelControl labSampleType;
        private DevExpress.XtraEditors.SimpleButton btnOK;

    }
}