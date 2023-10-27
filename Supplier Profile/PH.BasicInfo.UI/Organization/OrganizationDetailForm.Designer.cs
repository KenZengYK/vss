namespace PH.BasicInfo.UI.Organization
{
    partial class OrganizationDetailForm
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
            System.Windows.Forms.Label orgIDLabel;
            System.Windows.Forms.Label orgCodeLabel;
            System.Windows.Forms.Label orgNameLabel;
            System.Windows.Forms.Label orgTypeLabel;
            this.orgIDSpinEdit = new DevExpress.XtraEditors.SpinEdit();
            this.pIDSpinEdit = new DevExpress.XtraEditors.SpinEdit();
            this.orgCodeTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.orgNameTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.orgTypeLookUpEdit = new DevExpress.XtraEditors.LookUpEdit();
            orgIDLabel = new System.Windows.Forms.Label();
            orgCodeLabel = new System.Windows.Forms.Label();
            orgNameLabel = new System.Windows.Forms.Label();
            orgTypeLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.orgIDSpinEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pIDSpinEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.orgCodeTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.orgNameTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.orgTypeLookUpEdit.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.BasicInfo.BO.Organization);
            // 
            // orgIDLabel
            // 
            orgIDLabel.AutoSize = true;
            orgIDLabel.Location = new System.Drawing.Point(111, 66);
            orgIDLabel.Name = "orgIDLabel";
            orgIDLabel.Size = new System.Drawing.Size(83, 13);
            orgIDLabel.TabIndex = 6;
            orgIDLabel.Text = "Organization ID:";
            // 
            // orgCodeLabel
            // 
            orgCodeLabel.AutoSize = true;
            orgCodeLabel.Location = new System.Drawing.Point(97, 177);
            orgCodeLabel.Name = "orgCodeLabel";
            orgCodeLabel.Size = new System.Drawing.Size(97, 13);
            orgCodeLabel.TabIndex = 8;
            orgCodeLabel.Text = "Organization Code:";
            // 
            // orgNameLabel
            // 
            orgNameLabel.AutoSize = true;
            orgNameLabel.Location = new System.Drawing.Point(94, 235);
            orgNameLabel.Name = "orgNameLabel";
            orgNameLabel.Size = new System.Drawing.Size(100, 13);
            orgNameLabel.TabIndex = 9;
            orgNameLabel.Text = "Organization Name:";
            // 
            // orgTypeLabel
            // 
            orgTypeLabel.AutoSize = true;
            orgTypeLabel.Location = new System.Drawing.Point(98, 121);
            orgTypeLabel.Name = "orgTypeLabel";
            orgTypeLabel.Size = new System.Drawing.Size(96, 13);
            orgTypeLabel.TabIndex = 7;
            orgTypeLabel.Text = "Organization Type:";
            // 
            // orgIDSpinEdit
            // 
            this.orgIDSpinEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "OrgID", true));
            this.orgIDSpinEdit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.orgIDSpinEdit.EnterMoveNextControl = true;
            this.orgIDSpinEdit.Location = new System.Drawing.Point(202, 63);
            this.orgIDSpinEdit.Name = "orgIDSpinEdit";
            this.orgIDSpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.orgIDSpinEdit.Size = new System.Drawing.Size(169, 20);
            this.orgIDSpinEdit.TabIndex = 1;
            // 
            // pIDSpinEdit
            // 
            this.pIDSpinEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "PID", true));
            this.pIDSpinEdit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.pIDSpinEdit.Enabled = false;
            this.pIDSpinEdit.Location = new System.Drawing.Point(202, 63);
            this.pIDSpinEdit.Name = "pIDSpinEdit";
            this.pIDSpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.pIDSpinEdit.Size = new System.Drawing.Size(169, 20);
            this.pIDSpinEdit.TabIndex = 0;
            this.pIDSpinEdit.TabStop = false;
            // 
            // orgCodeTextEdit
            // 
            this.orgCodeTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "OrgCode", true));
            this.orgCodeTextEdit.EnterMoveNextControl = true;
            this.orgCodeTextEdit.Location = new System.Drawing.Point(202, 174);
            this.orgCodeTextEdit.Name = "orgCodeTextEdit";
            this.orgCodeTextEdit.Size = new System.Drawing.Size(169, 20);
            this.orgCodeTextEdit.TabIndex = 3;
            // 
            // orgNameTextEdit
            // 
            this.orgNameTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "OrgName", true));
            this.orgNameTextEdit.EnterMoveNextControl = true;
            this.orgNameTextEdit.Location = new System.Drawing.Point(202, 232);
            this.orgNameTextEdit.Name = "orgNameTextEdit";
            this.orgNameTextEdit.Size = new System.Drawing.Size(319, 20);
            this.orgNameTextEdit.TabIndex = 4;
            // 
            // orgTypeLookUpEdit
            // 
            this.orgTypeLookUpEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "OrgType", true));
            this.orgTypeLookUpEdit.EnterMoveNextControl = true;
            this.orgTypeLookUpEdit.Location = new System.Drawing.Point(202, 118);
            this.orgTypeLookUpEdit.Name = "orgTypeLookUpEdit";
            this.orgTypeLookUpEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.orgTypeLookUpEdit.Properties.NullText = "";
            this.orgTypeLookUpEdit.Size = new System.Drawing.Size(319, 20);
            this.orgTypeLookUpEdit.TabIndex = 2;
            // 
            // OrganizationDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(orgTypeLabel);
            this.Controls.Add(this.orgTypeLookUpEdit);
            this.Controls.Add(orgNameLabel);
            this.Controls.Add(this.orgNameTextEdit);
            this.Controls.Add(orgCodeLabel);
            this.Controls.Add(this.orgCodeTextEdit);
            this.Controls.Add(orgIDLabel);
            this.Controls.Add(this.orgIDSpinEdit);
            this.Controls.Add(this.pIDSpinEdit);
            this.Name = "OrganizationDetailForm";
            this.Size = new System.Drawing.Size(782, 390);
            this.Load += new System.EventHandler(this.OrganizationDetailForm_Load);
            this.Enter += new System.EventHandler(this.OrganizationDetailForm_Enter);
            this.Controls.SetChildIndex(this.pIDSpinEdit, 0);
            this.Controls.SetChildIndex(this.orgIDSpinEdit, 0);
            this.Controls.SetChildIndex(orgIDLabel, 0);
            this.Controls.SetChildIndex(this.orgCodeTextEdit, 0);
            this.Controls.SetChildIndex(orgCodeLabel, 0);
            this.Controls.SetChildIndex(this.orgNameTextEdit, 0);
            this.Controls.SetChildIndex(orgNameLabel, 0);
            this.Controls.SetChildIndex(this.orgTypeLookUpEdit, 0);
            this.Controls.SetChildIndex(orgTypeLabel, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.orgIDSpinEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pIDSpinEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.orgCodeTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.orgNameTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.orgTypeLookUpEdit.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.SpinEdit orgIDSpinEdit;
        private DevExpress.XtraEditors.SpinEdit pIDSpinEdit;
        private DevExpress.XtraEditors.TextEdit orgCodeTextEdit;
        private DevExpress.XtraEditors.TextEdit orgNameTextEdit;
        private DevExpress.XtraEditors.LookUpEdit orgTypeLookUpEdit;
    }
}
