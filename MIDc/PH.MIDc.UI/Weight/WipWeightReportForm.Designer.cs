namespace PH.MIDc.UI.Weight
{
    partial class WipWeightReportForm
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
            this.btnOK = new DevExpress.XtraEditors.SimpleButton();
            this.jobWipWeightReport1 = new PH.MIDc.BackEnd.JobWipWeightReport();
            this.SuspendLayout();
            // 
            // btnOK
            // 
            this.btnOK.Location = new System.Drawing.Point(177, 289);
            this.btnOK.Name = "btnOK";
            this.btnOK.Size = new System.Drawing.Size(99, 34);
            this.btnOK.TabIndex = 1;
            this.btnOK.Text = "Preview";
            this.btnOK.Click += new System.EventHandler(this.btnOK_Click);
            // 
            // jobWipWeightReport1
            // 
            this.jobWipWeightReport1.IsStyle = false;
            this.jobWipWeightReport1.Location = new System.Drawing.Point(12, 12);
            this.jobWipWeightReport1.Name = "jobWipWeightReport1";
            this.jobWipWeightReport1.Size = new System.Drawing.Size(293, 271);
            this.jobWipWeightReport1.TabIndex = 0;
            // 
            // WipWeightReportForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(313, 340);
            this.Controls.Add(this.btnOK);
            this.Controls.Add(this.jobWipWeightReport1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "WipWeightReportForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Wip Weight Report Condition";
            this.ResumeLayout(false);

        }

        #endregion

        private PH.MIDc.BackEnd.JobWipWeightReport jobWipWeightReport1;
        private DevExpress.XtraEditors.SimpleButton btnOK;

    }
}