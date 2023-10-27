namespace PH.MIDc.UI
{
    partial class CustomMaterialElementDetail
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
            System.Windows.Forms.Label customNoLabel;
            System.Windows.Forms.Label elementNoLabel;
            System.Windows.Forms.Label hSCodeSeqLabel;
            System.Windows.Forms.Label remarkLabel;
            System.Windows.Forms.Label sortIdLabel;
            System.Windows.Forms.Label elementDescLabel1;
            this.customNoTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.hSCodeSeqTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.sortIdTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.elementDescTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.remarkMemoEdit = new DevExpress.XtraEditors.MemoEdit();
            this.elementNoLookUpEdit = new DevExpress.XtraEditors.LookUpEdit();
            customNoLabel = new System.Windows.Forms.Label();
            elementNoLabel = new System.Windows.Forms.Label();
            hSCodeSeqLabel = new System.Windows.Forms.Label();
            remarkLabel = new System.Windows.Forms.Label();
            sortIdLabel = new System.Windows.Forms.Label();
            elementDescLabel1 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.customNoTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.hSCodeSeqTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.sortIdTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.elementDescTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.remarkMemoEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.elementNoLookUpEdit.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.MIDc.BO.CustomMaterialElement);
            // 
            // customNoLabel
            // 
            customNoLabel.AutoSize = true;
            customNoLabel.Location = new System.Drawing.Point(123, 71);
            customNoLabel.Name = "customNoLabel";
            customNoLabel.Size = new System.Drawing.Size(65, 12);
            this.PlatetoolTipController.SetSuperTip(customNoLabel, null);
            customNoLabel.TabIndex = 4;
            customNoLabel.Text = "海關編碼 :";
            // 
            // elementNoLabel
            // 
            elementNoLabel.AutoSize = true;
            elementNoLabel.Location = new System.Drawing.Point(488, 71);
            elementNoLabel.Name = "elementNoLabel";
            elementNoLabel.Size = new System.Drawing.Size(65, 12);
            this.PlatetoolTipController.SetSuperTip(elementNoLabel, null);
            elementNoLabel.TabIndex = 6;
            elementNoLabel.Text = "要素編碼 :";
            // 
            // hSCodeSeqLabel
            // 
            hSCodeSeqLabel.AutoSize = true;
            hSCodeSeqLabel.Location = new System.Drawing.Point(147, 118);
            hSCodeSeqLabel.Name = "hSCodeSeqLabel";
            hSCodeSeqLabel.Size = new System.Drawing.Size(41, 12);
            this.PlatetoolTipController.SetSuperTip(hSCodeSeqLabel, null);
            hSCodeSeqLabel.TabIndex = 8;
            hSCodeSeqLabel.Text = "序號 :";
            // 
            // remarkLabel
            // 
            remarkLabel.AutoSize = true;
            remarkLabel.Location = new System.Drawing.Point(147, 179);
            remarkLabel.Name = "remarkLabel";
            remarkLabel.Size = new System.Drawing.Size(41, 12);
            this.PlatetoolTipController.SetSuperTip(remarkLabel, null);
            remarkLabel.TabIndex = 10;
            remarkLabel.Text = "備注 :";
            // 
            // sortIdLabel
            // 
            sortIdLabel.AutoSize = true;
            sortIdLabel.Location = new System.Drawing.Point(129, 298);
            sortIdLabel.Name = "sortIdLabel";
            sortIdLabel.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(sortIdLabel, null);
            sortIdLabel.TabIndex = 12;
            sortIdLabel.Text = "排序號 :";
            // 
            // elementDescLabel1
            // 
            elementDescLabel1.AutoSize = true;
            elementDescLabel1.Location = new System.Drawing.Point(488, 130);
            elementDescLabel1.Name = "elementDescLabel1";
            elementDescLabel1.Size = new System.Drawing.Size(65, 12);
            this.PlatetoolTipController.SetSuperTip(elementDescLabel1, null);
            elementDescLabel1.TabIndex = 16;
            elementDescLabel1.Text = "要素描述 :";
            // 
            // customNoTextEdit
            // 
            this.customNoTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "CustomNo", true));
            this.customNoTextEdit.Location = new System.Drawing.Point(194, 68);
            this.customNoTextEdit.Name = "customNoTextEdit";
            this.customNoTextEdit.Size = new System.Drawing.Size(197, 21);
            this.customNoTextEdit.TabIndex = 5;
            // 
            // hSCodeSeqTextEdit
            // 
            this.hSCodeSeqTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "HSCodeSeq", true));
            this.hSCodeSeqTextEdit.Location = new System.Drawing.Point(194, 115);
            this.hSCodeSeqTextEdit.Name = "hSCodeSeqTextEdit";
            this.hSCodeSeqTextEdit.Size = new System.Drawing.Size(197, 21);
            this.hSCodeSeqTextEdit.TabIndex = 9;
            // 
            // sortIdTextEdit
            // 
            this.sortIdTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "SortId", true));
            this.sortIdTextEdit.Location = new System.Drawing.Point(194, 295);
            this.sortIdTextEdit.Name = "sortIdTextEdit";
            this.sortIdTextEdit.Size = new System.Drawing.Size(100, 21);
            this.sortIdTextEdit.TabIndex = 13;
            // 
            // elementDescTextEdit
            // 
            this.elementDescTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.BindingSource, "ElementDesc", true));
            this.elementDescTextEdit.Location = new System.Drawing.Point(565, 121);
            this.elementDescTextEdit.Name = "elementDescTextEdit";
            this.elementDescTextEdit.Size = new System.Drawing.Size(241, 21);
            this.elementDescTextEdit.TabIndex = 17;
            // 
            // remarkMemoEdit
            // 
            this.remarkMemoEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Remark", true));
            this.remarkMemoEdit.Location = new System.Drawing.Point(194, 174);
            this.remarkMemoEdit.Name = "remarkMemoEdit";
            this.remarkMemoEdit.Size = new System.Drawing.Size(612, 96);
            this.remarkMemoEdit.TabIndex = 18;
            // 
            // elementNoLookUpEdit
            // 
            this.elementNoLookUpEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "ElementNo", true));
            this.elementNoLookUpEdit.Location = new System.Drawing.Point(565, 68);
            this.elementNoLookUpEdit.Name = "elementNoLookUpEdit";
            this.elementNoLookUpEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.elementNoLookUpEdit.Properties.NullText = "";
            this.elementNoLookUpEdit.Properties.PopupFormMinSize = new System.Drawing.Size(400, 0);
            this.elementNoLookUpEdit.Size = new System.Drawing.Size(241, 21);
            this.elementNoLookUpEdit.TabIndex = 19;
            this.elementNoLookUpEdit.EditValueChanged += new System.EventHandler(this.elementNoLookUpEdit_EditValueChanged);
            // 
            // CustomMaterialElementDetail
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.elementNoLookUpEdit);
            this.Controls.Add(this.remarkMemoEdit);
            this.Controls.Add(this.elementDescTextEdit);
            this.Controls.Add(elementDescLabel1);
            this.Controls.Add(sortIdLabel);
            this.Controls.Add(this.sortIdTextEdit);
            this.Controls.Add(remarkLabel);
            this.Controls.Add(hSCodeSeqLabel);
            this.Controls.Add(this.hSCodeSeqTextEdit);
            this.Controls.Add(elementNoLabel);
            this.Controls.Add(customNoLabel);
            this.Controls.Add(this.customNoTextEdit);
            this.Name = "CustomMaterialElementDetail";
            this.Size = new System.Drawing.Size(1000, 406);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.customNoTextEdit, 0);
            this.Controls.SetChildIndex(customNoLabel, 0);
            this.Controls.SetChildIndex(elementNoLabel, 0);
            this.Controls.SetChildIndex(this.hSCodeSeqTextEdit, 0);
            this.Controls.SetChildIndex(hSCodeSeqLabel, 0);
            this.Controls.SetChildIndex(remarkLabel, 0);
            this.Controls.SetChildIndex(this.sortIdTextEdit, 0);
            this.Controls.SetChildIndex(sortIdLabel, 0);
            this.Controls.SetChildIndex(elementDescLabel1, 0);
            this.Controls.SetChildIndex(this.elementDescTextEdit, 0);
            this.Controls.SetChildIndex(this.remarkMemoEdit, 0);
            this.Controls.SetChildIndex(this.elementNoLookUpEdit, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.customNoTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.hSCodeSeqTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.sortIdTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.elementDescTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.remarkMemoEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.elementNoLookUpEdit.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit customNoTextEdit;
        private DevExpress.XtraEditors.TextEdit hSCodeSeqTextEdit;
        private DevExpress.XtraEditors.TextEdit sortIdTextEdit;
        private DevExpress.XtraEditors.TextEdit elementDescTextEdit;
        private DevExpress.XtraEditors.MemoEdit remarkMemoEdit;
        private DevExpress.XtraEditors.LookUpEdit elementNoLookUpEdit;
    }
}
