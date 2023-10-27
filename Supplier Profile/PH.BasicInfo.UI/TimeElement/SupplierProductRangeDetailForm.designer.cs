namespace PH.BasicInfo.UI.TimeElement
{
    partial class SupplierProductRangeDetailForm
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
            System.Windows.Forms.Label materialGroupLabel;
            System.Windows.Forms.Label productRangeLabel;
            System.Windows.Forms.Label descriptionLabel;
            this.textEdit3 = new DevExpress.XtraEditors.TextEdit();
            this.memoEdit1 = new DevExpress.XtraEditors.MemoEdit();
            this.lookUpEdit1 = new DevExpress.XtraEditors.LookUpEdit();
            this.isSelectCheckEdit = new DevExpress.XtraEditors.CheckEdit();
            materialGroupLabel = new System.Windows.Forms.Label();
            productRangeLabel = new System.Windows.Forms.Label();
            descriptionLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit3.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.memoEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.lookUpEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.isSelectCheckEdit.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.BasicInfo.BO.SupplierProductRange);
            // 
            // materialGroupLabel
            // 
            materialGroupLabel.Location = new System.Drawing.Point(17, 80);
            materialGroupLabel.Name = "materialGroupLabel";
            materialGroupLabel.Size = new System.Drawing.Size(86, 12);
            this.PlatetoolTipController.SetSuperTip(materialGroupLabel, null);
            materialGroupLabel.TabIndex = 16;
            materialGroupLabel.Text = "Material Group:";
            materialGroupLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // productRangeLabel
            // 
            productRangeLabel.Location = new System.Drawing.Point(17, 115);
            productRangeLabel.Name = "productRangeLabel";
            productRangeLabel.Size = new System.Drawing.Size(86, 12);
            this.PlatetoolTipController.SetSuperTip(productRangeLabel, null);
            productRangeLabel.TabIndex = 18;
            productRangeLabel.Text = "Product Range:";
            productRangeLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // descriptionLabel
            // 
            descriptionLabel.Location = new System.Drawing.Point(17, 149);
            descriptionLabel.Name = "descriptionLabel";
            descriptionLabel.Size = new System.Drawing.Size(86, 16);
            this.PlatetoolTipController.SetSuperTip(descriptionLabel, null);
            descriptionLabel.TabIndex = 20;
            descriptionLabel.Text = "Description:";
            descriptionLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // textEdit3
            // 
            this.textEdit3.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "ProductRange", true));
            this.textEdit3.Location = new System.Drawing.Point(109, 112);
            this.textEdit3.Name = "textEdit3";
            this.textEdit3.Size = new System.Drawing.Size(100, 21);
            this.textEdit3.TabIndex = 12;
            this.textEdit3.Tag = "";
            // 
            // memoEdit1
            // 
            this.memoEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Description", true));
            this.memoEdit1.Location = new System.Drawing.Point(109, 144);
            this.memoEdit1.Name = "memoEdit1";
            this.memoEdit1.Size = new System.Drawing.Size(206, 96);
            this.memoEdit1.TabIndex = 13;
            this.memoEdit1.Tag = "";
            // 
            // lookUpEdit1
            // 
            this.lookUpEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "MaterialGroup", true));
            this.lookUpEdit1.Location = new System.Drawing.Point(109, 77);
            this.lookUpEdit1.Name = "lookUpEdit1";
            this.lookUpEdit1.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.lookUpEdit1.Properties.NullText = "";
            this.lookUpEdit1.Size = new System.Drawing.Size(100, 21);
            this.lookUpEdit1.TabIndex = 14;
            this.lookUpEdit1.Tag = "";
            // 
            // isSelectCheckEdit
            // 
            this.isSelectCheckEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "IsSelect", true));
            this.isSelectCheckEdit.Location = new System.Drawing.Point(240, 42);
            this.isSelectCheckEdit.Name = "isSelectCheckEdit";
            this.isSelectCheckEdit.Properties.Appearance.Font = new System.Drawing.Font("Times New Roman", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.isSelectCheckEdit.Properties.Appearance.Options.UseFont = true;
            this.isSelectCheckEdit.Properties.Caption = "Select";
            this.isSelectCheckEdit.Size = new System.Drawing.Size(75, 20);
            this.isSelectCheckEdit.TabIndex = 15;
            // 
            // SupplierProductRangeDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.Controls.Add(descriptionLabel);
            this.Controls.Add(productRangeLabel);
            this.Controls.Add(materialGroupLabel);
            this.Controls.Add(this.isSelectCheckEdit);
            this.Controls.Add(this.lookUpEdit1);
            this.Controls.Add(this.memoEdit1);
            this.Controls.Add(this.textEdit3);
            this.Name = "SupplierProductRangeDetailForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Load += new System.EventHandler(this.MIDc_SupplierProductRangeDetailForm_Load);
            this.Controls.SetChildIndex(this.textEdit3, 0);
            this.Controls.SetChildIndex(this.memoEdit1, 0);
            this.Controls.SetChildIndex(this.lookUpEdit1, 0);
            this.Controls.SetChildIndex(this.isSelectCheckEdit, 0);
            this.Controls.SetChildIndex(materialGroupLabel, 0);
            this.Controls.SetChildIndex(productRangeLabel, 0);
            this.Controls.SetChildIndex(descriptionLabel, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit3.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.memoEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.lookUpEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.isSelectCheckEdit.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit textEdit3;
        private DevExpress.XtraEditors.MemoEdit memoEdit1;
        private DevExpress.XtraEditors.LookUpEdit lookUpEdit1;
        private DevExpress.XtraEditors.CheckEdit isSelectCheckEdit;
    }
}
