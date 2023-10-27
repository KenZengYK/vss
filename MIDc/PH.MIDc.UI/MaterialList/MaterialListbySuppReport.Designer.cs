namespace PH.MIDc.UI
{
    partial class MaterialListbySuppReport
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
            this.jobMaterialListbySuppReport1 = new PH.MIDc.BackEnd.JobMaterialListbySuppReport();
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
            // jobMaterialListbySuppReport1
            // 
            this.jobMaterialListbySuppReport1.Location = new System.Drawing.Point(12, 3);
            this.jobMaterialListbySuppReport1.Name = "jobMaterialListbySuppReport1";
            this.jobMaterialListbySuppReport1.Report = null;
            this.jobMaterialListbySuppReport1.Size = new System.Drawing.Size(429, 306);
            this.PlatetoolTipController.SetSuperTip(this.jobMaterialListbySuppReport1, null);
            this.jobMaterialListbySuppReport1.TabIndex = 2;
            // 
            // MaterialListbySuppReport
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.jobMaterialListbySuppReport1);
            this.Controls.Add(this.btnPrint);
            this.Name = "MaterialListbySuppReport";
            this.Size = new System.Drawing.Size(505, 399);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.SimpleButton btnPrint;
        private PH.MIDc.BackEnd.JobMaterialListbySuppReport jobMaterialListbySuppReport1;
    }
}
