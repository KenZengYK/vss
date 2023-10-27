namespace PH.RWO.UI
{
    partial class CustomerCommissionDetailForm
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
            System.Windows.Forms.Label categoryLabel;
            System.Windows.Forms.Label commissionLabel;
            System.Windows.Forms.Label remarkLabel;
            this.categoryComboBoxEdit = new DevExpress.XtraEditors.ComboBoxEdit();
            this.commissionSpinEdit = new DevExpress.XtraEditors.SpinEdit();
            this.remarkMemoEdit = new DevExpress.XtraEditors.MemoEdit();
            categoryLabel = new System.Windows.Forms.Label();
            commissionLabel = new System.Windows.Forms.Label();
            remarkLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.categoryComboBoxEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.commissionSpinEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.remarkMemoEdit.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.RWO.BO.CustomerCommission);
            // 
            // categoryLabel
            // 
            categoryLabel.AutoSize = true;
            categoryLabel.Location = new System.Drawing.Point(58, 50);
            categoryLabel.Name = "categoryLabel";
            categoryLabel.Size = new System.Drawing.Size(51, 12);
            this.PlatetoolTipController.SetSuperTip(categoryLabel, null);
            categoryLabel.TabIndex = 4;
            categoryLabel.Text = "Category:";
            // 
            // categoryComboBoxEdit
            // 
            this.categoryComboBoxEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Category", true));
            this.categoryComboBoxEdit.Location = new System.Drawing.Point(124, 47);
            this.categoryComboBoxEdit.Name = "categoryComboBoxEdit";
            this.categoryComboBoxEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.categoryComboBoxEdit.Size = new System.Drawing.Size(171, 21);
            this.categoryComboBoxEdit.TabIndex = 5;
            // 
            // commissionLabel
            // 
            commissionLabel.AutoSize = true;
            commissionLabel.Location = new System.Drawing.Point(34, 96);
            commissionLabel.Name = "commissionLabel";
            commissionLabel.Size = new System.Drawing.Size(75, 12);
            this.PlatetoolTipController.SetSuperTip(commissionLabel, null);
            commissionLabel.TabIndex = 6;
            commissionLabel.Text = "Commission%:";
            // 
            // commissionSpinEdit
            // 
            this.commissionSpinEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Commission", true));
            this.commissionSpinEdit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.commissionSpinEdit.Location = new System.Drawing.Point(124, 93);
            this.commissionSpinEdit.Name = "commissionSpinEdit";
            this.commissionSpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.commissionSpinEdit.Size = new System.Drawing.Size(171, 21);
            this.commissionSpinEdit.TabIndex = 7;
            // 
            // remarkLabel
            // 
            remarkLabel.AutoSize = true;
            remarkLabel.Location = new System.Drawing.Point(64, 140);
            remarkLabel.Name = "remarkLabel";
            remarkLabel.Size = new System.Drawing.Size(45, 12);
            this.PlatetoolTipController.SetSuperTip(remarkLabel, null);
            remarkLabel.TabIndex = 8;
            remarkLabel.Text = "Remark:";
            // 
            // remarkMemoEdit
            // 
            this.remarkMemoEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Remark", true));
            this.remarkMemoEdit.Location = new System.Drawing.Point(124, 137);
            this.remarkMemoEdit.Name = "remarkMemoEdit";
            this.remarkMemoEdit.Size = new System.Drawing.Size(171, 79);
            this.remarkMemoEdit.TabIndex = 9;
            // 
            // CustomerCommissionDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(remarkLabel);
            this.Controls.Add(this.remarkMemoEdit);
            this.Controls.Add(commissionLabel);
            this.Controls.Add(this.commissionSpinEdit);
            this.Controls.Add(categoryLabel);
            this.Controls.Add(this.categoryComboBoxEdit);
            this.Name = "CustomerCommissionDetailForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.categoryComboBoxEdit, 0);
            this.Controls.SetChildIndex(categoryLabel, 0);
            this.Controls.SetChildIndex(this.commissionSpinEdit, 0);
            this.Controls.SetChildIndex(commissionLabel, 0);
            this.Controls.SetChildIndex(this.remarkMemoEdit, 0);
            this.Controls.SetChildIndex(remarkLabel, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.categoryComboBoxEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.commissionSpinEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.remarkMemoEdit.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.ComboBoxEdit categoryComboBoxEdit;
        private DevExpress.XtraEditors.SpinEdit commissionSpinEdit;
        private DevExpress.XtraEditors.MemoEdit remarkMemoEdit;
    }
}
