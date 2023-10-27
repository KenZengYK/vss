namespace PH.LWPM.UI.PO
{
    partial class PODetail_OtherItemDetailForm
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
            System.Windows.Forms.Label amountLabel;
            System.Windows.Forms.Label descriptionLabel;
            System.Windows.Forms.Label carriageDescriptionLabel;
            System.Windows.Forms.Label label1;
            this.amountSpinEdit = new DevExpress.XtraEditors.SpinEdit();
            this.descriptionComboBoxEdit = new DevExpress.XtraEditors.ComboBoxEdit();
            this.carriageDescriptionComboBoxEdit = new DevExpress.XtraEditors.ComboBoxEdit();
            this.spinEdit1 = new DevExpress.XtraEditors.SpinEdit();
            amountLabel = new System.Windows.Forms.Label();
            descriptionLabel = new System.Windows.Forms.Label();
            carriageDescriptionLabel = new System.Windows.Forms.Label();
            label1 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.amountSpinEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.descriptionComboBoxEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.carriageDescriptionComboBoxEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spinEdit1.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.LWPM.BO.PODetail_OtherItem);
            // 
            // amountLabel
            // 
            amountLabel.AutoSize = true;
            amountLabel.Location = new System.Drawing.Point(189, 146);
            amountLabel.Name = "amountLabel";
            amountLabel.Size = new System.Drawing.Size(47, 12);
            this.PlatetoolTipController.SetSuperTip(amountLabel, null);
            amountLabel.TabIndex = 8;
            amountLabel.Text = "Amount:";
            // 
            // descriptionLabel
            // 
            descriptionLabel.AutoSize = true;
            descriptionLabel.Location = new System.Drawing.Point(159, 104);
            descriptionLabel.Name = "descriptionLabel";
            descriptionLabel.Size = new System.Drawing.Size(77, 12);
            this.PlatetoolTipController.SetSuperTip(descriptionLabel, null);
            descriptionLabel.TabIndex = 9;
            descriptionLabel.Text = "Description:";
            // 
            // carriageDescriptionLabel
            // 
            carriageDescriptionLabel.AutoSize = true;
            carriageDescriptionLabel.Location = new System.Drawing.Point(105, 64);
            carriageDescriptionLabel.Name = "carriageDescriptionLabel";
            carriageDescriptionLabel.Size = new System.Drawing.Size(131, 12);
            this.PlatetoolTipController.SetSuperTip(carriageDescriptionLabel, null);
            carriageDescriptionLabel.TabIndex = 10;
            carriageDescriptionLabel.Text = "Carriage Description:";
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new System.Drawing.Point(182, 188);
            label1.Name = "label1";
            label1.Size = new System.Drawing.Size(47, 12);
            this.PlatetoolTipController.SetSuperTip(label1, null);
            label1.TabIndex = 28;
            label1.Text = "SortID:";
            // 
            // amountSpinEdit
            // 
            this.amountSpinEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Amount", true));
            this.amountSpinEdit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.amountSpinEdit.Location = new System.Drawing.Point(242, 143);
            this.amountSpinEdit.Name = "amountSpinEdit";
            this.amountSpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.amountSpinEdit.Size = new System.Drawing.Size(124, 21);
            this.amountSpinEdit.TabIndex = 9;
            // 
            // descriptionComboBoxEdit
            // 
            this.descriptionComboBoxEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Description", true));
            this.descriptionComboBoxEdit.Location = new System.Drawing.Point(242, 99);
            this.descriptionComboBoxEdit.Name = "descriptionComboBoxEdit";
            this.descriptionComboBoxEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.descriptionComboBoxEdit.Properties.Items.AddRange(new object[] {
            "Inland origin",
            "Ocean freight"});
            this.descriptionComboBoxEdit.Size = new System.Drawing.Size(373, 21);
            this.descriptionComboBoxEdit.TabIndex = 10;
            // 
            // carriageDescriptionComboBoxEdit
            // 
            this.carriageDescriptionComboBoxEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "CarriageDescription", true));
            this.carriageDescriptionComboBoxEdit.Location = new System.Drawing.Point(242, 61);
            this.carriageDescriptionComboBoxEdit.Name = "carriageDescriptionComboBoxEdit";
            this.carriageDescriptionComboBoxEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.carriageDescriptionComboBoxEdit.Properties.Items.AddRange(new object[] {
            "Carriage inward (transport) charge",
            "Carriage outward (transport) charge"});
            this.carriageDescriptionComboBoxEdit.Size = new System.Drawing.Size(373, 21);
            this.carriageDescriptionComboBoxEdit.TabIndex = 11;
            // 
            // spinEdit1
            // 
            this.spinEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "SortID", true));
            this.spinEdit1.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.spinEdit1.Location = new System.Drawing.Point(242, 185);
            this.spinEdit1.Name = "spinEdit1";
            this.spinEdit1.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.spinEdit1.Size = new System.Drawing.Size(124, 21);
            this.spinEdit1.TabIndex = 29;
            // 
            // PODetail_OtherItemDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.descriptionComboBoxEdit);
            this.Controls.Add(label1);
            this.Controls.Add(this.spinEdit1);
            this.Controls.Add(carriageDescriptionLabel);
            this.Controls.Add(this.carriageDescriptionComboBoxEdit);
            this.Controls.Add(descriptionLabel);
            this.Controls.Add(amountLabel);
            this.Controls.Add(this.amountSpinEdit);
            this.Name = "PODetail_OtherItemDetailForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.amountSpinEdit, 0);
            this.Controls.SetChildIndex(amountLabel, 0);
            this.Controls.SetChildIndex(descriptionLabel, 0);
            this.Controls.SetChildIndex(this.carriageDescriptionComboBoxEdit, 0);
            this.Controls.SetChildIndex(carriageDescriptionLabel, 0);
            this.Controls.SetChildIndex(this.spinEdit1, 0);
            this.Controls.SetChildIndex(label1, 0);
            this.Controls.SetChildIndex(this.descriptionComboBoxEdit, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.amountSpinEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.descriptionComboBoxEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.carriageDescriptionComboBoxEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spinEdit1.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.SpinEdit amountSpinEdit;
        private DevExpress.XtraEditors.ComboBoxEdit descriptionComboBoxEdit;
        private DevExpress.XtraEditors.ComboBoxEdit carriageDescriptionComboBoxEdit;
        private DevExpress.XtraEditors.SpinEdit spinEdit1;
    }
}
