namespace PH.MobileQC.UI
{
    partial class DefectPostionDetailForm
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
            this.gpbProdApp = new System.Windows.Forms.GroupBox();
            this.chkItemP = new DevExpress.XtraEditors.CheckEdit();
            this.chkItemU = new DevExpress.XtraEditors.CheckEdit();
            this.chkItemK = new DevExpress.XtraEditors.CheckEdit();
            this.chkItemB = new DevExpress.XtraEditors.CheckEdit();
            this.memoEdit1 = new DevExpress.XtraEditors.MemoEdit();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.memoEdit2 = new DevExpress.XtraEditors.MemoEdit();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtDefect_Code.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtDefect_Spec.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtDefect_Type.Properties)).BeginInit();
            this.gpbProdApp.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.chkItemP.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkItemU.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkItemK.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkItemB.Properties)).BeginInit();
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
            this.Defect_SpecLabel.Location = new System.Drawing.Point(44, 146);
            this.Defect_SpecLabel.Name = "Defect_SpecLabel";
            this.Defect_SpecLabel.Size = new System.Drawing.Size(119, 14);
            this.Defect_SpecLabel.TabIndex = 42;
            this.Defect_SpecLabel.Text = "description(CN)";
            // 
            // Defect_CodeLabel
            // 
            this.Defect_CodeLabel.Appearance.Options.UseTextOptions = true;
            this.Defect_CodeLabel.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.Defect_CodeLabel.Appearance.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.Defect_CodeLabel.AutoEllipsis = true;
            this.Defect_CodeLabel.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.Defect_CodeLabel.Location = new System.Drawing.Point(44, 72);
            this.Defect_CodeLabel.Name = "Defect_CodeLabel";
            this.Defect_CodeLabel.Size = new System.Drawing.Size(119, 14);
            this.Defect_CodeLabel.TabIndex = 41;
            this.Defect_CodeLabel.Text = "Defect Position Code";
            // 
            // Defect_TypeLabel
            // 
            this.Defect_TypeLabel.Appearance.Options.UseTextOptions = true;
            this.Defect_TypeLabel.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.Defect_TypeLabel.Appearance.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.Defect_TypeLabel.AutoEllipsis = true;
            this.Defect_TypeLabel.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.Defect_TypeLabel.Location = new System.Drawing.Point(443, 68);
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
            this.edtDefect_Code.Location = new System.Drawing.Point(169, 69);
            this.edtDefect_Code.Name = "edtDefect_Code";
            this.edtDefect_Code.Size = new System.Drawing.Size(231, 21);
            this.edtDefect_Code.TabIndex = 43;
            this.edtDefect_Code.Tag = "Defect_Code";
            // 
            // edtDefect_Spec
            // 
            this.edtDefect_Spec.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Defect_Spec", true));
            this.edtDefect_Spec.Location = new System.Drawing.Point(169, 108);
            this.edtDefect_Spec.Name = "edtDefect_Spec";
            this.edtDefect_Spec.Size = new System.Drawing.Size(231, 96);
            this.edtDefect_Spec.TabIndex = 44;
            this.edtDefect_Spec.Tag = "Defect_Spec";
            // 
            // edtDefect_Type
            // 
            this.edtDefect_Type.AllowDrop = true;
            this.edtDefect_Type.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Defect_Type", true));
            this.edtDefect_Type.Location = new System.Drawing.Point(568, 65);
            this.edtDefect_Type.Name = "edtDefect_Type";
            this.edtDefect_Type.Properties.ReadOnly = true;
            this.edtDefect_Type.Size = new System.Drawing.Size(231, 21);
            this.edtDefect_Type.TabIndex = 46;
            this.edtDefect_Type.Tag = "";
            this.edtDefect_Type.Visible = false;
            // 
            // gpbProdApp
            // 
            this.gpbProdApp.Controls.Add(this.chkItemP);
            this.gpbProdApp.Controls.Add(this.chkItemU);
            this.gpbProdApp.Controls.Add(this.chkItemK);
            this.gpbProdApp.Controls.Add(this.chkItemB);
            this.gpbProdApp.Location = new System.Drawing.Point(169, 400);
            this.gpbProdApp.Name = "gpbProdApp";
            this.gpbProdApp.Size = new System.Drawing.Size(365, 62);
            this.PlatetoolTipController.SetSuperTip(this.gpbProdApp, null);
            this.gpbProdApp.TabIndex = 52;
            this.gpbProdApp.TabStop = false;
            this.gpbProdApp.Text = "Product Application";
            // 
            // chkItemP
            // 
            this.chkItemP.Location = new System.Drawing.Point(177, 25);
            this.chkItemP.Name = "chkItemP";
            this.chkItemP.Properties.Caption = "C/P";
            this.chkItemP.Size = new System.Drawing.Size(61, 19);
            this.chkItemP.TabIndex = 51;
            // 
            // chkItemU
            // 
            this.chkItemU.Location = new System.Drawing.Point(126, 25);
            this.chkItemU.Name = "chkItemU";
            this.chkItemU.Properties.Caption = "U";
            this.chkItemU.Size = new System.Drawing.Size(42, 19);
            this.chkItemU.TabIndex = 50;
            // 
            // chkItemK
            // 
            this.chkItemK.Location = new System.Drawing.Point(76, 25);
            this.chkItemK.Name = "chkItemK";
            this.chkItemK.Properties.Caption = "K";
            this.chkItemK.Size = new System.Drawing.Size(34, 19);
            this.chkItemK.TabIndex = 49;
            // 
            // chkItemB
            // 
            this.chkItemB.Location = new System.Drawing.Point(32, 25);
            this.chkItemB.Name = "chkItemB";
            this.chkItemB.Properties.Caption = "B";
            this.chkItemB.Size = new System.Drawing.Size(37, 19);
            this.chkItemB.TabIndex = 47;
            // 
            // memoEdit1
            // 
            this.memoEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Desc_EN", true));
            this.memoEdit1.Location = new System.Drawing.Point(169, 224);
            this.memoEdit1.Name = "memoEdit1";
            this.memoEdit1.Size = new System.Drawing.Size(231, 52);
            this.memoEdit1.TabIndex = 54;
            this.memoEdit1.Tag = "Defect_Spec";
            // 
            // labelControl1
            // 
            this.labelControl1.Appearance.Options.UseTextOptions = true;
            this.labelControl1.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.labelControl1.Appearance.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.labelControl1.AutoEllipsis = true;
            this.labelControl1.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.labelControl1.Location = new System.Drawing.Point(44, 241);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(119, 14);
            this.labelControl1.TabIndex = 53;
            this.labelControl1.Text = "description(En)";
            // 
            // memoEdit2
            // 
            this.memoEdit2.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Desc_TH", true));
            this.memoEdit2.Location = new System.Drawing.Point(169, 304);
            this.memoEdit2.Name = "memoEdit2";
            this.memoEdit2.Properties.Appearance.Font = new System.Drawing.Font("SutonnyOMJ", 9F);
            this.memoEdit2.Properties.Appearance.Options.UseFont = true;
            this.memoEdit2.Size = new System.Drawing.Size(231, 52);
            this.memoEdit2.TabIndex = 56;
            this.memoEdit2.Tag = "Defect_Spec";
            // 
            // labelControl2
            // 
            this.labelControl2.Appearance.Options.UseTextOptions = true;
            this.labelControl2.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.labelControl2.Appearance.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.labelControl2.AutoEllipsis = true;
            this.labelControl2.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.labelControl2.Location = new System.Drawing.Point(44, 326);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(119, 14);
            this.labelControl2.TabIndex = 55;
            this.labelControl2.Text = "description(BD)";
            // 
            // DefectPostionDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.memoEdit2);
            this.Controls.Add(this.labelControl2);
            this.Controls.Add(this.memoEdit1);
            this.Controls.Add(this.labelControl1);
            this.Controls.Add(this.gpbProdApp);
            this.Controls.Add(this.edtDefect_Type);
            this.Controls.Add(this.edtDefect_Spec);
            this.Controls.Add(this.edtDefect_Code);
            this.Controls.Add(this.Defect_SpecLabel);
            this.Controls.Add(this.Defect_CodeLabel);
            this.Controls.Add(this.Defect_TypeLabel);
            this.Name = "DefectPostionDetailForm";
            this.Size = new System.Drawing.Size(823, 574);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Load += new System.EventHandler(this.DefectDetail_Load);
            this.Controls.SetChildIndex(this.Defect_TypeLabel, 0);
            this.Controls.SetChildIndex(this.Defect_CodeLabel, 0);
            this.Controls.SetChildIndex(this.Defect_SpecLabel, 0);
            this.Controls.SetChildIndex(this.edtDefect_Code, 0);
            this.Controls.SetChildIndex(this.edtDefect_Spec, 0);
            this.Controls.SetChildIndex(this.edtDefect_Type, 0);
            this.Controls.SetChildIndex(this.gpbProdApp, 0);
            this.Controls.SetChildIndex(this.labelControl1, 0);
            this.Controls.SetChildIndex(this.memoEdit1, 0);
            this.Controls.SetChildIndex(this.labelControl2, 0);
            this.Controls.SetChildIndex(this.memoEdit2, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtDefect_Code.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtDefect_Spec.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtDefect_Type.Properties)).EndInit();
            this.gpbProdApp.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.chkItemP.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkItemU.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkItemK.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkItemB.Properties)).EndInit();
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
        private System.Windows.Forms.GroupBox gpbProdApp;
        private DevExpress.XtraEditors.CheckEdit chkItemU;
        private DevExpress.XtraEditors.CheckEdit chkItemK;
        private DevExpress.XtraEditors.CheckEdit chkItemB;
        private DevExpress.XtraEditors.CheckEdit chkItemP;
        private DevExpress.XtraEditors.MemoEdit memoEdit1;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.MemoEdit memoEdit2;
        private DevExpress.XtraEditors.LabelControl labelControl2;
    }
}
