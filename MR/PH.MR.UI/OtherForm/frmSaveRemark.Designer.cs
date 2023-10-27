namespace PH.MR.UI
{
    partial class frmSaveRemark
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
            this.lbTips = new System.Windows.Forms.Label();
            this.editDescription = new DevExpress.XtraEditors.MemoEdit();
            this.btnOK = new DevExpress.XtraEditors.SimpleButton();
            this.btnCancel = new DevExpress.XtraEditors.SimpleButton();
            ((System.ComponentModel.ISupportInitialize)(this.editDescription.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // lbTips
            // 
            this.lbTips.AutoSize = true;
            this.lbTips.Location = new System.Drawing.Point(12, 19);
            this.lbTips.Name = "lbTips";
            this.lbTips.Size = new System.Drawing.Size(173, 14);
            this.lbTips.TabIndex = 0;
            this.lbTips.Text = "Enter a description for Version";
            // 
            // editDescription
            // 
            this.editDescription.Location = new System.Drawing.Point(12, 52);
            this.editDescription.Name = "editDescription";
            this.editDescription.Size = new System.Drawing.Size(369, 148);
            this.editDescription.TabIndex = 1;
            // 
            // btnOK
            // 
            this.btnOK.Location = new System.Drawing.Point(216, 215);
            this.btnOK.Name = "btnOK";
            this.btnOK.Size = new System.Drawing.Size(75, 29);
            this.btnOK.TabIndex = 2;
            this.btnOK.Text = "OK";
            this.btnOK.Click += new System.EventHandler(this.btnOK_Click);
            // 
            // btnCancel
            // 
            this.btnCancel.Location = new System.Drawing.Point(306, 215);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(75, 29);
            this.btnCancel.TabIndex = 3;
            this.btnCancel.Text = "Cancel";
            this.btnCancel.Click += new System.EventHandler(this.btnCancel_Click);
            // 
            // frmSaveRemark
            // 
            this.ClientSize = new System.Drawing.Size(393, 256);
            this.ControlBox = false;
            this.Controls.Add(this.btnCancel);
            this.Controls.Add(this.btnOK);
            this.Controls.Add(this.editDescription);
            this.Controls.Add(this.lbTips);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow;
            this.Name = "frmSaveRemark";
            this.ShowInTaskbar = false;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "Save MR";
            ((System.ComponentModel.ISupportInitialize)(this.editDescription.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lbTips;
        private DevExpress.XtraEditors.MemoEdit editDescription;
        private DevExpress.XtraEditors.SimpleButton btnOK;
        private DevExpress.XtraEditors.SimpleButton btnCancel;
    }
}