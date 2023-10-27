namespace PH.POPC.UI.Report
{
    partial class RCReport
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
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.textEdit_RCNumber = new DevExpress.XtraEditors.TextEdit();
            this.simpleButton_PrintRC = new DevExpress.XtraEditors.SimpleButton();
            this.btnSelectPO = new DevExpress.XtraEditors.SimpleButton();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit_RCNumber.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(84, 107);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(41, 14);
            this.labelControl1.TabIndex = 0;
            this.labelControl1.Text = "RC No.:";
            // 
            // textEdit_RCNumber
            // 
            this.textEdit_RCNumber.Location = new System.Drawing.Point(141, 104);
            this.textEdit_RCNumber.Name = "textEdit_RCNumber";
            this.textEdit_RCNumber.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.textEdit_RCNumber.Size = new System.Drawing.Size(158, 21);
            this.textEdit_RCNumber.TabIndex = 1;
            // 
            // simpleButton_PrintRC
            // 
            this.simpleButton_PrintRC.Location = new System.Drawing.Point(155, 147);
            this.simpleButton_PrintRC.Name = "simpleButton_PrintRC";
            this.simpleButton_PrintRC.Size = new System.Drawing.Size(88, 30);
            this.simpleButton_PrintRC.TabIndex = 2;
            this.simpleButton_PrintRC.Text = "Print out";
            this.simpleButton_PrintRC.Click += new System.EventHandler(this.simpleButton_PrintRC_Click);
            // 
            // btnSelectPO
            // 
            this.btnSelectPO.Location = new System.Drawing.Point(299, 104);
            this.btnSelectPO.Name = "btnSelectPO";
            this.btnSelectPO.Size = new System.Drawing.Size(27, 23);
            this.btnSelectPO.TabIndex = 31;
            this.btnSelectPO.Text = "...";
            this.btnSelectPO.Click += new System.EventHandler(this.btnSelectPO_Click);
            // 
            // RCReport
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.btnSelectPO);
            this.Controls.Add(this.simpleButton_PrintRC);
            this.Controls.Add(this.textEdit_RCNumber);
            this.Controls.Add(this.labelControl1);
            this.Name = "RCReport";
            this.Size = new System.Drawing.Size(391, 375);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.textEdit_RCNumber.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.TextEdit textEdit_RCNumber;
        private DevExpress.XtraEditors.SimpleButton simpleButton_PrintRC;
        private DevExpress.XtraEditors.SimpleButton btnSelectPO;
    }
}
