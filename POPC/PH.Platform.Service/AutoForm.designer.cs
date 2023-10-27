namespace PH.POPC.Service
{
    partial class AutoForm
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(AutoForm));
            this.notifyIcon1 = new System.Windows.Forms.NotifyIcon(this.components);
            this.contextMenuStrip1 = new System.Windows.Forms.ContextMenuStrip(this.components);
            this.tsmShow = new System.Windows.Forms.ToolStripMenuItem();
            this.tsmHide = new System.Windows.Forms.ToolStripMenuItem();
            this.tsmClose = new System.Windows.Forms.ToolStripMenuItem();
            this.btnReStart = new System.Windows.Forms.Button();
            this.btnStop = new System.Windows.Forms.Button();
            this.contextMenuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // notifyIcon1
            // 
            this.notifyIcon1.ContextMenuStrip = this.contextMenuStrip1;
            this.notifyIcon1.Icon = ((System.Drawing.Icon)(resources.GetObject("notifyIcon1.Icon")));
            this.notifyIcon1.Text = "POPCService";
            this.notifyIcon1.Visible = true;
            this.notifyIcon1.DoubleClick += new System.EventHandler(this.notifyIcon1_DoubleClick);
            // 
            // contextMenuStrip1
            // 
            this.contextMenuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.tsmShow,
            this.tsmHide,
            this.tsmClose});
            this.contextMenuStrip1.Name = "contextMenuStrip1";
            this.contextMenuStrip1.Size = new System.Drawing.Size(95, 70);
            // 
            // tsmShow
            // 
            this.tsmShow.Name = "tsmShow";
            this.tsmShow.Size = new System.Drawing.Size(94, 22);
            this.tsmShow.Text = "显示";
            this.tsmShow.Click += new System.EventHandler(this.tsmShow_Click);
            // 
            // tsmHide
            // 
            this.tsmHide.Name = "tsmHide";
            this.tsmHide.Size = new System.Drawing.Size(94, 22);
            this.tsmHide.Text = "隐藏";
            this.tsmHide.Click += new System.EventHandler(this.tsmHide_Click);
            // 
            // tsmClose
            // 
            this.tsmClose.Name = "tsmClose";
            this.tsmClose.Size = new System.Drawing.Size(94, 22);
            this.tsmClose.Text = "关闭";
            this.tsmClose.Click += new System.EventHandler(this.tsmClose_Click);
            // 
            // btnReStart
            // 
            this.btnReStart.Location = new System.Drawing.Point(43, 67);
            this.btnReStart.Name = "btnReStart";
            this.btnReStart.Size = new System.Drawing.Size(75, 44);
            this.btnReStart.TabIndex = 1;
            this.btnReStart.Text = "ReStart";
            this.btnReStart.UseVisualStyleBackColor = true;
            this.btnReStart.Click += new System.EventHandler(this.btnReStart_Click);
            // 
            // btnStop
            // 
            this.btnStop.Location = new System.Drawing.Point(169, 67);
            this.btnStop.Name = "btnStop";
            this.btnStop.Size = new System.Drawing.Size(75, 44);
            this.btnStop.TabIndex = 2;
            this.btnStop.Text = "Stop";
            this.btnStop.UseVisualStyleBackColor = true;
            this.btnStop.Click += new System.EventHandler(this.btnStop_Click);
            // 
            // AutoForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(283, 156);
            this.Controls.Add(this.btnStop);
            this.Controls.Add(this.btnReStart);
            this.Name = "AutoForm";
            this.Text = "POPC服務";
            this.Load += new System.EventHandler(this.AutoForm_Load);
            this.Shown += new System.EventHandler(this.SyncForm_Shown);
            this.Resize += new System.EventHandler(this.SyncForm_Resize);
            this.contextMenuStrip1.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.NotifyIcon notifyIcon1;
        private System.Windows.Forms.ContextMenuStrip contextMenuStrip1;
        private System.Windows.Forms.ToolStripMenuItem tsmShow;
        private System.Windows.Forms.ToolStripMenuItem tsmClose;
        private System.Windows.Forms.ToolStripMenuItem tsmHide;
        private System.Windows.Forms.Button btnReStart;
        private System.Windows.Forms.Button btnStop;

    }
}