namespace PH.LWPM.UI.ActionLog
{
    partial class ActionLogDetailDetailForm
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
            System.Windows.Forms.Label startDateLabel;
            System.Windows.Forms.Label senderLabel;
            System.Windows.Forms.Label summaryLabel;
            System.Windows.Forms.Label fileNameLabel;
            DevExpress.XtraEditors.DXErrorProvider.ConditionValidatonRule conditionValidatonRule1 = new DevExpress.XtraEditors.DXErrorProvider.ConditionValidatonRule();
            this.edtStartDate = new DevExpress.XtraEditors.DateEdit();
            this.edtSender = new DevExpress.XtraEditors.TextEdit();
            this.edtSummary = new DevExpress.XtraEditors.MemoEdit();
            this.edtAttachment = new DevExpress.XtraEditors.ButtonEdit();
            startDateLabel = new System.Windows.Forms.Label();
            senderLabel = new System.Windows.Forms.Label();
            summaryLabel = new System.Windows.Forms.Label();
            fileNameLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtStartDate.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtStartDate.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtSender.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtSummary.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtAttachment.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.LWPM.BO.ActionLogDetail);
            // 
            // startDateLabel
            // 
            startDateLabel.AutoSize = true;
            startDateLabel.Location = new System.Drawing.Point(51, 50);
            startDateLabel.Name = "startDateLabel";
            startDateLabel.Size = new System.Drawing.Size(71, 12);
            this.PlatetoolTipController.SetSuperTip(startDateLabel, null);
            startDateLabel.TabIndex = 4;
            startDateLabel.Text = "Start Date:";
            // 
            // senderLabel
            // 
            senderLabel.AutoSize = true;
            senderLabel.Location = new System.Drawing.Point(75, 84);
            senderLabel.Name = "senderLabel";
            senderLabel.Size = new System.Drawing.Size(47, 12);
            this.PlatetoolTipController.SetSuperTip(senderLabel, null);
            senderLabel.TabIndex = 6;
            senderLabel.Text = "Sender:";
            // 
            // summaryLabel
            // 
            summaryLabel.AutoSize = true;
            summaryLabel.Location = new System.Drawing.Point(289, 50);
            summaryLabel.Name = "summaryLabel";
            summaryLabel.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(summaryLabel, null);
            summaryLabel.TabIndex = 8;
            summaryLabel.Text = "Summary:";
            // 
            // fileNameLabel
            // 
            fileNameLabel.AutoSize = true;
            fileNameLabel.Location = new System.Drawing.Point(51, 117);
            fileNameLabel.Name = "fileNameLabel";
            fileNameLabel.Size = new System.Drawing.Size(71, 12);
            this.PlatetoolTipController.SetSuperTip(fileNameLabel, null);
            fileNameLabel.TabIndex = 12;
            fileNameLabel.Text = "Attachment:";
            // 
            // edtStartDate
            // 
            this.edtStartDate.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "StartDate", true));
            this.edtStartDate.EditValue = null;
            this.edtStartDate.Location = new System.Drawing.Point(128, 46);
            this.edtStartDate.Name = "edtStartDate";
            this.edtStartDate.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.edtStartDate.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.edtStartDate.Size = new System.Drawing.Size(129, 21);
            this.edtStartDate.TabIndex = 5;
            // 
            // edtSender
            // 
            this.edtSender.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Sender", true));
            this.edtSender.Location = new System.Drawing.Point(128, 80);
            this.edtSender.Name = "edtSender";
            this.edtSender.Size = new System.Drawing.Size(129, 21);
            this.edtSender.TabIndex = 7;
            // 
            // edtSummary
            // 
            this.edtSummary.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Summary", true));
            this.edtSummary.Location = new System.Drawing.Point(348, 46);
            this.edtSummary.Name = "edtSummary";
            this.edtSummary.Size = new System.Drawing.Size(450, 159);
            this.edtSummary.TabIndex = 9;
            conditionValidatonRule1.ConditionOperator = DevExpress.XtraEditors.DXErrorProvider.ConditionOperator.IsNotBlank;
            conditionValidatonRule1.ErrorText = "Please input Summary";
            conditionValidatonRule1.ErrorType = DevExpress.XtraEditors.DXErrorProvider.ErrorType.Warning;
            this.dxValidationProvider.SetValidationRule(this.edtSummary, conditionValidatonRule1);
            // 
            // edtAttachment
            // 
            this.edtAttachment.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "AttFileName", true));
            this.edtAttachment.Location = new System.Drawing.Point(128, 114);
            this.edtAttachment.Name = "edtAttachment";
            this.edtAttachment.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.edtAttachment.Size = new System.Drawing.Size(129, 21);
            this.edtAttachment.TabIndex = 13;
            this.edtAttachment.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(this.edtAttachment_ButtonClick);
            // 
            // ActionLogDetailDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.edtAttachment);
            this.Controls.Add(fileNameLabel);
            this.Controls.Add(summaryLabel);
            this.Controls.Add(this.edtSummary);
            this.Controls.Add(senderLabel);
            this.Controls.Add(this.edtSender);
            this.Controls.Add(startDateLabel);
            this.Controls.Add(this.edtStartDate);
            this.Name = "ActionLogDetailDetailForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.edtStartDate, 0);
            this.Controls.SetChildIndex(startDateLabel, 0);
            this.Controls.SetChildIndex(this.edtSender, 0);
            this.Controls.SetChildIndex(senderLabel, 0);
            this.Controls.SetChildIndex(this.edtSummary, 0);
            this.Controls.SetChildIndex(summaryLabel, 0);
            this.Controls.SetChildIndex(fileNameLabel, 0);
            this.Controls.SetChildIndex(this.edtAttachment, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtStartDate.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtStartDate.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtSender.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtSummary.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtAttachment.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.DateEdit edtStartDate;
        private DevExpress.XtraEditors.TextEdit edtSender;
        private DevExpress.XtraEditors.MemoEdit edtSummary;
        private DevExpress.XtraEditors.ButtonEdit edtAttachment;
    }
}
