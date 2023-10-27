namespace PH.MR.UI.FRN
{
    partial class FrmPrintForm
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
            this.edtProject = new DevExpress.XtraEditors.TextEdit();
            this.lblPrjSelect = new System.Windows.Forms.Label();
            this.btPrint = new DevExpress.XtraEditors.SimpleButton();
            this.btClose = new DevExpress.XtraEditors.SimpleButton();
            ((System.ComponentModel.ISupportInitialize)(this.edtProject.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // edtProject
            // 
            this.edtProject.Location = new System.Drawing.Point(65, 78);
            this.edtProject.Name = "edtProject";
            this.edtProject.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.edtProject.Size = new System.Drawing.Size(157, 21);
            this.edtProject.TabIndex = 6;
            // 
            // lblPrjSelect
            // 
            this.lblPrjSelect.AutoSize = true;
            this.lblPrjSelect.Location = new System.Drawing.Point(63, 45);
            this.lblPrjSelect.Name = "lblPrjSelect";
            this.lblPrjSelect.Size = new System.Drawing.Size(83, 12);
            this.lblPrjSelect.TabIndex = 5;
            this.lblPrjSelect.Text = "Project No. :";
            // 
            // btPrint
            // 
            this.btPrint.Location = new System.Drawing.Point(65, 139);
            this.btPrint.Name = "btPrint";
            this.btPrint.Size = new System.Drawing.Size(69, 29);
            this.btPrint.TabIndex = 7;
            this.btPrint.Text = "Print";
            this.btPrint.Click += new System.EventHandler(this.btPrint_Click);
            // 
            // btClose
            // 
            this.btClose.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btClose.Location = new System.Drawing.Point(153, 139);
            this.btClose.Name = "btClose";
            this.btClose.Size = new System.Drawing.Size(69, 29);
            this.btClose.TabIndex = 8;
            this.btClose.Text = "Close";
            // 
            // FrmPrintForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(349, 221);
            this.Controls.Add(this.btClose);
            this.Controls.Add(this.btPrint);
            this.Controls.Add(this.edtProject);
            this.Controls.Add(this.lblPrjSelect);
            this.Name = "FrmPrintForm";
            this.Text = "Please fill a project  to print";
            this.Load += new System.EventHandler(this.FrmPrintForm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.edtProject.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit edtProject;
        public System.Windows.Forms.Label lblPrjSelect;
        private DevExpress.XtraEditors.SimpleButton btPrint;
        private DevExpress.XtraEditors.SimpleButton btClose;
    }
}