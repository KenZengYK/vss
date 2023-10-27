namespace PH.MobileQC.UI
{
    partial class DefectCauseDetailForm
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
            this.Defect_SpecLabel = new DevExpress.XtraEditors.LabelControl();
            this.Defect_CodeLabel = new DevExpress.XtraEditors.LabelControl();
            this.Defect_TypeLabel = new DevExpress.XtraEditors.LabelControl();
            this.edtDefect_Code = new DevExpress.XtraEditors.TextEdit();
            this.edtDefect_Spec = new DevExpress.XtraEditors.MemoEdit();
            this.edtDefect_Type = new DevExpress.XtraEditors.TextEdit();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.memoEdit1 = new DevExpress.XtraEditors.MemoEdit();
            this.memoEdit2 = new DevExpress.XtraEditors.MemoEdit();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtDefect_Code.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtDefect_Spec.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtDefect_Type.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.memoEdit1.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.MobileQC.BO.QC_Defect);
            // 
            // Defect_SpecLabel
            // 
            this.Defect_SpecLabel.Appearance.Options.UseTextOptions = true;
            this.Defect_SpecLabel.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.Defect_SpecLabel.Appearance.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.Defect_SpecLabel.AutoEllipsis = true;
            this.Defect_SpecLabel.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.Defect_SpecLabel.Location = new System.Drawing.Point(30, 123);
            this.Defect_SpecLabel.Name = "Defect_SpecLabel";
            this.Defect_SpecLabel.Size = new System.Drawing.Size(119, 14);
            this.Defect_SpecLabel.TabIndex = 42;
            this.Defect_SpecLabel.Text = "Defect Cause(CN)";
            // 
            // Defect_CodeLabel
            // 
            this.Defect_CodeLabel.Appearance.Options.UseTextOptions = true;
            this.Defect_CodeLabel.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.Defect_CodeLabel.Appearance.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.Defect_CodeLabel.AutoEllipsis = true;
            this.Defect_CodeLabel.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.Defect_CodeLabel.Location = new System.Drawing.Point(30, 91);
            this.Defect_CodeLabel.Name = "Defect_CodeLabel";
            this.Defect_CodeLabel.Size = new System.Drawing.Size(119, 14);
            this.Defect_CodeLabel.TabIndex = 41;
            this.Defect_CodeLabel.Text = "Defect Cause Code";
            // 
            // Defect_TypeLabel
            // 
            this.Defect_TypeLabel.Appearance.Options.UseTextOptions = true;
            this.Defect_TypeLabel.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.Defect_TypeLabel.Appearance.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.Defect_TypeLabel.AutoEllipsis = true;
            this.Defect_TypeLabel.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.Defect_TypeLabel.Location = new System.Drawing.Point(30, 53);
            this.Defect_TypeLabel.Name = "Defect_TypeLabel";
            this.Defect_TypeLabel.Size = new System.Drawing.Size(119, 14);
            this.Defect_TypeLabel.TabIndex = 40;
            this.Defect_TypeLabel.Text = "Defect Type";
            this.Defect_TypeLabel.Visible = false;
            // 
            // edtDefect_Code
            // 
            this.edtDefect_Code.AllowDrop = true;
            this.edtDefect_Code.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Defect_Code", true));
            this.edtDefect_Code.Location = new System.Drawing.Point(169, 88);
            this.edtDefect_Code.Name = "edtDefect_Code";
            this.edtDefect_Code.Size = new System.Drawing.Size(231, 21);
            this.edtDefect_Code.TabIndex = 43;
            this.edtDefect_Code.Tag = "Defect_Code";
            // 
            // edtDefect_Spec
            // 
            this.edtDefect_Spec.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Defect_Spec", true));
            this.edtDefect_Spec.Location = new System.Drawing.Point(170, 120);
            this.edtDefect_Spec.Name = "edtDefect_Spec";
            this.edtDefect_Spec.Size = new System.Drawing.Size(231, 96);
            this.edtDefect_Spec.TabIndex = 44;
            this.edtDefect_Spec.Tag = "Defect_Spec";
            // 
            // edtDefect_Type
            // 
            this.edtDefect_Type.AllowDrop = true;
            this.edtDefect_Type.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Defect_Type", true));
            this.edtDefect_Type.Location = new System.Drawing.Point(169, 50);
            this.edtDefect_Type.Name = "edtDefect_Type";
            this.edtDefect_Type.Properties.ReadOnly = true;
            this.edtDefect_Type.Size = new System.Drawing.Size(231, 21);
            this.edtDefect_Type.TabIndex = 46;
            this.edtDefect_Type.Tag = "";
            this.edtDefect_Type.Visible = false;
            // 
            // labelControl1
            // 
            this.labelControl1.Appearance.Options.UseTextOptions = true;
            this.labelControl1.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.labelControl1.Appearance.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.labelControl1.AutoEllipsis = true;
            this.labelControl1.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.labelControl1.Location = new System.Drawing.Point(30, 230);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(119, 14);
            this.labelControl1.TabIndex = 47;
            this.labelControl1.Text = "Defect Cause(EN)";
            // 
            // labelControl2
            // 
            this.labelControl2.Appearance.Options.UseTextOptions = true;
            this.labelControl2.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.labelControl2.Appearance.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.labelControl2.AutoEllipsis = true;
            this.labelControl2.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.labelControl2.Location = new System.Drawing.Point(30, 341);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(119, 14);
            this.labelControl2.TabIndex = 49;
            this.labelControl2.Text = "Defect Cause(TH)";
            // 
            // memoEdit1
            // 
            this.memoEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Desc_EN", true));
            this.memoEdit1.Location = new System.Drawing.Point(169, 228);
            this.memoEdit1.Name = "memoEdit1";
            this.memoEdit1.Size = new System.Drawing.Size(231, 96);
            this.memoEdit1.TabIndex = 51;
            this.memoEdit1.Tag = "Defect_Spec";
            // 
            // memoEdit2
            // 
            this.memoEdit2.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Desc_TH", true));
            this.memoEdit2.Location = new System.Drawing.Point(169, 338);
            this.memoEdit2.Name = "memoEdit2";
            this.memoEdit2.Size = new System.Drawing.Size(231, 96);
            this.memoEdit2.TabIndex = 52;
            this.memoEdit2.Tag = "Defect_Spec";
            // 
            // DefectCauseDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.memoEdit2);
            this.Controls.Add(this.memoEdit1);
            this.Controls.Add(this.labelControl2);
            this.Controls.Add(this.labelControl1);
            this.Controls.Add(this.edtDefect_Type);
            this.Controls.Add(this.edtDefect_Spec);
            this.Controls.Add(this.edtDefect_Code);
            this.Controls.Add(this.Defect_SpecLabel);
            this.Controls.Add(this.Defect_CodeLabel);
            this.Controls.Add(this.Defect_TypeLabel);
            this.Name = "DefectCauseDetailForm";
            this.Size = new System.Drawing.Size(1000, 550);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Load += new System.EventHandler(this.DefectDetail_Load);
            this.Controls.SetChildIndex(this.Defect_TypeLabel, 0);
            this.Controls.SetChildIndex(this.Defect_CodeLabel, 0);
            this.Controls.SetChildIndex(this.Defect_SpecLabel, 0);
            this.Controls.SetChildIndex(this.edtDefect_Code, 0);
            this.Controls.SetChildIndex(this.edtDefect_Spec, 0);
            this.Controls.SetChildIndex(this.edtDefect_Type, 0);
            this.Controls.SetChildIndex(this.labelControl1, 0);
            this.Controls.SetChildIndex(this.labelControl2, 0);
            this.Controls.SetChildIndex(this.memoEdit1, 0);
            this.Controls.SetChildIndex(this.memoEdit2, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtDefect_Code.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtDefect_Spec.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtDefect_Type.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.memoEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.memoEdit2.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.LabelControl Defect_SpecLabel;
        private DevExpress.XtraEditors.LabelControl Defect_CodeLabel;
        private DevExpress.XtraEditors.LabelControl Defect_TypeLabel;
        private DevExpress.XtraEditors.TextEdit edtDefect_Code;
        private DevExpress.XtraEditors.MemoEdit edtDefect_Spec;
        private DevExpress.XtraEditors.TextEdit edtDefect_Type;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.MemoEdit memoEdit1;
        private DevExpress.XtraEditors.MemoEdit memoEdit2;
    }
}
