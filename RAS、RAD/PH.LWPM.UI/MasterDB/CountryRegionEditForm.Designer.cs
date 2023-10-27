namespace PH.LWPM.UI.MasterDB
{
    partial class CountryRegionEditForm
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
            System.Windows.Forms.Label langLabel;
            this.langTextBox = new System.Windows.Forms.TextBox();
            this.tbxSeqno = new System.Windows.Forms.TextBox();
            this.lblSortID = new System.Windows.Forms.Label();
            this.lblParentCode = new System.Windows.Forms.Label();
            this.tbxParent = new System.Windows.Forms.TextBox();
            this.lblBaseType = new System.Windows.Forms.Label();
            this.lblNameCn = new System.Windows.Forms.Label();
            this.tbxNameCn = new System.Windows.Forms.TextBox();
            this.lblNameEn = new System.Windows.Forms.Label();
            this.tbxNameEn = new System.Windows.Forms.TextBox();
            this.comboBoxEdit1 = new DevExpress.XtraEditors.ComboBoxEdit();
            langLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.LWPM.BO.BaseCode);
            // 
            // langLabel
            // 
            langLabel.AutoSize = true;
            langLabel.Location = new System.Drawing.Point(136, 158);
            langLabel.Name = "langLabel";
            langLabel.Size = new System.Drawing.Size(36, 12);
            this.PlatetoolTipController.SetSuperTip(langLabel, null);
            langLabel.TabIndex = 36;
            langLabel.Text = "Code :";
            // 
            // langTextBox
            // 
            this.langTextBox.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.BindingSource, "Code", true));
            this.langTextBox.Enabled = false;
            this.langTextBox.Location = new System.Drawing.Point(185, 155);
            this.langTextBox.Name = "langTextBox";
            this.langTextBox.Size = new System.Drawing.Size(144, 22);
            this.PlatetoolTipController.SetSuperTip(this.langTextBox, null);
            this.langTextBox.TabIndex = 38;
            // 
            // tbxSeqno
            // 
            this.tbxSeqno.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.BindingSource, "SortID", true));
            this.tbxSeqno.Location = new System.Drawing.Point(185, 60);
            this.tbxSeqno.Name = "tbxSeqno";
            this.tbxSeqno.Size = new System.Drawing.Size(115, 22);
            this.PlatetoolTipController.SetSuperTip(this.tbxSeqno, null);
            this.tbxSeqno.TabIndex = 35;
            // 
            // lblSortID
            // 
            this.lblSortID.AutoSize = true;
            this.lblSortID.Location = new System.Drawing.Point(124, 63);
            this.lblSortID.Name = "lblSortID";
            this.lblSortID.Size = new System.Drawing.Size(48, 12);
            this.PlatetoolTipController.SetSuperTip(this.lblSortID, null);
            this.lblSortID.TabIndex = 34;
            this.lblSortID.Text = "Seq No. :";
            // 
            // lblParentCode
            // 
            this.lblParentCode.AutoSize = true;
            this.lblParentCode.Location = new System.Drawing.Point(353, 158);
            this.lblParentCode.Name = "lblParentCode";
            this.lblParentCode.Size = new System.Drawing.Size(68, 12);
            this.PlatetoolTipController.SetSuperTip(this.lblParentCode, null);
            this.lblParentCode.TabIndex = 32;
            this.lblParentCode.Text = "Parent Code :";
            this.lblParentCode.Visible = false;
            // 
            // tbxParent
            // 
            this.tbxParent.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.BindingSource, "ParentCode", true));
            this.tbxParent.Location = new System.Drawing.Point(437, 155);
            this.tbxParent.Name = "tbxParent";
            this.tbxParent.Size = new System.Drawing.Size(88, 22);
            this.PlatetoolTipController.SetSuperTip(this.tbxParent, null);
            this.tbxParent.TabIndex = 33;
            this.tbxParent.Visible = false;
            // 
            // lblBaseType
            // 
            this.lblBaseType.AutoSize = true;
            this.lblBaseType.Location = new System.Drawing.Point(113, 96);
            this.lblBaseType.Name = "lblBaseType";
            this.lblBaseType.Size = new System.Drawing.Size(59, 12);
            this.PlatetoolTipController.SetSuperTip(this.lblBaseType, null);
            this.lblBaseType.TabIndex = 30;
            this.lblBaseType.Text = "Data Type :";
            // 
            // lblNameCn
            // 
            this.lblNameCn.AutoSize = true;
            this.lblNameCn.Location = new System.Drawing.Point(81, 232);
            this.lblNameCn.Name = "lblNameCn";
            this.lblNameCn.Size = new System.Drawing.Size(91, 12);
            this.PlatetoolTipController.SetSuperTip(this.lblNameCn, null);
            this.lblNameCn.TabIndex = 28;
            this.lblNameCn.Text = "Description (CN) :";
            // 
            // tbxNameCn
            // 
            this.tbxNameCn.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.BindingSource, "Description", true));
            this.tbxNameCn.Location = new System.Drawing.Point(185, 229);
            this.tbxNameCn.Name = "tbxNameCn";
            this.tbxNameCn.Size = new System.Drawing.Size(340, 22);
            this.PlatetoolTipController.SetSuperTip(this.tbxNameCn, null);
            this.tbxNameCn.TabIndex = 29;
            // 
            // lblNameEn
            // 
            this.lblNameEn.AutoSize = true;
            this.lblNameEn.Location = new System.Drawing.Point(108, 191);
            this.lblNameEn.Name = "lblNameEn";
            this.lblNameEn.Size = new System.Drawing.Size(64, 12);
            this.PlatetoolTipController.SetSuperTip(this.lblNameEn, null);
            this.lblNameEn.TabIndex = 26;
            this.lblNameEn.Text = "Description :";
            // 
            // tbxNameEn
            // 
            this.tbxNameEn.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.BindingSource, "Name", true));
            this.tbxNameEn.Location = new System.Drawing.Point(185, 191);
            this.tbxNameEn.Name = "tbxNameEn";
            this.tbxNameEn.Size = new System.Drawing.Size(340, 22);
            this.PlatetoolTipController.SetSuperTip(this.tbxNameEn, null);
            this.tbxNameEn.TabIndex = 27;
            // 
            // comboBoxEdit1
            // 
            this.comboBoxEdit1.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.BindingSource, "Type", true));
            this.comboBoxEdit1.Location = new System.Drawing.Point(185, 93);
            this.comboBoxEdit1.Name = "comboBoxEdit1";
            this.comboBoxEdit1.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.comboBoxEdit1.Properties.Items.AddRange(new object[] {
            "REGION",
            "Country",
            "AREA"});
            this.comboBoxEdit1.Size = new System.Drawing.Size(115, 21);
            this.comboBoxEdit1.TabIndex = 39;
            // 
            // CountryRegionEditForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.comboBoxEdit1);
            this.Controls.Add(langLabel);
            this.Controls.Add(this.langTextBox);
            this.Controls.Add(this.tbxSeqno);
            this.Controls.Add(this.lblSortID);
            this.Controls.Add(this.lblParentCode);
            this.Controls.Add(this.tbxParent);
            this.Controls.Add(this.lblBaseType);
            this.Controls.Add(this.lblNameCn);
            this.Controls.Add(this.tbxNameCn);
            this.Controls.Add(this.lblNameEn);
            this.Controls.Add(this.tbxNameEn);
            this.Name = "CountryRegionEditForm";
            this.Size = new System.Drawing.Size(851, 403);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.tbxNameEn, 0);
            this.Controls.SetChildIndex(this.lblNameEn, 0);
            this.Controls.SetChildIndex(this.tbxNameCn, 0);
            this.Controls.SetChildIndex(this.lblNameCn, 0);
            this.Controls.SetChildIndex(this.lblBaseType, 0);
            this.Controls.SetChildIndex(this.tbxParent, 0);
            this.Controls.SetChildIndex(this.lblParentCode, 0);
            this.Controls.SetChildIndex(this.lblSortID, 0);
            this.Controls.SetChildIndex(this.tbxSeqno, 0);
            this.Controls.SetChildIndex(this.langTextBox, 0);
            this.Controls.SetChildIndex(langLabel, 0);
            this.Controls.SetChildIndex(this.comboBoxEdit1, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.comboBoxEdit1.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox langTextBox;
        private System.Windows.Forms.TextBox tbxSeqno;
        public System.Windows.Forms.Label lblSortID;
        private System.Windows.Forms.Label lblBaseType;
        private System.Windows.Forms.Label lblNameCn;
        private System.Windows.Forms.TextBox tbxNameCn;
        private System.Windows.Forms.Label lblNameEn;
        private System.Windows.Forms.TextBox tbxNameEn;
        private DevExpress.XtraEditors.ComboBoxEdit comboBoxEdit1;
        private System.Windows.Forms.Label lblParentCode;
        private System.Windows.Forms.TextBox tbxParent;

    }
}