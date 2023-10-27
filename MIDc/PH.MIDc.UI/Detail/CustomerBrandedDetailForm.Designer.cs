namespace PH.MIDc.UI
{
    partial class CustomerBrandedDetailForm
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
            this.customerBrandedBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.comboBoxEdit1 = new DevExpress.XtraEditors.ComboBoxEdit();
            this.checkEdit1 = new DevExpress.XtraEditors.CheckEdit();
            this.txt_Selection = new DevExpress.XtraEditors.TextEdit();
            this.txt_Price = new DevExpress.XtraEditors.TextEdit();
            this.PriceLabel = new System.Windows.Forms.Label();
            this.SelectionLabel = new System.Windows.Forms.Label();
            this.BrandedLabel = new System.Windows.Forms.Label();
            this.CustomerLabel = new System.Windows.Forms.Label();
            this.SuppRefLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.customerBrandedBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.comboBoxEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.checkEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txt_Selection.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txt_Price.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.MIDc.BO.CustomerBranded);
            // 
            // textEdit1
            // 
            this.textEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "SuppRef", true));
            this.textEdit1.Location = new System.Drawing.Point(161, 40);
            this.textEdit1.Name = "textEdit1";
            this.textEdit1.Properties.ReadOnly = true;
            this.textEdit1.Size = new System.Drawing.Size(146, 21);
            this.textEdit1.TabIndex = 10;
            this.textEdit1.Tag = "SuppRef";
            // 
            // customerBrandedBindingSource
            // 
            this.customerBrandedBindingSource.DataSource = typeof(PH.MIDc.BO.CustomerBranded);
            // 
            // comboBoxEdit1
            // 
            this.comboBoxEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Customer", true));
            this.comboBoxEdit1.Location = new System.Drawing.Point(161, 71);
            this.comboBoxEdit1.Name = "comboBoxEdit1";
            this.comboBoxEdit1.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.comboBoxEdit1.Size = new System.Drawing.Size(146, 21);
            this.comboBoxEdit1.TabIndex = 189;
            this.comboBoxEdit1.Tag = "Customer";
            // 
            // checkEdit1
            // 
            this.checkEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Branded", true));
            this.checkEdit1.Location = new System.Drawing.Point(159, 99);
            this.checkEdit1.Name = "checkEdit1";
            this.checkEdit1.Properties.Caption = "";
            this.checkEdit1.Properties.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            this.checkEdit1.Size = new System.Drawing.Size(24, 19);
            this.checkEdit1.TabIndex = 190;
            this.checkEdit1.Tag = "Branded";
            // 
            // txt_Selection
            // 
            this.txt_Selection.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Selection", true));
            this.txt_Selection.Location = new System.Drawing.Point(161, 136);
            this.txt_Selection.Name = "txt_Selection";
            this.txt_Selection.Size = new System.Drawing.Size(146, 21);
            this.txt_Selection.TabIndex = 191;
            this.txt_Selection.Tag = "Selection";
            // 
            // txt_Price
            // 
            this.txt_Price.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Price", true));
            this.txt_Price.Location = new System.Drawing.Point(161, 173);
            this.txt_Price.Name = "txt_Price";
            this.txt_Price.Size = new System.Drawing.Size(146, 21);
            this.txt_Price.TabIndex = 191;
            this.txt_Price.Tag = "Price";
            // 
            // PriceLabel
            // 
            this.PriceLabel.Location = new System.Drawing.Point(17, 173);
            this.PriceLabel.Name = "PriceLabel";
            this.PriceLabel.Size = new System.Drawing.Size(136, 21);
            //this.PlatetoolTipController.SetSuperTip(this.PriceLabel, null);
            this.PriceLabel.TabIndex = 196;
            this.PriceLabel.Text = "Price";
            this.PriceLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // SelectionLabel
            // 
            this.SelectionLabel.Location = new System.Drawing.Point(17, 136);
            this.SelectionLabel.Name = "SelectionLabel";
            this.SelectionLabel.Size = new System.Drawing.Size(136, 21);
            //this.PlatetoolTipController.SetSuperTip(this.SelectionLabel, null);
            this.SelectionLabel.TabIndex = 195;
            this.SelectionLabel.Text = "Selection";
            this.SelectionLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // BrandedLabel
            // 
            this.BrandedLabel.Location = new System.Drawing.Point(17, 101);
            this.BrandedLabel.Name = "BrandedLabel";
            this.BrandedLabel.Size = new System.Drawing.Size(136, 21);
            //this.PlatetoolTipController.SetSuperTip(this.BrandedLabel, null);
            this.BrandedLabel.TabIndex = 194;
            this.BrandedLabel.Text = "Branded";
            this.BrandedLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // CustomerLabel
            // 
            this.CustomerLabel.Location = new System.Drawing.Point(17, 72);
            this.CustomerLabel.Name = "CustomerLabel";
            this.CustomerLabel.Size = new System.Drawing.Size(136, 21);
            //this.PlatetoolTipController.SetSuperTip(this.CustomerLabel, null);
            this.CustomerLabel.TabIndex = 193;
            this.CustomerLabel.Text = "Customer";
            this.CustomerLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // SuppRefLabel
            // 
            this.SuppRefLabel.Location = new System.Drawing.Point(17, 35);
            this.SuppRefLabel.Name = "SuppRefLabel";
            this.SuppRefLabel.Size = new System.Drawing.Size(136, 21);
            //this.PlatetoolTipController.SetSuperTip(this.SuppRefLabel, null);
            this.SuppRefLabel.TabIndex = 192;
            this.SuppRefLabel.Text = "Supp Ref";
            this.SuppRefLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // CustomerBrandedDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.Controls.Add(this.PriceLabel);
            this.Controls.Add(this.SelectionLabel);
            this.Controls.Add(this.BrandedLabel);
            this.Controls.Add(this.CustomerLabel);
            this.Controls.Add(this.SuppRefLabel);
            this.Controls.Add(this.txt_Price);
            this.Controls.Add(this.txt_Selection);
            this.Controls.Add(this.checkEdit1);
            this.Controls.Add(this.comboBoxEdit1);
            this.Controls.Add(this.textEdit1);
            this.Name = "CustomerBrandedDetailForm";
            //this.PlatetoolTipController.SetSuperTip(this, null);
            this.Load += new System.EventHandler(this.CustomerBrandedDetailForm_Load);
            this.Controls.SetChildIndex(this.textEdit1, 0);
            this.Controls.SetChildIndex(this.comboBoxEdit1, 0);
            this.Controls.SetChildIndex(this.checkEdit1, 0);
            this.Controls.SetChildIndex(this.txt_Selection, 0);
            this.Controls.SetChildIndex(this.txt_Price, 0);
            this.Controls.SetChildIndex(this.SuppRefLabel, 0);
            this.Controls.SetChildIndex(this.CustomerLabel, 0);
            this.Controls.SetChildIndex(this.BrandedLabel, 0);
            this.Controls.SetChildIndex(this.SelectionLabel, 0);
            this.Controls.SetChildIndex(this.PriceLabel, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.customerBrandedBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.comboBoxEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.checkEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txt_Selection.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txt_Price.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit textEdit1;
        private DevExpress.XtraEditors.ComboBoxEdit comboBoxEdit1;
        private DevExpress.XtraEditors.CheckEdit checkEdit1;
        private DevExpress.XtraEditors.TextEdit txt_Selection;
        private DevExpress.XtraEditors.TextEdit txt_Price;
        private System.Windows.Forms.BindingSource customerBrandedBindingSource;
        private System.Windows.Forms.Label PriceLabel;
        private System.Windows.Forms.Label SelectionLabel;
        private System.Windows.Forms.Label BrandedLabel;
        private System.Windows.Forms.Label CustomerLabel;
        private System.Windows.Forms.Label SuppRefLabel;
    }
}
