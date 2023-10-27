namespace PH.HDO.UI.ByPiece
{
    partial class EmpDetailForm
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
            System.Windows.Forms.Label empIdLabel;
            System.Windows.Forms.Label empNameLabel;
            System.Windows.Forms.Label remarkLabel;
            this.empIdTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.empNameTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.remarkTextEdit = new DevExpress.XtraEditors.TextEdit();
            empIdLabel = new System.Windows.Forms.Label();
            empNameLabel = new System.Windows.Forms.Label();
            remarkLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.empIdTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.empNameTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.remarkTextEdit.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.PHGDB2.BO.ByPiece_Employee);
            this.BindingSource.CurrentChanged += new System.EventHandler(this.BindingSource_CurrentChanged);
            // 
            // empIdLabel
            // 
            empIdLabel.AutoSize = true;
            empIdLabel.Location = new System.Drawing.Point(113, 99);
            empIdLabel.Name = "empIdLabel";
            empIdLabel.Size = new System.Drawing.Size(35, 12);
            this.PlatetoolTipController.SetSuperTip(empIdLabel, null);
            empIdLabel.TabIndex = 4;
            empIdLabel.Text = "工號:";
            // 
            // empNameLabel
            // 
            empNameLabel.AutoSize = true;
            empNameLabel.Location = new System.Drawing.Point(113, 155);
            empNameLabel.Name = "empNameLabel";
            empNameLabel.Size = new System.Drawing.Size(35, 12);
            this.PlatetoolTipController.SetSuperTip(empNameLabel, null);
            empNameLabel.TabIndex = 6;
            empNameLabel.Text = "姓名:";
            // 
            // remarkLabel
            // 
            remarkLabel.AutoSize = true;
            remarkLabel.Location = new System.Drawing.Point(113, 222);
            remarkLabel.Name = "remarkLabel";
            remarkLabel.Size = new System.Drawing.Size(35, 12);
            this.PlatetoolTipController.SetSuperTip(remarkLabel, null);
            remarkLabel.TabIndex = 8;
            remarkLabel.Text = "備注:";
            // 
            // empIdTextEdit
            // 
            this.empIdTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "EmpId", true));
            this.empIdTextEdit.Location = new System.Drawing.Point(166, 96);
            this.empIdTextEdit.Name = "empIdTextEdit";
            this.empIdTextEdit.Size = new System.Drawing.Size(100, 21);
            this.empIdTextEdit.TabIndex = 5;
            // 
            // empNameTextEdit
            // 
            this.empNameTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "EmpName", true));
            this.empNameTextEdit.Location = new System.Drawing.Point(166, 152);
            this.empNameTextEdit.Name = "empNameTextEdit";
            this.empNameTextEdit.Size = new System.Drawing.Size(125, 21);
            this.empNameTextEdit.TabIndex = 7;
            // 
            // remarkTextEdit
            // 
            this.remarkTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Remark", true));
            this.remarkTextEdit.Location = new System.Drawing.Point(166, 219);
            this.remarkTextEdit.Name = "remarkTextEdit";
            this.remarkTextEdit.Size = new System.Drawing.Size(230, 21);
            this.remarkTextEdit.TabIndex = 9;
            // 
            // EmpDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(remarkLabel);
            this.Controls.Add(this.remarkTextEdit);
            this.Controls.Add(empNameLabel);
            this.Controls.Add(this.empNameTextEdit);
            this.Controls.Add(empIdLabel);
            this.Controls.Add(this.empIdTextEdit);
            this.Name = "EmpDetailForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.empIdTextEdit, 0);
            this.Controls.SetChildIndex(empIdLabel, 0);
            this.Controls.SetChildIndex(this.empNameTextEdit, 0);
            this.Controls.SetChildIndex(empNameLabel, 0);
            this.Controls.SetChildIndex(this.remarkTextEdit, 0);
            this.Controls.SetChildIndex(remarkLabel, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.empIdTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.empNameTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.remarkTextEdit.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit empIdTextEdit;
        private DevExpress.XtraEditors.TextEdit empNameTextEdit;
        private DevExpress.XtraEditors.TextEdit remarkTextEdit;
    }
}
