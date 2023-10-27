namespace PH.MobileQC.UI.MasterDB
{
    partial class AuditExamSetupDetailForm
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

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.Windows.Forms.Label userIDLabel;
            System.Windows.Forms.Label fromDateLabel;
            System.Windows.Forms.Label toDateLabel;
            System.Windows.Forms.Label auditCountLabel;
            System.Windows.Forms.Label lbRemark;
            System.Windows.Forms.Label label1;
            System.Windows.Forms.Label label2;
            this.txtFromDate = new DevExpress.XtraEditors.DateEdit();
            this.txtToDate = new DevExpress.XtraEditors.DateEdit();
            this.txtAuditCount = new DevExpress.XtraEditors.TextEdit();
            this.txtRemark = new DevExpress.XtraEditors.MemoEdit();
            this.txtAuditorID = new DevExpress.XtraEditors.LookUpEdit();
            this.simpleButton1 = new DevExpress.XtraEditors.SimpleButton();
            this.textEdit1 = new DevExpress.XtraEditors.TextEdit();
            this.comboBoxEdit1 = new DevExpress.XtraEditors.ComboBoxEdit();
            this.checkBox1 = new System.Windows.Forms.CheckBox();
            userIDLabel = new System.Windows.Forms.Label();
            fromDateLabel = new System.Windows.Forms.Label();
            toDateLabel = new System.Windows.Forms.Label();
            auditCountLabel = new System.Windows.Forms.Label();
            lbRemark = new System.Windows.Forms.Label();
            label1 = new System.Windows.Forms.Label();
            label2 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtFromDate.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtFromDate.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtToDate.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtToDate.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtAuditCount.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtRemark.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtAuditorID.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.comboBoxEdit1.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // objEditBar
            // 
            this.objEditBar.Appearance.Options.UseTextOptions = true;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.MobileQC.BO.AuditExamSetup);
            // 
            // userIDLabel
            // 
            userIDLabel.AutoSize = true;
            userIDLabel.Location = new System.Drawing.Point(56, 75);
            userIDLabel.Name = "userIDLabel";
            userIDLabel.Size = new System.Drawing.Size(101, 12);
            this.PlatetoolTipController.SetSuperTip(userIDLabel, null);
            userIDLabel.TabIndex = 4;
            userIDLabel.Text = "Mobile Examiner:";
            // 
            // fromDateLabel
            // 
            fromDateLabel.AutoSize = true;
            fromDateLabel.Location = new System.Drawing.Point(56, 133);
            fromDateLabel.Name = "fromDateLabel";
            fromDateLabel.Size = new System.Drawing.Size(65, 12);
            this.PlatetoolTipController.SetSuperTip(fromDateLabel, null);
            fromDateLabel.TabIndex = 6;
            fromDateLabel.Text = "From Date:";
            // 
            // toDateLabel
            // 
            toDateLabel.AutoSize = true;
            toDateLabel.Location = new System.Drawing.Point(56, 165);
            toDateLabel.Name = "toDateLabel";
            toDateLabel.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(toDateLabel, null);
            toDateLabel.TabIndex = 8;
            toDateLabel.Text = "To Date:";
            // 
            // auditCountLabel
            // 
            auditCountLabel.AutoSize = true;
            auditCountLabel.Location = new System.Drawing.Point(56, 196);
            auditCountLabel.Name = "auditCountLabel";
            auditCountLabel.Size = new System.Drawing.Size(107, 12);
            this.PlatetoolTipController.SetSuperTip(auditCountLabel, null);
            auditCountLabel.TabIndex = 10;
            auditCountLabel.Text = "Target Exam. Ttl:";
            // 
            // lbRemark
            // 
            lbRemark.AutoSize = true;
            lbRemark.Location = new System.Drawing.Point(56, 227);
            lbRemark.Name = "lbRemark";
            lbRemark.Size = new System.Drawing.Size(47, 12);
            this.PlatetoolTipController.SetSuperTip(lbRemark, null);
            lbRemark.TabIndex = 13;
            lbRemark.Text = "Remark:";
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new System.Drawing.Point(56, 45);
            label1.Name = "label1";
            label1.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(label1, null);
            label1.TabIndex = 17;
            label1.Text = "Factory:";
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Location = new System.Drawing.Point(56, 108);
            label2.Name = "label2";
            label2.Size = new System.Drawing.Size(125, 12);
            this.PlatetoolTipController.SetSuperTip(label2, null);
            label2.TabIndex = 20;
            label2.Text = "Multi-skill auditor:";
            // 
            // txtFromDate
            // 
            this.txtFromDate.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "FromDate", true));
            this.txtFromDate.EditValue = null;
            this.txtFromDate.Location = new System.Drawing.Point(179, 130);
            this.txtFromDate.Name = "txtFromDate";
            this.txtFromDate.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtFromDate.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.txtFromDate.Size = new System.Drawing.Size(156, 21);
            this.txtFromDate.TabIndex = 7;
            // 
            // txtToDate
            // 
            this.txtToDate.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "ToDate", true));
            this.txtToDate.EditValue = null;
            this.txtToDate.Location = new System.Drawing.Point(179, 162);
            this.txtToDate.Name = "txtToDate";
            this.txtToDate.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtToDate.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.txtToDate.Size = new System.Drawing.Size(156, 21);
            this.txtToDate.TabIndex = 9;
            // 
            // txtAuditCount
            // 
            this.txtAuditCount.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "AuditCount", true));
            this.txtAuditCount.Location = new System.Drawing.Point(179, 193);
            this.txtAuditCount.Name = "txtAuditCount";
            this.txtAuditCount.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.txtAuditCount.Properties.EditFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.txtAuditCount.Size = new System.Drawing.Size(156, 21);
            this.txtAuditCount.TabIndex = 11;
            // 
            // txtRemark
            // 
            this.txtRemark.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Remark", true));
            this.txtRemark.Location = new System.Drawing.Point(179, 225);
            this.txtRemark.Name = "txtRemark";
            this.txtRemark.Size = new System.Drawing.Size(364, 96);
            this.txtRemark.TabIndex = 12;
            // 
            // txtAuditorID
            // 
            this.txtAuditorID.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "AuditorID", true));
            this.txtAuditorID.Location = new System.Drawing.Point(457, 52);
            this.txtAuditorID.Name = "txtAuditorID";
            this.txtAuditorID.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtAuditorID.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Factory", "Factory", 50),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("UserCode", "Examiner ID", 60),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("UserName", "Examiner Name", 100)});
            this.txtAuditorID.Properties.DisplayMember = "UserCode";
            this.txtAuditorID.Properties.DropDownRows = 10;
            this.txtAuditorID.Properties.NullText = "";
            this.txtAuditorID.Properties.PopupWidth = 350;
            this.txtAuditorID.Properties.ValueMember = "UserCode";
            this.txtAuditorID.Size = new System.Drawing.Size(156, 21);
            this.txtAuditorID.TabIndex = 14;
            this.txtAuditorID.Visible = false;
            // 
            // simpleButton1
            // 
            this.simpleButton1.Location = new System.Drawing.Point(355, 75);
            this.simpleButton1.Name = "simpleButton1";
            this.simpleButton1.Size = new System.Drawing.Size(52, 20);
            this.simpleButton1.TabIndex = 15;
            this.simpleButton1.Text = "Choose";
            this.simpleButton1.Click += new System.EventHandler(this.simpleButton1_Click);
            // 
            // textEdit1
            // 
            this.textEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "AuditorID", true));
            this.textEdit1.Location = new System.Drawing.Point(179, 74);
            this.textEdit1.Name = "textEdit1";
            this.textEdit1.Size = new System.Drawing.Size(156, 21);
            this.textEdit1.TabIndex = 16;
            // 
            // comboBoxEdit1
            // 
            this.comboBoxEdit1.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.BindingSource, "Factory", true));
            this.comboBoxEdit1.Location = new System.Drawing.Point(179, 40);
            this.comboBoxEdit1.Name = "comboBoxEdit1";
            this.comboBoxEdit1.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.comboBoxEdit1.Properties.Items.AddRange(new object[] {
            "CL",
            "SL",
            "RX"});
            this.comboBoxEdit1.Size = new System.Drawing.Size(156, 21);
            this.comboBoxEdit1.TabIndex = 19;
            // 
            // checkBox1
            // 
            this.checkBox1.AutoSize = true;
            this.checkBox1.DataBindings.Add(new System.Windows.Forms.Binding("Checked", this.BindingSource, "IsMultiSkillAuditor", true));
            this.checkBox1.Location = new System.Drawing.Point(181, 107);
            this.checkBox1.Name = "checkBox1";
            this.checkBox1.Size = new System.Drawing.Size(15, 14);
            this.PlatetoolTipController.SetSuperTip(this.checkBox1, null);
            this.checkBox1.TabIndex = 21;
            this.checkBox1.UseVisualStyleBackColor = true;
            // 
            // AuditExamSetupDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.checkBox1);
            this.Controls.Add(label2);
            this.Controls.Add(this.comboBoxEdit1);
            this.Controls.Add(label1);
            this.Controls.Add(this.textEdit1);
            this.Controls.Add(this.simpleButton1);
            this.Controls.Add(this.txtAuditorID);
            this.Controls.Add(lbRemark);
            this.Controls.Add(this.txtRemark);
            this.Controls.Add(auditCountLabel);
            this.Controls.Add(this.txtAuditCount);
            this.Controls.Add(toDateLabel);
            this.Controls.Add(this.txtToDate);
            this.Controls.Add(fromDateLabel);
            this.Controls.Add(this.txtFromDate);
            this.Controls.Add(userIDLabel);
            this.Name = "AuditExamSetupDetailForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(userIDLabel, 0);
            this.Controls.SetChildIndex(this.txtFromDate, 0);
            this.Controls.SetChildIndex(fromDateLabel, 0);
            this.Controls.SetChildIndex(this.txtToDate, 0);
            this.Controls.SetChildIndex(toDateLabel, 0);
            this.Controls.SetChildIndex(this.txtAuditCount, 0);
            this.Controls.SetChildIndex(auditCountLabel, 0);
            this.Controls.SetChildIndex(this.txtRemark, 0);
            this.Controls.SetChildIndex(lbRemark, 0);
            this.Controls.SetChildIndex(this.txtAuditorID, 0);
            this.Controls.SetChildIndex(this.simpleButton1, 0);
            this.Controls.SetChildIndex(this.textEdit1, 0);
            this.Controls.SetChildIndex(label1, 0);
            this.Controls.SetChildIndex(this.comboBoxEdit1, 0);
            this.Controls.SetChildIndex(label2, 0);
            this.Controls.SetChildIndex(this.checkBox1, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtFromDate.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtFromDate.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtToDate.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtToDate.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtAuditCount.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtRemark.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtAuditorID.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.comboBoxEdit1.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.DateEdit txtFromDate;
        private DevExpress.XtraEditors.DateEdit txtToDate;
        private DevExpress.XtraEditors.TextEdit txtAuditCount;
        private DevExpress.XtraEditors.MemoEdit txtRemark;
        private DevExpress.XtraEditors.LookUpEdit txtAuditorID;
        private DevExpress.XtraEditors.SimpleButton simpleButton1;
        private DevExpress.XtraEditors.TextEdit textEdit1;
        private DevExpress.XtraEditors.ComboBoxEdit comboBoxEdit1;
        private System.Windows.Forms.CheckBox checkBox1;
    }
}
