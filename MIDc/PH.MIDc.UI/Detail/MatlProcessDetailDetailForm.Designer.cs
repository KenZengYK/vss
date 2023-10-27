namespace PH.MIDc.UI
{
    partial class MatlProcessDetailDetailForm
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
            System.Windows.Forms.Label isMainLabel;
            System.Windows.Forms.Label matlForProcessLabel;
            System.Windows.Forms.Label suppRefLabel;
            System.Windows.Forms.Label itemWidthLabel;
            this.isMainCheckEdit = new DevExpress.XtraEditors.CheckEdit();
            this.matlForProcessTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.suppRefTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.itemWidthSpinEdit = new DevExpress.XtraEditors.SpinEdit();
            isMainLabel = new System.Windows.Forms.Label();
            matlForProcessLabel = new System.Windows.Forms.Label();
            suppRefLabel = new System.Windows.Forms.Label();
            itemWidthLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.isMainCheckEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.matlForProcessTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.suppRefTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.itemWidthSpinEdit.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.MIDc.BO.MaterialProcess);
            // 
            // isMainLabel
            // 
            isMainLabel.AutoSize = true;
            isMainLabel.Location = new System.Drawing.Point(267, 84);
            isMainLabel.Name = "isMainLabel";
            isMainLabel.Size = new System.Drawing.Size(43, 12);
            this.PlatetoolTipController.SetSuperTip(isMainLabel, null);
            isMainLabel.TabIndex = 4;
            isMainLabel.Text = "Is Main:";
            // 
            // isMainCheckEdit
            // 
            this.isMainCheckEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "IsMain", true));
            this.isMainCheckEdit.Location = new System.Drawing.Point(316, 81);
            this.isMainCheckEdit.Name = "isMainCheckEdit";
            this.isMainCheckEdit.Properties.Caption = "";
            this.isMainCheckEdit.Size = new System.Drawing.Size(75, 19);
            this.isMainCheckEdit.TabIndex = 5;
            // 
            // matlForProcessLabel
            // 
            matlForProcessLabel.AutoSize = true;
            matlForProcessLabel.Location = new System.Drawing.Point(227, 161);
            matlForProcessLabel.Name = "matlForProcessLabel";
            matlForProcessLabel.Size = new System.Drawing.Size(85, 12);
            this.PlatetoolTipController.SetSuperTip(matlForProcessLabel, null);
            matlForProcessLabel.TabIndex = 6;
            matlForProcessLabel.Text = "Matl For Process:";
            // 
            // matlForProcessTextEdit
            // 
            this.matlForProcessTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "MatlForProcess", true));
            this.matlForProcessTextEdit.Location = new System.Drawing.Point(318, 158);
            this.matlForProcessTextEdit.Name = "matlForProcessTextEdit";
            this.matlForProcessTextEdit.Size = new System.Drawing.Size(100, 21);
            this.matlForProcessTextEdit.TabIndex = 7;
            // 
            // suppRefLabel
            // 
            suppRefLabel.AutoSize = true;
            suppRefLabel.Location = new System.Drawing.Point(260, 120);
            suppRefLabel.Name = "suppRefLabel";
            suppRefLabel.Size = new System.Drawing.Size(52, 12);
            this.PlatetoolTipController.SetSuperTip(suppRefLabel, null);
            suppRefLabel.TabIndex = 8;
            suppRefLabel.Text = "Supp Ref:";
            // 
            // suppRefTextEdit
            // 
            this.suppRefTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "SuppRef", true));
            this.suppRefTextEdit.Location = new System.Drawing.Point(318, 117);
            this.suppRefTextEdit.Name = "suppRefTextEdit";
            this.suppRefTextEdit.Size = new System.Drawing.Size(100, 21);
            this.suppRefTextEdit.TabIndex = 9;
            // 
            // itemWidthLabel
            // 
            itemWidthLabel.AutoSize = true;
            itemWidthLabel.Location = new System.Drawing.Point(251, 206);
            itemWidthLabel.Name = "itemWidthLabel";
            itemWidthLabel.Size = new System.Drawing.Size(61, 12);
            this.PlatetoolTipController.SetSuperTip(itemWidthLabel, null);
            itemWidthLabel.TabIndex = 10;
            itemWidthLabel.Text = "Item Width:";
            // 
            // itemWidthSpinEdit
            // 
            this.itemWidthSpinEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "ItemWidth", true));
            this.itemWidthSpinEdit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.itemWidthSpinEdit.Location = new System.Drawing.Point(318, 203);
            this.itemWidthSpinEdit.Name = "itemWidthSpinEdit";
            this.itemWidthSpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.itemWidthSpinEdit.Size = new System.Drawing.Size(100, 21);
            this.itemWidthSpinEdit.TabIndex = 11;
            // 
            // MatlProcessDetailDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(itemWidthLabel);
            this.Controls.Add(this.itemWidthSpinEdit);
            this.Controls.Add(suppRefLabel);
            this.Controls.Add(this.suppRefTextEdit);
            this.Controls.Add(matlForProcessLabel);
            this.Controls.Add(this.matlForProcessTextEdit);
            this.Controls.Add(isMainLabel);
            this.Controls.Add(this.isMainCheckEdit);
            this.Name = "MatlProcessDetailDetailForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.isMainCheckEdit, 0);
            this.Controls.SetChildIndex(isMainLabel, 0);
            this.Controls.SetChildIndex(this.matlForProcessTextEdit, 0);
            this.Controls.SetChildIndex(matlForProcessLabel, 0);
            this.Controls.SetChildIndex(this.suppRefTextEdit, 0);
            this.Controls.SetChildIndex(suppRefLabel, 0);
            this.Controls.SetChildIndex(this.itemWidthSpinEdit, 0);
            this.Controls.SetChildIndex(itemWidthLabel, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.isMainCheckEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.matlForProcessTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.suppRefTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.itemWidthSpinEdit.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.CheckEdit isMainCheckEdit;
        private DevExpress.XtraEditors.TextEdit matlForProcessTextEdit;
        private DevExpress.XtraEditors.TextEdit suppRefTextEdit;
        private DevExpress.XtraEditors.SpinEdit itemWidthSpinEdit;
    }
}
