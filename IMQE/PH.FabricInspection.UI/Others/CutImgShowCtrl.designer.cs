namespace PH.FabricInspection.UI
{
    partial class CutImgShowCtrl
    {
        /// <summary> 
        /// 必需的设计器变量。
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary> 
        /// 清理所有正在使用的资源。
        /// </summary>
        /// <param name="disposing">如果应释放托管资源，为 true；否则为 false。</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region 组件设计器生成的代码

        /// <summary> 
        /// 设计器支持所需的方法 - 不要
        /// 使用代码编辑器修改此方法的内容。
        /// </summary>
        private void InitializeComponent()
        {
            this.pictureEdit_PhotoShow = new DevExpress.XtraEditors.PictureEdit();
            this.panel1 = new System.Windows.Forms.Panel();
            this.btn_Del = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.pictureEdit_PhotoShow.Properties)).BeginInit();
            this.panel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // pictureEdit_PhotoShow
            // 
            this.pictureEdit_PhotoShow.Dock = System.Windows.Forms.DockStyle.Fill;
            this.pictureEdit_PhotoShow.Location = new System.Drawing.Point(0, 20);
            this.pictureEdit_PhotoShow.Name = "pictureEdit_PhotoShow";
            this.pictureEdit_PhotoShow.Properties.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
            this.pictureEdit_PhotoShow.Properties.SizeMode = DevExpress.XtraEditors.Controls.PictureSizeMode.Zoom;
            this.pictureEdit_PhotoShow.Size = new System.Drawing.Size(184, 118);
            this.pictureEdit_PhotoShow.TabIndex = 0;
            this.pictureEdit_PhotoShow.DoubleClick += new System.EventHandler(this.pictureEdit_PhotoShow_DoubleClick);
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.SystemColors.ActiveCaption;
            this.panel1.Controls.Add(this.btn_Del);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.ForeColor = System.Drawing.SystemColors.InactiveBorder;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(184, 20);
            this.panel1.TabIndex = 1;
            // 
            // btn_Del
            // 
            this.btn_Del.BackColor = System.Drawing.Color.Transparent;
            this.btn_Del.BackgroundImage = global::PH.FabricInspection.UI.Properties.Resources.Close;
            this.btn_Del.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.btn_Del.Location = new System.Drawing.Point(166, 2);
            this.btn_Del.Name = "btn_Del";
            this.btn_Del.Size = new System.Drawing.Size(18, 15);
            this.btn_Del.TabIndex = 0;
            this.btn_Del.Text = "X";
            this.btn_Del.UseVisualStyleBackColor = false;
            this.btn_Del.Click += new System.EventHandler(this.btn_Del_Click);
            // 
            // CutImgShowCtrl
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.Controls.Add(this.pictureEdit_PhotoShow);
            this.Controls.Add(this.panel1);
            this.ForeColor = System.Drawing.SystemColors.ControlText;
            this.Name = "CutImgShowCtrl";
            this.Size = new System.Drawing.Size(184, 138);
            this.Load += new System.EventHandler(this.CutImgShowCtrl_Load);
            ((System.ComponentModel.ISupportInitialize)(this.pictureEdit_PhotoShow.Properties)).EndInit();
            this.panel1.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Button btn_Del;
        public DevExpress.XtraEditors.PictureEdit pictureEdit_PhotoShow;
    }
}
