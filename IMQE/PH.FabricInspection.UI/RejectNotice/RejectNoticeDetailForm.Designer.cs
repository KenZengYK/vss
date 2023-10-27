namespace PH.FabricInspection.UI.RejectNotice
{
    partial class RejectNoticeDetailForm
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
            DevExpress.XtraEditors.DXErrorProvider.ConditionValidatonRule conditionValidatonRule1 = new DevExpress.XtraEditors.DXErrorProvider.ConditionValidatonRule();
            this.rNNoLabel = new System.Windows.Forms.Label();
            this.rNNoTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.flagLabel = new System.Windows.Forms.Label();
            this.flagComboBoxEdit = new DevExpress.XtraEditors.ComboBoxEdit();
            this.auditNoLabel = new System.Windows.Forms.Label();
            this.auditNoTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.issueDeptLabel = new System.Windows.Forms.Label();
            this.issueDeptTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.issueDateLabel = new System.Windows.Forms.Label();
            this.issueDateDateEdit = new DevExpress.XtraEditors.DateEdit();
            this.createrLabel = new System.Windows.Forms.Label();
            this.createrTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.createDateLabel = new System.Windows.Forms.Label();
            this.createDateDateEdit = new DevExpress.XtraEditors.DateEdit();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rNNoTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.flagComboBoxEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.auditNoTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.issueDeptTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.issueDateDateEdit.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.issueDateDateEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.createrTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.createDateDateEdit.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.createDateDateEdit.Properties)).BeginInit();
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
            // dxValidationProvider
            // 
            this.dxValidationProvider.ValidationMode = DevExpress.XtraEditors.DXErrorProvider.ValidationMode.Auto;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.FabricInspection.BO.RejectNotice);
            // 
            // rNNoLabel
            // 
            this.rNNoLabel.AutoSize = true;
            this.rNNoLabel.Location = new System.Drawing.Point(95, 51);
            this.rNNoLabel.Name = "rNNoLabel";
            this.rNNoLabel.Size = new System.Drawing.Size(29, 12);
            this.PlatetoolTipController.SetSuperTip(this.rNNoLabel, null);
            this.rNNoLabel.TabIndex = 4;
            this.rNNoLabel.Text = "RN#:";
            // 
            // rNNoTextEdit
            // 
            this.rNNoTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "RNNo", true));
            this.rNNoTextEdit.Location = new System.Drawing.Point(131, 48);
            this.rNNoTextEdit.Name = "rNNoTextEdit";
            this.rNNoTextEdit.Size = new System.Drawing.Size(137, 21);
            this.rNNoTextEdit.TabIndex = 5;
            // 
            // flagLabel
            // 
            this.flagLabel.AutoSize = true;
            this.flagLabel.Location = new System.Drawing.Point(53, 232);
            this.flagLabel.Name = "flagLabel";
            this.flagLabel.Size = new System.Drawing.Size(71, 12);
            this.PlatetoolTipController.SetSuperTip(this.flagLabel, null);
            this.flagLabel.TabIndex = 8;
            this.flagLabel.Text = "Mat\'s Type:";
            // 
            // flagComboBoxEdit
            // 
            this.flagComboBoxEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Flag", true));
            this.flagComboBoxEdit.EditValue = "Allover";
            this.flagComboBoxEdit.Location = new System.Drawing.Point(130, 229);
            this.flagComboBoxEdit.Name = "flagComboBoxEdit";
            this.flagComboBoxEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.flagComboBoxEdit.Properties.Items.AddRange(new object[] {
            "Allover",
            "Band Lace",
            "Elastic tape",
            "Bra Cup",
            "Accessories"});
            this.flagComboBoxEdit.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.flagComboBoxEdit.Size = new System.Drawing.Size(137, 21);
            this.flagComboBoxEdit.TabIndex = 9;
            // 
            // auditNoLabel
            // 
            this.auditNoLabel.AutoSize = true;
            this.auditNoLabel.Location = new System.Drawing.Point(77, 80);
            this.auditNoLabel.Name = "auditNoLabel";
            this.auditNoLabel.Size = new System.Drawing.Size(47, 12);
            this.PlatetoolTipController.SetSuperTip(this.auditNoLabel, null);
            this.auditNoLabel.TabIndex = 9;
            this.auditNoLabel.Text = "Audit#:";
            // 
            // auditNoTextEdit
            // 
            this.auditNoTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "AuditNo", true));
            this.auditNoTextEdit.Location = new System.Drawing.Point(131, 77);
            this.auditNoTextEdit.Name = "auditNoTextEdit";
            this.auditNoTextEdit.Size = new System.Drawing.Size(137, 21);
            this.auditNoTextEdit.TabIndex = 10;
            conditionValidatonRule1.ConditionOperator = DevExpress.XtraEditors.DXErrorProvider.ConditionOperator.IsNotBlank;
            conditionValidatonRule1.ErrorText = "Please input Audit#";
            this.dxValidationProvider.SetValidationRule(this.auditNoTextEdit, conditionValidatonRule1);
            // 
            // issueDeptLabel
            // 
            this.issueDeptLabel.AutoSize = true;
            this.issueDeptLabel.Location = new System.Drawing.Point(53, 112);
            this.issueDeptLabel.Name = "issueDeptLabel";
            this.issueDeptLabel.Size = new System.Drawing.Size(71, 12);
            this.PlatetoolTipController.SetSuperTip(this.issueDeptLabel, null);
            this.issueDeptLabel.TabIndex = 10;
            this.issueDeptLabel.Text = "Issue Dept:";
            // 
            // issueDeptTextEdit
            // 
            this.issueDeptTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "IssueDept", true));
            this.issueDeptTextEdit.Location = new System.Drawing.Point(131, 109);
            this.issueDeptTextEdit.Name = "issueDeptTextEdit";
            this.issueDeptTextEdit.Size = new System.Drawing.Size(137, 21);
            this.issueDeptTextEdit.TabIndex = 11;
            // 
            // issueDateLabel
            // 
            this.issueDateLabel.AutoSize = true;
            this.issueDateLabel.Location = new System.Drawing.Point(53, 142);
            this.issueDateLabel.Name = "issueDateLabel";
            this.issueDateLabel.Size = new System.Drawing.Size(71, 12);
            this.PlatetoolTipController.SetSuperTip(this.issueDateLabel, null);
            this.issueDateLabel.TabIndex = 12;
            this.issueDateLabel.Text = "Issue Date:";
            // 
            // issueDateDateEdit
            // 
            this.issueDateDateEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "IssueDate", true));
            this.issueDateDateEdit.EditValue = null;
            this.issueDateDateEdit.Location = new System.Drawing.Point(131, 139);
            this.issueDateDateEdit.Name = "issueDateDateEdit";
            this.issueDateDateEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.issueDateDateEdit.Properties.DisplayFormat.FormatString = "yyyy/MM/dd";
            this.issueDateDateEdit.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.issueDateDateEdit.Properties.EditFormat.FormatString = "yyyy/MM/dd";
            this.issueDateDateEdit.Properties.EditFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.issueDateDateEdit.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.issueDateDateEdit.Size = new System.Drawing.Size(137, 21);
            this.issueDateDateEdit.TabIndex = 13;
            // 
            // createrLabel
            // 
            this.createrLabel.AutoSize = true;
            this.createrLabel.Location = new System.Drawing.Point(71, 171);
            this.createrLabel.Name = "createrLabel";
            this.createrLabel.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(this.createrLabel, null);
            this.createrLabel.TabIndex = 14;
            this.createrLabel.Text = "Creater:";
            // 
            // createrTextEdit
            // 
            this.createrTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Creater", true));
            this.createrTextEdit.Location = new System.Drawing.Point(131, 168);
            this.createrTextEdit.Name = "createrTextEdit";
            this.createrTextEdit.Size = new System.Drawing.Size(137, 21);
            this.createrTextEdit.TabIndex = 15;
            // 
            // createDateLabel
            // 
            this.createDateLabel.AutoSize = true;
            this.createDateLabel.Location = new System.Drawing.Point(47, 200);
            this.createDateLabel.Name = "createDateLabel";
            this.createDateLabel.Size = new System.Drawing.Size(77, 12);
            this.PlatetoolTipController.SetSuperTip(this.createDateLabel, null);
            this.createDateLabel.TabIndex = 16;
            this.createDateLabel.Text = "Create Date:";
            // 
            // createDateDateEdit
            // 
            this.createDateDateEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "CreateDate", true));
            this.createDateDateEdit.EditValue = null;
            this.createDateDateEdit.Location = new System.Drawing.Point(131, 197);
            this.createDateDateEdit.Name = "createDateDateEdit";
            this.createDateDateEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.createDateDateEdit.Properties.DisplayFormat.FormatString = "yyyy/MM/dd";
            this.createDateDateEdit.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.createDateDateEdit.Properties.EditFormat.FormatString = "yyyy/MM/dd";
            this.createDateDateEdit.Properties.EditFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.createDateDateEdit.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.createDateDateEdit.Size = new System.Drawing.Size(137, 21);
            this.createDateDateEdit.TabIndex = 17;
            // 
            // RejectNoticeDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.createDateLabel);
            this.Controls.Add(this.createDateDateEdit);
            this.Controls.Add(this.createrLabel);
            this.Controls.Add(this.createrTextEdit);
            this.Controls.Add(this.issueDateLabel);
            this.Controls.Add(this.issueDateDateEdit);
            this.Controls.Add(this.issueDeptLabel);
            this.Controls.Add(this.issueDeptTextEdit);
            this.Controls.Add(this.auditNoLabel);
            this.Controls.Add(this.auditNoTextEdit);
            this.Controls.Add(this.flagLabel);
            this.Controls.Add(this.flagComboBoxEdit);
            this.Controls.Add(this.rNNoLabel);
            this.Controls.Add(this.rNNoTextEdit);
            this.Name = "RejectNoticeDetailForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.rNNoTextEdit, 0);
            this.Controls.SetChildIndex(this.rNNoLabel, 0);
            this.Controls.SetChildIndex(this.flagComboBoxEdit, 0);
            this.Controls.SetChildIndex(this.flagLabel, 0);
            this.Controls.SetChildIndex(this.auditNoTextEdit, 0);
            this.Controls.SetChildIndex(this.auditNoLabel, 0);
            this.Controls.SetChildIndex(this.issueDeptTextEdit, 0);
            this.Controls.SetChildIndex(this.issueDeptLabel, 0);
            this.Controls.SetChildIndex(this.issueDateDateEdit, 0);
            this.Controls.SetChildIndex(this.issueDateLabel, 0);
            this.Controls.SetChildIndex(this.createrTextEdit, 0);
            this.Controls.SetChildIndex(this.createrLabel, 0);
            this.Controls.SetChildIndex(this.createDateDateEdit, 0);
            this.Controls.SetChildIndex(this.createDateLabel, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rNNoTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.flagComboBoxEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.auditNoTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.issueDeptTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.issueDateDateEdit.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.issueDateDateEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.createrTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.createDateDateEdit.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.createDateDateEdit.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit rNNoTextEdit;
        private DevExpress.XtraEditors.ComboBoxEdit flagComboBoxEdit;
        private DevExpress.XtraEditors.TextEdit auditNoTextEdit;
        private DevExpress.XtraEditors.TextEdit issueDeptTextEdit;
        private DevExpress.XtraEditors.DateEdit issueDateDateEdit;
        private DevExpress.XtraEditors.TextEdit createrTextEdit;
        private DevExpress.XtraEditors.DateEdit createDateDateEdit;
        private System.Windows.Forms.Label rNNoLabel;
        private System.Windows.Forms.Label flagLabel;
        private System.Windows.Forms.Label auditNoLabel;
        private System.Windows.Forms.Label issueDeptLabel;
        private System.Windows.Forms.Label issueDateLabel;
        private System.Windows.Forms.Label createrLabel;
        private System.Windows.Forms.Label createDateLabel;
    }
}
