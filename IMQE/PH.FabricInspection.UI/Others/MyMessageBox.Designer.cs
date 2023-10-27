namespace PH.FabricInspection.UI
{
    partial class MyMessageBox
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

        #region Windows 窗体设计器生成的代码

        /// <summary>
        /// 设计器支持所需的方法 - 不要
        /// 使用代码编辑器修改此方法的内容。
        /// </summary>
        private void InitializeComponent()
        {
            this.pnlFuncButtons = new DevExpress.XtraEditors.PanelControl();
            this.sbCancel = new DevExpress.XtraEditors.SimpleButton();
            this.sbSelect = new DevExpress.XtraEditors.SimpleButton();
            this.lcMsg = new DevExpress.XtraEditors.LabelControl();
            ((System.ComponentModel.ISupportInitialize)(this.pnlFuncButtons)).BeginInit();
            this.pnlFuncButtons.SuspendLayout();
            this.SuspendLayout();
            // 
            // pnlFuncButtons
            // 
            this.pnlFuncButtons.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
            this.pnlFuncButtons.Controls.Add(this.sbCancel);
            this.pnlFuncButtons.Controls.Add(this.sbSelect);
            this.pnlFuncButtons.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.pnlFuncButtons.Location = new System.Drawing.Point(0, 80);
            this.pnlFuncButtons.Margin = new System.Windows.Forms.Padding(2);
            this.pnlFuncButtons.Name = "pnlFuncButtons";
            this.pnlFuncButtons.Size = new System.Drawing.Size(461, 73);
            this.pnlFuncButtons.TabIndex = 71;
            // 
            // sbCancel
            // 
            this.sbCancel.Location = new System.Drawing.Point(248, 9);
            this.sbCancel.Margin = new System.Windows.Forms.Padding(2);
            this.sbCancel.Name = "sbCancel";
            this.sbCancel.Size = new System.Drawing.Size(100, 55);
            this.sbCancel.TabIndex = 66;
            this.sbCancel.Text = "No";
            this.sbCancel.Click += new System.EventHandler(this.sbCancel_Click);
            // 
            // sbSelect
            // 
            this.sbSelect.Location = new System.Drawing.Point(113, 9);
            this.sbSelect.Margin = new System.Windows.Forms.Padding(2);
            this.sbSelect.Name = "sbSelect";
            this.sbSelect.Size = new System.Drawing.Size(100, 55);
            this.sbSelect.TabIndex = 68;
            this.sbSelect.Text = "Yes";
            this.sbSelect.Click += new System.EventHandler(this.sbSelect_Click);
            // 
            // lcMsg
            // 
            this.lcMsg.Appearance.Font = new System.Drawing.Font("Tahoma", 18F);
            this.lcMsg.Appearance.Options.UseFont = true;
            this.lcMsg.Appearance.Options.UseTextOptions = true;
            this.lcMsg.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.lcMsg.Appearance.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.lcMsg.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.lcMsg.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lcMsg.Location = new System.Drawing.Point(0, 0);
            this.lcMsg.Name = "lcMsg";
            this.lcMsg.Size = new System.Drawing.Size(461, 80);
            this.lcMsg.TabIndex = 72;
            // 
            // MyMessageBox
            // 
            this.Appearance.Font = new System.Drawing.Font("Tahoma", 4.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Appearance.Options.UseFont = true;
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(461, 153);
            this.Controls.Add(this.lcMsg);
            this.Controls.Add(this.pnlFuncButtons);
            this.Margin = new System.Windows.Forms.Padding(2);
            this.Name = "MyMessageBox";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "提示";
            ((System.ComponentModel.ISupportInitialize)(this.pnlFuncButtons)).EndInit();
            this.pnlFuncButtons.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.PanelControl pnlFuncButtons;
        private DevExpress.XtraEditors.SimpleButton sbCancel;
        private DevExpress.XtraEditors.SimpleButton sbSelect;
        private DevExpress.XtraEditors.LabelControl lcMsg;

    }
}