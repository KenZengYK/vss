namespace PH.MIDc.UI
{
    partial class TechnicalInformationDetailForm
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Component Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.textEdit1 = new DevExpress.XtraEditors.TextEdit();
            this.technicalInformationBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.textEdit3 = new DevExpress.XtraEditors.TextEdit();
            this.textEdit6 = new DevExpress.XtraEditors.TextEdit();
            this.memoEdit1 = new DevExpress.XtraEditors.MemoEdit();
            this.textEdit7 = new DevExpress.XtraEditors.TextEdit();
            this.textEdit8 = new DevExpress.XtraEditors.TextEdit();
            this.lookUpEdit1 = new DevExpress.XtraEditors.ComboBoxEdit();
            this.lookUpEdit2 = new DevExpress.XtraEditors.ComboBoxEdit();
            this.RemarkLabel = new System.Windows.Forms.Label();
            this.SpecifyMethodLabel = new System.Windows.Forms.Label();
            this.GradeLabel = new System.Windows.Forms.Label();
            this.TestMethodLabel = new System.Windows.Forms.Label();
            this.TestTypeLabel = new System.Windows.Forms.Label();
            this.ColorCategoryLabel = new System.Windows.Forms.Label();
            this.ColorLabel = new System.Windows.Forms.Label();
            this.SuppRefLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.technicalInformationBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit3.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit6.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.memoEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit7.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit8.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.lookUpEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.lookUpEdit2.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.MIDc.BO.TechnicalInformation);
            // 
            // textEdit1
            // 
            this.textEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "SuppRef", true));
            this.textEdit1.Location = new System.Drawing.Point(170, 32);
            this.textEdit1.Name = "textEdit1";
            this.textEdit1.Properties.ReadOnly = true;
            this.textEdit1.Size = new System.Drawing.Size(100, 21);
            this.textEdit1.TabIndex = 13;
            this.textEdit1.Tag = "SuppRef";
            // 
            // technicalInformationBindingSource
            // 
            this.technicalInformationBindingSource.DataSource = typeof(PH.MIDc.BO.TechnicalInformation);
            // 
            // textEdit3
            // 
            this.textEdit3.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "TestType", true));
            this.textEdit3.Location = new System.Drawing.Point(170, 108);
            this.textEdit3.Name = "textEdit3";
            this.textEdit3.Size = new System.Drawing.Size(100, 21);
            this.textEdit3.TabIndex = 17;
            this.textEdit3.Tag = "TestType";
            // 
            // textEdit6
            // 
            this.textEdit6.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "SpecifyMethod", true));
            this.textEdit6.Location = new System.Drawing.Point(170, 192);
            this.textEdit6.Name = "textEdit6";
            this.textEdit6.Size = new System.Drawing.Size(100, 21);
            this.textEdit6.TabIndex = 20;
            this.textEdit6.Tag = "SpecifyMethod";
            // 
            // memoEdit1
            // 
            this.memoEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Remark", true));
            this.memoEdit1.Location = new System.Drawing.Point(170, 219);
            this.memoEdit1.Name = "memoEdit1";
            this.memoEdit1.Size = new System.Drawing.Size(212, 96);
            this.memoEdit1.TabIndex = 21;
            this.memoEdit1.Tag = "Remark";
            // 
            // textEdit7
            // 
            this.textEdit7.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Color", true));
            this.textEdit7.Location = new System.Drawing.Point(170, 56);
            this.textEdit7.Name = "textEdit7";
            this.textEdit7.Properties.ReadOnly = true;
            this.textEdit7.Size = new System.Drawing.Size(100, 21);
            this.textEdit7.TabIndex = 13;
            this.textEdit7.Tag = "Color";
            // 
            // textEdit8
            // 
            this.textEdit8.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "ColorCategory", true));
            this.textEdit8.Location = new System.Drawing.Point(170, 81);
            this.textEdit8.Name = "textEdit8";
            this.textEdit8.Properties.ReadOnly = true;
            this.textEdit8.Size = new System.Drawing.Size(100, 21);
            this.textEdit8.TabIndex = 13;
            this.textEdit8.Tag = "ColorCategory";
            // 
            // lookUpEdit1
            // 
            this.lookUpEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Grade", true));
            this.lookUpEdit1.Location = new System.Drawing.Point(170, 165);
            this.lookUpEdit1.Name = "lookUpEdit1";
            this.lookUpEdit1.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.lookUpEdit1.Size = new System.Drawing.Size(100, 21);
            this.lookUpEdit1.TabIndex = 75;
            this.lookUpEdit1.Tag = "Grade";
            // 
            // lookUpEdit2
            // 
            this.lookUpEdit2.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "TestMethod", true));
            this.lookUpEdit2.Location = new System.Drawing.Point(170, 138);
            this.lookUpEdit2.Name = "lookUpEdit2";
            this.lookUpEdit2.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.lookUpEdit2.Size = new System.Drawing.Size(100, 21);
            this.lookUpEdit2.TabIndex = 75;
            this.lookUpEdit2.Tag = "TestMethod";
            // 
            // RemarkLabel
            // 
            this.RemarkLabel.Location = new System.Drawing.Point(23, 221);
            this.RemarkLabel.Name = "RemarkLabel";
            this.RemarkLabel.Size = new System.Drawing.Size(136, 21);
            //this.PlatetoolTipController.SetSuperTip(this.RemarkLabel, null);
            this.RemarkLabel.TabIndex = 84;
            this.RemarkLabel.Text = "Remark";
            this.RemarkLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // SpecifyMethodLabel
            // 
            this.SpecifyMethodLabel.Location = new System.Drawing.Point(23, 185);
            this.SpecifyMethodLabel.Name = "SpecifyMethodLabel";
            this.SpecifyMethodLabel.Size = new System.Drawing.Size(136, 21);
            //this.PlatetoolTipController.SetSuperTip(this.SpecifyMethodLabel, null);
            this.SpecifyMethodLabel.TabIndex = 83;
            this.SpecifyMethodLabel.Text = "Specify Method";
            this.SpecifyMethodLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // GradeLabel
            // 
            this.GradeLabel.Location = new System.Drawing.Point(23, 160);
            this.GradeLabel.Name = "GradeLabel";
            this.GradeLabel.Size = new System.Drawing.Size(136, 21);
            //this.PlatetoolTipController.SetSuperTip(this.GradeLabel, null);
            this.GradeLabel.TabIndex = 82;
            this.GradeLabel.Text = "Grade";
            this.GradeLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // TestMethodLabel
            // 
            this.TestMethodLabel.Location = new System.Drawing.Point(23, 139);
            this.TestMethodLabel.Name = "TestMethodLabel";
            this.TestMethodLabel.Size = new System.Drawing.Size(136, 21);
            //this.PlatetoolTipController.SetSuperTip(this.TestMethodLabel, null);
            this.TestMethodLabel.TabIndex = 81;
            this.TestMethodLabel.Text = "Test Method";
            this.TestMethodLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // TestTypeLabel
            // 
            this.TestTypeLabel.Location = new System.Drawing.Point(23, 105);
            this.TestTypeLabel.Name = "TestTypeLabel";
            this.TestTypeLabel.Size = new System.Drawing.Size(136, 21);
            //this.PlatetoolTipController.SetSuperTip(this.TestTypeLabel, null);
            this.TestTypeLabel.TabIndex = 80;
            this.TestTypeLabel.Text = "Test Type";
            this.TestTypeLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // ColorCategoryLabel
            // 
            this.ColorCategoryLabel.Location = new System.Drawing.Point(23, 80);
            this.ColorCategoryLabel.Name = "ColorCategoryLabel";
            this.ColorCategoryLabel.Size = new System.Drawing.Size(136, 21);
            //this.PlatetoolTipController.SetSuperTip(this.ColorCategoryLabel, null);
            this.ColorCategoryLabel.TabIndex = 79;
            this.ColorCategoryLabel.Text = "Color Category";
            this.ColorCategoryLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // ColorLabel
            // 
            this.ColorLabel.Location = new System.Drawing.Point(23, 57);
            this.ColorLabel.Name = "ColorLabel";
            this.ColorLabel.Size = new System.Drawing.Size(136, 21);
            //this.PlatetoolTipController.SetSuperTip(this.ColorLabel, null);
            this.ColorLabel.TabIndex = 78;
            this.ColorLabel.Text = "Color";
            this.ColorLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // SuppRefLabel
            // 
            this.SuppRefLabel.Location = new System.Drawing.Point(23, 33);
            this.SuppRefLabel.Name = "SuppRefLabel";
            this.SuppRefLabel.Size = new System.Drawing.Size(136, 21);
            //this.PlatetoolTipController.SetSuperTip(this.SuppRefLabel, null);
            this.SuppRefLabel.TabIndex = 77;
            this.SuppRefLabel.Text = "Supp Ref";
            this.SuppRefLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // TechnicalInformationDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.Controls.Add(this.RemarkLabel);
            this.Controls.Add(this.SpecifyMethodLabel);
            this.Controls.Add(this.GradeLabel);
            this.Controls.Add(this.TestMethodLabel);
            this.Controls.Add(this.TestTypeLabel);
            this.Controls.Add(this.ColorCategoryLabel);
            this.Controls.Add(this.ColorLabel);
            this.Controls.Add(this.SuppRefLabel);
            this.Controls.Add(this.lookUpEdit2);
            this.Controls.Add(this.lookUpEdit1);
            this.Controls.Add(this.memoEdit1);
            this.Controls.Add(this.textEdit6);
            this.Controls.Add(this.textEdit3);
            this.Controls.Add(this.textEdit8);
            this.Controls.Add(this.textEdit7);
            this.Controls.Add(this.textEdit1);
            this.Name = "TechnicalInformationDetailForm";
            //this.PlatetoolTipController.SetSuperTip(this, null);
            this.Load += new System.EventHandler(this.TechnicalInformationDetailForm_Load);
            this.Controls.SetChildIndex(this.textEdit1, 0);
            this.Controls.SetChildIndex(this.textEdit7, 0);
            this.Controls.SetChildIndex(this.textEdit8, 0);
            this.Controls.SetChildIndex(this.textEdit3, 0);
            this.Controls.SetChildIndex(this.textEdit6, 0);
            this.Controls.SetChildIndex(this.memoEdit1, 0);
            this.Controls.SetChildIndex(this.lookUpEdit1, 0);
            this.Controls.SetChildIndex(this.lookUpEdit2, 0);
            this.Controls.SetChildIndex(this.SuppRefLabel, 0);
            this.Controls.SetChildIndex(this.ColorLabel, 0);
            this.Controls.SetChildIndex(this.ColorCategoryLabel, 0);
            this.Controls.SetChildIndex(this.TestTypeLabel, 0);
            this.Controls.SetChildIndex(this.TestMethodLabel, 0);
            this.Controls.SetChildIndex(this.GradeLabel, 0);
            this.Controls.SetChildIndex(this.SpecifyMethodLabel, 0);
            this.Controls.SetChildIndex(this.RemarkLabel, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.technicalInformationBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit3.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit6.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.memoEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit7.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit8.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.lookUpEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.lookUpEdit2.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit textEdit1;
        private DevExpress.XtraEditors.TextEdit textEdit3;
        private DevExpress.XtraEditors.TextEdit textEdit6;
        private DevExpress.XtraEditors.MemoEdit memoEdit1;
        private DevExpress.XtraEditors.TextEdit textEdit7;
        private DevExpress.XtraEditors.TextEdit textEdit8;
        private DevExpress.XtraEditors.ComboBoxEdit lookUpEdit1;
        private DevExpress.XtraEditors.ComboBoxEdit lookUpEdit2;
        private System.Windows.Forms.BindingSource technicalInformationBindingSource;
        private System.Windows.Forms.Label RemarkLabel;
        private System.Windows.Forms.Label SpecifyMethodLabel;
        private System.Windows.Forms.Label GradeLabel;
        private System.Windows.Forms.Label TestMethodLabel;
        private System.Windows.Forms.Label TestTypeLabel;
        private System.Windows.Forms.Label ColorCategoryLabel;
        private System.Windows.Forms.Label ColorLabel;
        private System.Windows.Forms.Label SuppRefLabel;
    }
}
