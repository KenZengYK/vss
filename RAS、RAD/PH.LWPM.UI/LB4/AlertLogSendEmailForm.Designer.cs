namespace PH.LWPM.UI.LB4
{
    partial class SendEmailForm
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
            this.components = new System.ComponentModel.Container();
            System.Windows.Forms.Label fromLabel;
            System.Windows.Forms.Label toLabel;
            System.Windows.Forms.Label subjectLabel;
            System.Windows.Forms.Label messageLabel;
            System.Windows.Forms.Label ccLabel1;
            System.Windows.Forms.Label fileNameLabel;
            this.bsActionLogEmail = new System.Windows.Forms.BindingSource(this.components);
            this.fromTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.subjectMemoEdit = new DevExpress.XtraEditors.MemoEdit();
            this.messageMemoEdit = new DevExpress.XtraEditors.MemoEdit();
            this.btnSend = new DevExpress.XtraEditors.SimpleButton();
            this.btnCancel = new DevExpress.XtraEditors.SimpleButton();
            this.cbTo = new DevExpress.XtraEditors.CheckedComboBoxEdit();
            this.cbcc = new DevExpress.XtraEditors.CheckedComboBoxEdit();
            this.edtAttachment = new DevExpress.XtraEditors.ButtonEdit();
            fromLabel = new System.Windows.Forms.Label();
            toLabel = new System.Windows.Forms.Label();
            subjectLabel = new System.Windows.Forms.Label();
            messageLabel = new System.Windows.Forms.Label();
            ccLabel1 = new System.Windows.Forms.Label();
            fileNameLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.bsActionLogEmail)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.fromTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.subjectMemoEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.messageMemoEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbTo.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbcc.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtAttachment.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // fromLabel
            // 
            fromLabel.AutoSize = true;
            fromLabel.Location = new System.Drawing.Point(45, 18);
            fromLabel.Name = "fromLabel";
            fromLabel.Size = new System.Drawing.Size(38, 14);
            fromLabel.TabIndex = 0;
            fromLabel.Text = "From:";
            // 
            // toLabel
            // 
            toLabel.AutoSize = true;
            toLabel.Location = new System.Drawing.Point(57, 50);
            toLabel.Name = "toLabel";
            toLabel.Size = new System.Drawing.Size(26, 14);
            toLabel.TabIndex = 2;
            toLabel.Text = "To:";
            // 
            // subjectLabel
            // 
            subjectLabel.AutoSize = true;
            subjectLabel.Location = new System.Drawing.Point(30, 115);
            subjectLabel.Name = "subjectLabel";
            subjectLabel.Size = new System.Drawing.Size(53, 14);
            subjectLabel.TabIndex = 6;
            subjectLabel.Text = "Subject:";
            // 
            // messageLabel
            // 
            messageLabel.AutoSize = true;
            messageLabel.Location = new System.Drawing.Point(26, 210);
            messageLabel.Name = "messageLabel";
            messageLabel.Size = new System.Drawing.Size(57, 14);
            messageLabel.TabIndex = 8;
            messageLabel.Text = "Message:";
            // 
            // ccLabel1
            // 
            ccLabel1.AutoSize = true;
            ccLabel1.Location = new System.Drawing.Point(60, 84);
            ccLabel1.Name = "ccLabel1";
            ccLabel1.Size = new System.Drawing.Size(23, 14);
            ccLabel1.TabIndex = 13;
            ccLabel1.Text = "cc:";
            // 
            // fileNameLabel
            // 
            fileNameLabel.AutoSize = true;
            fileNameLabel.Location = new System.Drawing.Point(6, 410);
            fileNameLabel.Name = "fileNameLabel";
            fileNameLabel.Size = new System.Drawing.Size(77, 14);
            fileNameLabel.TabIndex = 17;
            fileNameLabel.Text = "Attachment:";
            // 
            // bsActionLogEmail
            // 
            this.bsActionLogEmail.DataSource = typeof(PH.LWPM.BO.ActionLogEmail);
            // 
            // fromTextEdit
            // 
            this.fromTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.bsActionLogEmail, "From", true));
            this.fromTextEdit.Location = new System.Drawing.Point(89, 15);
            this.fromTextEdit.Name = "fromTextEdit";
            this.fromTextEdit.Size = new System.Drawing.Size(574, 21);
            this.fromTextEdit.TabIndex = 1;
            // 
            // subjectMemoEdit
            // 
            this.subjectMemoEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.bsActionLogEmail, "Subject", true));
            this.subjectMemoEdit.Location = new System.Drawing.Point(89, 112);
            this.subjectMemoEdit.Name = "subjectMemoEdit";
            this.subjectMemoEdit.Size = new System.Drawing.Size(575, 84);
            this.subjectMemoEdit.TabIndex = 7;
            // 
            // messageMemoEdit
            // 
            this.messageMemoEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.bsActionLogEmail, "Message", true));
            this.messageMemoEdit.Location = new System.Drawing.Point(89, 207);
            this.messageMemoEdit.Name = "messageMemoEdit";
            this.messageMemoEdit.Size = new System.Drawing.Size(575, 194);
            this.messageMemoEdit.TabIndex = 9;
            // 
            // btnSend
            // 
            this.btnSend.Location = new System.Drawing.Point(321, 451);
            this.btnSend.Name = "btnSend";
            this.btnSend.Size = new System.Drawing.Size(75, 23);
            this.btnSend.TabIndex = 10;
            this.btnSend.Text = "Send";
            this.btnSend.Click += new System.EventHandler(this.btnSend_Click);
            // 
            // btnCancel
            // 
            this.btnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnCancel.Location = new System.Drawing.Point(450, 451);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(75, 23);
            this.btnCancel.TabIndex = 11;
            this.btnCancel.Text = "Cancel";
            // 
            // cbTo
            // 
            this.cbTo.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.bsActionLogEmail, "To", true));
            this.cbTo.Location = new System.Drawing.Point(89, 47);
            this.cbTo.Name = "cbTo";
            this.cbTo.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbTo.Properties.ShowAllItemCaption = "(Choose All)";
            this.cbTo.Size = new System.Drawing.Size(574, 21);
            this.cbTo.TabIndex = 15;
            // 
            // cbcc
            // 
            this.cbcc.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.bsActionLogEmail, "cc", true));
            this.cbcc.Location = new System.Drawing.Point(89, 81);
            this.cbcc.Name = "cbcc";
            this.cbcc.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbcc.Properties.ShowAllItemCaption = "(Choose All)";
            this.cbcc.Size = new System.Drawing.Size(574, 21);
            this.cbcc.TabIndex = 16;
            // 
            // edtAttachment
            // 
            this.edtAttachment.Location = new System.Drawing.Point(89, 407);
            this.edtAttachment.Name = "edtAttachment";
            this.edtAttachment.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.edtAttachment.Size = new System.Drawing.Size(574, 21);
            this.edtAttachment.TabIndex = 18;
            this.edtAttachment.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(this.edtAttachment_ButtonClick);
            // 
            // SendEmailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(716, 494);
            this.Controls.Add(this.edtAttachment);
            this.Controls.Add(fileNameLabel);
            this.Controls.Add(this.cbcc);
            this.Controls.Add(this.cbTo);
            this.Controls.Add(ccLabel1);
            this.Controls.Add(this.btnCancel);
            this.Controls.Add(this.btnSend);
            this.Controls.Add(messageLabel);
            this.Controls.Add(this.messageMemoEdit);
            this.Controls.Add(subjectLabel);
            this.Controls.Add(this.subjectMemoEdit);
            this.Controls.Add(toLabel);
            this.Controls.Add(fromLabel);
            this.Controls.Add(this.fromTextEdit);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "SendEmailForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Send Email";
            ((System.ComponentModel.ISupportInitialize)(this.bsActionLogEmail)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.fromTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.subjectMemoEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.messageMemoEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbTo.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbcc.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtAttachment.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.BindingSource bsActionLogEmail;
        private DevExpress.XtraEditors.TextEdit fromTextEdit;
        private DevExpress.XtraEditors.MemoEdit subjectMemoEdit;
        private DevExpress.XtraEditors.MemoEdit messageMemoEdit;
        private DevExpress.XtraEditors.SimpleButton btnSend;
        private DevExpress.XtraEditors.SimpleButton btnCancel;
        private DevExpress.XtraEditors.CheckedComboBoxEdit cbTo;
        private DevExpress.XtraEditors.CheckedComboBoxEdit cbcc;
        private DevExpress.XtraEditors.ButtonEdit edtAttachment;
    }
}