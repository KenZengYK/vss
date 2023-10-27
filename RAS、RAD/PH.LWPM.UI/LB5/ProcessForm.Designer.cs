namespace PH.LWPM.UI.LB5
{
    partial class ProcessForm
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
            this.components = new System.ComponentModel.Container();
            this.label1 = new System.Windows.Forms.Label();
            this.timer1 = new System.Windows.Forms.Timer(this.components);
            this.PB = new DevExpress.XtraEditors.ProgressBarControl();
            this.MPB = new DevExpress.XtraEditors.MarqueeProgressBarControl();
            ((System.ComponentModel.ISupportInitialize)(this.PB.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.MPB.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(39, 22);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(185, 14);
            this.label1.TabIndex = 5;
            this.label1.Text = "Processing  data,Please wait......";
            // 
            // timer1
            // 
            this.timer1.Tick += new System.EventHandler(this.timer11_Tick);
            // 
            // PB
            // 
            this.PB.Location = new System.Drawing.Point(39, 45);
            this.PB.Name = "PB";
            this.PB.Properties.ProgressViewStyle = DevExpress.XtraEditors.Controls.ProgressViewStyle.Solid;
            this.PB.Properties.ShowTitle = true;
            this.PB.Properties.Step = 1;
            this.PB.Properties.UseParentBackground = true;
            this.PB.Size = new System.Drawing.Size(299, 25);
            this.PB.TabIndex = 6;
            // 
            // MPB
            // 
            this.MPB.EditValue = 0;
            this.MPB.Location = new System.Drawing.Point(39, 45);
            this.MPB.Name = "MPB";
            this.MPB.Size = new System.Drawing.Size(299, 25);
            this.MPB.TabIndex = 7;
            this.MPB.Visible = false;
            // 
            // ProcessForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(384, 109);
            this.ControlBox = false;
            this.Controls.Add(this.PB);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.MPB);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "ProcessForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Load += new System.EventHandler(this.ProcessForm_Load);
            this.Activated += new System.EventHandler(this.ProcessForm_Activated);
            ((System.ComponentModel.ISupportInitialize)(this.PB.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.MPB.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Timer timer1;
        private DevExpress.XtraEditors.ProgressBarControl PB;
        private DevExpress.XtraEditors.MarqueeProgressBarControl MPB;
    }
}