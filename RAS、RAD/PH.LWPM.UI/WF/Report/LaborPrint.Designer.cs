namespace PH.LWPM.UI.WF.Report
{
    partial class LaborPrint
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
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.rbChinaRegion = new System.Windows.Forms.RadioButton();
            this.rbGD = new System.Windows.Forms.RadioButton();
            this.rbGX = new System.Windows.Forms.RadioButton();
            this.cmbLanguage = new DevExpress.XtraEditors.ComboBoxEdit();
            this.btnPrint = new System.Windows.Forms.Button();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.cmbLanguage.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.cmbLanguage);
            this.groupBox1.Controls.Add(this.rbGX);
            this.groupBox1.Controls.Add(this.rbGD);
            this.groupBox1.Controls.Add(this.rbChinaRegion);
            this.groupBox1.Location = new System.Drawing.Point(53, 18);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(311, 215);
            this.PlatetoolTipController.SetSuperTip(this.groupBox1, null);
            this.groupBox1.TabIndex = 0;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Labor\'s in hand report";
            // 
            // rbChinaRegion
            // 
            this.rbChinaRegion.AutoSize = true;
            this.rbChinaRegion.Location = new System.Drawing.Point(58, 40);
            this.rbChinaRegion.Name = "rbChinaRegion";
            this.rbChinaRegion.Size = new System.Drawing.Size(95, 16);
            this.PlatetoolTipController.SetSuperTip(this.rbChinaRegion, null);
            this.rbChinaRegion.TabIndex = 0;
            this.rbChinaRegion.TabStop = true;
            this.rbChinaRegion.Text = "China Region";
            this.rbChinaRegion.UseVisualStyleBackColor = true;
            // 
            // rbGD
            // 
            this.rbGD.AutoSize = true;
            this.rbGD.Location = new System.Drawing.Point(58, 80);
            this.rbGD.Name = "rbGD";
            this.rbGD.Size = new System.Drawing.Size(107, 16);
            this.PlatetoolTipController.SetSuperTip(this.rbGD, null);
            this.rbGD.TabIndex = 1;
            this.rbGD.TabStop = true;
            this.rbGD.Text = "Guangdong - SL";
            this.rbGD.UseVisualStyleBackColor = true;
            // 
            // rbGX
            // 
            this.rbGX.AutoSize = true;
            this.rbGX.Location = new System.Drawing.Point(58, 124);
            this.rbGX.Name = "rbGX";
            this.rbGX.Size = new System.Drawing.Size(125, 16);
            this.PlatetoolTipController.SetSuperTip(this.rbGX, null);
            this.rbGX.TabIndex = 2;
            this.rbGX.TabStop = true;
            this.rbGX.Text = "Guangxi - GG && RX";
            this.rbGX.UseVisualStyleBackColor = true;
            // 
            // cmbLanguage
            // 
            this.cmbLanguage.EditValue = "Chinese";
            this.cmbLanguage.Location = new System.Drawing.Point(58, 164);
            this.cmbLanguage.Name = "cmbLanguage";
            this.cmbLanguage.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cmbLanguage.Properties.Items.AddRange(new object[] {
            "Chinese",
            "English"});
            this.cmbLanguage.Size = new System.Drawing.Size(141, 21);
            this.cmbLanguage.TabIndex = 4;
            // 
            // btnPrint
            // 
            this.btnPrint.Location = new System.Drawing.Point(289, 251);
            this.btnPrint.Name = "btnPrint";
            this.btnPrint.Size = new System.Drawing.Size(75, 23);
            this.PlatetoolTipController.SetSuperTip(this.btnPrint, null);
            this.btnPrint.TabIndex = 1;
            this.btnPrint.Text = "Print";
            this.btnPrint.UseVisualStyleBackColor = true;
            // 
            // LaborPrint
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.btnPrint);
            this.Controls.Add(this.groupBox1);
            this.Name = "LaborPrint";
            this.Size = new System.Drawing.Size(445, 328);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.cmbLanguage.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.RadioButton rbGX;
        private System.Windows.Forms.RadioButton rbGD;
        private System.Windows.Forms.RadioButton rbChinaRegion;
        private DevExpress.XtraEditors.ComboBoxEdit cmbLanguage;
        private System.Windows.Forms.Button btnPrint;
    }
}
