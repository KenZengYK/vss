namespace PH.MIDc.UI
{
    partial class LiabilityReport
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
            this.btnPrint = new DevExpress.XtraEditors.SimpleButton();
            this.jobLiabilityReport1 = new PH.MIDc.BackEnd.JobLiabilityReport();
            this.SuspendLayout();
            // 
            // btnPrint
            // 
            this.btnPrint.Location = new System.Drawing.Point(211, 315);
            this.btnPrint.Name = "btnPrint";
            this.btnPrint.Size = new System.Drawing.Size(86, 26);
            this.btnPrint.TabIndex = 1;
            this.btnPrint.Text = "Print";
            this.btnPrint.Click += new System.EventHandler(this.btnPrint_Click);
            // 
            // jobLiabilityReport1
            // 
            this.jobLiabilityReport1.Location = new System.Drawing.Point(19, 17);
            this.jobLiabilityReport1.Name = "jobLiabilityReport1";
            this.jobLiabilityReport1.Size = new System.Drawing.Size(313, 274);
            this.PlatetoolTipController.SetSuperTip(this.jobLiabilityReport1, null);
            this.jobLiabilityReport1.TabIndex = 2;
            // 
            // LiabilityReport
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.jobLiabilityReport1);
            this.Controls.Add(this.btnPrint);
            this.Name = "LiabilityReport";
            this.Size = new System.Drawing.Size(436, 399);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.SimpleButton btnPrint;
        private PH.MIDc.BackEnd.JobLiabilityReport jobLiabilityReport1;
    }
}
