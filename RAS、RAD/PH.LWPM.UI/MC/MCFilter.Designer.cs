namespace PH.LWPM.UI.MC
{
    partial class MCFilter
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
            this.c_ok = new DevExpress.XtraEditors.SimpleButton();
            this.c_cancel = new DevExpress.XtraEditors.SimpleButton();
            this.groupControl1 = new DevExpress.XtraEditors.GroupControl();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.rbChineseType = new System.Windows.Forms.RadioButton();
            this.rbChineseDept = new System.Windows.Forms.RadioButton();
            this.rdbMCType = new System.Windows.Forms.RadioButton();
            this.rdbMCDept = new System.Windows.Forms.RadioButton();
            this.T_factory = new DevExpress.XtraEditors.ComboBoxEdit();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).BeginInit();
            this.groupControl1.SuspendLayout();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.T_factory.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // c_ok
            // 
            this.c_ok.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.c_ok.Location = new System.Drawing.Point(260, 325);
            this.c_ok.Name = "c_ok";
            this.c_ok.Size = new System.Drawing.Size(75, 23);
            this.c_ok.TabIndex = 12;
            this.c_ok.Text = "OK";
            this.c_ok.Click += new System.EventHandler(this.c_ok_Click);
            // 
            // c_cancel
            // 
            this.c_cancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.c_cancel.Location = new System.Drawing.Point(356, 325);
            this.c_cancel.Name = "c_cancel";
            this.c_cancel.Size = new System.Drawing.Size(75, 23);
            this.c_cancel.TabIndex = 13;
            this.c_cancel.Text = "Cancel";
            // 
            // groupControl1
            // 
            this.groupControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.groupControl1.Controls.Add(this.groupBox1);
            this.groupControl1.Controls.Add(this.T_factory);
            this.groupControl1.Controls.Add(this.labelControl1);
            this.groupControl1.Location = new System.Drawing.Point(27, 52);
            this.groupControl1.Name = "groupControl1";
            this.groupControl1.Size = new System.Drawing.Size(406, 244);
            this.groupControl1.TabIndex = 14;
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.rbChineseType);
            this.groupBox1.Controls.Add(this.rbChineseDept);
            this.groupBox1.Controls.Add(this.rdbMCType);
            this.groupBox1.Controls.Add(this.rdbMCDept);
            this.groupBox1.Location = new System.Drawing.Point(28, 74);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(363, 144);
            this.groupBox1.TabIndex = 113;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Group By";
            // 
            // rbChineseType
            // 
            this.rbChineseType.AutoSize = true;
            this.rbChineseType.Location = new System.Drawing.Point(186, 61);
            this.rbChineseType.Name = "rbChineseType";
            this.rbChineseType.Size = new System.Drawing.Size(143, 18);
            this.rbChineseType.TabIndex = 3;
            this.rbChineseType.TabStop = true;
            this.rbChineseType.Text = "M/C - M/C Type Only ";
            this.rbChineseType.UseVisualStyleBackColor = true;
            // 
            // rbChineseDept
            // 
            this.rbChineseDept.AutoSize = true;
            this.rbChineseDept.Location = new System.Drawing.Point(24, 61);
            this.rbChineseDept.Name = "rbChineseDept";
            this.rbChineseDept.Size = new System.Drawing.Size(126, 18);
            this.rbChineseDept.TabIndex = 2;
            this.rbChineseDept.TabStop = true;
            this.rbChineseDept.Text = "M/C - Dept Group ";
            this.rbChineseDept.UseVisualStyleBackColor = true;
            // 
            // rdbMCType
            // 
            this.rdbMCType.AutoSize = true;
            this.rdbMCType.Location = new System.Drawing.Point(186, 120);
            this.rdbMCType.Name = "rdbMCType";
            this.rdbMCType.Size = new System.Drawing.Size(139, 18);
            this.rdbMCType.TabIndex = 1;
            this.rdbMCType.TabStop = true;
            this.rdbMCType.Text = "M/C - M/C Type Only";
            this.rdbMCType.UseVisualStyleBackColor = true;
            this.rdbMCType.Visible = false;
            // 
            // rdbMCDept
            // 
            this.rdbMCDept.AutoSize = true;
            this.rdbMCDept.Location = new System.Drawing.Point(24, 120);
            this.rdbMCDept.Name = "rdbMCDept";
            this.rdbMCDept.Size = new System.Drawing.Size(122, 18);
            this.rdbMCDept.TabIndex = 0;
            this.rdbMCDept.TabStop = true;
            this.rdbMCDept.Text = "M/C - Dept Group";
            this.rdbMCDept.UseVisualStyleBackColor = true;
            this.rdbMCDept.Visible = false;
            // 
            // T_factory
            // 
            this.T_factory.EnterMoveNextControl = true;
            this.T_factory.Location = new System.Drawing.Point(91, 37);
            this.T_factory.Name = "T_factory";
            this.T_factory.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.T_factory.Size = new System.Drawing.Size(85, 21);
            this.T_factory.TabIndex = 112;
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(41, 40);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(38, 14);
            this.labelControl1.TabIndex = 0;
            this.labelControl1.Text = "Select:";
            // 
            // MCFilter
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(455, 407);
            this.Controls.Add(this.c_ok);
            this.Controls.Add(this.c_cancel);
            this.Controls.Add(this.groupControl1);
            this.Name = "MCFilter";
            this.Text = "MCFilter";
            this.Load += new System.EventHandler(this.MCFilter_Load);
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).EndInit();
            this.groupControl1.ResumeLayout(false);
            this.groupControl1.PerformLayout();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.T_factory.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.SimpleButton c_ok;
        private DevExpress.XtraEditors.SimpleButton c_cancel;
        private DevExpress.XtraEditors.GroupControl groupControl1;
        private System.Windows.Forms.GroupBox groupBox1;
        public DevExpress.XtraEditors.ComboBoxEdit T_factory;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        public System.Windows.Forms.RadioButton rdbMCType;
        public System.Windows.Forms.RadioButton rdbMCDept;
        public System.Windows.Forms.RadioButton rbChineseType;
        public System.Windows.Forms.RadioButton rbChineseDept;
    }
}