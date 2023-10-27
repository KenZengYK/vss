namespace PH.POPC.UI.MasterDB
{
    partial class Level6CmplLogDetailForm
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
            this.dataCodeTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.dataNameTextEdit = new DevExpress.XtraEditors.TextEdit();
            dataCodeLabel = new System.Windows.Forms.Label();
            dataNameLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataCodeTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataNameTextEdit.Properties)).BeginInit();
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
            dataCodeLabel.Location = new System.Drawing.Point(69, 68);
            dataCodeLabel.Name = "dataCodeLabel";
            dataCodeLabel.Size = new System.Drawing.Size(29, 12);
            this.PlatetoolTipController.SetSuperTip(dataCodeLabel, null);
            dataCodeLabel.TabIndex = 4;
            dataCodeLabel.Text = "Cde:";
            // 
            // dataCodeTextEdit
            // 
            this.dataCodeTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "DataCode", true));
            this.dataCodeTextEdit.Location = new System.Drawing.Point(156, 65);
            this.dataCodeTextEdit.Name = "dataCodeTextEdit";
            this.dataCodeTextEdit.Size = new System.Drawing.Size(372, 21);
            this.dataCodeTextEdit.TabIndex = 5;
            // 
            // dataNameLabel
            // 
            dataNameLabel.AutoSize = true;
            dataNameLabel.Location = new System.Drawing.Point(69, 112);
            dataNameLabel.Name = "dataNameLabel";
            dataNameLabel.Size = new System.Drawing.Size(77, 12);
            this.PlatetoolTipController.SetSuperTip(dataNameLabel, null);
            dataNameLabel.TabIndex = 6;
            dataNameLabel.Text = "Explanation:";
            // 
            // dataNameTextEdit
            // 
            this.dataNameTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "DataName", true));
            this.dataNameTextEdit.Location = new System.Drawing.Point(156, 109);
            this.dataNameTextEdit.Name = "dataNameTextEdit";
            this.dataNameTextEdit.Size = new System.Drawing.Size(372, 21);
            this.dataNameTextEdit.TabIndex = 7;
            // 
            // Level6CmplLogDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(dataNameLabel);
            this.Controls.Add(this.dataNameTextEdit);
            this.Controls.Add(dataCodeLabel);
            this.Controls.Add(this.dataCodeTextEdit);
            this.Name = "Level6CmplLogDetailForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.dataCodeTextEdit, 0);
            this.Controls.SetChildIndex(dataCodeLabel, 0);
            this.Controls.SetChildIndex(this.dataNameTextEdit, 0);
            this.Controls.SetChildIndex(dataNameLabel, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataCodeTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataNameTextEdit.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit dataCodeTextEdit;
        private DevExpress.XtraEditors.TextEdit dataNameTextEdit;
    }
}
