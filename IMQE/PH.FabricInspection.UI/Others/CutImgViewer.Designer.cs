namespace PH.FabricInspection.UI
{
    partial class CutImgViewer
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
            this.pictureEdit_Show = new DevExpress.XtraEditors.PictureEdit();
            this.panelTool = new System.Windows.Forms.Panel();
            this.BtnOK = new System.Windows.Forms.Button();
            this.BtnCancel = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.pictureEdit_Show.Properties)).BeginInit();
            this.panelTool.SuspendLayout();
            this.SuspendLayout();
            // 
            // pictureEdit_Show
            // 
            this.pictureEdit_Show.Dock = System.Windows.Forms.DockStyle.Fill;
            this.pictureEdit_Show.Location = new System.Drawing.Point(0, 0);
            this.pictureEdit_Show.Name = "pictureEdit_Show";
            this.pictureEdit_Show.Properties.SizeMode = DevExpress.XtraEditors.Controls.PictureSizeMode.Zoom;
            this.pictureEdit_Show.Size = new System.Drawing.Size(468, 268);
            this.pictureEdit_Show.TabIndex = 0;
            // 
            // panelTool
            // 
            this.panelTool.Controls.Add(this.BtnOK);
            this.panelTool.Controls.Add(this.BtnCancel);
            this.panelTool.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.panelTool.Location = new System.Drawing.Point(0, 268);
            this.panelTool.Name = "panelTool";
            this.panelTool.Size = new System.Drawing.Size(468, 30);
            this.panelTool.TabIndex = 2;
            // 
            // BtnOK
            // 
            this.BtnOK.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.BtnOK.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.BtnOK.Location = new System.Drawing.Point(390, 4);
            this.BtnOK.Name = "BtnOK";
            this.BtnOK.Size = new System.Drawing.Size(75, 23);
            this.BtnOK.TabIndex = 0;
            this.BtnOK.Text = "Save";
            this.BtnOK.UseVisualStyleBackColor = true; 
            // 
            // BtnCancel
            // 
            this.BtnCancel.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.BtnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.BtnCancel.Location = new System.Drawing.Point(315, 4);
            this.BtnCancel.Name = "BtnCancel";
            this.BtnCancel.Size = new System.Drawing.Size(75, 23);
            this.BtnCancel.TabIndex = 0;
            this.BtnCancel.Text = "Cancel";
            this.BtnCancel.UseVisualStyleBackColor = true;
            // 
            // CutImgViewer
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(468, 298);
            this.Controls.Add(this.pictureEdit_Show);
            this.Controls.Add(this.panelTool);
            this.Name = "CutImgViewer";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "CutImgViewer";
            this.Load += new System.EventHandler(this.CutImgViewer_Load);
            ((System.ComponentModel.ISupportInitialize)(this.pictureEdit_Show.Properties)).EndInit();
            this.panelTool.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.PictureEdit pictureEdit_Show;
        private System.Windows.Forms.Panel panelTool;
        private System.Windows.Forms.Button BtnCancel;
        public System.Windows.Forms.Button BtnOK;
    }
}