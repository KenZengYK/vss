namespace PH.BasicInfo.UI.MasterDB
{
    partial class TradeMethodDetailFormBAK
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
            System.Windows.Forms.Label dataCodeLabel;
            System.Windows.Forms.Label dataNameLabel;
            System.Windows.Forms.Label dataNameENLabel;
            System.Windows.Forms.Label descriptionLabel;
            this.dataCodeTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.dataNameTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.dataNameENTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.descriptionTextEdit = new DevExpress.XtraEditors.TextEdit();
            dataCodeLabel = new System.Windows.Forms.Label();
            dataNameLabel = new System.Windows.Forms.Label();
            dataNameENLabel = new System.Windows.Forms.Label();
            descriptionLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataCodeTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataNameTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataNameENTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.descriptionTextEdit.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.Platform.Misc.BO.Misc_DataDictionary);
            // 
            // dataCodeLabel
            // 
            dataCodeLabel.AutoSize = true;
            dataCodeLabel.Location = new System.Drawing.Point(95, 52);
            dataCodeLabel.Name = "dataCodeLabel";
            dataCodeLabel.Size = new System.Drawing.Size(107, 12);
            this.PlatetoolTipController.SetSuperTip(dataCodeLabel, null);
            dataCodeLabel.TabIndex = 4;
            dataCodeLabel.Text = "Trade Method Cde:";
            // 
            // dataNameLabel
            // 
            dataNameLabel.AutoSize = true;
            dataNameLabel.Location = new System.Drawing.Point(59, 127);
            dataNameLabel.Name = "dataNameLabel";
            dataNameLabel.Size = new System.Drawing.Size(143, 12);
            this.PlatetoolTipController.SetSuperTip(dataNameLabel, null);
            dataNameLabel.TabIndex = 6;
            dataNameLabel.Text = "Trade Method Name (CN):";
            // 
            // dataNameENLabel
            // 
            dataNameENLabel.AutoSize = true;
            dataNameENLabel.Location = new System.Drawing.Point(59, 89);
            dataNameENLabel.Name = "dataNameENLabel";
            dataNameENLabel.Size = new System.Drawing.Size(143, 12);
            this.PlatetoolTipController.SetSuperTip(dataNameENLabel, null);
            dataNameENLabel.TabIndex = 8;
            dataNameENLabel.Text = "Trade Method Name (EN):";
            // 
            // descriptionLabel
            // 
            descriptionLabel.AutoSize = true;
            descriptionLabel.Location = new System.Drawing.Point(125, 163);
            descriptionLabel.Name = "descriptionLabel";
            descriptionLabel.Size = new System.Drawing.Size(77, 12);
            this.PlatetoolTipController.SetSuperTip(descriptionLabel, null);
            descriptionLabel.TabIndex = 10;
            descriptionLabel.Text = "Description:";
            // 
            // dataCodeTextEdit
            // 
            this.dataCodeTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "DataCode", true));
            this.dataCodeTextEdit.Location = new System.Drawing.Point(220, 49);
            this.dataCodeTextEdit.Name = "dataCodeTextEdit";
            this.dataCodeTextEdit.Size = new System.Drawing.Size(430, 21);
            this.dataCodeTextEdit.TabIndex = 5;
            // 
            // dataNameTextEdit
            // 
            this.dataNameTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "DataName", true));
            this.dataNameTextEdit.Location = new System.Drawing.Point(220, 124);
            this.dataNameTextEdit.Name = "dataNameTextEdit";
            this.dataNameTextEdit.Size = new System.Drawing.Size(430, 21);
            this.dataNameTextEdit.TabIndex = 7;
            // 
            // dataNameENTextEdit
            // 
            this.dataNameENTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "DataNameEN", true));
            this.dataNameENTextEdit.Location = new System.Drawing.Point(220, 86);
            this.dataNameENTextEdit.Name = "dataNameENTextEdit";
            this.dataNameENTextEdit.Size = new System.Drawing.Size(430, 21);
            this.dataNameENTextEdit.TabIndex = 9;
            // 
            // descriptionTextEdit
            // 
            this.descriptionTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Description", true));
            this.descriptionTextEdit.Location = new System.Drawing.Point(220, 160);
            this.descriptionTextEdit.Name = "descriptionTextEdit";
            this.descriptionTextEdit.Size = new System.Drawing.Size(430, 21);
            this.descriptionTextEdit.TabIndex = 11;
            // 
            // TradeMethodDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(descriptionLabel);
            this.Controls.Add(this.descriptionTextEdit);
            this.Controls.Add(dataNameENLabel);
            this.Controls.Add(this.dataNameENTextEdit);
            this.Controls.Add(dataNameLabel);
            this.Controls.Add(this.dataNameTextEdit);
            this.Controls.Add(dataCodeLabel);
            this.Controls.Add(this.dataCodeTextEdit);
            this.Name = "TradeMethodDetailForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.dataCodeTextEdit, 0);
            this.Controls.SetChildIndex(dataCodeLabel, 0);
            this.Controls.SetChildIndex(this.dataNameTextEdit, 0);
            this.Controls.SetChildIndex(dataNameLabel, 0);
            this.Controls.SetChildIndex(this.dataNameENTextEdit, 0);
            this.Controls.SetChildIndex(dataNameENLabel, 0);
            this.Controls.SetChildIndex(this.descriptionTextEdit, 0);
            this.Controls.SetChildIndex(descriptionLabel, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataCodeTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataNameTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataNameENTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.descriptionTextEdit.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit dataCodeTextEdit;
        private DevExpress.XtraEditors.TextEdit dataNameTextEdit;
        private DevExpress.XtraEditors.TextEdit dataNameENTextEdit;
        private DevExpress.XtraEditors.TextEdit descriptionTextEdit;
    }
}
