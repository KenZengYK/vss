namespace PH.POPC.UI.Notify
{
    partial class NotifyForm
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
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.editSubject = new DevExpress.XtraEditors.TextEdit();
            this.m_pAttachments = new System.Windows.Forms.ListView();
            this.btnSend = new DevExpress.XtraEditors.SimpleButton();
            this.bindingSource1 = new System.Windows.Forms.BindingSource(this.components);
            this.BodyEditor = new System.Windows.Forms.WebBrowser();
            this.groupControl1 = new DevExpress.XtraEditors.GroupControl();
            this.gcFile = new DevExpress.XtraEditors.GroupControl();
            this.btnRemove = new DevExpress.XtraEditors.ButtonEdit();
            this.btnAdd = new DevExpress.XtraEditors.ButtonEdit();
            this.panelControl1 = new DevExpress.XtraEditors.PanelControl();
            this.CcEditor = new PH.POPC.BackEnd.CustomEditor.TextEditPopUp();
            this.ToEditor = new PH.POPC.BackEnd.CustomEditor.TextEditPopUp();
            this.panelControl2 = new DevExpress.XtraEditors.PanelControl();
            this.label4 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.editSubject.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).BeginInit();
            this.groupControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gcFile)).BeginInit();
            this.gcFile.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.btnRemove.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.btnAdd.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).BeginInit();
            this.panelControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.CcEditor.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.ToEditor.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl2)).BeginInit();
            this.panelControl2.SuspendLayout();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(41, 16);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(26, 14);
            this.label1.TabIndex = 0;
            this.label1.Text = "To:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(44, 43);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(23, 14);
            this.label2.TabIndex = 1;
            this.label2.Text = "cc:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(14, 70);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(53, 14);
            this.label3.TabIndex = 8;
            this.label3.Text = "Subject:";
            // 
            // editSubject
            // 
            this.editSubject.Location = new System.Drawing.Point(73, 67);
            this.editSubject.Name = "editSubject";
            this.editSubject.Size = new System.Drawing.Size(761, 21);
            this.editSubject.TabIndex = 11;
            // 
            // m_pAttachments
            // 
            this.m_pAttachments.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.m_pAttachments.Dock = System.Windows.Forms.DockStyle.Left;
            this.m_pAttachments.HideSelection = false;
            this.m_pAttachments.Location = new System.Drawing.Point(2, 21);
            this.m_pAttachments.Name = "m_pAttachments";
            this.m_pAttachments.Size = new System.Drawing.Size(785, 50);
            this.m_pAttachments.TabIndex = 14;
            this.m_pAttachments.UseCompatibleStateImageBehavior = false;
            this.m_pAttachments.View = System.Windows.Forms.View.SmallIcon;
            this.m_pAttachments.SelectedIndexChanged += new System.EventHandler(this.m_pAttachments_SelectedIndexChanged);
            // 
            // btnSend
            // 
            this.btnSend.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.btnSend.Image = global::PH.POPC.UI.Properties.Resources.Mail;
            this.btnSend.Location = new System.Drawing.Point(749, 10);
            this.btnSend.Name = "btnSend";
            this.btnSend.Size = new System.Drawing.Size(73, 29);
            this.btnSend.TabIndex = 4;
            this.btnSend.Text = "Send";
            this.btnSend.Click += new System.EventHandler(this.btnSend_Click);
            // 
            // bindingSource1
            // 
            this.bindingSource1.DataSource = typeof(PH.BasicInfo.BO.TransitModeTransitPointChange);
            // 
            // BodyEditor
            // 
            this.BodyEditor.AllowNavigation = false;
            this.BodyEditor.AllowWebBrowserDrop = false;
            this.BodyEditor.Dock = System.Windows.Forms.DockStyle.Fill;
            this.BodyEditor.Location = new System.Drawing.Point(2, 21);
            this.BodyEditor.MinimumSize = new System.Drawing.Size(20, 20);
            this.BodyEditor.Name = "BodyEditor";
            this.BodyEditor.Size = new System.Drawing.Size(841, 317);
            this.BodyEditor.TabIndex = 17;
            // 
            // groupControl1
            // 
            this.groupControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.groupControl1.Controls.Add(this.BodyEditor);
            this.groupControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.groupControl1.Location = new System.Drawing.Point(10, 186);
            this.groupControl1.Name = "groupControl1";
            this.groupControl1.Size = new System.Drawing.Size(845, 340);
            this.groupControl1.TabIndex = 18;
            this.groupControl1.Text = "Body";
            // 
            // gcFile
            // 
            this.gcFile.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.gcFile.Controls.Add(this.btnRemove);
            this.gcFile.Controls.Add(this.btnAdd);
            this.gcFile.Controls.Add(this.m_pAttachments);
            this.gcFile.Dock = System.Windows.Forms.DockStyle.Top;
            this.gcFile.Location = new System.Drawing.Point(10, 113);
            this.gcFile.Name = "gcFile";
            this.gcFile.Size = new System.Drawing.Size(845, 73);
            this.gcFile.TabIndex = 19;
            this.gcFile.Text = "Attachment: - 0 file(s)";
            // 
            // btnRemove
            // 
            this.btnRemove.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.btnRemove.Enabled = false;
            this.btnRemove.Location = new System.Drawing.Point(805, 47);
            this.btnRemove.Name = "btnRemove";
            this.btnRemove.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Minus)});
            this.btnRemove.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.HideTextEditor;
            this.btnRemove.Size = new System.Drawing.Size(29, 21);
            this.btnRemove.TabIndex = 16;
            this.btnRemove.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(this.btnRemove_ButtonClick);
            // 
            // btnAdd
            // 
            this.btnAdd.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.btnAdd.Location = new System.Drawing.Point(805, 24);
            this.btnAdd.Name = "btnAdd";
            this.btnAdd.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Plus)});
            this.btnAdd.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.HideTextEditor;
            this.btnAdd.Size = new System.Drawing.Size(29, 21);
            this.btnAdd.TabIndex = 15;
            this.btnAdd.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(this.btnAdd_ButtonClick);
            // 
            // panelControl1
            // 
            this.panelControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.panelControl1.Controls.Add(this.CcEditor);
            this.panelControl1.Controls.Add(this.ToEditor);
            this.panelControl1.Controls.Add(this.label1);
            this.panelControl1.Controls.Add(this.label2);
            this.panelControl1.Controls.Add(this.label3);
            this.panelControl1.Controls.Add(this.editSubject);
            this.panelControl1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelControl1.Location = new System.Drawing.Point(10, 10);
            this.panelControl1.Name = "panelControl1";
            this.panelControl1.Size = new System.Drawing.Size(845, 103);
            this.panelControl1.TabIndex = 20;
            // 
            // CcEditor
            // 
            this.CcEditor.DataSource = null;
            this.CcEditor.DisplayMember = null;
            this.CcEditor.Location = new System.Drawing.Point(73, 40);
            this.CcEditor.Name = "CcEditor";
            this.CcEditor.Properties.DataSource = null;
            this.CcEditor.Properties.DisplayMember = null;
            this.CcEditor.Properties.PopupFormMinSize = new System.Drawing.Size(200, 300);
            this.CcEditor.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.Standard;
            this.CcEditor.Size = new System.Drawing.Size(761, 21);
            this.CcEditor.TabIndex = 21;
            // 
            // ToEditor
            // 
            this.ToEditor.DataSource = null;
            this.ToEditor.DisplayMember = null;
            this.ToEditor.Location = new System.Drawing.Point(73, 13);
            this.ToEditor.Name = "ToEditor";
            this.ToEditor.Properties.DataSource = null;
            this.ToEditor.Properties.DisplayMember = null;
            this.ToEditor.Properties.PopupFormMinSize = new System.Drawing.Size(200, 300);
            this.ToEditor.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.Standard;
            this.ToEditor.Size = new System.Drawing.Size(761, 21);
            this.ToEditor.TabIndex = 20;
            // 
            // panelControl2
            // 
            this.panelControl2.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.panelControl2.Controls.Add(this.label4);
            this.panelControl2.Controls.Add(this.btnSend);
            this.panelControl2.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.panelControl2.Location = new System.Drawing.Point(10, 526);
            this.panelControl2.Name = "panelControl2";
            this.panelControl2.Size = new System.Drawing.Size(845, 46);
            this.panelControl2.TabIndex = 21;
            // 
            // label4
            // 
            this.label4.Location = new System.Drawing.Point(5, 10);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(53, 29);
            this.label4.TabIndex = 9;
            this.label4.DoubleClick += new System.EventHandler(this.label4_DoubleClick);
            // 
            // NotifyForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(865, 582);
            this.Controls.Add(this.groupControl1);
            this.Controls.Add(this.gcFile);
            this.Controls.Add(this.panelControl1);
            this.Controls.Add(this.panelControl2);
            this.MinimizeBox = false;
            this.Name = "NotifyForm";
            this.Padding = new System.Windows.Forms.Padding(10);
            this.ShowInTaskbar = false;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "POPC Notepad...";
            ((System.ComponentModel.ISupportInitialize)(this.editSubject.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).EndInit();
            this.groupControl1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.gcFile)).EndInit();
            this.gcFile.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.btnRemove.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.btnAdd.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).EndInit();
            this.panelControl1.ResumeLayout(false);
            this.panelControl1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.CcEditor.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.ToEditor.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl2)).EndInit();
            this.panelControl2.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private DevExpress.XtraEditors.SimpleButton btnSend;
        private System.Windows.Forms.BindingSource bindingSource1;
        private System.Windows.Forms.Label label3;
        private DevExpress.XtraEditors.TextEdit editSubject;
        private System.Windows.Forms.ListView m_pAttachments;
        private System.Windows.Forms.WebBrowser BodyEditor;
        private DevExpress.XtraEditors.GroupControl groupControl1;
        private DevExpress.XtraEditors.GroupControl gcFile;
        private DevExpress.XtraEditors.ButtonEdit btnRemove;
        private DevExpress.XtraEditors.ButtonEdit btnAdd;
        private DevExpress.XtraEditors.PanelControl panelControl1;
        private DevExpress.XtraEditors.PanelControl panelControl2;
        private PH.POPC.BackEnd.CustomEditor.TextEditPopUp ToEditor;
        private PH.POPC.BackEnd.CustomEditor.TextEditPopUp CcEditor;
        private System.Windows.Forms.Label label4;
    }
}