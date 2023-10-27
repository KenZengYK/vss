namespace PH.BasicInfo.UI.Bdowndimension
{
    partial class DNChildEditFrm
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
            System.Windows.Forms.Label seqLabel;
            System.Windows.Forms.Label dimensionNoLabel;
            System.Windows.Forms.Label itemColorLabel;
            this.seqTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.dimensionNoTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.itemColorTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.colorIssueLabel = new System.Windows.Forms.Label();
            this.colorIssueCheckEdit = new DevExpress.XtraEditors.CheckEdit();
            seqLabel = new System.Windows.Forms.Label();
            dimensionNoLabel = new System.Windows.Forms.Label();
            itemColorLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.seqTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dimensionNoTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.itemColorTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.colorIssueCheckEdit.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.BasicInfo.BO.Dimension);
            // 
            // seqLabel
            // 
            seqLabel.Location = new System.Drawing.Point(41, 59);
            seqLabel.Name = "seqLabel";
            seqLabel.Size = new System.Drawing.Size(136, 12);
            this.PlatetoolTipController.SetSuperTip(seqLabel, null);
            seqLabel.TabIndex = 4;
            seqLabel.Text = "Seq:";
            seqLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // dimensionNoLabel
            // 
            dimensionNoLabel.Location = new System.Drawing.Point(41, 95);
            dimensionNoLabel.Name = "dimensionNoLabel";
            dimensionNoLabel.Size = new System.Drawing.Size(136, 12);
            this.PlatetoolTipController.SetSuperTip(dimensionNoLabel, null);
            dimensionNoLabel.TabIndex = 6;
            dimensionNoLabel.Text = "Dimension Des:";
            dimensionNoLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // itemColorLabel
            // 
            itemColorLabel.Location = new System.Drawing.Point(41, 131);
            itemColorLabel.Name = "itemColorLabel";
            itemColorLabel.Size = new System.Drawing.Size(136, 12);
            this.PlatetoolTipController.SetSuperTip(itemColorLabel, null);
            itemColorLabel.TabIndex = 8;
            itemColorLabel.Text = "Item Color:";
            itemColorLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // seqTextEdit
            // 
            this.seqTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Seq", true));
            this.seqTextEdit.Location = new System.Drawing.Point(185, 56);
            this.seqTextEdit.Name = "seqTextEdit";
            this.seqTextEdit.Size = new System.Drawing.Size(100, 21);
            this.seqTextEdit.TabIndex = 5;
            // 
            // dimensionNoTextEdit
            // 
            this.dimensionNoTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "DimensionNo", true));
            this.dimensionNoTextEdit.Location = new System.Drawing.Point(185, 92);
            this.dimensionNoTextEdit.Name = "dimensionNoTextEdit";
            this.dimensionNoTextEdit.Size = new System.Drawing.Size(276, 21);
            this.dimensionNoTextEdit.TabIndex = 7;
            // 
            // itemColorTextEdit
            // 
            this.itemColorTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "ItemColor", true));
            this.itemColorTextEdit.Location = new System.Drawing.Point(185, 128);
            this.itemColorTextEdit.Name = "itemColorTextEdit";
            this.itemColorTextEdit.Size = new System.Drawing.Size(276, 21);
            this.itemColorTextEdit.TabIndex = 9;
            // 
            // colorIssueLabel
            // 
            this.colorIssueLabel.Location = new System.Drawing.Point(41, 158);
            this.colorIssueLabel.Name = "colorIssueLabel";
            this.colorIssueLabel.Size = new System.Drawing.Size(136, 12);
            this.PlatetoolTipController.SetSuperTip(this.colorIssueLabel, null);
            this.colorIssueLabel.TabIndex = 10;
            this.colorIssueLabel.Text = "Raw Color apply to Y/N:";
            this.colorIssueLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // colorIssueCheckEdit
            // 
            this.colorIssueCheckEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "ColorIssue", true));
            this.colorIssueCheckEdit.Location = new System.Drawing.Point(183, 155);
            this.colorIssueCheckEdit.Name = "colorIssueCheckEdit";
            this.colorIssueCheckEdit.Properties.Caption = "";
            this.colorIssueCheckEdit.Size = new System.Drawing.Size(19, 19);
            this.colorIssueCheckEdit.TabIndex = 11;
            // 
            // DNChildEditFrm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.colorIssueLabel);
            this.Controls.Add(this.colorIssueCheckEdit);
            this.Controls.Add(itemColorLabel);
            this.Controls.Add(this.itemColorTextEdit);
            this.Controls.Add(dimensionNoLabel);
            this.Controls.Add(this.dimensionNoTextEdit);
            this.Controls.Add(seqLabel);
            this.Controls.Add(this.seqTextEdit);
            this.Name = "DNChildEditFrm";
            this.Size = new System.Drawing.Size(656, 334);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.seqTextEdit, 0);
            this.Controls.SetChildIndex(seqLabel, 0);
            this.Controls.SetChildIndex(this.dimensionNoTextEdit, 0);
            this.Controls.SetChildIndex(dimensionNoLabel, 0);
            this.Controls.SetChildIndex(this.itemColorTextEdit, 0);
            this.Controls.SetChildIndex(itemColorLabel, 0);
            this.Controls.SetChildIndex(this.colorIssueCheckEdit, 0);
            this.Controls.SetChildIndex(this.colorIssueLabel, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.seqTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dimensionNoTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.itemColorTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.colorIssueCheckEdit.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit seqTextEdit;
        private DevExpress.XtraEditors.TextEdit dimensionNoTextEdit;
        private DevExpress.XtraEditors.TextEdit itemColorTextEdit;
        private DevExpress.XtraEditors.CheckEdit colorIssueCheckEdit;
        public System.Windows.Forms.Label colorIssueLabel;
    }
}
