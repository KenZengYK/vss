namespace PH.FabricInspection.UI.Main.ActionLog
{
    partial class ActionLogSubjectCategoryDetailForm
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
            System.Windows.Forms.Label seqNoLabel;
            System.Windows.Forms.Label shortNameLabel;
            this.seqNoTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.shortNameTextEdit = new DevExpress.XtraEditors.TextEdit();
            seqNoLabel = new System.Windows.Forms.Label();
            shortNameLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.seqNoTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.shortNameTextEdit.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.FabricInspection.BO.ActionLogSubjectCategory);
            // 
            // seqNoLabel
            // 
            seqNoLabel.AutoSize = true;
            seqNoLabel.Location = new System.Drawing.Point(68, 57);
            seqNoLabel.Name = "seqNoLabel";
            seqNoLabel.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(seqNoLabel, null);
            seqNoLabel.TabIndex = 4;
            seqNoLabel.Text = "Seq No.:";
            // 
            // seqNoTextEdit
            // 
            this.seqNoTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "SeqNo", true));
            this.seqNoTextEdit.Location = new System.Drawing.Point(144, 54);
            this.seqNoTextEdit.Name = "seqNoTextEdit";
            this.seqNoTextEdit.Size = new System.Drawing.Size(138, 21);
            this.seqNoTextEdit.TabIndex = 5;
            // 
            // shortNameLabel
            // 
            shortNameLabel.AutoSize = true;
            shortNameLabel.Location = new System.Drawing.Point(67, 93);
            shortNameLabel.Name = "shortNameLabel";
            shortNameLabel.Size = new System.Drawing.Size(71, 12);
            this.PlatetoolTipController.SetSuperTip(shortNameLabel, null);
            shortNameLabel.TabIndex = 6;
            shortNameLabel.Text = "Short Name:";
            // 
            // shortNameTextEdit
            // 
            this.shortNameTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "ShortName", true));
            this.shortNameTextEdit.Location = new System.Drawing.Point(144, 90);
            this.shortNameTextEdit.Name = "shortNameTextEdit";
            this.shortNameTextEdit.Size = new System.Drawing.Size(388, 21);
            this.shortNameTextEdit.TabIndex = 7;
            // 
            // ActionLogSubjectCategoryDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(shortNameLabel);
            this.Controls.Add(this.shortNameTextEdit);
            this.Controls.Add(seqNoLabel);
            this.Controls.Add(this.seqNoTextEdit);
            this.Name = "ActionLogSubjectCategoryDetailForm";
            this.Size = new System.Drawing.Size(603, 176);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.seqNoTextEdit, 0);
            this.Controls.SetChildIndex(seqNoLabel, 0);
            this.Controls.SetChildIndex(this.shortNameTextEdit, 0);
            this.Controls.SetChildIndex(shortNameLabel, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.seqNoTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.shortNameTextEdit.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit seqNoTextEdit;
        private DevExpress.XtraEditors.TextEdit shortNameTextEdit;
    }
}
