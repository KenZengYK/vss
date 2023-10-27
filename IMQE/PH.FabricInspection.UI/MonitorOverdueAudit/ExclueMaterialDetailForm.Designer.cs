namespace PH.FabricInspection.UI.MonitorOverdueAudit
{
    partial class ExclueMaterialDetailForm
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
            System.Windows.Forms.Label materialCategoryLabel;
            System.Windows.Forms.Label materialLabel;
            System.Windows.Forms.Label flagLabel;
            this.materialCategoryComboBoxEdit = new DevExpress.XtraEditors.ComboBoxEdit();
            this.materialTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.flagComboBoxEdit = new DevExpress.XtraEditors.ComboBoxEdit();
            materialCategoryLabel = new System.Windows.Forms.Label();
            materialLabel = new System.Windows.Forms.Label();
            flagLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.materialCategoryComboBoxEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.materialTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.flagComboBoxEdit.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.FabricInspection.BO.ExclueMaterial);
            // 
            // materialCategoryLabel
            // 
            materialCategoryLabel.AutoSize = true;
            materialCategoryLabel.Location = new System.Drawing.Point(41, 57);
            materialCategoryLabel.Name = "materialCategoryLabel";
            materialCategoryLabel.Size = new System.Drawing.Size(77, 12);
            this.PlatetoolTipController.SetSuperTip(materialCategoryLabel, null);
            materialCategoryLabel.TabIndex = 4;
            materialCategoryLabel.Text = "Mat\'l group:";
            // 
            // materialLabel
            // 
            materialLabel.AutoSize = true;
            materialLabel.Location = new System.Drawing.Point(41, 90);
            materialLabel.Name = "materialLabel";
            materialLabel.Size = new System.Drawing.Size(143, 12);
            this.PlatetoolTipController.SetSuperTip(materialLabel, null);
            materialLabel.TabIndex = 6;
            materialLabel.Text = "Mat\'l type or Item No.:";
            // 
            // flagLabel
            // 
            flagLabel.AutoSize = true;
            flagLabel.Location = new System.Drawing.Point(41, 126);
            flagLabel.Name = "flagLabel";
            flagLabel.Size = new System.Drawing.Size(35, 12);
            this.PlatetoolTipController.SetSuperTip(flagLabel, null);
            flagLabel.TabIndex = 8;
            flagLabel.Text = "Flag:";
            // 
            // materialCategoryComboBoxEdit
            // 
            this.materialCategoryComboBoxEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "MaterialCategory", true));
            this.materialCategoryComboBoxEdit.Location = new System.Drawing.Point(206, 52);
            this.materialCategoryComboBoxEdit.Name = "materialCategoryComboBoxEdit";
            this.materialCategoryComboBoxEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.materialCategoryComboBoxEdit.Properties.Items.AddRange(new object[] {
            "M",
            "L",
            "E",
            "A",
            "C"});
            this.materialCategoryComboBoxEdit.Size = new System.Drawing.Size(168, 21);
            this.materialCategoryComboBoxEdit.TabIndex = 5;
            // 
            // materialTextEdit
            // 
            this.materialTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Material", true));
            this.materialTextEdit.Location = new System.Drawing.Point(206, 86);
            this.materialTextEdit.Name = "materialTextEdit";
            this.materialTextEdit.Size = new System.Drawing.Size(168, 21);
            this.materialTextEdit.TabIndex = 7;
            // 
            // flagComboBoxEdit
            // 
            this.flagComboBoxEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Flag", true));
            this.flagComboBoxEdit.Location = new System.Drawing.Point(206, 122);
            this.flagComboBoxEdit.Name = "flagComboBoxEdit";
            this.flagComboBoxEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.flagComboBoxEdit.Properties.Items.AddRange(new object[] {
            "IsMaterialType",
            "IsMaterialItemNo"});
            this.flagComboBoxEdit.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.flagComboBoxEdit.Size = new System.Drawing.Size(168, 21);
            this.flagComboBoxEdit.TabIndex = 9;
            // 
            // ExclueMaterialDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(flagLabel);
            this.Controls.Add(this.flagComboBoxEdit);
            this.Controls.Add(materialLabel);
            this.Controls.Add(this.materialTextEdit);
            this.Controls.Add(materialCategoryLabel);
            this.Controls.Add(this.materialCategoryComboBoxEdit);
            this.Name = "ExclueMaterialDetailForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.materialCategoryComboBoxEdit, 0);
            this.Controls.SetChildIndex(materialCategoryLabel, 0);
            this.Controls.SetChildIndex(this.materialTextEdit, 0);
            this.Controls.SetChildIndex(materialLabel, 0);
            this.Controls.SetChildIndex(this.flagComboBoxEdit, 0);
            this.Controls.SetChildIndex(flagLabel, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.materialCategoryComboBoxEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.materialTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.flagComboBoxEdit.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.ComboBoxEdit materialCategoryComboBoxEdit;
        private DevExpress.XtraEditors.TextEdit materialTextEdit;
        private DevExpress.XtraEditors.ComboBoxEdit flagComboBoxEdit;
    }
}
