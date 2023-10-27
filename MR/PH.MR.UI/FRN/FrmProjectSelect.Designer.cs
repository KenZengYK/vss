namespace PH.MR.UI.FRN
{
    partial class FrmProjectSelect
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
            this.lblPrjSelect = new System.Windows.Forms.Label();
            this.edtProject = new DevExpress.XtraEditors.TextEdit();
            this.btnOK = new DevExpress.XtraEditors.SimpleButton();
            this.simpleButton2 = new DevExpress.XtraEditors.SimpleButton();
            ((System.ComponentModel.ISupportInitialize)(this.edtProject.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // lblPrjSelect
            // 
            this.lblPrjSelect.AutoSize = true;
            this.lblPrjSelect.Location = new System.Drawing.Point(34, 46);
            this.lblPrjSelect.Name = "lblPrjSelect";
            this.lblPrjSelect.Size = new System.Drawing.Size(77, 14);
            this.lblPrjSelect.TabIndex = 1;
            this.lblPrjSelect.Text = "Project No. :";
            // 
            // edtProject
            // 
            this.edtProject.Location = new System.Drawing.Point(36, 74);
            this.edtProject.Name = "edtProject";
            this.edtProject.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.edtProject.Size = new System.Drawing.Size(157, 21);
            this.edtProject.TabIndex = 4;
            this.edtProject.KeyDown += new System.Windows.Forms.KeyEventHandler(this.edtProject_KeyDown);
            // 
            // btnOK
            // 
            this.btnOK.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.btnOK.Location = new System.Drawing.Point(29, 134);
            this.btnOK.Name = "btnOK";
            this.btnOK.Size = new System.Drawing.Size(69, 29);
            this.btnOK.TabIndex = 5;
            this.btnOK.Text = "OK";
            this.btnOK.Click += new System.EventHandler(this.btnOK_Click);
            // 
            // simpleButton2
            // 
            this.simpleButton2.Location = new System.Drawing.Point(117, 134);
            this.simpleButton2.Name = "simpleButton2";
            this.simpleButton2.Size = new System.Drawing.Size(69, 29);
            this.simpleButton2.TabIndex = 6;
            this.simpleButton2.Text = "Cancel";
            this.simpleButton2.Click += new System.EventHandler(this.simpleButton2_Click);
            // 
            // FrmProjectSelect
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(227, 194);
            this.Controls.Add(this.simpleButton2);
            this.Controls.Add(this.btnOK);
            this.Controls.Add(this.edtProject);
            this.Controls.Add(this.lblPrjSelect);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "FrmProjectSelect";
            this.ShowInTaskbar = false;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "Project Data Import";
            this.Load += new System.EventHandler(this.FrmProjectSelect_Load);
            ((System.ComponentModel.ISupportInitialize)(this.edtProject.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit edtProject;
        public System.Windows.Forms.Label lblPrjSelect;
        private DevExpress.XtraEditors.SimpleButton btnOK;
        private DevExpress.XtraEditors.SimpleButton simpleButton2;
    }
}