namespace PH.MIDc.UI
{
    partial class CompositionDetailDetailForm
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
            this.compositionDetailBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.textEdit3 = new DevExpress.XtraEditors.TextEdit();
            this.spinEdit1 = new DevExpress.XtraEditors.SpinEdit();
            this.lookUpEdit1 = new DevExpress.XtraEditors.LookUpEdit();
            this.textEdit2 = new DevExpress.XtraEditors.TextEdit();
            this.SpecialTermsLabel = new System.Windows.Forms.Label();
            this.YarnCountLabel = new System.Windows.Forms.Label();
            this.PerLabel = new System.Windows.Forms.Label();
            this.CompositionLabel = new System.Windows.Forms.Label();
            this.SuppRefLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.compositionDetailBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit3.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spinEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.lookUpEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit2.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.MIDc.BO.CompositionDetail);
            // 
            // textEdit1
            // 
            this.textEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "SuppRef", true));
            this.textEdit1.Location = new System.Drawing.Point(155, 35);
            this.textEdit1.Name = "textEdit1";
            this.textEdit1.Properties.ReadOnly = true;
            this.textEdit1.Size = new System.Drawing.Size(148, 21);
            this.textEdit1.TabIndex = 10;
            this.textEdit1.Tag = "SuppRef";
            // 
            // compositionDetailBindingSource
            // 
            this.compositionDetailBindingSource.DataSource = typeof(PH.MIDc.BO.CompositionDetail);
            // 
            // textEdit3
            // 
            this.textEdit3.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "SpecialTerms", true));
            this.textEdit3.Location = new System.Drawing.Point(155, 170);
            this.textEdit3.Name = "textEdit3";
            this.textEdit3.Size = new System.Drawing.Size(185, 21);
            this.textEdit3.TabIndex = 14;
            this.textEdit3.Tag = "SpecialTerms";
            // 
            // spinEdit1
            // 
            this.spinEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Per", true));
            this.spinEdit1.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.spinEdit1.Location = new System.Drawing.Point(155, 103);
            this.spinEdit1.Name = "spinEdit1";
            this.spinEdit1.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.spinEdit1.Size = new System.Drawing.Size(75, 21);
            this.spinEdit1.TabIndex = 15;
            this.spinEdit1.Tag = "Per";
            // 
            // lookUpEdit1
            // 
            this.lookUpEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Composition", true));
            this.lookUpEdit1.Location = new System.Drawing.Point(155, 69);
            this.lookUpEdit1.Name = "lookUpEdit1";
            this.lookUpEdit1.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.lookUpEdit1.Properties.NullText = "";
            this.lookUpEdit1.Size = new System.Drawing.Size(148, 21);
            this.lookUpEdit1.TabIndex = 16;
            this.lookUpEdit1.Tag = "Composition";
            // 
            // textEdit2
            // 
            this.textEdit2.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "YarnCount", true));
            this.textEdit2.Location = new System.Drawing.Point(155, 137);
            this.textEdit2.Name = "textEdit2";
            this.textEdit2.Size = new System.Drawing.Size(185, 21);
            this.textEdit2.TabIndex = 43;
            this.textEdit2.Tag = "YarnCount";
            // 
            // SpecialTermsLabel
            // 
            this.SpecialTermsLabel.Location = new System.Drawing.Point(13, 171);
            this.SpecialTermsLabel.Name = "SpecialTermsLabel";
            this.SpecialTermsLabel.Size = new System.Drawing.Size(136, 21);
            //this.PlatetoolTipController.SetSuperTip(this.SpecialTermsLabel, null);
            this.SpecialTermsLabel.TabIndex = 49;
            this.SpecialTermsLabel.Text = "Special Terms";
            this.SpecialTermsLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // YarnCountLabel
            // 
            this.YarnCountLabel.Location = new System.Drawing.Point(13, 138);
            this.YarnCountLabel.Name = "YarnCountLabel";
            this.YarnCountLabel.Size = new System.Drawing.Size(136, 21);
            //this.PlatetoolTipController.SetSuperTip(this.YarnCountLabel, null);
            this.YarnCountLabel.TabIndex = 48;
            this.YarnCountLabel.Text = "Yarn Count";
            this.YarnCountLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // PerLabel
            // 
            this.PerLabel.Location = new System.Drawing.Point(13, 103);
            this.PerLabel.Name = "PerLabel";
            this.PerLabel.Size = new System.Drawing.Size(136, 21);
            //this.PlatetoolTipController.SetSuperTip(this.PerLabel, null);
            this.PerLabel.TabIndex = 47;
            this.PerLabel.Text = "Per";
            this.PerLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // CompositionLabel
            // 
            this.CompositionLabel.Location = new System.Drawing.Point(13, 69);
            this.CompositionLabel.Name = "CompositionLabel";
            this.CompositionLabel.Size = new System.Drawing.Size(136, 21);
            //this.PlatetoolTipController.SetSuperTip(this.CompositionLabel, null);
            this.CompositionLabel.TabIndex = 46;
            this.CompositionLabel.Text = "Composition";
            this.CompositionLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // SuppRefLabel
            // 
            this.SuppRefLabel.Location = new System.Drawing.Point(13, 36);
            this.SuppRefLabel.Name = "SuppRefLabel";
            this.SuppRefLabel.Size = new System.Drawing.Size(136, 21);
            //this.PlatetoolTipController.SetSuperTip(this.SuppRefLabel, null);
            this.SuppRefLabel.TabIndex = 45;
            this.SuppRefLabel.Text = "Supp Ref";
            this.SuppRefLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // CompositionDetailDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.Controls.Add(this.SpecialTermsLabel);
            this.Controls.Add(this.YarnCountLabel);
            this.Controls.Add(this.PerLabel);
            this.Controls.Add(this.CompositionLabel);
            this.Controls.Add(this.SuppRefLabel);
            this.Controls.Add(this.textEdit2);
            this.Controls.Add(this.lookUpEdit1);
            this.Controls.Add(this.spinEdit1);
            this.Controls.Add(this.textEdit3);
            this.Controls.Add(this.textEdit1);
            this.Name = "CompositionDetailDetailForm";
            //this.PlatetoolTipController.SetSuperTip(this, null);
            this.Load += new System.EventHandler(this.CompositionDetailDetailForm_Load);
            this.Controls.SetChildIndex(this.textEdit1, 0);
            this.Controls.SetChildIndex(this.textEdit3, 0);
            this.Controls.SetChildIndex(this.spinEdit1, 0);
            this.Controls.SetChildIndex(this.lookUpEdit1, 0);
            this.Controls.SetChildIndex(this.textEdit2, 0);
            this.Controls.SetChildIndex(this.SuppRefLabel, 0);
            this.Controls.SetChildIndex(this.CompositionLabel, 0);
            this.Controls.SetChildIndex(this.PerLabel, 0);
            this.Controls.SetChildIndex(this.YarnCountLabel, 0);
            this.Controls.SetChildIndex(this.SpecialTermsLabel, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.compositionDetailBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit3.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spinEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.lookUpEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit2.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit textEdit1;
        private DevExpress.XtraEditors.TextEdit textEdit3;
        private DevExpress.XtraEditors.SpinEdit spinEdit1;
        private DevExpress.XtraEditors.LookUpEdit lookUpEdit1;
        private DevExpress.XtraEditors.TextEdit textEdit2;
        private System.Windows.Forms.BindingSource compositionDetailBindingSource;
        private System.Windows.Forms.Label SpecialTermsLabel;
        private System.Windows.Forms.Label YarnCountLabel;
        private System.Windows.Forms.Label PerLabel;
        private System.Windows.Forms.Label CompositionLabel;
        private System.Windows.Forms.Label SuppRefLabel;
    }
}
