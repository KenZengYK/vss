namespace PH.MIDc.UI
{
    partial class SpecialLabelDetailForm
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
            this.comboBoxEdit1 = new DevExpress.XtraEditors.ComboBoxEdit();
            this.specialLabelBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.Grouplabel = new System.Windows.Forms.Label();
            this.memoEdit1 = new DevExpress.XtraEditors.MemoEdit();
            this.textEdit1 = new DevExpress.XtraEditors.TextEdit();
            this.Descriptionlabel = new System.Windows.Forms.Label();
            this.SpecialLabel1label = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.comboBoxEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.specialLabelBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.memoEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.MIDc.BO.SpecialLabel);
            // 
            // comboBoxEdit1
            // 
            this.comboBoxEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Group", true));
            this.comboBoxEdit1.Location = new System.Drawing.Point(103, 232);
            this.comboBoxEdit1.Name = "comboBoxEdit1";
            this.comboBoxEdit1.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.comboBoxEdit1.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.comboBoxEdit1.Properties.Items.AddRange(new object[] {
            "POLYAMIDE",
            "ELASTANE",
            "COTTON",
            "RAYON",
            "POLYESTER",
            "VISCOSE",
            "MIXED GROUP",
            "UNCLASSIFIED GROUP"});
            this.comboBoxEdit1.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.comboBoxEdit1.Size = new System.Drawing.Size(183, 21);
            this.comboBoxEdit1.TabIndex = 12;
            this.comboBoxEdit1.Tag = "Group";
            // 
            // specialLabelBindingSource
            // 
            this.specialLabelBindingSource.DataSource = typeof(PH.MIDc.BO.SpecialLabel);
            // 
            // Grouplabel
            // 
            this.Grouplabel.Location = new System.Drawing.Point(17, 235);
            this.Grouplabel.Name = "Grouplabel";
            this.Grouplabel.Size = new System.Drawing.Size(80, 18);
            //this.PlatetoolTipController.SetSuperTip(this.Grouplabel, null);
            this.Grouplabel.TabIndex = 11;
            this.Grouplabel.Text = "Group:";
            this.Grouplabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // memoEdit1
            // 
            this.memoEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Description", true));
            this.memoEdit1.Location = new System.Drawing.Point(103, 68);
            this.memoEdit1.Name = "memoEdit1";
            this.memoEdit1.Size = new System.Drawing.Size(293, 158);
            this.memoEdit1.TabIndex = 10;
            this.memoEdit1.Tag = "Description";
            // 
            // textEdit1
            // 
            this.textEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "SpecialLabel1", true));
            this.textEdit1.Location = new System.Drawing.Point(103, 42);
            this.textEdit1.Name = "textEdit1";
            this.textEdit1.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.textEdit1.Size = new System.Drawing.Size(293, 21);
            this.textEdit1.TabIndex = 9;
            this.textEdit1.Tag = "SpecialLabel1";
            // 
            // Descriptionlabel
            // 
            this.Descriptionlabel.Location = new System.Drawing.Point(17, 71);
            this.Descriptionlabel.Name = "Descriptionlabel";
            this.Descriptionlabel.Size = new System.Drawing.Size(80, 18);
            //this.PlatetoolTipController.SetSuperTip(this.Descriptionlabel, null);
            this.Descriptionlabel.TabIndex = 8;
            this.Descriptionlabel.Text = "Description:";
            this.Descriptionlabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // SpecialLabel1label
            // 
            this.SpecialLabel1label.Location = new System.Drawing.Point(17, 45);
            this.SpecialLabel1label.Name = "SpecialLabel1label";
            this.SpecialLabel1label.Size = new System.Drawing.Size(80, 18);
            ////this.PlatetoolTipController.SetSuperTip(this.SpecialLabel1label, null);
            this.SpecialLabel1label.TabIndex = 7;
            this.SpecialLabel1label.Text = "Special Label:";
            this.SpecialLabel1label.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // SpecialLabelDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.Controls.Add(this.comboBoxEdit1);
            this.Controls.Add(this.Grouplabel);
            this.Controls.Add(this.memoEdit1);
            this.Controls.Add(this.textEdit1);
            this.Controls.Add(this.Descriptionlabel);
            this.Controls.Add(this.SpecialLabel1label);
            this.Name = "SpecialLabelDetailForm";
            //this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.SpecialLabel1label, 0);
            this.Controls.SetChildIndex(this.Descriptionlabel, 0);
            this.Controls.SetChildIndex(this.textEdit1, 0);
            this.Controls.SetChildIndex(this.memoEdit1, 0);
            this.Controls.SetChildIndex(this.Grouplabel, 0);
            this.Controls.SetChildIndex(this.comboBoxEdit1, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.comboBoxEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.specialLabelBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.memoEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.ComboBoxEdit comboBoxEdit1;
        private System.Windows.Forms.Label Grouplabel;
        private DevExpress.XtraEditors.MemoEdit memoEdit1;
        private DevExpress.XtraEditors.TextEdit textEdit1;
        private System.Windows.Forms.Label Descriptionlabel;
        private System.Windows.Forms.Label SpecialLabel1label;
        private System.Windows.Forms.BindingSource specialLabelBindingSource;
    }
}
