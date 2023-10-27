namespace PH.POPC.UI.MasterDB
{
    partial class FieldDetailForm
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
            System.Windows.Forms.Label sortIDLabel;
            System.Windows.Forms.Label codeLabel;
            System.Windows.Forms.Label descriptionLabel;
            System.Windows.Forms.Label membersLabel;
            System.Windows.Forms.Label presenterLabel;
            System.Windows.Forms.Label customerLabel;
            this.sortIDSpinEdit = new DevExpress.XtraEditors.SpinEdit();
            this.codeTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.descriptionTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.presenterTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.customerTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.membersTextEdit = new DevExpress.XtraEditors.MemoEdit();
            sortIDLabel = new System.Windows.Forms.Label();
            codeLabel = new System.Windows.Forms.Label();
            descriptionLabel = new System.Windows.Forms.Label();
            membersLabel = new System.Windows.Forms.Label();
            presenterLabel = new System.Windows.Forms.Label();
            customerLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.sortIDSpinEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.codeTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.descriptionTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.presenterTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.customerTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.membersTextEdit.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.POPC.BO.Field);
            // 
            // sortIDLabel
            // 
            sortIDLabel.AutoSize = true;
            sortIDLabel.Location = new System.Drawing.Point(69, 57);
            sortIDLabel.Name = "sortIDLabel";
            sortIDLabel.Size = new System.Drawing.Size(35, 12);
            this.PlatetoolTipController.SetSuperTip(sortIDLabel, null);
            sortIDLabel.TabIndex = 4;
            sortIDLabel.Text = "Seq#:";
            // 
            // codeLabel
            // 
            codeLabel.AutoSize = true;
            codeLabel.Location = new System.Drawing.Point(69, 88);
            codeLabel.Name = "codeLabel";
            codeLabel.Size = new System.Drawing.Size(113, 12);
            this.PlatetoolTipController.SetSuperTip(codeLabel, null);
            codeLabel.TabIndex = 6;
            codeLabel.Text = "Field (Dept.) Cde:";
            // 
            // descriptionLabel
            // 
            descriptionLabel.AutoSize = true;
            descriptionLabel.Location = new System.Drawing.Point(69, 120);
            descriptionLabel.Name = "descriptionLabel";
            descriptionLabel.Size = new System.Drawing.Size(71, 12);
            this.PlatetoolTipController.SetSuperTip(descriptionLabel, null);
            descriptionLabel.TabIndex = 8;
            descriptionLabel.Text = "Field Name:";
            // 
            // membersLabel
            // 
            membersLabel.AutoSize = true;
            membersLabel.Location = new System.Drawing.Point(69, 221);
            membersLabel.Name = "membersLabel";
            membersLabel.Size = new System.Drawing.Size(89, 12);
            this.PlatetoolTipController.SetSuperTip(membersLabel, null);
            membersLabel.TabIndex = 10;
            membersLabel.Text = "Field Members:";
            // 
            // presenterLabel
            // 
            presenterLabel.AutoSize = true;
            presenterLabel.Location = new System.Drawing.Point(69, 188);
            presenterLabel.Name = "presenterLabel";
            presenterLabel.Size = new System.Drawing.Size(65, 12);
            this.PlatetoolTipController.SetSuperTip(presenterLabel, null);
            presenterLabel.TabIndex = 12;
            presenterLabel.Text = "Facilitor:";
            // 
            // sortIDSpinEdit
            // 
            this.sortIDSpinEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "SortID", true));
            this.sortIDSpinEdit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.sortIDSpinEdit.Location = new System.Drawing.Point(193, 54);
            this.sortIDSpinEdit.Name = "sortIDSpinEdit";
            this.sortIDSpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.sortIDSpinEdit.Size = new System.Drawing.Size(230, 21);
            this.sortIDSpinEdit.TabIndex = 5;
            // 
            // codeTextEdit
            // 
            this.codeTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Code", true));
            this.codeTextEdit.Location = new System.Drawing.Point(193, 85);
            this.codeTextEdit.Name = "codeTextEdit";
            this.codeTextEdit.Size = new System.Drawing.Size(230, 21);
            this.codeTextEdit.TabIndex = 7;
            // 
            // descriptionTextEdit
            // 
            this.descriptionTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Description", true));
            this.descriptionTextEdit.Location = new System.Drawing.Point(193, 117);
            this.descriptionTextEdit.Name = "descriptionTextEdit";
            this.descriptionTextEdit.Size = new System.Drawing.Size(482, 21);
            this.descriptionTextEdit.TabIndex = 9;
            // 
            // presenterTextEdit
            // 
            this.presenterTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Presenter", true));
            this.presenterTextEdit.Location = new System.Drawing.Point(193, 185);
            this.presenterTextEdit.Name = "presenterTextEdit";
            this.presenterTextEdit.Size = new System.Drawing.Size(482, 21);
            this.presenterTextEdit.TabIndex = 13;
            // 
            // customerLabel
            // 
            customerLabel.AutoSize = true;
            customerLabel.Location = new System.Drawing.Point(69, 153);
            customerLabel.Name = "customerLabel";
            customerLabel.Size = new System.Drawing.Size(107, 12);
            this.PlatetoolTipController.SetSuperTip(customerLabel, null);
            customerLabel.TabIndex = 14;
            customerLabel.Text = "Customer Involve:";
            // 
            // customerTextEdit
            // 
            this.customerTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Customer", true));
            this.customerTextEdit.Location = new System.Drawing.Point(193, 150);
            this.customerTextEdit.Name = "customerTextEdit";
            this.customerTextEdit.Size = new System.Drawing.Size(482, 21);
            this.customerTextEdit.TabIndex = 15;
            // 
            // membersTextEdit
            // 
            this.membersTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Members", true));
            this.membersTextEdit.Location = new System.Drawing.Point(193, 219);
            this.membersTextEdit.Name = "membersTextEdit";
            this.membersTextEdit.Size = new System.Drawing.Size(482, 96);
            this.membersTextEdit.TabIndex = 16;
            // 
            // FieldDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.membersTextEdit);
            this.Controls.Add(customerLabel);
            this.Controls.Add(this.customerTextEdit);
            this.Controls.Add(presenterLabel);
            this.Controls.Add(this.presenterTextEdit);
            this.Controls.Add(membersLabel);
            this.Controls.Add(descriptionLabel);
            this.Controls.Add(this.descriptionTextEdit);
            this.Controls.Add(codeLabel);
            this.Controls.Add(this.codeTextEdit);
            this.Controls.Add(sortIDLabel);
            this.Controls.Add(this.sortIDSpinEdit);
            this.Name = "FieldDetailForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.sortIDSpinEdit, 0);
            this.Controls.SetChildIndex(sortIDLabel, 0);
            this.Controls.SetChildIndex(this.codeTextEdit, 0);
            this.Controls.SetChildIndex(codeLabel, 0);
            this.Controls.SetChildIndex(this.descriptionTextEdit, 0);
            this.Controls.SetChildIndex(descriptionLabel, 0);
            this.Controls.SetChildIndex(membersLabel, 0);
            this.Controls.SetChildIndex(this.presenterTextEdit, 0);
            this.Controls.SetChildIndex(presenterLabel, 0);
            this.Controls.SetChildIndex(this.customerTextEdit, 0);
            this.Controls.SetChildIndex(customerLabel, 0);
            this.Controls.SetChildIndex(this.membersTextEdit, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.sortIDSpinEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.codeTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.descriptionTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.presenterTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.customerTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.membersTextEdit.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.SpinEdit sortIDSpinEdit;
        private DevExpress.XtraEditors.TextEdit codeTextEdit;
        private DevExpress.XtraEditors.TextEdit descriptionTextEdit;
        private DevExpress.XtraEditors.TextEdit presenterTextEdit;
        private DevExpress.XtraEditors.TextEdit customerTextEdit;
        private DevExpress.XtraEditors.MemoEdit membersTextEdit;
    }
}
