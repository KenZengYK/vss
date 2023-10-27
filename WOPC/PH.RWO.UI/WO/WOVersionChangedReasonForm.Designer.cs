namespace PH.RWO.UI.WO
{
    partial class WOVersionChangedReasonForm
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
            this.groupReason = new DevExpress.XtraEditors.GroupControl();
            this.btnOK = new DevExpress.XtraEditors.SimpleButton();
            this.btnCancel = new DevExpress.XtraEditors.SimpleButton();
            this.lbTips = new System.Windows.Forms.Label();
            this.btnUpdateVersion = new DevExpress.XtraEditors.SimpleButton();
            ((System.ComponentModel.ISupportInitialize)(this.groupReason)).BeginInit();
            this.SuspendLayout();
            // 
            // groupReason
            // 
            this.groupReason.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.groupReason.FireScrollEventOnMouseWheel = true;
            this.groupReason.Location = new System.Drawing.Point(30, 100);
            this.groupReason.Name = "groupReason";
            this.groupReason.Size = new System.Drawing.Size(409, 295);
            this.groupReason.TabIndex = 0;
            this.groupReason.Text = "改變原因 (Change Reason)";
            // 
            // btnOK
            // 
            this.btnOK.Location = new System.Drawing.Point(266, 413);
            this.btnOK.Name = "btnOK";
            this.btnOK.Size = new System.Drawing.Size(75, 27);
            this.btnOK.TabIndex = 1;
            this.btnOK.Text = "Save";
            this.btnOK.Visible = false;
            this.btnOK.Click += new System.EventHandler(this.btnOK_Click);
            // 
            // btnCancel
            // 
            this.btnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnCancel.Location = new System.Drawing.Point(362, 413);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(75, 27);
            this.btnCancel.TabIndex = 2;
            this.btnCancel.Text = "Cancel";
            // 
            // lbTips
            // 
            this.lbTips.AutoSize = true;
            this.lbTips.ForeColor = System.Drawing.Color.Blue;
            this.lbTips.Location = new System.Drawing.Point(27, 8);
            this.lbTips.Name = "lbTips";
            this.lbTips.Size = new System.Drawing.Size(38, 14);
            this.lbTips.TabIndex = 3;
            this.lbTips.Text = "label1";
            // 
            // btnUpdateVersion
            // 
            this.btnUpdateVersion.Location = new System.Drawing.Point(54, 413);
            this.btnUpdateVersion.Name = "btnUpdateVersion";
            this.btnUpdateVersion.Size = new System.Drawing.Size(188, 27);
            this.btnUpdateVersion.TabIndex = 4;
            this.btnUpdateVersion.Text = "Save && re-new RWO Version";
            this.btnUpdateVersion.Click += new System.EventHandler(this.btnUpdateVersion_Click);
            // 
            // WOVersionChangedReasonForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.CancelButton = this.btnCancel;
            this.ClientSize = new System.Drawing.Size(473, 450);
            this.Controls.Add(this.btnUpdateVersion);
            this.Controls.Add(this.lbTips);
            this.Controls.Add(this.btnCancel);
            this.Controls.Add(this.btnOK);
            this.Controls.Add(this.groupReason);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.Name = "WOVersionChangedReasonForm";
            this.ShowInTaskbar = false;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "WO Version Changed Reason";
            ((System.ComponentModel.ISupportInitialize)(this.groupReason)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.GroupControl groupReason;
        private DevExpress.XtraEditors.SimpleButton btnOK;
        private DevExpress.XtraEditors.SimpleButton btnCancel;
        private System.Windows.Forms.Label lbTips;
        private DevExpress.XtraEditors.SimpleButton btnUpdateVersion;


    }
}