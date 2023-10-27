namespace PH.LWPM.UI.MC
{
    partial class ClassDetailEditFrm
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
            System.Windows.Forms.Label sortIDLabel;
            System.Windows.Forms.Label name_enLabel;
            System.Windows.Forms.Label name_cnLabel;
            this.sortIDTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.name_enTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.name_cnTextEdit = new DevExpress.XtraEditors.TextEdit();
            sortIDLabel = new System.Windows.Forms.Label();
            name_enLabel = new System.Windows.Forms.Label();
            name_cnLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.sortIDTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.name_enTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.name_cnTextEdit.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.LWPM.BO.McClassDetail);
            // 
            // sortIDLabel
            // 
            sortIDLabel.AutoSize = true;
            sortIDLabel.Location = new System.Drawing.Point(103, 82);
            sortIDLabel.Name = "sortIDLabel";
            sortIDLabel.Size = new System.Drawing.Size(59, 12);
            this.PlatetoolTipController.SetSuperTip(sortIDLabel, null);
            sortIDLabel.TabIndex = 4;
            sortIDLabel.Text = "Seq No. :";
            // 
            // name_enLabel
            // 
            name_enLabel.AutoSize = true;
            name_enLabel.Location = new System.Drawing.Point(55, 126);
            name_enLabel.Name = "name_enLabel";
            name_enLabel.Size = new System.Drawing.Size(107, 12);
            this.PlatetoolTipController.SetSuperTip(name_enLabel, null);
            name_enLabel.TabIndex = 6;
            name_enLabel.Text = "Description(Eng):";
            // 
            // name_cnLabel
            // 
            name_cnLabel.AutoSize = true;
            name_cnLabel.Location = new System.Drawing.Point(43, 174);
            name_cnLabel.Name = "name_cnLabel";
            name_cnLabel.Size = new System.Drawing.Size(119, 12);
            this.PlatetoolTipController.SetSuperTip(name_cnLabel, null);
            name_cnLabel.TabIndex = 8;
            name_cnLabel.Text = "Description(Local):";
            // 
            // sortIDTextEdit
            // 
            this.sortIDTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "SortID", true));
            this.sortIDTextEdit.Location = new System.Drawing.Point(174, 77);
            this.sortIDTextEdit.Name = "sortIDTextEdit";
            this.sortIDTextEdit.Size = new System.Drawing.Size(100, 21);
            this.sortIDTextEdit.TabIndex = 5;
            // 
            // name_enTextEdit
            // 
            this.name_enTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Name_en", true));
            this.name_enTextEdit.Location = new System.Drawing.Point(174, 121);
            this.name_enTextEdit.Name = "name_enTextEdit";
            this.name_enTextEdit.Size = new System.Drawing.Size(397, 21);
            this.name_enTextEdit.TabIndex = 7;
            // 
            // name_cnTextEdit
            // 
            this.name_cnTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Name_cn", true));
            this.name_cnTextEdit.Location = new System.Drawing.Point(174, 165);
            this.name_cnTextEdit.Name = "name_cnTextEdit";
            this.name_cnTextEdit.Size = new System.Drawing.Size(397, 21);
            this.name_cnTextEdit.TabIndex = 9;
            // 
            // ClassDetailEditFrm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(name_cnLabel);
            this.Controls.Add(this.name_cnTextEdit);
            this.Controls.Add(name_enLabel);
            this.Controls.Add(this.name_enTextEdit);
            this.Controls.Add(sortIDLabel);
            this.Controls.Add(this.sortIDTextEdit);
            this.Name = "ClassDetailEditFrm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.sortIDTextEdit, 0);
            this.Controls.SetChildIndex(sortIDLabel, 0);
            this.Controls.SetChildIndex(this.name_enTextEdit, 0);
            this.Controls.SetChildIndex(name_enLabel, 0);
            this.Controls.SetChildIndex(this.name_cnTextEdit, 0);
            this.Controls.SetChildIndex(name_cnLabel, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.sortIDTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.name_enTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.name_cnTextEdit.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit sortIDTextEdit;
        private DevExpress.XtraEditors.TextEdit name_enTextEdit;
        private DevExpress.XtraEditors.TextEdit name_cnTextEdit;
    }
}
