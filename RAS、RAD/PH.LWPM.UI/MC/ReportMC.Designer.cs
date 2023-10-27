namespace PH.LWPM.UI.MC
{
    partial class ReportMC
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
            this.rbChineseType = new System.Windows.Forms.RadioButton();
            this.rbChineseDept = new System.Windows.Forms.RadioButton();
            this.T_factory = new DevExpress.XtraEditors.ComboBoxEdit();
            this.c_ok = new DevExpress.XtraEditors.SimpleButton();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.chxPI = new System.Windows.Forms.CheckBox();
            this.chxSD = new System.Windows.Forms.CheckBox();
            this.panel1 = new System.Windows.Forms.Panel();
            this.chkAll = new System.Windows.Forms.CheckBox();
            ((System.ComponentModel.ISupportInitialize)(this.T_factory.Properties)).BeginInit();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // rbChineseType
            // 
            this.rbChineseType.AutoSize = true;
            this.rbChineseType.Checked = true;
            this.rbChineseType.Location = new System.Drawing.Point(19, 21);
            this.rbChineseType.Name = "rbChineseType";
            this.rbChineseType.Size = new System.Drawing.Size(131, 16);
            this.PlatetoolTipController.SetSuperTip(this.rbChineseType, null);
            this.rbChineseType.TabIndex = 114;
            this.rbChineseType.TabStop = true;
            this.rbChineseType.Text = "M/C - M/C Type Only ";
            this.rbChineseType.UseVisualStyleBackColor = true;
            // 
            // rbChineseDept
            // 
            this.rbChineseDept.AutoSize = true;
            this.rbChineseDept.Location = new System.Drawing.Point(26, 295);
            this.rbChineseDept.Name = "rbChineseDept";
            this.rbChineseDept.Size = new System.Drawing.Size(112, 16);
            this.PlatetoolTipController.SetSuperTip(this.rbChineseDept, null);
            this.rbChineseDept.TabIndex = 113;
            this.rbChineseDept.TabStop = true;
            this.rbChineseDept.Text = "M/C - Dept Group ";
            this.rbChineseDept.UseVisualStyleBackColor = true;
            this.rbChineseDept.Visible = false;
            // 
            // T_factory
            // 
            this.T_factory.EnterMoveNextControl = true;
            this.T_factory.Location = new System.Drawing.Point(91, 32);
            this.T_factory.Name = "T_factory";
            this.T_factory.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.T_factory.Size = new System.Drawing.Size(140, 21);
            this.T_factory.TabIndex = 115;
            // 
            // c_ok
            // 
            this.c_ok.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.c_ok.Location = new System.Drawing.Point(91, 89);
            this.c_ok.Name = "c_ok";
            this.c_ok.Size = new System.Drawing.Size(75, 23);
            this.c_ok.TabIndex = 116;
            this.c_ok.Text = "OK";
            this.c_ok.Click += new System.EventHandler(this.c_ok_Click);
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.rbChineseType);
            this.groupBox1.Location = new System.Drawing.Point(218, 253);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(167, 58);
            this.PlatetoolTipController.SetSuperTip(this.groupBox1, null);
            this.groupBox1.TabIndex = 117;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Group By";
            this.groupBox1.Visible = false;
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(39, 35);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(41, 14);
            this.labelControl1.TabIndex = 115;
            this.labelControl1.Text = "Region:";
            // 
            // chxPI
            // 
            this.chxPI.AutoSize = true;
            this.chxPI.Location = new System.Drawing.Point(147, 355);
            this.chxPI.Name = "chxPI";
            this.chxPI.Size = new System.Drawing.Size(114, 16);
            this.PlatetoolTipController.SetSuperTip(this.chxPI, null);
            this.chxPI.TabIndex = 118;
            this.chxPI.Text = "Production Indirect";
            this.chxPI.UseVisualStyleBackColor = true;
            this.chxPI.Visible = false;
            // 
            // chxSD
            // 
            this.chxSD.AutoSize = true;
            this.chxSD.Location = new System.Drawing.Point(279, 355);
            this.chxSD.Name = "chxSD";
            this.chxSD.Size = new System.Drawing.Size(89, 16);
            this.PlatetoolTipController.SetSuperTip(this.chxSD, null);
            this.chxSD.TabIndex = 119;
            this.chxSD.Text = "Sewing Direct";
            this.chxSD.UseVisualStyleBackColor = true;
            this.chxSD.Visible = false;
            // 
            // panel1
            // 
            this.panel1.Location = new System.Drawing.Point(252, 72);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(290, 159);
            this.PlatetoolTipController.SetSuperTip(this.panel1, null);
            this.panel1.TabIndex = 120;
            this.panel1.Visible = false;
            // 
            // chkAll
            // 
            this.chkAll.AutoSize = true;
            this.chkAll.Location = new System.Drawing.Point(38, 215);
            this.chkAll.Name = "chkAll";
            this.chkAll.Size = new System.Drawing.Size(46, 16);
            this.PlatetoolTipController.SetSuperTip(this.chkAll, null);
            this.chkAll.TabIndex = 121;
            this.chkAll.Text = "ALL";
            this.chkAll.UseVisualStyleBackColor = true;
            this.chkAll.Visible = false;
            this.chkAll.CheckedChanged += new System.EventHandler(this.chkAll_CheckedChanged);
            // 
            // ReportMC
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.chkAll);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.rbChineseDept);
            this.Controls.Add(this.chxSD);
            this.Controls.Add(this.chxPI);
            this.Controls.Add(this.labelControl1);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.c_ok);
            this.Controls.Add(this.T_factory);
            this.Name = "ReportMC";
            this.Size = new System.Drawing.Size(542, 416);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Load += new System.EventHandler(this.ReportMC_Load);
            ((System.ComponentModel.ISupportInitialize)(this.T_factory.Properties)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        public System.Windows.Forms.RadioButton rbChineseType;
        public System.Windows.Forms.RadioButton rbChineseDept;
        public DevExpress.XtraEditors.ComboBoxEdit T_factory;
        private DevExpress.XtraEditors.SimpleButton c_ok;
        private System.Windows.Forms.GroupBox groupBox1;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private System.Windows.Forms.CheckBox chxPI;
        private System.Windows.Forms.CheckBox chxSD;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.CheckBox chkAll;
    }
}