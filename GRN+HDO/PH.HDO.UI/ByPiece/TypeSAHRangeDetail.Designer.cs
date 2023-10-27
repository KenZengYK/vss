namespace PH.HDO.UI.ByPiece
{
    partial class TypeSAHRangeDetail
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
            System.Windows.Forms.Label qtyFromLabel;
            System.Windows.Forms.Label qtyToLabel;
            System.Windows.Forms.Label sAHLabel;
            this.qtyFromSpinEdit = new DevExpress.XtraEditors.SpinEdit();
            this.qtyToSpinEdit = new DevExpress.XtraEditors.SpinEdit();
            this.sAHSpinEdit = new DevExpress.XtraEditors.SpinEdit();
            qtyFromLabel = new System.Windows.Forms.Label();
            qtyToLabel = new System.Windows.Forms.Label();
            sAHLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.qtyFromSpinEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.qtyToSpinEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.sAHSpinEdit.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.PHGDB2.BO.TypeSAHRange);
            // 
            // qtyFromLabel
            // 
            qtyFromLabel.AutoSize = true;
            qtyFromLabel.Location = new System.Drawing.Point(132, 90);
            qtyFromLabel.Name = "qtyFromLabel";
            qtyFromLabel.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(qtyFromLabel, null);
            qtyFromLabel.TabIndex = 4;
            qtyFromLabel.Text = "Qty From:";
            // 
            // qtyToLabel
            // 
            qtyToLabel.AutoSize = true;
            qtyToLabel.Location = new System.Drawing.Point(132, 136);
            qtyToLabel.Name = "qtyToLabel";
            qtyToLabel.Size = new System.Drawing.Size(41, 12);
            this.PlatetoolTipController.SetSuperTip(qtyToLabel, null);
            qtyToLabel.TabIndex = 6;
            qtyToLabel.Text = "Qty To:";
            // 
            // sAHLabel
            // 
            sAHLabel.AutoSize = true;
            sAHLabel.Location = new System.Drawing.Point(132, 181);
            sAHLabel.Name = "sAHLabel";
            sAHLabel.Size = new System.Drawing.Size(30, 12);
            this.PlatetoolTipController.SetSuperTip(sAHLabel, null);
            sAHLabel.TabIndex = 8;
            sAHLabel.Text = "SAH:";
            // 
            // qtyFromSpinEdit
            // 
            this.qtyFromSpinEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "QtyFrom", true));
            this.qtyFromSpinEdit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.qtyFromSpinEdit.Location = new System.Drawing.Point(191, 87);
            this.qtyFromSpinEdit.Name = "qtyFromSpinEdit";
            this.qtyFromSpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.qtyFromSpinEdit.Size = new System.Drawing.Size(100, 21);
            this.qtyFromSpinEdit.TabIndex = 5;
            // 
            // qtyToSpinEdit
            // 
            this.qtyToSpinEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "QtyTo", true));
            this.qtyToSpinEdit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.qtyToSpinEdit.Location = new System.Drawing.Point(191, 131);
            this.qtyToSpinEdit.Name = "qtyToSpinEdit";
            this.qtyToSpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.qtyToSpinEdit.Size = new System.Drawing.Size(100, 21);
            this.qtyToSpinEdit.TabIndex = 7;
            // 
            // sAHSpinEdit
            // 
            this.sAHSpinEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "SAH", true));
            this.sAHSpinEdit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.sAHSpinEdit.Location = new System.Drawing.Point(191, 178);
            this.sAHSpinEdit.Name = "sAHSpinEdit";
            this.sAHSpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.sAHSpinEdit.Size = new System.Drawing.Size(100, 21);
            this.sAHSpinEdit.TabIndex = 9;
            // 
            // TypeSAHRangeDetail
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(sAHLabel);
            this.Controls.Add(this.sAHSpinEdit);
            this.Controls.Add(qtyToLabel);
            this.Controls.Add(this.qtyToSpinEdit);
            this.Controls.Add(qtyFromLabel);
            this.Controls.Add(this.qtyFromSpinEdit);
            this.Name = "TypeSAHRangeDetail";
            this.Size = new System.Drawing.Size(571, 403);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.qtyFromSpinEdit, 0);
            this.Controls.SetChildIndex(qtyFromLabel, 0);
            this.Controls.SetChildIndex(this.qtyToSpinEdit, 0);
            this.Controls.SetChildIndex(qtyToLabel, 0);
            this.Controls.SetChildIndex(this.sAHSpinEdit, 0);
            this.Controls.SetChildIndex(sAHLabel, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.qtyFromSpinEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.qtyToSpinEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.sAHSpinEdit.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.SpinEdit qtyFromSpinEdit;
        private DevExpress.XtraEditors.SpinEdit qtyToSpinEdit;
        private DevExpress.XtraEditors.SpinEdit sAHSpinEdit;
    }
}
