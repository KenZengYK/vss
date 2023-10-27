namespace PH.POPC.UI
{
    partial class POFormatDetailForm
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
            System.Windows.Forms.Label customerLabel;
            System.Windows.Forms.Label bandLabel;
            System.Windows.Forms.Label photoLabel;
            this.customerTextBox = new System.Windows.Forms.TextBox();
            this.photoPictureEdit = new DevExpress.XtraEditors.PictureEdit();
            this.bandTextEdit = new DevExpress.XtraEditors.TextEdit();
            customerLabel = new System.Windows.Forms.Label();
            bandLabel = new System.Windows.Forms.Label();
            photoLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.photoPictureEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bandTextEdit.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.POPC.BO.POFormat);
            // 
            // customerLabel
            // 
            customerLabel.AutoSize = true;
            customerLabel.Location = new System.Drawing.Point(48, 70);
            customerLabel.Name = "customerLabel";
            customerLabel.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(customerLabel, null);
            customerLabel.TabIndex = 4;
            customerLabel.Text = "Customer:";
            // 
            // bandLabel
            // 
            bandLabel.AutoSize = true;
            bandLabel.Location = new System.Drawing.Point(68, 98);
            bandLabel.Name = "bandLabel";
            bandLabel.Size = new System.Drawing.Size(33, 12);
            this.PlatetoolTipController.SetSuperTip(bandLabel, null);
            bandLabel.TabIndex = 6;
            bandLabel.Text = "Band:";
            // 
            // photoLabel
            // 
            photoLabel.AutoSize = true;
            photoLabel.Location = new System.Drawing.Point(66, 124);
            photoLabel.Name = "photoLabel";
            photoLabel.Size = new System.Drawing.Size(35, 12);
            this.PlatetoolTipController.SetSuperTip(photoLabel, null);
            photoLabel.TabIndex = 8;
            photoLabel.Text = "Photo:";
            // 
            // customerTextBox
            // 
            this.customerTextBox.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.BindingSource, "Customer", true));
            this.customerTextBox.Location = new System.Drawing.Point(118, 70);
            this.customerTextBox.Name = "customerTextBox";
            this.customerTextBox.Size = new System.Drawing.Size(199, 22);
            this.PlatetoolTipController.SetSuperTip(this.customerTextBox, null);
            this.customerTextBox.TabIndex = 5;
            // 
            // photoPictureEdit
            // 
            this.photoPictureEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Photo", true));
            this.photoPictureEdit.Location = new System.Drawing.Point(118, 124);
            this.photoPictureEdit.Name = "photoPictureEdit";
            this.photoPictureEdit.Properties.SizeMode = DevExpress.XtraEditors.Controls.PictureSizeMode.Stretch;
            this.photoPictureEdit.Size = new System.Drawing.Size(558, 300);
            this.photoPictureEdit.TabIndex = 9;
            // 
            // bandTextEdit
            // 
            this.bandTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Band", true));
            this.bandTextEdit.Location = new System.Drawing.Point(118, 97);
            this.bandTextEdit.Name = "bandTextEdit";
            this.bandTextEdit.Size = new System.Drawing.Size(199, 21);
            this.bandTextEdit.TabIndex = 10;
            // 
            // POFormatDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.bandTextEdit);
            this.Controls.Add(photoLabel);
            this.Controls.Add(this.photoPictureEdit);
            this.Controls.Add(bandLabel);
            this.Controls.Add(customerLabel);
            this.Controls.Add(this.customerTextBox);
            this.Name = "POFormatDetailForm";
            this.Size = new System.Drawing.Size(1000, 547);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.customerTextBox, 0);
            this.Controls.SetChildIndex(customerLabel, 0);
            this.Controls.SetChildIndex(bandLabel, 0);
            this.Controls.SetChildIndex(this.photoPictureEdit, 0);
            this.Controls.SetChildIndex(photoLabel, 0);
            this.Controls.SetChildIndex(this.bandTextEdit, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.photoPictureEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bandTextEdit.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox customerTextBox;
        private DevExpress.XtraEditors.PictureEdit photoPictureEdit;
        private DevExpress.XtraEditors.TextEdit bandTextEdit;
    }
}
