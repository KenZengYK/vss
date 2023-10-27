namespace PH.MIDc.UI
{
    partial class RWMDetailForm
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
            this.rWMBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.spinEdit1 = new DevExpress.XtraEditors.SpinEdit();
            this.buttonEdit4 = new DevExpress.XtraEditors.ButtonEdit();
            this.lookUpEdit2 = new DevExpress.XtraEditors.LookUpEdit();
            this.lookUpEdit3 = new DevExpress.XtraEditors.LookUpEdit();
            this.QtyLabel = new System.Windows.Forms.Label();
            this.RWMTypeLabel = new System.Windows.Forms.Label();
            this.SizeLabel = new System.Windows.Forms.Label();
            this.ColorLabel = new System.Windows.Forms.Label();
            this.SuppRefLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rWMBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spinEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.buttonEdit4.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.lookUpEdit2.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.lookUpEdit3.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.MIDc.BO.RWM);
            // 
            // textEdit1
            // 
            this.textEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "SuppRef", true));
            this.textEdit1.Location = new System.Drawing.Point(171, 41);
            this.textEdit1.Name = "textEdit1";
            this.textEdit1.Properties.ReadOnly = true;
            this.textEdit1.Size = new System.Drawing.Size(139, 21);
            this.textEdit1.TabIndex = 9;
            this.textEdit1.Tag = "SuppRef";
            // 
            // rWMBindingSource
            // 
            this.rWMBindingSource.DataSource = typeof(PH.MIDc.BO.RWM);
            // 
            // spinEdit1
            // 
            this.spinEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Qty", true));
            this.spinEdit1.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.spinEdit1.Location = new System.Drawing.Point(171, 160);
            this.spinEdit1.Name = "spinEdit1";
            this.spinEdit1.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.spinEdit1.Size = new System.Drawing.Size(139, 21);
            this.spinEdit1.TabIndex = 13;
            this.spinEdit1.Tag = "Qty";
            // 
            // buttonEdit4
            // 
            this.buttonEdit4.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "RWMType", true));
            this.buttonEdit4.Location = new System.Drawing.Point(171, 132);
            this.buttonEdit4.Name = "buttonEdit4";
            this.buttonEdit4.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.buttonEdit4.Size = new System.Drawing.Size(139, 21);
            this.buttonEdit4.TabIndex = 14;
            this.buttonEdit4.Tag = "RWMType";
            // 
            // lookUpEdit2
            // 
            this.lookUpEdit2.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Color", true));
            this.lookUpEdit2.Location = new System.Drawing.Point(171, 71);
            this.lookUpEdit2.Name = "lookUpEdit2";
            this.lookUpEdit2.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.lookUpEdit2.Properties.NullText = "";
            this.lookUpEdit2.Size = new System.Drawing.Size(139, 21);
            this.lookUpEdit2.TabIndex = 17;
            this.lookUpEdit2.Tag = "Color";
            // 
            // lookUpEdit3
            // 
            this.lookUpEdit3.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Size", true));
            this.lookUpEdit3.Location = new System.Drawing.Point(171, 101);
            this.lookUpEdit3.Name = "lookUpEdit3";
            this.lookUpEdit3.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.lookUpEdit3.Properties.NullText = "";
            this.lookUpEdit3.Size = new System.Drawing.Size(139, 21);
            this.lookUpEdit3.TabIndex = 18;
            this.lookUpEdit3.Tag = "Size";
            // 
            // QtyLabel
            // 
            this.QtyLabel.Location = new System.Drawing.Point(29, 163);
            this.QtyLabel.Name = "QtyLabel";
            this.QtyLabel.Size = new System.Drawing.Size(136, 21);
            //this.PlatetoolTipController.SetSuperTip(this.QtyLabel, null);
            this.QtyLabel.TabIndex = 23;
            this.QtyLabel.Text = "Qty";
            this.QtyLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // RWMTypeLabel
            // 
            this.RWMTypeLabel.Location = new System.Drawing.Point(29, 132);
            this.RWMTypeLabel.Name = "RWMTypeLabel";
            this.RWMTypeLabel.Size = new System.Drawing.Size(136, 21);
            //this.PlatetoolTipController.SetSuperTip(this.RWMTypeLabel, null);
            this.RWMTypeLabel.TabIndex = 22;
            this.RWMTypeLabel.Text = "RWM Type";
            this.RWMTypeLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // SizeLabel
            // 
            this.SizeLabel.Location = new System.Drawing.Point(29, 104);
            this.SizeLabel.Name = "SizeLabel";
            this.SizeLabel.Size = new System.Drawing.Size(136, 21);
            //this.PlatetoolTipController.SetSuperTip(this.SizeLabel, null);
            this.SizeLabel.TabIndex = 21;
            this.SizeLabel.Text = "Size";
            this.SizeLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // ColorLabel
            // 
            this.ColorLabel.Location = new System.Drawing.Point(29, 72);
            this.ColorLabel.Name = "ColorLabel";
            this.ColorLabel.Size = new System.Drawing.Size(136, 21);
            //this.PlatetoolTipController.SetSuperTip(this.ColorLabel, null);
            this.ColorLabel.TabIndex = 20;
            this.ColorLabel.Text = "Color";
            this.ColorLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // SuppRefLabel
            // 
            this.SuppRefLabel.Location = new System.Drawing.Point(29, 42);
            this.SuppRefLabel.Name = "SuppRefLabel";
            this.SuppRefLabel.Size = new System.Drawing.Size(136, 21);
            //this.PlatetoolTipController.SetSuperTip(this.SuppRefLabel, null);
            this.SuppRefLabel.TabIndex = 19;
            this.SuppRefLabel.Text = "Supp Ref";
            this.SuppRefLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // RWMDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.Controls.Add(this.QtyLabel);
            this.Controls.Add(this.RWMTypeLabel);
            this.Controls.Add(this.SizeLabel);
            this.Controls.Add(this.ColorLabel);
            this.Controls.Add(this.SuppRefLabel);
            this.Controls.Add(this.lookUpEdit3);
            this.Controls.Add(this.lookUpEdit2);
            this.Controls.Add(this.buttonEdit4);
            this.Controls.Add(this.spinEdit1);
            this.Controls.Add(this.textEdit1);
            this.Name = "RWMDetailForm";
            //this.PlatetoolTipController.SetSuperTip(this, null);
            this.Load += new System.EventHandler(this.RWMDetailForm_Load);
            this.Controls.SetChildIndex(this.textEdit1, 0);
            this.Controls.SetChildIndex(this.spinEdit1, 0);
            this.Controls.SetChildIndex(this.buttonEdit4, 0);
            this.Controls.SetChildIndex(this.lookUpEdit2, 0);
            this.Controls.SetChildIndex(this.lookUpEdit3, 0);
            this.Controls.SetChildIndex(this.SuppRefLabel, 0);
            this.Controls.SetChildIndex(this.ColorLabel, 0);
            this.Controls.SetChildIndex(this.SizeLabel, 0);
            this.Controls.SetChildIndex(this.RWMTypeLabel, 0);
            this.Controls.SetChildIndex(this.QtyLabel, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rWMBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spinEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.buttonEdit4.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.lookUpEdit2.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.lookUpEdit3.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit textEdit1;
        private DevExpress.XtraEditors.SpinEdit spinEdit1;
        private DevExpress.XtraEditors.ButtonEdit buttonEdit4;
        private DevExpress.XtraEditors.LookUpEdit lookUpEdit2;
        private DevExpress.XtraEditors.LookUpEdit lookUpEdit3;
        private System.Windows.Forms.BindingSource rWMBindingSource;
        private System.Windows.Forms.Label QtyLabel;
        private System.Windows.Forms.Label RWMTypeLabel;
        private System.Windows.Forms.Label SizeLabel;
        private System.Windows.Forms.Label ColorLabel;
        private System.Windows.Forms.Label SuppRefLabel;
    }
}
