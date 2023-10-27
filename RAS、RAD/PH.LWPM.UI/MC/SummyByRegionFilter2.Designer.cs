namespace PH.LWPM.UI.MC
{
    partial class SummyByRegionFilter2
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
            this.T_factory = new DevExpress.XtraEditors.ComboBoxEdit();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.btnOK = new DevExpress.XtraEditors.SimpleButton();
            this.rbMC = new System.Windows.Forms.RadioButton();
            this.rbMF = new System.Windows.Forms.RadioButton();
            this.tabControl1 = new System.Windows.Forms.TabControl();
            this.tabPage1 = new System.Windows.Forms.TabPage();
            this.tabPart1 = new System.Windows.Forms.TabPage();
            this.btnOK1 = new DevExpress.XtraEditors.SimpleButton();
            this.cbbFactory = new DevExpress.XtraEditors.ComboBoxEdit();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.tabPage3 = new System.Windows.Forms.TabPage();
            this.btnPrintPart2 = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.T_factory.Properties)).BeginInit();
            this.groupBox1.SuspendLayout();
            this.tabControl1.SuspendLayout();
            this.tabPage1.SuspendLayout();
            this.tabPart1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.cbbFactory.Properties)).BeginInit();
            this.tabPage3.SuspendLayout();
            this.SuspendLayout();
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(11, 29);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(38, 14);
            this.labelControl1.TabIndex = 117;
            this.labelControl1.Text = "Select:";
            // 
            // T_factory
            // 
            this.T_factory.EnterMoveNextControl = true;
            this.T_factory.Location = new System.Drawing.Point(55, 26);
            this.T_factory.Name = "T_factory";
            this.T_factory.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.T_factory.Size = new System.Drawing.Size(85, 21);
            this.T_factory.TabIndex = 116;
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.btnOK);
            this.groupBox1.Controls.Add(this.rbMC);
            this.groupBox1.Controls.Add(this.rbMF);
            this.groupBox1.Location = new System.Drawing.Point(6, 53);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(399, 125);
            this.PlatetoolTipController.SetSuperTip(this.groupBox1, null);
            this.groupBox1.TabIndex = 118;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Select Summy Type";
            // 
            // btnOK
            // 
            this.btnOK.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.btnOK.Location = new System.Drawing.Point(298, 86);
            this.btnOK.Name = "btnOK";
            this.btnOK.Size = new System.Drawing.Size(75, 23);
            this.btnOK.TabIndex = 119;
            this.btnOK.Text = "OK";
            this.btnOK.Click += new System.EventHandler(this.btnOK_Click);
            // 
            // rbMC
            // 
            this.rbMC.AutoSize = true;
            this.rbMC.Checked = true;
            this.rbMC.Location = new System.Drawing.Point(26, 36);
            this.rbMC.Name = "rbMC";
            this.rbMC.Size = new System.Drawing.Size(90, 16);
            this.PlatetoolTipController.SetSuperTip(this.rbMC, null);
            this.rbMC.TabIndex = 113;
            this.rbMC.TabStop = true;
            this.rbMC.Text = "M/C - Summy";
            this.rbMC.UseVisualStyleBackColor = true;
            // 
            // rbMF
            // 
            this.rbMF.AutoSize = true;
            this.rbMF.Location = new System.Drawing.Point(161, 36);
            this.rbMF.Name = "rbMF";
            this.rbMF.Size = new System.Drawing.Size(89, 16);
            this.PlatetoolTipController.SetSuperTip(this.rbMF, null);
            this.rbMF.TabIndex = 114;
            this.rbMF.TabStop = true;
            this.rbMF.Text = " W/F -Summy";
            this.rbMF.UseVisualStyleBackColor = true;
            // 
            // tabControl1
            // 
            this.tabControl1.Controls.Add(this.tabPage1);
            this.tabControl1.Controls.Add(this.tabPart1);
            this.tabControl1.Controls.Add(this.tabPage3);
            this.tabControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tabControl1.Location = new System.Drawing.Point(0, 0);
            this.tabControl1.Name = "tabControl1";
            this.tabControl1.SelectedIndex = 0;
            this.tabControl1.Size = new System.Drawing.Size(467, 331);
            this.PlatetoolTipController.SetSuperTip(this.tabControl1, null);
            this.tabControl1.TabIndex = 120;
            // 
            // tabPage1
            // 
            this.tabPage1.Controls.Add(this.T_factory);
            this.tabPage1.Controls.Add(this.groupBox1);
            this.tabPage1.Controls.Add(this.labelControl1);
            this.tabPage1.Location = new System.Drawing.Point(4, 21);
            this.tabPage1.Name = "tabPage1";
            this.tabPage1.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage1.Size = new System.Drawing.Size(459, 306);
            this.PlatetoolTipController.SetSuperTip(this.tabPage1, null);
            this.tabPage1.TabIndex = 0;
            this.tabPage1.Text = "M/C & W/F";
            this.tabPage1.UseVisualStyleBackColor = true;
            // 
            // tabPart1
            // 
            this.tabPart1.Controls.Add(this.btnOK1);
            this.tabPart1.Controls.Add(this.cbbFactory);
            this.tabPart1.Controls.Add(this.labelControl2);
            this.tabPart1.Location = new System.Drawing.Point(4, 21);
            this.tabPart1.Name = "tabPart1";
            this.tabPart1.Padding = new System.Windows.Forms.Padding(3);
            this.tabPart1.Size = new System.Drawing.Size(459, 306);
            this.PlatetoolTipController.SetSuperTip(this.tabPart1, null);
            this.tabPart1.TabIndex = 1;
            this.tabPart1.Text = "Part I - Machines List Summary-By Departmental team and M/C Type";
            this.tabPart1.UseVisualStyleBackColor = true;
            this.tabPart1.Enter += new System.EventHandler(this.tabPage2_Enter);
            // 
            // btnOK1
            // 
            this.btnOK1.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.btnOK1.Location = new System.Drawing.Point(85, 127);
            this.btnOK1.Name = "btnOK1";
            this.btnOK1.Size = new System.Drawing.Size(67, 23);
            this.btnOK1.TabIndex = 122;
            this.btnOK1.Text = "Print";
            this.btnOK1.Click += new System.EventHandler(this.btnOK1_Click);
            // 
            // cbbFactory
            // 
            this.cbbFactory.EnterMoveNextControl = true;
            this.cbbFactory.Location = new System.Drawing.Point(85, 39);
            this.cbbFactory.Name = "cbbFactory";
            this.cbbFactory.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbbFactory.Size = new System.Drawing.Size(85, 21);
            this.cbbFactory.TabIndex = 118;
            // 
            // labelControl2
            // 
            this.labelControl2.Location = new System.Drawing.Point(41, 42);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(38, 14);
            this.labelControl2.TabIndex = 119;
            this.labelControl2.Text = "Select:";
            // 
            // tabPage3
            // 
            this.tabPage3.Controls.Add(this.btnPrintPart2);
            this.tabPage3.Location = new System.Drawing.Point(4, 21);
            this.tabPage3.Name = "tabPage3";
            this.tabPage3.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage3.Size = new System.Drawing.Size(459, 306);
            this.PlatetoolTipController.SetSuperTip(this.tabPage3, null);
            this.tabPage3.TabIndex = 2;
            this.tabPage3.Text = "Part II - By Departmental & M/C Type without M/C ID# breakdown";
            this.tabPage3.UseVisualStyleBackColor = true;
            // 
            // btnPrintPart2
            // 
            this.btnPrintPart2.Location = new System.Drawing.Point(104, 104);
            this.btnPrintPart2.Name = "btnPrintPart2";
            this.btnPrintPart2.Size = new System.Drawing.Size(75, 23);
            this.PlatetoolTipController.SetSuperTip(this.btnPrintPart2, null);
            this.btnPrintPart2.TabIndex = 122;
            this.btnPrintPart2.Text = "Print";
            this.btnPrintPart2.UseVisualStyleBackColor = true;
            this.btnPrintPart2.Click += new System.EventHandler(this.btnPrintPart2_Click);
            // 
            // SummyByRegionFilter
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.tabControl1);
            this.Name = "SummyByRegionFilter";
            this.Size = new System.Drawing.Size(467, 331);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Load += new System.EventHandler(this.SummyByRegionFilter_Load);
            ((System.ComponentModel.ISupportInitialize)(this.T_factory.Properties)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.tabControl1.ResumeLayout(false);
            this.tabPage1.ResumeLayout(false);
            this.tabPage1.PerformLayout();
            this.tabPart1.ResumeLayout(false);
            this.tabPart1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.cbbFactory.Properties)).EndInit();
            this.tabPage3.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.LabelControl labelControl1;
        public DevExpress.XtraEditors.ComboBoxEdit T_factory;
        private System.Windows.Forms.GroupBox groupBox1;
        public System.Windows.Forms.RadioButton rbMC;
        public System.Windows.Forms.RadioButton rbMF;
        private DevExpress.XtraEditors.SimpleButton btnOK;
        private System.Windows.Forms.TabControl tabControl1;
        private System.Windows.Forms.TabPage tabPage1;
        private System.Windows.Forms.TabPage tabPart1;
        private DevExpress.XtraEditors.SimpleButton btnOK1;
        public DevExpress.XtraEditors.ComboBoxEdit cbbFactory;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        private System.Windows.Forms.TabPage tabPage3;
        private System.Windows.Forms.Button btnPrintPart2;
    }
}
