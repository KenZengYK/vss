namespace PH.LWPM.UI.MasterDB
{
    partial class DepartmentalPrintSetupForm
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
            this.chkHK = new DevExpress.XtraEditors.CheckEdit();
            this.chkSL = new DevExpress.XtraEditors.CheckEdit();
            this.chkRX = new DevExpress.XtraEditors.CheckEdit();
            this.chkCL = new DevExpress.XtraEditors.CheckEdit();
            this.btnOK = new DevExpress.XtraEditors.SimpleButton();
            this.btnCancel = new DevExpress.XtraEditors.SimpleButton();
            ((System.ComponentModel.ISupportInitialize)(this.chkHK.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkSL.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkRX.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkCL.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // chkHK
            // 
            this.chkHK.EditValue = true;
            this.chkHK.Location = new System.Drawing.Point(80, 12);
            this.chkHK.Name = "chkHK";
            this.chkHK.Properties.Caption = "HK region";
            this.chkHK.Size = new System.Drawing.Size(102, 19);
            this.chkHK.TabIndex = 0;
            // 
            // chkSL
            // 
            this.chkSL.EditValue = true;
            this.chkSL.Location = new System.Drawing.Point(80, 39);
            this.chkSL.Name = "chkSL";
            this.chkSL.Properties.Caption = "SL region";
            this.chkSL.Size = new System.Drawing.Size(102, 19);
            this.chkSL.TabIndex = 1;
            // 
            // chkRX
            // 
            this.chkRX.EditValue = true;
            this.chkRX.Location = new System.Drawing.Point(80, 66);
            this.chkRX.Name = "chkRX";
            this.chkRX.Properties.Caption = "RX region";
            this.chkRX.Size = new System.Drawing.Size(102, 19);
            this.chkRX.TabIndex = 2;
            // 
            // chkCL
            // 
            this.chkCL.EditValue = true;
            this.chkCL.Location = new System.Drawing.Point(80, 93);
            this.chkCL.Name = "chkCL";
            this.chkCL.Properties.Caption = "CL region";
            this.chkCL.Size = new System.Drawing.Size(102, 19);
            this.chkCL.TabIndex = 3;
            // 
            // btnOK
            // 
            this.btnOK.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.btnOK.Location = new System.Drawing.Point(43, 158);
            this.btnOK.Name = "btnOK";
            this.btnOK.Size = new System.Drawing.Size(75, 23);
            this.btnOK.TabIndex = 5;
            this.btnOK.Text = "OK";
            // 
            // btnCancel
            // 
            this.btnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnCancel.Location = new System.Drawing.Point(151, 158);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(75, 23);
            this.btnCancel.TabIndex = 6;
            this.btnCancel.Text = "Cancel";
            // 
            // DepartmentalPrintSetupForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(277, 202);
            this.Controls.Add(this.btnCancel);
            this.Controls.Add(this.btnOK);
            this.Controls.Add(this.chkCL);
            this.Controls.Add(this.chkRX);
            this.Controls.Add(this.chkSL);
            this.Controls.Add(this.chkHK);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "DepartmentalPrintSetupForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Departmental Print Setup";
            ((System.ComponentModel.ISupportInitialize)(this.chkHK.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkSL.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkRX.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkCL.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.CheckEdit chkHK;
        private DevExpress.XtraEditors.CheckEdit chkSL;
        private DevExpress.XtraEditors.CheckEdit chkRX;
        private DevExpress.XtraEditors.CheckEdit chkCL;
        private DevExpress.XtraEditors.SimpleButton btnOK;
        private DevExpress.XtraEditors.SimpleButton btnCancel;

    }
}