namespace PH.LWPM.UI.WF
{
    partial class WFFilter
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
            this.rdbWFJobTitleCn = new System.Windows.Forms.RadioButton();
            this.rdbWFDeptCn = new System.Windows.Forms.RadioButton();
            this.rdbWFJobTitle = new System.Windows.Forms.RadioButton();
            this.rdbWFDept = new System.Windows.Forms.RadioButton();
            this.T_factory = new DevExpress.XtraEditors.ComboBoxEdit();
            this.T_DeptGroup = new DevExpress.XtraEditors.ComboBoxEdit();
            this.labelControl6 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).BeginInit();
            this.groupControl1.SuspendLayout();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.T_factory.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.T_DeptGroup.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // c_ok
            // 
            this.c_ok.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.c_ok.Location = new System.Drawing.Point(220, 339);
            this.c_ok.Name = "c_ok";
            this.c_ok.Size = new System.Drawing.Size(75, 23);
            this.c_ok.TabIndex = 9;
            this.c_ok.Text = "OK";
            // 
            // c_cancel
            // 
            this.c_cancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.c_cancel.Location = new System.Drawing.Point(320, 339);
            this.c_cancel.Name = "c_cancel";
            this.c_cancel.Size = new System.Drawing.Size(75, 23);
            this.c_cancel.TabIndex = 10;
            this.c_cancel.Text = "Cancel";
            // 
            // groupControl1
            // 
            this.groupControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.groupControl1.Controls.Add(this.groupBox1);
            this.groupControl1.Controls.Add(this.T_factory);
            this.groupControl1.Controls.Add(this.T_DeptGroup);
            this.groupControl1.Controls.Add(this.labelControl6);
            this.groupControl1.Controls.Add(this.labelControl1);
            this.groupControl1.Location = new System.Drawing.Point(26, 35);
            this.groupControl1.Name = "groupControl1";
            this.groupControl1.Size = new System.Drawing.Size(406, 273);
            this.groupControl1.TabIndex = 11;
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.rdbWFJobTitleCn);
            this.groupBox1.Controls.Add(this.rdbWFDeptCn);
            this.groupBox1.Controls.Add(this.rdbWFJobTitle);
            this.groupBox1.Controls.Add(this.rdbWFDept);
            this.groupBox1.Location = new System.Drawing.Point(17, 113);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(363, 115);
            this.groupBox1.TabIndex = 113;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Group By";
            // 
            // rdbWFJobTitleCn
            // 
            this.rdbWFJobTitleCn.AutoSize = true;
            this.rdbWFJobTitleCn.Location = new System.Drawing.Point(186, 91);
            this.rdbWFJobTitleCn.Name = "rdbWFJobTitleCn";
            this.rdbWFJobTitleCn.Size = new System.Drawing.Size(167, 18);
            this.rdbWFJobTitleCn.TabIndex = 1;
            this.rdbWFJobTitleCn.TabStop = true;
            this.rdbWFJobTitleCn.Text = "Labor - Job Title Only(CN)";
            this.rdbWFJobTitleCn.UseVisualStyleBackColor = true;
            this.rdbWFJobTitleCn.Visible = false;
            // 
            // rdbWFDeptCn
            // 
            this.rdbWFDeptCn.AutoSize = true;
            this.rdbWFDeptCn.Location = new System.Drawing.Point(24, 91);
            this.rdbWFDeptCn.Name = "rdbWFDeptCn";
            this.rdbWFDeptCn.Size = new System.Drawing.Size(156, 18);
            this.rdbWFDeptCn.TabIndex = 0;
            this.rdbWFDeptCn.TabStop = true;
            this.rdbWFDeptCn.Text = "Labor - Dept Group(CN)";
            this.rdbWFDeptCn.UseVisualStyleBackColor = true;
            this.rdbWFDeptCn.Visible = false;
            // 
            // rdbWFJobTitle
            // 
            this.rdbWFJobTitle.AutoSize = true;
            this.rdbWFJobTitle.Location = new System.Drawing.Point(186, 56);
            this.rdbWFJobTitle.Name = "rdbWFJobTitle";
            this.rdbWFJobTitle.Size = new System.Drawing.Size(142, 18);
            this.rdbWFJobTitle.TabIndex = 1;
            this.rdbWFJobTitle.TabStop = true;
            this.rdbWFJobTitle.Text = "Labor - Job Title Only";
            this.rdbWFJobTitle.UseVisualStyleBackColor = true;
            // 
            // rdbWFDept
            // 
            this.rdbWFDept.AutoSize = true;
            this.rdbWFDept.Location = new System.Drawing.Point(24, 56);
            this.rdbWFDept.Name = "rdbWFDept";
            this.rdbWFDept.Size = new System.Drawing.Size(131, 18);
            this.rdbWFDept.TabIndex = 0;
            this.rdbWFDept.TabStop = true;
            this.rdbWFDept.Text = "Labor - Dept Group";
            this.rdbWFDept.UseVisualStyleBackColor = true;
            // 
            // T_factory
            // 
            this.T_factory.EnterMoveNextControl = true;
            this.T_factory.Location = new System.Drawing.Point(91, 57);
            this.T_factory.Name = "T_factory";
            this.T_factory.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.T_factory.Size = new System.Drawing.Size(85, 21);
            this.T_factory.TabIndex = 112;
            // 
            // T_DeptGroup
            // 
            this.T_DeptGroup.EnterMoveNextControl = true;
            this.T_DeptGroup.Location = new System.Drawing.Point(91, 87);
            this.T_DeptGroup.Name = "T_DeptGroup";
            this.T_DeptGroup.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.T_DeptGroup.Size = new System.Drawing.Size(289, 21);
            this.T_DeptGroup.TabIndex = 4;
            this.T_DeptGroup.Visible = false;
            // 
            // labelControl6
            // 
            this.labelControl6.Location = new System.Drawing.Point(17, 90);
            this.labelControl6.Name = "labelControl6";
            this.labelControl6.Size = new System.Drawing.Size(68, 14);
            this.labelControl6.TabIndex = 2;
            this.labelControl6.Text = "Dept Group:";
            this.labelControl6.Visible = false;
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(41, 60);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(38, 14);
            this.labelControl1.TabIndex = 0;
            this.labelControl1.Text = "Select:";
            // 
            // WFFilter
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(462, 394);
            this.Controls.Add(this.c_ok);
            this.Controls.Add(this.c_cancel);
            this.Controls.Add(this.groupControl1);
            this.Name = "WFFilter";
            this.Text = "WFFilter";
            this.Load += new System.EventHandler(this.WFFilter_Load);
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).EndInit();
            this.groupControl1.ResumeLayout(false);
            this.groupControl1.PerformLayout();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.T_factory.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.T_DeptGroup.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.SimpleButton c_ok;
        private DevExpress.XtraEditors.SimpleButton c_cancel;
        private DevExpress.XtraEditors.GroupControl groupControl1;
        public DevExpress.XtraEditors.ComboBoxEdit T_factory;
        public DevExpress.XtraEditors.ComboBoxEdit T_DeptGroup;
        private DevExpress.XtraEditors.LabelControl labelControl6;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private System.Windows.Forms.GroupBox groupBox1;
        public System.Windows.Forms.RadioButton rdbWFJobTitle;
        public System.Windows.Forms.RadioButton rdbWFDept;
        public System.Windows.Forms.RadioButton rdbWFJobTitleCn;
        public System.Windows.Forms.RadioButton rdbWFDeptCn;
    }
}