namespace PH.POPC.UI.ActionLog
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
            System.Windows.Forms.Label fileNameLabel;
            System.Windows.Forms.Label ccLabel1;
            System.Windows.Forms.Label messageLabel;
            System.Windows.Forms.Label subjectLabel;
            System.Windows.Forms.Label toLabel;
            System.Windows.Forms.Label fromLabel;
            this.edtAttachment = new DevExpress.XtraEditors.ButtonEdit();
            this.cbcc = new DevExpress.XtraEditors.CheckedComboBoxEdit();
            this.cbTo = new DevExpress.XtraEditors.CheckedComboBoxEdit();
            this.btnCancel = new DevExpress.XtraEditors.SimpleButton();
            this.btnSend = new DevExpress.XtraEditors.SimpleButton();
            this.subjectMemoEdit = new DevExpress.XtraEditors.MemoEdit();
            this.fromTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.messageMemoEdit = new System.Windows.Forms.RichTextBox();
            this.bsActionLogEmail = new System.Windows.Forms.BindingSource(this.components);
            fileNameLabel = new System.Windows.Forms.Label();
            ccLabel1 = new System.Windows.Forms.Label();
            messageLabel = new System.Windows.Forms.Label();
            subjectLabel = new System.Windows.Forms.Label();
            toLabel = new System.Windows.Forms.Label();
            fromLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.edtAttachment.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbcc.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbTo.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.subjectMemoEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.fromTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bsActionLogEmail)).BeginInit();
            this.SuspendLayout();
            // 
            // fileNameLabel
            // 
            fileNameLabel.AutoSize = true;
            fileNameLabel.Location = new System.Drawing.Point(24, 412);
            fileNameLabel.Name = "fileNameLabel";
            fileNameLabel.Size = new System.Drawing.Size(77, 14);
            fileNameLabel.TabIndex = 31;
            fileNameLabel.Text = "Attachment:";
            fileNameLabel.Visible = false;
            // 
            // ccLabel1
            // 
            ccLabel1.AutoSize = true;
            ccLabel1.Location = new System.Drawing.Point(47, 87);
            ccLabel1.Name = "ccLabel1";
            ccLabel1.Size = new System.Drawing.Size(23, 14);
            ccLabel1.TabIndex = 28;
            ccLabel1.Text = "cc:";
            // 
            // messageLabel
            // 
            messageLabel.AutoSize = true;
            messageLabel.Location = new System.Drawing.Point(13, 184);
            messageLabel.Name = "messageLabel";
            messageLabel.Size = new System.Drawing.Size(57, 14);
            messageLabel.TabIndex = 24;
            messageLabel.Text = "Message:";
            // 
            // subjectLabel
            // 
            subjectLabel.AutoSize = true;
            subjectLabel.Location = new System.Drawing.Point(17, 118);
            subjectLabel.Name = "subjectLabel";
            subjectLabel.Size = new System.Drawing.Size(53, 14);
            subjectLabel.TabIndex = 22;
            subjectLabel.Text = "Subject:";
            // 
            // toLabel
            // 
            toLabel.AutoSize = true;
            toLabel.Location = new System.Drawing.Point(44, 53);
            toLabel.Name = "toLabel";
            toLabel.Size = new System.Drawing.Size(26, 14);
            toLabel.TabIndex = 21;
            toLabel.Text = "To:";
            // 
            // fromLabel
            // 
            fromLabel.AutoSize = true;
            fromLabel.Location = new System.Drawing.Point(32, 21);
            fromLabel.Name = "fromLabel";
            fromLabel.Size = new System.Drawing.Size(38, 14);
            fromLabel.TabIndex = 19;
            fromLabel.Text = "From:";
            // 
            // edtAttachment
            // 
            this.edtAttachment.Location = new System.Drawing.Point(107, 409);
            this.edtAttachment.Name = "edtAttachment";
            this.edtAttachment.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.edtAttachment.Size = new System.Drawing.Size(84, 21);
            this.edtAttachment.TabIndex = 32;
            this.edtAttachment.Visible = false;
            this.edtAttachment.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(this.edtAttachment_ButtonClick);
            // 
            // cbcc
            // 
            this.cbcc.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.bsActionLogEmail, "cc", true));
            this.cbcc.EditValue = "";
            this.cbcc.Location = new System.Drawing.Point(76, 84);
            this.cbcc.Name = "cbcc";
            this.cbcc.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbcc.Properties.ShowAllItemCaption = "(Choose All)";
            this.cbcc.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.Standard;
            this.cbcc.Size = new System.Drawing.Size(688, 21);
            this.cbcc.TabIndex = 30;
            // 
            // cbTo
            // 
            this.cbTo.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.bsActionLogEmail, "To", true));
            this.cbTo.EditValue = "";
            this.cbTo.Location = new System.Drawing.Point(76, 50);
            this.cbTo.Name = "cbTo";
            this.cbTo.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbTo.Properties.ShowAllItemCaption = "(Choose All)";
            this.cbTo.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.Standard;
            this.cbTo.Size = new System.Drawing.Size(688, 21);
            this.cbTo.TabIndex = 29;
            // 
            // btnCancel
            // 
            this.btnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnCancel.Location = new System.Drawing.Point(592, 412);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(75, 23);
            this.btnCancel.TabIndex = 27;
            this.btnCancel.Text = "Cancel";
            // 
            // btnSend
            // 
            this.btnSend.Location = new System.Drawing.Point(461, 412);
            this.btnSend.Name = "btnSend";
            this.btnSend.Size = new System.Drawing.Size(75, 23);
            this.btnSend.TabIndex = 26;
            this.btnSend.Text = "Send";
            this.btnSend.Click += new System.EventHandler(this.btnSend_Click);
            // 
            // subjectMemoEdit
            // 
            this.subjectMemoEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.bsActionLogEmail, "Subject", true));
            this.subjectMemoEdit.Location = new System.Drawing.Point(76, 115);
            this.subjectMemoEdit.Name = "subjectMemoEdit";
            this.subjectMemoEdit.Size = new System.Drawing.Size(688, 56);
            this.subjectMemoEdit.TabIndex = 23;
            // 
            // fromTextEdit
            // 
            this.fromTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.bsActionLogEmail, "From", true));
            this.fromTextEdit.Location = new System.Drawing.Point(76, 18);
            this.fromTextEdit.Name = "fromTextEdit";
            this.fromTextEdit.Size = new System.Drawing.Size(688, 21);
            this.fromTextEdit.TabIndex = 20;
            // 
            // messageMemoEdit
            // 
            this.messageMemoEdit.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.bsActionLogEmail, "Message", true));
            this.messageMemoEdit.Location = new System.Drawing.Point(76, 184);
            this.messageMemoEdit.Name = "messageMemoEdit";
            this.messageMemoEdit.Size = new System.Drawing.Size(688, 219);
            this.messageMemoEdit.TabIndex = 33;
            this.messageMemoEdit.Text = "";
            // 
            // bsActionLogEmail
            // 
            this.bsActionLogEmail.DataSource = typeof(PH.POPC.BO.ActionLogEmail);
            // 
            // SendEmailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(783, 450);
            this.Controls.Add(this.messageMemoEdit);
            this.Controls.Add(this.edtAttachment);
            this.Controls.Add(fileNameLabel);
            this.Controls.Add(this.cbcc);
            this.Controls.Add(this.cbTo);
            this.Controls.Add(ccLabel1);
            this.Controls.Add(this.btnCancel);
            this.Controls.Add(this.btnSend);
            this.Controls.Add(messageLabel);
            this.Controls.Add(subjectLabel);
            this.Controls.Add(this.subjectMemoEdit);
            this.Controls.Add(toLabel);
            this.Controls.Add(fromLabel);
            this.Controls.Add(this.fromTextEdit);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "SendEmailForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Send Email Form";
            ((System.ComponentModel.ISupportInitialize)(this.edtAttachment.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbcc.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbTo.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.subjectMemoEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.fromTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bsActionLogEmail)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.ButtonEdit edtAttachment;
        private DevExpress.XtraEditors.CheckedComboBoxEdit cbcc;
        private DevExpress.XtraEditors.CheckedComboBoxEdit cbTo;
        private DevExpress.XtraEditors.SimpleButton btnCancel;
        private DevExpress.XtraEditors.SimpleButton btnSend;
        private DevExpress.XtraEditors.MemoEdit subjectMemoEdit;
        private DevExpress.XtraEditors.TextEdit fromTextEdit;
        private System.Windows.Forms.BindingSource bsActionLogEmail;
        private System.Windows.Forms.RichTextBox messageMemoEdit;
    }
}