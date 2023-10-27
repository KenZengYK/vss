namespace PH.FabricInspection.UI
{
    partial class FrmVersionNoInputter
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
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.teVersionID = new DevExpress.XtraEditors.TextEdit();
            this.pnlFuncButtons = new DevExpress.XtraEditors.PanelControl();
            this.sbCancel = new DevExpress.XtraEditors.SimpleButton();
            this.sbOk = new DevExpress.XtraEditors.SimpleButton();
            ((System.ComponentModel.ISupportInitialize)(this.teVersionID.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pnlFuncButtons)).BeginInit();
            this.pnlFuncButtons.SuspendLayout();
            this.SuspendLayout();
            // 
            // labelControl2
            // 
            this.labelControl2.Location = new System.Drawing.Point(48, 37);
            this.labelControl2.Margin = new System.Windows.Forms.Padding(2);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(63, 14);
            this.labelControl2.TabIndex = 76;
            this.labelControl2.Text = "Version No:";
            // 
            // teVersionID
            // 
            this.teVersionID.EditValue = "1";
            this.teVersionID.Location = new System.Drawing.Point(132, 31);
            this.teVersionID.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.teVersionID.Name = "teVersionID";
            this.teVersionID.Properties.AutoHeight = false;
            this.teVersionID.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.teVersionID.Size = new System.Drawing.Size(113, 30);
            this.teVersionID.TabIndex = 75;
            // 
            // pnlFuncButtons
            // 
            this.pnlFuncButtons.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.pnlFuncButtons.Controls.Add(this.sbCancel);
            this.pnlFuncButtons.Controls.Add(this.sbOk);
            this.pnlFuncButtons.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.pnlFuncButtons.Location = new System.Drawing.Point(0, 97);
            this.pnlFuncButtons.Margin = new System.Windows.Forms.Padding(2);
            this.pnlFuncButtons.Name = "pnlFuncButtons";
            this.pnlFuncButtons.Size = new System.Drawing.Size(292, 67);
            this.pnlFuncButtons.TabIndex = 77;
            // 
            // sbCancel
            // 
            this.sbCancel.Location = new System.Drawing.Point(164, 6);
            this.sbCancel.Margin = new System.Windows.Forms.Padding(2);
            this.sbCancel.Name = "sbCancel";
            this.sbCancel.Size = new System.Drawing.Size(100, 55);
            this.sbCancel.TabIndex = 66;
            this.sbCancel.Text = "Cancel";
            this.sbCancel.Click += new System.EventHandler(this.sbCancel_Click);
            // 
            // sbOk
            // 
            this.sbOk.Location = new System.Drawing.Point(29, 6);
            this.sbOk.Margin = new System.Windows.Forms.Padding(2);
            this.sbOk.Name = "sbOk";
            this.sbOk.Size = new System.Drawing.Size(100, 55);
            this.sbOk.TabIndex = 68;
            this.sbOk.Text = "Ok";
            this.sbOk.Click += new System.EventHandler(this.sbOk_Click);
            // 
            // FrmVersionNoInputter
            // 
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.None;
            this.ClientSize = new System.Drawing.Size(292, 164);
            this.Controls.Add(this.pnlFuncButtons);
            this.Controls.Add(this.labelControl2);
            this.Controls.Add(this.teVersionID);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "FrmVersionNoInputter";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Version No Input";
            ((System.ComponentModel.ISupportInitialize)(this.teVersionID.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pnlFuncButtons)).EndInit();
            this.pnlFuncButtons.ResumeLayout(false);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.TextEdit teVersionID;
        private DevExpress.XtraEditors.PanelControl pnlFuncButtons;
        private DevExpress.XtraEditors.SimpleButton sbCancel;
        private DevExpress.XtraEditors.SimpleButton sbOk;
    }
}