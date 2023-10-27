namespace PH.MIDc.UI
{
    partial class SizeDetailDetailForm
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
            this.SuppReflabel = new DevExpress.XtraEditors.LabelControl();
            this.Sizelabel = new DevExpress.XtraEditors.LabelControl();
            this.Descriptionlabel = new DevExpress.XtraEditors.LabelControl();
            this.textEdit1 = new DevExpress.XtraEditors.TextEdit();
            this.sizeDetailBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.memoEdit1 = new DevExpress.XtraEditors.MemoEdit();
            this.lookUpEdit1 = new DevExpress.XtraEditors.LookUpEdit();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.sizeDetailBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.memoEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.lookUpEdit1.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.MIDc.BO.SizeDetail);
            // 
            // SuppReflabel
            // 
            this.SuppReflabel.Appearance.Options.UseTextOptions = true;
            this.SuppReflabel.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.SuppReflabel.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.SuppReflabel.Location = new System.Drawing.Point(15, 42);
            this.SuppReflabel.Name = "SuppReflabel";
            this.SuppReflabel.Size = new System.Drawing.Size(75, 14);
            this.SuppReflabel.TabIndex = 4;
            this.SuppReflabel.Text = "SuppRef:";
            // 
            // Sizelabel
            // 
            this.Sizelabel.Appearance.Options.UseTextOptions = true;
            this.Sizelabel.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.Sizelabel.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.Sizelabel.Location = new System.Drawing.Point(15, 76);
            this.Sizelabel.Name = "Sizelabel";
            this.Sizelabel.Size = new System.Drawing.Size(75, 14);
            this.Sizelabel.TabIndex = 5;
            this.Sizelabel.Text = "Size:";
            // 
            // Descriptionlabel
            // 
            this.Descriptionlabel.Appearance.Options.UseTextOptions = true;
            this.Descriptionlabel.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.Descriptionlabel.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.Descriptionlabel.Location = new System.Drawing.Point(15, 117);
            this.Descriptionlabel.Name = "Descriptionlabel";
            this.Descriptionlabel.Size = new System.Drawing.Size(75, 14);
            this.Descriptionlabel.TabIndex = 7;
            this.Descriptionlabel.Text = "Description:";
            // 
            // textEdit1
            // 
            this.textEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "SuppRef", true));
            this.textEdit1.Location = new System.Drawing.Point(107, 42);
            this.textEdit1.Name = "textEdit1";
            this.textEdit1.Properties.ReadOnly = true;
            this.textEdit1.Size = new System.Drawing.Size(100, 21);
            this.textEdit1.TabIndex = 8;
            this.textEdit1.Tag = "SuppRef";
            // 
            // sizeDetailBindingSource
            // 
            this.sizeDetailBindingSource.DataSource = typeof(PH.MIDc.BO.SizeDetail);
            // 
            // memoEdit1
            // 
            this.memoEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Description", true));
            this.memoEdit1.Location = new System.Drawing.Point(107, 117);
            this.memoEdit1.Name = "memoEdit1";
            this.memoEdit1.Size = new System.Drawing.Size(238, 96);
            this.memoEdit1.TabIndex = 11;
            this.memoEdit1.Tag = "Description";
            // 
            // lookUpEdit1
            // 
            this.lookUpEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Size", true));
            this.lookUpEdit1.Location = new System.Drawing.Point(107, 76);
            this.lookUpEdit1.Name = "lookUpEdit1";
            this.lookUpEdit1.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.lookUpEdit1.Properties.NullText = "";
            this.lookUpEdit1.Size = new System.Drawing.Size(100, 21);
            this.lookUpEdit1.TabIndex = 12;
            this.lookUpEdit1.Tag = "Size";
            // 
            // SizeDetailDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.Controls.Add(this.lookUpEdit1);
            this.Controls.Add(this.memoEdit1);
            this.Controls.Add(this.textEdit1);
            this.Controls.Add(this.Descriptionlabel);
            this.Controls.Add(this.Sizelabel);
            this.Controls.Add(this.SuppReflabel);
            this.Name = "SizeDetailDetailForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Load += new System.EventHandler(this.SizeDetailDetailForm_Load);
            this.Controls.SetChildIndex(this.SuppReflabel, 0);
            this.Controls.SetChildIndex(this.Sizelabel, 0);
            this.Controls.SetChildIndex(this.Descriptionlabel, 0);
            this.Controls.SetChildIndex(this.textEdit1, 0);
            this.Controls.SetChildIndex(this.memoEdit1, 0);
            this.Controls.SetChildIndex(this.lookUpEdit1, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.sizeDetailBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.memoEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.lookUpEdit1.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.LabelControl SuppReflabel;
        private DevExpress.XtraEditors.LabelControl Sizelabel;
        private DevExpress.XtraEditors.LabelControl Descriptionlabel;
        private DevExpress.XtraEditors.TextEdit textEdit1;
        private DevExpress.XtraEditors.MemoEdit memoEdit1;
        private DevExpress.XtraEditors.LookUpEdit lookUpEdit1;
        private System.Windows.Forms.BindingSource sizeDetailBindingSource;
    }
}
