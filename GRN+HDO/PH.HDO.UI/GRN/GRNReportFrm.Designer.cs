namespace PH.HDO.UI
{
    partial class GRNReportFrm
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
            this.label1 = new System.Windows.Forms.Label();
            this.jobGRNReport1 = new PH.HDO.BackEnd.JOB.JobGRNReport();
            this.SuspendLayout();
            // 
            // btnPrint
            // 
            this.btnPrint.Image = global::PH.HDO.UI.Properties.Resources.print16_h;
            this.btnPrint.Location = new System.Drawing.Point(412, 329);
            this.btnPrint.Name = "btnPrint";
            this.btnPrint.Size = new System.Drawing.Size(102, 34);
            this.btnPrint.TabIndex = 5;
            this.btnPrint.Text = "Print";
            this.btnPrint.Click += new System.EventHandler(this.btnPrint_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(379, 57);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(0, 12);
            this.PlatetoolTipController.SetSuperTip(this.label1, null);
            this.label1.TabIndex = 6;
            // 
            // jobGRNReport1
            // 
            this.jobGRNReport1.Location = new System.Drawing.Point(55, 24);
            this.jobGRNReport1.Name = "jobGRNReport1";
            this.jobGRNReport1.Size = new System.Drawing.Size(318, 356);
            this.jobGRNReport1.SParmer = null;
            this.PlatetoolTipController.SetSuperTip(this.jobGRNReport1, null);
            this.jobGRNReport1.TabIndex = 4;
            // 
            // GRNReportFrm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.label1);
            this.Controls.Add(this.btnPrint);
            this.Controls.Add(this.jobGRNReport1);
            this.Name = "GRNReportFrm";
            this.Size = new System.Drawing.Size(685, 383);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private PH.HDO.BackEnd.JOB.JobGRNReport jobGRNReport1;
        private DevExpress.XtraEditors.SimpleButton btnPrint;
        private System.Windows.Forms.Label label1;

    }
}
