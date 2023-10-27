namespace PH.MR.UI.HSWOIssue
{
    partial class LoadingForm
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
            this.marqueeProgressBarControl_Loading = new DevExpress.XtraEditors.MarqueeProgressBarControl();
            ((System.ComponentModel.ISupportInitialize)(this.marqueeProgressBarControl_Loading.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // marqueeProgressBarControl_Loading
            // 
            this.marqueeProgressBarControl_Loading.Dock = System.Windows.Forms.DockStyle.Fill;
            this.marqueeProgressBarControl_Loading.EditValue = "Loading";
            this.marqueeProgressBarControl_Loading.Location = new System.Drawing.Point(0, 0);
            this.marqueeProgressBarControl_Loading.Name = "marqueeProgressBarControl_Loading";
            this.marqueeProgressBarControl_Loading.Properties.ShowTitle = true;
            this.marqueeProgressBarControl_Loading.Size = new System.Drawing.Size(477, 22);
            this.marqueeProgressBarControl_Loading.TabIndex = 0;
            // 
            // LoadingForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(477, 22);
            this.Controls.Add(this.marqueeProgressBarControl_Loading);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "LoadingForm";
            this.ShowInTaskbar = false;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "LoadingForm";
            this.TopMost = true;
            ((System.ComponentModel.ISupportInitialize)(this.marqueeProgressBarControl_Loading.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.MarqueeProgressBarControl marqueeProgressBarControl_Loading;
    }
}