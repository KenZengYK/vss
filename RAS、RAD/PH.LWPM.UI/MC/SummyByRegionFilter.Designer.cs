namespace PH.LWPM.UI.MC
{
    partial class SummyByRegionFilter
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
            this.rbtFamilyType = new System.Windows.Forms.RadioButton();
            this.rbtPart1 = new System.Windows.Forms.RadioButton();
            this.rbtPart2 = new System.Windows.Forms.RadioButton();
            this.btnOK = new DevExpress.XtraEditors.SimpleButton();
            this.rbMF = new System.Windows.Forms.RadioButton();
            this.cbbFactory = new DevExpress.XtraEditors.ComboBoxEdit();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            ((System.ComponentModel.ISupportInitialize)(this.cbbFactory.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // rbtFamilyType
            // 
            this.rbtFamilyType.AutoSize = true;
            this.rbtFamilyType.Location = new System.Drawing.Point(57, 66);
            this.rbtFamilyType.Name = "rbtFamilyType";
            this.rbtFamilyType.Size = new System.Drawing.Size(201, 16);
            this.PlatetoolTipController.SetSuperTip(this.rbtFamilyType, null);
            this.rbtFamilyType.TabIndex = 1;
            this.rbtFamilyType.Text = "RAP - M/C Summary by Family Type";
            this.rbtFamilyType.UseVisualStyleBackColor = true;
            // 
            // rbtPart1
            // 
            this.rbtPart1.AutoSize = true;
            this.rbtPart1.Location = new System.Drawing.Point(57, 106);
            this.rbtPart1.Name = "rbtPart1";
            this.rbtPart1.Size = new System.Drawing.Size(445, 16);
            this.PlatetoolTipController.SetSuperTip(this.rbtPart1, null);
            this.rbtPart1.TabIndex = 2;
            this.rbtPart1.Text = "Part I - MACHINES LIST SUMMARY - BY DEPARTMENTAL TEAM AND M/C TYPE ";
            this.rbtPart1.UseVisualStyleBackColor = true;
            this.rbtPart1.CheckedChanged += new System.EventHandler(this.rbtPart1_CheckedChanged);
            // 
            // rbtPart2
            // 
            this.rbtPart2.AutoSize = true;
            this.rbtPart2.Location = new System.Drawing.Point(57, 174);
            this.rbtPart2.Name = "rbtPart2";
            this.rbtPart2.Size = new System.Drawing.Size(333, 16);
            this.PlatetoolTipController.SetSuperTip(this.rbtPart2, null);
            this.rbtPart2.TabIndex = 3;
            this.rbtPart2.Text = "Part II - By Departmental & M/C Type without M/C ID# breakdown";
            this.rbtPart2.UseVisualStyleBackColor = true;
            // 
            // btnOK
            // 
            this.btnOK.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.btnOK.Location = new System.Drawing.Point(89, 256);
            this.btnOK.Name = "btnOK";
            this.btnOK.Size = new System.Drawing.Size(75, 23);
            this.btnOK.TabIndex = 120;
            this.btnOK.Text = "OK";
            this.btnOK.Click += new System.EventHandler(this.btnOK_Click);
            // 
            // rbMF
            // 
            this.rbMF.AutoSize = true;
            this.rbMF.Checked = true;
            this.rbMF.Location = new System.Drawing.Point(57, 33);
            this.rbMF.Name = "rbMF";
            this.rbMF.Size = new System.Drawing.Size(232, 16);
            this.PlatetoolTipController.SetSuperTip(this.rbMF, null);
            this.rbMF.TabIndex = 121;
            this.rbMF.TabStop = true;
            this.rbMF.Text = "RAP - LABORS LIST BY MGT ACCOUNT";
            this.rbMF.UseVisualStyleBackColor = true;
            // 
            // cbbFactory
            // 
            this.cbbFactory.Enabled = false;
            this.cbbFactory.EnterMoveNextControl = true;
            this.cbbFactory.Location = new System.Drawing.Point(121, 128);
            this.cbbFactory.Name = "cbbFactory";
            this.cbbFactory.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbbFactory.Size = new System.Drawing.Size(85, 21);
            this.cbbFactory.TabIndex = 122;
            // 
            // labelControl2
            // 
            this.labelControl2.Location = new System.Drawing.Point(77, 131);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(38, 14);
            this.labelControl2.TabIndex = 123;
            this.labelControl2.Text = "Select:";
            // 
            // SummyByRegionFilter
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.cbbFactory);
            this.Controls.Add(this.labelControl2);
            this.Controls.Add(this.rbtPart1);
            this.Controls.Add(this.rbtFamilyType);
            this.Controls.Add(this.rbtPart2);
            this.Controls.Add(this.btnOK);
            this.Controls.Add(this.rbMF);
            this.Name = "SummyByRegionFilter";
            this.Size = new System.Drawing.Size(608, 348);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.cbbFactory.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.RadioButton rbtFamilyType;
        private System.Windows.Forms.RadioButton rbtPart1;
        private System.Windows.Forms.RadioButton rbtPart2;
        private DevExpress.XtraEditors.SimpleButton btnOK;
        public System.Windows.Forms.RadioButton rbMF;
        public DevExpress.XtraEditors.ComboBoxEdit cbbFactory;
        private DevExpress.XtraEditors.LabelControl labelControl2;

    }
}
