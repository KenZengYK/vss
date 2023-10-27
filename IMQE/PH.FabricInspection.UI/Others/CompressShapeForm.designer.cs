namespace PH.FabricInspection.UI
{
    partial class CompressShapeForm
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
            this.xtraScrollblCtrl = new DevExpress.XtraEditors.XtraScrollableControl();
            this.picEdit_Show = new DevExpress.XtraEditors.PictureEdit();
            this.panelControl1 = new DevExpress.XtraEditors.PanelControl();
            this.lblCompressPercentage = new DevExpress.XtraEditors.LabelControl();
            this.trackBarCtrl_Compress = new DevExpress.XtraEditors.TrackBarControl();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.xtraScrollblCtrl.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.picEdit_Show.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).BeginInit();
            this.panelControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.trackBarCtrl_Compress)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.trackBarCtrl_Compress.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // xtraScrollblCtrl
            // 
            this.xtraScrollblCtrl.Appearance.BackColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.xtraScrollblCtrl.Appearance.Options.UseBackColor = true;
            this.xtraScrollblCtrl.Controls.Add(this.picEdit_Show);
            this.xtraScrollblCtrl.Dock = System.Windows.Forms.DockStyle.Fill;
            this.xtraScrollblCtrl.Location = new System.Drawing.Point(0, 0);
            this.xtraScrollblCtrl.Name = "xtraScrollblCtrl";
            this.xtraScrollblCtrl.Size = new System.Drawing.Size(503, 255);
            this.xtraScrollblCtrl.TabIndex = 0;
            // 
            // picEdit_Show
            // 
            this.picEdit_Show.Location = new System.Drawing.Point(0, 0);
            this.picEdit_Show.Margin = new System.Windows.Forms.Padding(0);
            this.picEdit_Show.Name = "picEdit_Show";
            this.picEdit_Show.Properties.SizeMode = DevExpress.XtraEditors.Controls.PictureSizeMode.Stretch;
            this.picEdit_Show.Size = new System.Drawing.Size(100, 96);
            this.picEdit_Show.TabIndex = 0;
            // 
            // panelControl1
            // 
            this.panelControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.panelControl1.Controls.Add(this.lblCompressPercentage);
            this.panelControl1.Controls.Add(this.trackBarCtrl_Compress);
            this.panelControl1.Controls.Add(this.labelControl1);
            this.panelControl1.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.panelControl1.Location = new System.Drawing.Point(0, 255);
            this.panelControl1.Name = "panelControl1";
            this.panelControl1.Size = new System.Drawing.Size(503, 39);
            this.panelControl1.TabIndex = 1;
            // 
            // lblCompressPercentage
            // 
            this.lblCompressPercentage.Location = new System.Drawing.Point(91, 12);
            this.lblCompressPercentage.Name = "lblCompressPercentage";
            this.lblCompressPercentage.Size = new System.Drawing.Size(7, 14);
            this.lblCompressPercentage.TabIndex = 2;
            this.lblCompressPercentage.Text = "0";
            // 
            // trackBarCtrl_Compress
            // 
            this.trackBarCtrl_Compress.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.trackBarCtrl_Compress.EditValue = null;
            this.trackBarCtrl_Compress.Location = new System.Drawing.Point(104, 0);
            this.trackBarCtrl_Compress.Name = "trackBarCtrl_Compress";
            this.trackBarCtrl_Compress.Properties.Maximum = 100;
            this.trackBarCtrl_Compress.Size = new System.Drawing.Size(392, 45);
            this.trackBarCtrl_Compress.TabIndex = 1;
            this.trackBarCtrl_Compress.EditValueChanged += new System.EventHandler(this.trackBarCtrl_Compress_EditValueChanged);
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(7, 13);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(82, 14);
            this.labelControl1.TabIndex = 0;
            this.labelControl1.Text = "壓縮比例(%)：";
            // 
            // CompressShapeForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(503, 294);
            this.Controls.Add(this.xtraScrollblCtrl);
            this.Controls.Add(this.panelControl1);
            this.Name = "CompressShapeForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "CompressShapeForm";
            this.Load += new System.EventHandler(this.CompressShapeForm_Load);
            this.xtraScrollblCtrl.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.picEdit_Show.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).EndInit();
            this.panelControl1.ResumeLayout(false);
            this.panelControl1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.trackBarCtrl_Compress.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.trackBarCtrl_Compress)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.XtraScrollableControl xtraScrollblCtrl;
        private DevExpress.XtraEditors.PictureEdit picEdit_Show;
        private DevExpress.XtraEditors.PanelControl panelControl1;
        private DevExpress.XtraEditors.TrackBarControl trackBarCtrl_Compress;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.LabelControl lblCompressPercentage;
    }
}