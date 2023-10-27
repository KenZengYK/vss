namespace PH.BasicInfo.UI.MasterDB
{
    partial class PaymentTermsDetailForm
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
            System.Windows.Forms.Label dataCodeLabel;
            System.Windows.Forms.Label descriptionLabel;
            System.Windows.Forms.Label dataNameCNLabel;
            System.Windows.Forms.Label dataNameLabel;
            System.Windows.Forms.Label stringField1Label;
            System.Windows.Forms.Label stringField2Label;
            System.Windows.Forms.Label sortIDLabel;
            this.dataCodeTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.descriptionMemoEdit = new DevExpress.XtraEditors.MemoEdit();
            this.dataNameCNMemoEdit = new DevExpress.XtraEditors.MemoEdit();
            this.dataNameTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.stringField1TextEdit = new DevExpress.XtraEditors.TextEdit();
            this.stringField2TextEdit = new DevExpress.XtraEditors.TextEdit();
            this.sortIDSpinEdit = new DevExpress.XtraEditors.SpinEdit();
            dataCodeLabel = new System.Windows.Forms.Label();
            descriptionLabel = new System.Windows.Forms.Label();
            dataNameCNLabel = new System.Windows.Forms.Label();
            dataNameLabel = new System.Windows.Forms.Label();
            stringField1Label = new System.Windows.Forms.Label();
            stringField2Label = new System.Windows.Forms.Label();
            sortIDLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataCodeTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.descriptionMemoEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataNameCNMemoEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataNameTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.stringField1TextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.stringField2TextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.sortIDSpinEdit.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.Platform.Misc.BO.Misc_DataDictionary);
            // 
            // dataCodeLabel
            // 
            dataCodeLabel.AutoSize = true;
            dataCodeLabel.Location = new System.Drawing.Point(42, 82);
            dataCodeLabel.Name = "dataCodeLabel";
            dataCodeLabel.Size = new System.Drawing.Size(35, 12);
            this.PlatetoolTipController.SetSuperTip(dataCodeLabel, null);
            dataCodeLabel.TabIndex = 4;
            dataCodeLabel.Text = "Code:";
            // 
            // descriptionLabel
            // 
            descriptionLabel.AutoSize = true;
            descriptionLabel.Location = new System.Drawing.Point(42, 144);
            descriptionLabel.Name = "descriptionLabel";
            descriptionLabel.Size = new System.Drawing.Size(71, 12);
            this.PlatetoolTipController.SetSuperTip(descriptionLabel, null);
            descriptionLabel.TabIndex = 6;
            descriptionLabel.Text = "Desc. (EN):";
            // 
            // dataNameCNLabel
            // 
            dataNameCNLabel.AutoSize = true;
            dataNameCNLabel.Location = new System.Drawing.Point(42, 255);
            dataNameCNLabel.Name = "dataNameCNLabel";
            dataNameCNLabel.Size = new System.Drawing.Size(71, 12);
            this.PlatetoolTipController.SetSuperTip(dataNameCNLabel, null);
            dataNameCNLabel.TabIndex = 8;
            dataNameCNLabel.Text = "Desc. (CN):";
            // 
            // dataNameLabel
            // 
            dataNameLabel.AutoSize = true;
            dataNameLabel.Location = new System.Drawing.Point(42, 113);
            dataNameLabel.Name = "dataNameLabel";
            dataNameLabel.Size = new System.Drawing.Size(71, 12);
            this.PlatetoolTipController.SetSuperTip(dataNameLabel, null);
            dataNameLabel.TabIndex = 10;
            dataNameLabel.Text = "Short Name:";
            // 
            // stringField1Label
            // 
            stringField1Label.AutoSize = true;
            stringField1Label.Location = new System.Drawing.Point(42, 360);
            stringField1Label.Name = "stringField1Label";
            stringField1Label.Size = new System.Drawing.Size(167, 24);
            this.PlatetoolTipController.SetSuperTip(stringField1Label, null);
            stringField1Label.TabIndex = 12;
            stringField1Label.Text = "Days diff -\r\nInv. Matching DDD vs GRN dd";
            // 
            // stringField2Label
            // 
            stringField2Label.AutoSize = true;
            stringField2Label.Location = new System.Drawing.Point(42, 408);
            stringField2Label.Name = "stringField2Label";
            stringField2Label.Size = new System.Drawing.Size(143, 24);
            this.PlatetoolTipController.SetSuperTip(stringField2Label, null);
            stringField2Label.TabIndex = 14;
            stringField2Label.Text = "Day diff -\r\nPymt Term DDD vs GRN dd";
            // 
            // dataCodeTextEdit
            // 
            this.dataCodeTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "DataCode", true));
            this.dataCodeTextEdit.Location = new System.Drawing.Point(217, 79);
            this.dataCodeTextEdit.Name = "dataCodeTextEdit";
            this.dataCodeTextEdit.Size = new System.Drawing.Size(376, 21);
            this.dataCodeTextEdit.TabIndex = 5;
            // 
            // descriptionMemoEdit
            // 
            this.descriptionMemoEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Description", true));
            this.descriptionMemoEdit.Location = new System.Drawing.Point(217, 142);
            this.descriptionMemoEdit.Name = "descriptionMemoEdit";
            this.descriptionMemoEdit.Size = new System.Drawing.Size(376, 96);
            this.descriptionMemoEdit.TabIndex = 7;
            // 
            // dataNameCNMemoEdit
            // 
            this.dataNameCNMemoEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "DataNameCN", true));
            this.dataNameCNMemoEdit.Location = new System.Drawing.Point(217, 250);
            this.dataNameCNMemoEdit.Name = "dataNameCNMemoEdit";
            this.dataNameCNMemoEdit.Size = new System.Drawing.Size(376, 96);
            this.dataNameCNMemoEdit.TabIndex = 9;
            // 
            // dataNameTextEdit
            // 
            this.dataNameTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "DataName", true));
            this.dataNameTextEdit.Location = new System.Drawing.Point(217, 110);
            this.dataNameTextEdit.Name = "dataNameTextEdit";
            this.dataNameTextEdit.Size = new System.Drawing.Size(376, 21);
            this.dataNameTextEdit.TabIndex = 11;
            // 
            // stringField1TextEdit
            // 
            this.stringField1TextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "StringField1", true));
            this.stringField1TextEdit.Location = new System.Drawing.Point(217, 363);
            this.stringField1TextEdit.Name = "stringField1TextEdit";
            this.stringField1TextEdit.Size = new System.Drawing.Size(376, 21);
            this.stringField1TextEdit.TabIndex = 13;
            // 
            // stringField2TextEdit
            // 
            this.stringField2TextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "StringField2", true));
            this.stringField2TextEdit.Location = new System.Drawing.Point(217, 404);
            this.stringField2TextEdit.Name = "stringField2TextEdit";
            this.stringField2TextEdit.Size = new System.Drawing.Size(376, 21);
            this.stringField2TextEdit.TabIndex = 15;
            // 
            // sortIDLabel
            // 
            sortIDLabel.AutoSize = true;
            sortIDLabel.Location = new System.Drawing.Point(42, 53);
            sortIDLabel.Name = "sortIDLabel";
            sortIDLabel.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(sortIDLabel, null);
            sortIDLabel.TabIndex = 16;
            sortIDLabel.Text = "Sort ID:";
            // 
            // sortIDSpinEdit
            // 
            this.sortIDSpinEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "SortID", true));
            this.sortIDSpinEdit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.sortIDSpinEdit.Location = new System.Drawing.Point(217, 48);
            this.sortIDSpinEdit.Name = "sortIDSpinEdit";
            this.sortIDSpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.sortIDSpinEdit.Size = new System.Drawing.Size(95, 21);
            this.sortIDSpinEdit.TabIndex = 17;
            // 
            // PaymentTermsDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(sortIDLabel);
            this.Controls.Add(this.sortIDSpinEdit);
            this.Controls.Add(stringField2Label);
            this.Controls.Add(this.stringField2TextEdit);
            this.Controls.Add(stringField1Label);
            this.Controls.Add(this.stringField1TextEdit);
            this.Controls.Add(dataNameLabel);
            this.Controls.Add(this.dataNameTextEdit);
            this.Controls.Add(dataNameCNLabel);
            this.Controls.Add(this.dataNameCNMemoEdit);
            this.Controls.Add(descriptionLabel);
            this.Controls.Add(this.descriptionMemoEdit);
            this.Controls.Add(dataCodeLabel);
            this.Controls.Add(this.dataCodeTextEdit);
            this.Name = "PaymentTermsDetailForm";
            this.Size = new System.Drawing.Size(1000, 528);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.dataCodeTextEdit, 0);
            this.Controls.SetChildIndex(dataCodeLabel, 0);
            this.Controls.SetChildIndex(this.descriptionMemoEdit, 0);
            this.Controls.SetChildIndex(descriptionLabel, 0);
            this.Controls.SetChildIndex(this.dataNameCNMemoEdit, 0);
            this.Controls.SetChildIndex(dataNameCNLabel, 0);
            this.Controls.SetChildIndex(this.dataNameTextEdit, 0);
            this.Controls.SetChildIndex(dataNameLabel, 0);
            this.Controls.SetChildIndex(this.stringField1TextEdit, 0);
            this.Controls.SetChildIndex(stringField1Label, 0);
            this.Controls.SetChildIndex(this.stringField2TextEdit, 0);
            this.Controls.SetChildIndex(stringField2Label, 0);
            this.Controls.SetChildIndex(this.sortIDSpinEdit, 0);
            this.Controls.SetChildIndex(sortIDLabel, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataCodeTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.descriptionMemoEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataNameCNMemoEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataNameTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.stringField1TextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.stringField2TextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.sortIDSpinEdit.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit dataCodeTextEdit;
        private DevExpress.XtraEditors.MemoEdit descriptionMemoEdit;
        private DevExpress.XtraEditors.MemoEdit dataNameCNMemoEdit;
        private DevExpress.XtraEditors.TextEdit dataNameTextEdit;
        private DevExpress.XtraEditors.TextEdit stringField1TextEdit;
        private DevExpress.XtraEditors.TextEdit stringField2TextEdit;
        private DevExpress.XtraEditors.SpinEdit sortIDSpinEdit;
    }
}
