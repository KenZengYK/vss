namespace PH.LineBalanceII.UI
{
    partial class SetupDetailForm
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
            System.Windows.Forms.Label dataNameLabel;
            System.Windows.Forms.Label descriptionLabel;
            System.Windows.Forms.Label sortIDLabel;
            this.dataCodeTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.dataNameTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.descriptionMemoEdit = new DevExpress.XtraEditors.MemoEdit();
            this.sortIDSpinEdit = new DevExpress.XtraEditors.SpinEdit();
            dataCodeLabel = new System.Windows.Forms.Label();
            dataNameLabel = new System.Windows.Forms.Label();
            descriptionLabel = new System.Windows.Forms.Label();
            sortIDLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataCodeTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataNameTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.descriptionMemoEdit.Properties)).BeginInit();
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
            dataCodeLabel.Location = new System.Drawing.Point(149, 61);
            dataCodeLabel.Name = "dataCodeLabel";
            dataCodeLabel.Size = new System.Drawing.Size(35, 12);
            this.PlatetoolTipController.SetSuperTip(dataCodeLabel, null);
            dataCodeLabel.TabIndex = 4;
            dataCodeLabel.Text = "Code:";
            // 
            // dataNameLabel
            // 
            dataNameLabel.AutoSize = true;
            dataNameLabel.Location = new System.Drawing.Point(149, 89);
            dataNameLabel.Name = "dataNameLabel";
            dataNameLabel.Size = new System.Drawing.Size(35, 12);
            this.PlatetoolTipController.SetSuperTip(dataNameLabel, null);
            dataNameLabel.TabIndex = 6;
            dataNameLabel.Text = "Name:";
            // 
            // descriptionLabel
            // 
            descriptionLabel.AutoSize = true;
            descriptionLabel.Location = new System.Drawing.Point(107, 121);
            descriptionLabel.Name = "descriptionLabel";
            descriptionLabel.Size = new System.Drawing.Size(77, 12);
            this.PlatetoolTipController.SetSuperTip(descriptionLabel, null);
            descriptionLabel.TabIndex = 8;
            descriptionLabel.Text = "Description:";
            // 
            // sortIDLabel
            // 
            sortIDLabel.AutoSize = true;
            sortIDLabel.Location = new System.Drawing.Point(131, 235);
            sortIDLabel.Name = "sortIDLabel";
            sortIDLabel.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(sortIDLabel, null);
            sortIDLabel.TabIndex = 10;
            sortIDLabel.Text = "Sort ID:";
            // 
            // dataCodeTextEdit
            // 
            this.dataCodeTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "DataCode", true));
            this.dataCodeTextEdit.Location = new System.Drawing.Point(190, 56);
            this.dataCodeTextEdit.Name = "dataCodeTextEdit";
            this.dataCodeTextEdit.Size = new System.Drawing.Size(305, 21);
            this.dataCodeTextEdit.TabIndex = 5;
            // 
            // dataNameTextEdit
            // 
            this.dataNameTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "DataName", true));
            this.dataNameTextEdit.Location = new System.Drawing.Point(190, 88);
            this.dataNameTextEdit.Name = "dataNameTextEdit";
            this.dataNameTextEdit.Size = new System.Drawing.Size(305, 21);
            this.dataNameTextEdit.TabIndex = 7;
            // 
            // descriptionMemoEdit
            // 
            this.descriptionMemoEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Description", true));
            this.descriptionMemoEdit.Location = new System.Drawing.Point(190, 118);
            this.descriptionMemoEdit.Name = "descriptionMemoEdit";
            this.descriptionMemoEdit.Size = new System.Drawing.Size(305, 108);
            this.descriptionMemoEdit.TabIndex = 9;
            // 
            // sortIDSpinEdit
            // 
            this.sortIDSpinEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "SortID", true));
            this.sortIDSpinEdit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.sortIDSpinEdit.Location = new System.Drawing.Point(190, 232);
            this.sortIDSpinEdit.Name = "sortIDSpinEdit";
            this.sortIDSpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.sortIDSpinEdit.Size = new System.Drawing.Size(76, 21);
            this.sortIDSpinEdit.TabIndex = 11;
            // 
            // SetupDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(sortIDLabel);
            this.Controls.Add(this.sortIDSpinEdit);
            this.Controls.Add(descriptionLabel);
            this.Controls.Add(this.descriptionMemoEdit);
            this.Controls.Add(dataNameLabel);
            this.Controls.Add(this.dataNameTextEdit);
            this.Controls.Add(dataCodeLabel);
            this.Controls.Add(this.dataCodeTextEdit);
            this.Name = "SetupDetailForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.dataCodeTextEdit, 0);
            this.Controls.SetChildIndex(dataCodeLabel, 0);
            this.Controls.SetChildIndex(this.dataNameTextEdit, 0);
            this.Controls.SetChildIndex(dataNameLabel, 0);
            this.Controls.SetChildIndex(this.descriptionMemoEdit, 0);
            this.Controls.SetChildIndex(descriptionLabel, 0);
            this.Controls.SetChildIndex(this.sortIDSpinEdit, 0);
            this.Controls.SetChildIndex(sortIDLabel, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataCodeTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataNameTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.descriptionMemoEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.sortIDSpinEdit.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit dataCodeTextEdit;
        private DevExpress.XtraEditors.TextEdit dataNameTextEdit;
        private DevExpress.XtraEditors.MemoEdit descriptionMemoEdit;
        private DevExpress.XtraEditors.SpinEdit sortIDSpinEdit;
    }
}
