namespace PH.POPC.AutoUpdate.UI
{
    partial class GeneratePOPCForm
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
            this.btnCancel = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.timerAutoClose = new System.Windows.Forms.Timer(this.components);
            this.progressBar_child = new DevExpress.XtraEditors.ProgressBarControl();
            this.progressBar_main = new DevExpress.XtraEditors.ProgressBarControl();
            this.marqueeProgressBarControl1 = new DevExpress.XtraEditors.MarqueeProgressBarControl();
            ((System.ComponentModel.ISupportInitialize)(this.progressBar_child.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.progressBar_main.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.marqueeProgressBarControl1.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // btnCancel
            // 
            this.btnCancel.Location = new System.Drawing.Point(189, 35);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(91, 25);
            this.btnCancel.TabIndex = 3;
            this.btnCancel.Text = "Cancel";
            this.btnCancel.Click += new System.EventHandler(this.btnCancel_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(19, 10);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(0, 13);
            this.label1.TabIndex = 2;
            // 
            // timerAutoClose
            // 
            this.timerAutoClose.Tick += new System.EventHandler(this.timerAutoClose_Tick);
            // 
            // progressBar_child
            // 
            this.progressBar_child.Location = new System.Drawing.Point(21, 56);
            this.progressBar_child.Name = "progressBar_child";
            this.progressBar_child.Properties.DisplayFormat.FormatString = "{0:0\'%\'}";
            this.progressBar_child.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.progressBar_child.Properties.ShowTitle = true;
            this.progressBar_child.Size = new System.Drawing.Size(152, 20);
            this.progressBar_child.TabIndex = 11;
            this.progressBar_child.Visible = false;
            // 
            // progressBar_main
            // 
            this.progressBar_main.Location = new System.Drawing.Point(21, 35);
            this.progressBar_main.Name = "progressBar_main";
            this.progressBar_main.Properties.DisplayFormat.FormatString = "{0:0\'%\'}";
            this.progressBar_main.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.progressBar_main.Properties.ShowTitle = true;
            this.progressBar_main.Size = new System.Drawing.Size(152, 20);
            this.progressBar_main.TabIndex = 10;
            // 
            // marqueeProgressBarControl1
            // 
            this.marqueeProgressBarControl1.EditValue = 0;
            this.marqueeProgressBarControl1.Location = new System.Drawing.Point(22, 57);
            this.marqueeProgressBarControl1.Name = "marqueeProgressBarControl1";
            this.marqueeProgressBarControl1.Size = new System.Drawing.Size(151, 18);
            this.marqueeProgressBarControl1.TabIndex = 12;
            // 
            // GeneratePOPCForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(302, 92);
            this.ControlBox = false;
            this.Controls.Add(this.marqueeProgressBarControl1);
            this.Controls.Add(this.progressBar_child);
            this.Controls.Add(this.progressBar_main);
            this.Controls.Add(this.btnCancel);
            this.Controls.Add(this.label1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow;
            this.Name = "GeneratePOPCForm";
            this.ShowInTaskbar = false;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Generate POPC data";
            this.Load += new System.EventHandler(this.ReportCreatorForm_Load);
            this.FormClosed += new System.Windows.Forms.FormClosedEventHandler(this.ReportCreatorForm_FormClosed);
            ((System.ComponentModel.ISupportInitialize)(this.progressBar_child.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.progressBar_main.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.marqueeProgressBarControl1.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnCancel;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Timer timerAutoClose;
        private DevExpress.XtraEditors.ProgressBarControl progressBar_child;
        private DevExpress.XtraEditors.ProgressBarControl progressBar_main;
        private DevExpress.XtraEditors.MarqueeProgressBarControl marqueeProgressBarControl1;
    }
}