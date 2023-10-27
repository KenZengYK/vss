namespace PH.MIDc.UI
{
    partial class CupDetailDetailForm
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
            System.Windows.Forms.Label suppRefLabel;
            System.Windows.Forms.Label cupLabel;
            System.Windows.Forms.Label descriptionLabel;
            this.suppRefTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.cupLookUpEdit = new DevExpress.XtraEditors.LookUpEdit();
            this.descriptionMemoEdit = new DevExpress.XtraEditors.MemoEdit();
            suppRefLabel = new System.Windows.Forms.Label();
            cupLabel = new System.Windows.Forms.Label();
            descriptionLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.suppRefTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cupLookUpEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.descriptionMemoEdit.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.MIDc.BO.CupDetail);
            // 
            // suppRefLabel
            // 
            suppRefLabel.AutoSize = true;
            suppRefLabel.Location = new System.Drawing.Point(138, 76);
            suppRefLabel.Name = "suppRefLabel";
            suppRefLabel.Size = new System.Drawing.Size(52, 12);
            this.PlatetoolTipController.SetSuperTip(suppRefLabel, null);
            suppRefLabel.TabIndex = 4;
            suppRefLabel.Text = "Supp Ref:";
            // 
            // cupLabel
            // 
            cupLabel.AutoSize = true;
            cupLabel.Location = new System.Drawing.Point(162, 120);
            cupLabel.Name = "cupLabel";
            cupLabel.Size = new System.Drawing.Size(28, 12);
            this.PlatetoolTipController.SetSuperTip(cupLabel, null);
            cupLabel.TabIndex = 9;
            cupLabel.Text = "Cup:";
            // 
            // descriptionLabel
            // 
            descriptionLabel.AutoSize = true;
            descriptionLabel.Location = new System.Drawing.Point(129, 164);
            descriptionLabel.Name = "descriptionLabel";
            descriptionLabel.Size = new System.Drawing.Size(61, 12);
            this.PlatetoolTipController.SetSuperTip(descriptionLabel, null);
            descriptionLabel.TabIndex = 10;
            descriptionLabel.Text = "Description:";
            // 
            // suppRefTextEdit
            // 
            this.suppRefTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "SuppRef", true));
            this.suppRefTextEdit.Location = new System.Drawing.Point(196, 73);
            this.suppRefTextEdit.Name = "suppRefTextEdit";
            this.suppRefTextEdit.Size = new System.Drawing.Size(130, 21);
            this.suppRefTextEdit.TabIndex = 5;
            // 
            // cupLookUpEdit
            // 
            this.cupLookUpEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Cup", true));
            this.cupLookUpEdit.Location = new System.Drawing.Point(196, 117);
            this.cupLookUpEdit.Name = "cupLookUpEdit";
            this.cupLookUpEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cupLookUpEdit.Properties.NullText = "";
            this.cupLookUpEdit.Size = new System.Drawing.Size(130, 21);
            this.cupLookUpEdit.TabIndex = 10;
            // 
            // descriptionMemoEdit
            // 
            this.descriptionMemoEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Description", true));
            this.descriptionMemoEdit.Location = new System.Drawing.Point(196, 161);
            this.descriptionMemoEdit.Name = "descriptionMemoEdit";
            this.descriptionMemoEdit.Size = new System.Drawing.Size(240, 206);
            this.descriptionMemoEdit.TabIndex = 11;
            // 
            // CupDetailDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(descriptionLabel);
            this.Controls.Add(this.descriptionMemoEdit);
            this.Controls.Add(cupLabel);
            this.Controls.Add(this.cupLookUpEdit);
            this.Controls.Add(suppRefLabel);
            this.Controls.Add(this.suppRefTextEdit);
            this.Name = "CupDetailDetailForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Load += new System.EventHandler(this.CupDetailDetailForm_Load);
            this.Controls.SetChildIndex(this.suppRefTextEdit, 0);
            this.Controls.SetChildIndex(suppRefLabel, 0);
            this.Controls.SetChildIndex(this.cupLookUpEdit, 0);
            this.Controls.SetChildIndex(cupLabel, 0);
            this.Controls.SetChildIndex(this.descriptionMemoEdit, 0);
            this.Controls.SetChildIndex(descriptionLabel, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.suppRefTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cupLookUpEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.descriptionMemoEdit.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit suppRefTextEdit;
        private DevExpress.XtraEditors.LookUpEdit cupLookUpEdit;
        private DevExpress.XtraEditors.MemoEdit descriptionMemoEdit;
    }
}
