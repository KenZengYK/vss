namespace PH.BasicInfo.UI.TimeElement
{
    partial class PerformanceItemDetailForm
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
            System.Windows.Forms.Label descriptionLabel;
            System.Windows.Forms.Label itemCodeLabel;
            System.Windows.Forms.Label maxWeightLabel;
            System.Windows.Forms.Label seqLabel;
            System.Windows.Forms.Label specificLabel;
            System.Windows.Forms.Label label1;
            this.textEdit1 = new DevExpress.XtraEditors.TextEdit();
            this.textEdit3 = new DevExpress.XtraEditors.TextEdit();
            this.spinEdit1 = new DevExpress.XtraEditors.SpinEdit();
            this.spinEdit2 = new DevExpress.XtraEditors.SpinEdit();
            this.memoEdit1 = new DevExpress.XtraEditors.MemoEdit();
            this.textEdit2 = new DevExpress.XtraEditors.TextEdit();
            this.memoEdit2 = new DevExpress.XtraEditors.MemoEdit();
            this.sBtn_UpdateCurrency = new DevExpress.XtraEditors.SimpleButton();
            categoryLabel = new System.Windows.Forms.Label();
            descriptionLabel = new System.Windows.Forms.Label();
            itemCodeLabel = new System.Windows.Forms.Label();
            maxWeightLabel = new System.Windows.Forms.Label();
            seqLabel = new System.Windows.Forms.Label();
            specificLabel = new System.Windows.Forms.Label();
            label1 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit3.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spinEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spinEdit2.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.memoEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit2.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.memoEdit2.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.BasicInfo.BO.PerformanceItem);
            // 
            // categoryLabel
            // 
            categoryLabel.AutoSize = true;
            categoryLabel.Location = new System.Drawing.Point(120, 58);
            categoryLabel.Name = "categoryLabel";
            categoryLabel.Size = new System.Drawing.Size(59, 12);
            this.PlatetoolTipController.SetSuperTip(categoryLabel, null);
            categoryLabel.TabIndex = 4;
            categoryLabel.Text = "Category:";
            // 
            // descriptionLabel
            // 
            descriptionLabel.AutoSize = true;
            descriptionLabel.Location = new System.Drawing.Point(102, 120);
            descriptionLabel.Name = "descriptionLabel";
            descriptionLabel.Size = new System.Drawing.Size(77, 12);
            this.PlatetoolTipController.SetSuperTip(descriptionLabel, null);
            descriptionLabel.TabIndex = 6;
            descriptionLabel.Text = "Description:";
            // 
            // itemCodeLabel
            // 
            itemCodeLabel.AutoSize = true;
            itemCodeLabel.Location = new System.Drawing.Point(120, 88);
            itemCodeLabel.Name = "itemCodeLabel";
            itemCodeLabel.Size = new System.Drawing.Size(65, 12);
            this.PlatetoolTipController.SetSuperTip(itemCodeLabel, null);
            itemCodeLabel.TabIndex = 8;
            itemCodeLabel.Text = "Item Code:";
            // 
            // maxWeightLabel
            // 
            maxWeightLabel.AutoSize = true;
            maxWeightLabel.Location = new System.Drawing.Point(594, 40);
            maxWeightLabel.Name = "maxWeightLabel";
            maxWeightLabel.Size = new System.Drawing.Size(71, 12);
            this.PlatetoolTipController.SetSuperTip(maxWeightLabel, null);
            maxWeightLabel.TabIndex = 10;
            maxWeightLabel.Text = "Max Weight:";
            // 
            // seqLabel
            // 
            seqLabel.AutoSize = true;
            seqLabel.Location = new System.Drawing.Point(636, 58);
            seqLabel.Name = "seqLabel";
            seqLabel.Size = new System.Drawing.Size(29, 12);
            this.PlatetoolTipController.SetSuperTip(seqLabel, null);
            seqLabel.TabIndex = 12;
            seqLabel.Text = "Seq:";
            // 
            // specificLabel
            // 
            specificLabel.AutoSize = true;
            specificLabel.Location = new System.Drawing.Point(120, 175);
            specificLabel.Name = "specificLabel";
            specificLabel.Size = new System.Drawing.Size(59, 12);
            this.PlatetoolTipController.SetSuperTip(specificLabel, null);
            specificLabel.TabIndex = 14;
            specificLabel.Text = "Specific:";
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new System.Drawing.Point(630, 88);
            label1.Name = "label1";
            label1.Size = new System.Drawing.Size(35, 12);
            this.PlatetoolTipController.SetSuperTip(label1, null);
            label1.TabIndex = 22;
            label1.Text = "Dept:";
            // 
            // textEdit1
            // 
            this.textEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Category", true));
            this.textEdit1.Location = new System.Drawing.Point(213, 58);
            this.textEdit1.Name = "textEdit1";
            this.textEdit1.Size = new System.Drawing.Size(209, 21);
            this.textEdit1.TabIndex = 15;
            // 
            // textEdit3
            // 
            this.textEdit3.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "ItemCode", true));
            this.textEdit3.Location = new System.Drawing.Point(213, 85);
            this.textEdit3.Name = "textEdit3";
            this.textEdit3.Size = new System.Drawing.Size(209, 21);
            this.textEdit3.TabIndex = 17;
            // 
            // spinEdit1
            // 
            this.spinEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "MaxWeight", true));
            this.spinEdit1.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.spinEdit1.Location = new System.Drawing.Point(699, 31);
            this.spinEdit1.Name = "spinEdit1";
            this.spinEdit1.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.spinEdit1.Size = new System.Drawing.Size(100, 21);
            this.spinEdit1.TabIndex = 18;
            // 
            // spinEdit2
            // 
            this.spinEdit2.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Seq", true));
            this.spinEdit2.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.spinEdit2.Location = new System.Drawing.Point(699, 58);
            this.spinEdit2.Name = "spinEdit2";
            this.spinEdit2.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.spinEdit2.Properties.IsFloatValue = false;
            this.spinEdit2.Properties.Mask.EditMask = "N00";
            this.spinEdit2.Size = new System.Drawing.Size(100, 21);
            this.spinEdit2.TabIndex = 20;
            // 
            // memoEdit1
            // 
            this.memoEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Description", true));
            this.memoEdit1.Location = new System.Drawing.Point(213, 120);
            this.memoEdit1.Name = "memoEdit1";
            this.memoEdit1.Size = new System.Drawing.Size(465, 39);
            this.memoEdit1.TabIndex = 21;
            // 
            // textEdit2
            // 
            this.textEdit2.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Dept", true));
            this.textEdit2.Location = new System.Drawing.Point(699, 85);
            this.textEdit2.Name = "textEdit2";
            this.textEdit2.Size = new System.Drawing.Size(100, 21);
            this.textEdit2.TabIndex = 23;
            // 
            // memoEdit2
            // 
            this.memoEdit2.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Specific", true));
            this.memoEdit2.Location = new System.Drawing.Point(213, 173);
            this.memoEdit2.Name = "memoEdit2";
            this.memoEdit2.Properties.Appearance.Font = new System.Drawing.Font("Courier New", 9F);
            this.memoEdit2.Properties.Appearance.Options.UseFont = true;
            this.memoEdit2.Properties.ScrollBars = System.Windows.Forms.ScrollBars.Both;
            this.memoEdit2.Properties.WordWrap = false;
            this.memoEdit2.Size = new System.Drawing.Size(755, 370);
            this.memoEdit2.TabIndex = 24;
            // 
            // sBtn_UpdateCurrency
            // 
            this.sBtn_UpdateCurrency.Location = new System.Drawing.Point(43, 357);
            this.sBtn_UpdateCurrency.Name = "sBtn_UpdateCurrency";
            this.sBtn_UpdateCurrency.Size = new System.Drawing.Size(104, 39);
            this.sBtn_UpdateCurrency.TabIndex = 25;
            this.sBtn_UpdateCurrency.Text = "Update Currency";
            this.sBtn_UpdateCurrency.Click += new System.EventHandler(this.sBtn_UpdateCurrency_Click);
            // 
            // PerformanceItemDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.sBtn_UpdateCurrency);
            this.Controls.Add(this.memoEdit2);
            this.Controls.Add(this.textEdit2);
            this.Controls.Add(label1);
            this.Controls.Add(this.memoEdit1);
            this.Controls.Add(this.spinEdit2);
            this.Controls.Add(this.spinEdit1);
            this.Controls.Add(this.textEdit3);
            this.Controls.Add(this.textEdit1);
            this.Controls.Add(specificLabel);
            this.Controls.Add(seqLabel);
            this.Controls.Add(maxWeightLabel);
            this.Controls.Add(itemCodeLabel);
            this.Controls.Add(descriptionLabel);
            this.Controls.Add(categoryLabel);
            this.Name = "PerformanceItemDetailForm";
            this.Size = new System.Drawing.Size(1000, 555);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(categoryLabel, 0);
            this.Controls.SetChildIndex(descriptionLabel, 0);
            this.Controls.SetChildIndex(itemCodeLabel, 0);
            this.Controls.SetChildIndex(maxWeightLabel, 0);
            this.Controls.SetChildIndex(seqLabel, 0);
            this.Controls.SetChildIndex(specificLabel, 0);
            this.Controls.SetChildIndex(this.textEdit1, 0);
            this.Controls.SetChildIndex(this.textEdit3, 0);
            this.Controls.SetChildIndex(this.spinEdit1, 0);
            this.Controls.SetChildIndex(this.spinEdit2, 0);
            this.Controls.SetChildIndex(this.memoEdit1, 0);
            this.Controls.SetChildIndex(label1, 0);
            this.Controls.SetChildIndex(this.textEdit2, 0);
            this.Controls.SetChildIndex(this.memoEdit2, 0);
            this.Controls.SetChildIndex(this.sBtn_UpdateCurrency, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit3.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spinEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spinEdit2.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.memoEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit2.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.memoEdit2.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit textEdit1;
        private DevExpress.XtraEditors.TextEdit textEdit3;
        private DevExpress.XtraEditors.SpinEdit spinEdit1;
        private DevExpress.XtraEditors.SpinEdit spinEdit2;
        private DevExpress.XtraEditors.MemoEdit memoEdit1;
        private DevExpress.XtraEditors.TextEdit textEdit2;
        private DevExpress.XtraEditors.MemoEdit memoEdit2;
        private DevExpress.XtraEditors.SimpleButton sBtn_UpdateCurrency;




    }
}
