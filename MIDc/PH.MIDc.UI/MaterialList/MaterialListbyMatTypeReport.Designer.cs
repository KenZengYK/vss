namespace PH.MIDc.UI
{
    partial class MaterialListbyMatTypeReport
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
            this.jobMaterialListbyMatTypeReport1 = new PH.MIDc.BackEnd.JobMaterialListbyMatTypeReport();
            this.btnPrint = new DevExpress.XtraEditors.SimpleButton();
            this.SuspendLayout();
            // 
            // jobMaterialListbyMatTypeReport1
            // 
            this.jobMaterialListbyMatTypeReport1.Location = new System.Drawing.Point(3, 3);
            this.jobMaterialListbyMatTypeReport1.Name = "jobMaterialListbyMatTypeReport1";
            this.jobMaterialListbyMatTypeReport1.Report = null;
            this.jobMaterialListbyMatTypeReport1.Size = new System.Drawing.Size(434, 296);
            this.PlatetoolTipController.SetSuperTip(this.jobMaterialListbyMatTypeReport1, null);
            this.jobMaterialListbyMatTypeReport1.TabIndex = 0;
            // 
            // btnPrint
            // 
            this.btnPrint.Location = new System.Drawing.Point(210, 305);
            this.btnPrint.Name = "btnPrint";
            this.btnPrint.Size = new System.Drawing.Size(86, 26);
            this.btnPrint.TabIndex = 1;
            this.btnPrint.Text = "Print";
            this.btnPrint.Click += new System.EventHandler(this.btnPrint_Click);
            // 
            // MaterialListbyMatTypeReport
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.btnPrint);
            this.Controls.Add(this.jobMaterialListbyMatTypeReport1);
            this.Name = "MaterialListbyMatTypeReport";
            this.Size = new System.Drawing.Size(485, 397);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.ResumeLayout(false);

        }

        #endregion

        private PH.MIDc.BackEnd.JobMaterialListbyMatTypeReport jobMaterialListbyMatTypeReport1;
        private DevExpress.XtraEditors.SimpleButton btnPrint;
    }
}
