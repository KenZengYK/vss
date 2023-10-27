namespace PH.HDO.UI.Contract
{
    partial class FrmMiddle
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
            this.sbtnNewImport = new DevExpress.XtraEditors.SimpleButton();
            this.sbtnLocal = new DevExpress.XtraEditors.SimpleButton();
            this.SuspendLayout();
            // 
            // sbtnNewImport
            // 
            this.sbtnNewImport.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.sbtnNewImport.Location = new System.Drawing.Point(125, 68);
            this.sbtnNewImport.Name = "sbtnNewImport";
            this.sbtnNewImport.Size = new System.Drawing.Size(222, 27);
            this.sbtnNewImport.TabIndex = 0;
            this.sbtnNewImport.Text = "從ERP獲取最新數據(較慢)";
            // 
            // sbtnLocal
            // 
            this.sbtnLocal.DialogResult = System.Windows.Forms.DialogResult.Yes;
            this.sbtnLocal.Location = new System.Drawing.Point(125, 161);
            this.sbtnLocal.Name = "sbtnLocal";
            this.sbtnLocal.Size = new System.Drawing.Size(222, 27);
            this.sbtnLocal.TabIndex = 1;
            this.sbtnLocal.Text = "獲取本地數據(較快)";
            this.sbtnLocal.Click += new System.EventHandler(this.sbtnLocal_Click);
            // 
            // FrmMiddle
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(522, 321);
            this.Controls.Add(this.sbtnLocal);
            this.Controls.Add(this.sbtnNewImport);
            this.Name = "FrmMiddle";
            this.Text = "獲取數據";
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.SimpleButton sbtnNewImport;
        private DevExpress.XtraEditors.SimpleButton sbtnLocal;
    }
}