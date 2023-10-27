namespace PH.MIDc.UI 
{
    partial class ColorSizeCupRangeDetailBasicInfoDetail
    {
        /// <summary> 
        /// 必需的设计器变量。
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary> 
        /// 清理所有正在使用的资源。
        /// </summary>
        /// <param name="disposing">如果应释放托管资源，为 true；否则为 false。</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region 组件设计器生成的代码

        /// <summary> 
        /// 设计器支持所需的方法 - 不要
        /// 使用代码编辑器修改此方法的内容。
        /// </summary>
        private void InitializeComponent()
        {
            System.Windows.Forms.Label categoryLabel;
            System.Windows.Forms.Label dataCodeLabel;
            System.Windows.Forms.Label descriptionLabel;
            System.Windows.Forms.Label seqLabel;
            System.Windows.Forms.Label parentDataCodeLabel;
            this.categoryTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.dataCodeTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.descriptionTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.seqSpinEdit = new DevExpress.XtraEditors.SpinEdit();
            this.parentDataCodeTextEdit = new DevExpress.XtraEditors.TextEdit();
            categoryLabel = new System.Windows.Forms.Label();
            dataCodeLabel = new System.Windows.Forms.Label();
            descriptionLabel = new System.Windows.Forms.Label();
            seqLabel = new System.Windows.Forms.Label();
            parentDataCodeLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.categoryTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataCodeTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.descriptionTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.seqSpinEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.parentDataCodeTextEdit.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.MIDc.BO.ColorSizeCupRangeDetail);
            // 
            // categoryLabel
            // 
            categoryLabel.AutoSize = true;
            categoryLabel.Location = new System.Drawing.Point(158, 65);
            categoryLabel.Name = "categoryLabel";
            categoryLabel.Size = new System.Drawing.Size(59, 12);
            this.PlatetoolTipController.SetSuperTip(categoryLabel, null);
            categoryLabel.TabIndex = 4;
            categoryLabel.Text = "Category:";
            // 
            // dataCodeLabel
            // 
            dataCodeLabel.AutoSize = true;
            dataCodeLabel.Location = new System.Drawing.Point(152, 134);
            dataCodeLabel.Name = "dataCodeLabel";
            dataCodeLabel.Size = new System.Drawing.Size(65, 12);
            this.PlatetoolTipController.SetSuperTip(dataCodeLabel, null);
            dataCodeLabel.TabIndex = 6;
            dataCodeLabel.Text = "Data Code:";
            // 
            // descriptionLabel
            // 
            descriptionLabel.AutoSize = true;
            descriptionLabel.Location = new System.Drawing.Point(140, 208);
            descriptionLabel.Name = "descriptionLabel";
            descriptionLabel.Size = new System.Drawing.Size(77, 12);
            this.PlatetoolTipController.SetSuperTip(descriptionLabel, null);
            descriptionLabel.TabIndex = 8;
            descriptionLabel.Text = "Description:";
            // 
            // seqLabel
            // 
            seqLabel.AutoSize = true;
            seqLabel.Location = new System.Drawing.Point(188, 170);
            seqLabel.Name = "seqLabel";
            seqLabel.Size = new System.Drawing.Size(29, 12);
            this.PlatetoolTipController.SetSuperTip(seqLabel, null);
            seqLabel.TabIndex = 10;
            seqLabel.Text = "Seq:";
            // 
            // parentDataCodeLabel
            // 
            parentDataCodeLabel.AutoSize = true;
            parentDataCodeLabel.Location = new System.Drawing.Point(110, 102);
            parentDataCodeLabel.Name = "parentDataCodeLabel";
            parentDataCodeLabel.Size = new System.Drawing.Size(107, 12);
            this.PlatetoolTipController.SetSuperTip(parentDataCodeLabel, null);
            parentDataCodeLabel.TabIndex = 12;
            parentDataCodeLabel.Text = "Parent Data Code:";
            // 
            // categoryTextEdit
            // 
            this.categoryTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Category", true));
            this.categoryTextEdit.Location = new System.Drawing.Point(237, 62);
            this.categoryTextEdit.Name = "categoryTextEdit";
            this.categoryTextEdit.Size = new System.Drawing.Size(100, 21);
            this.categoryTextEdit.TabIndex = 5;
            // 
            // dataCodeTextEdit
            // 
            this.dataCodeTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "ChildDataCode", true));
            this.dataCodeTextEdit.Location = new System.Drawing.Point(237, 131);
            this.dataCodeTextEdit.Name = "dataCodeTextEdit";
            this.dataCodeTextEdit.Size = new System.Drawing.Size(100, 21);
            this.dataCodeTextEdit.TabIndex = 7;
            // 
            // descriptionTextEdit
            // 
            this.descriptionTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Description", true));
            this.descriptionTextEdit.Location = new System.Drawing.Point(237, 205);
            this.descriptionTextEdit.Name = "descriptionTextEdit";
            this.descriptionTextEdit.Size = new System.Drawing.Size(100, 21);
            this.descriptionTextEdit.TabIndex = 9;
            // 
            // seqSpinEdit
            // 
            this.seqSpinEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Seq", true));
            this.seqSpinEdit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.seqSpinEdit.Location = new System.Drawing.Point(237, 167);
            this.seqSpinEdit.Name = "seqSpinEdit";
            this.seqSpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.seqSpinEdit.Size = new System.Drawing.Size(100, 21);
            this.seqSpinEdit.TabIndex = 11;
            // 
            // parentDataCodeTextEdit
            // 
            this.parentDataCodeTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "DataCode", true));
            this.parentDataCodeTextEdit.Location = new System.Drawing.Point(237, 99);
            this.parentDataCodeTextEdit.Name = "parentDataCodeTextEdit";
            this.parentDataCodeTextEdit.Size = new System.Drawing.Size(100, 21);
            this.parentDataCodeTextEdit.TabIndex = 13;
            // 
            // ColorSizeCupRangeDetailBasicInfoDetail
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(parentDataCodeLabel);
            this.Controls.Add(this.parentDataCodeTextEdit);
            this.Controls.Add(seqLabel);
            this.Controls.Add(this.seqSpinEdit);
            this.Controls.Add(descriptionLabel);
            this.Controls.Add(this.descriptionTextEdit);
            this.Controls.Add(dataCodeLabel);
            this.Controls.Add(this.dataCodeTextEdit);
            this.Controls.Add(categoryLabel);
            this.Controls.Add(this.categoryTextEdit);
            this.Name = "ColorSizeCupRangeDetailBasicInfoDetail";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Load += new System.EventHandler(this.ColorSizeCupRangeDetailBasicInfoDetail_Load);
            this.Controls.SetChildIndex(this.categoryTextEdit, 0);
            this.Controls.SetChildIndex(categoryLabel, 0);
            this.Controls.SetChildIndex(this.dataCodeTextEdit, 0);
            this.Controls.SetChildIndex(dataCodeLabel, 0);
            this.Controls.SetChildIndex(this.descriptionTextEdit, 0);
            this.Controls.SetChildIndex(descriptionLabel, 0);
            this.Controls.SetChildIndex(this.seqSpinEdit, 0);
            this.Controls.SetChildIndex(seqLabel, 0);
            this.Controls.SetChildIndex(this.parentDataCodeTextEdit, 0);
            this.Controls.SetChildIndex(parentDataCodeLabel, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.categoryTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataCodeTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.descriptionTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.seqSpinEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.parentDataCodeTextEdit.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit categoryTextEdit;
        private DevExpress.XtraEditors.TextEdit dataCodeTextEdit;
        private DevExpress.XtraEditors.TextEdit descriptionTextEdit;
        private DevExpress.XtraEditors.SpinEdit seqSpinEdit;
        private DevExpress.XtraEditors.TextEdit parentDataCodeTextEdit;
    }
}
