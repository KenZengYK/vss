namespace PH.BasicInfo.UI.EndPointFrame
{
    partial class EPFParentEditFrm
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
            this.endPointCodeLabel = new System.Windows.Forms.Label();
            this.endPointCodeTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.pHFactoryLabel = new System.Windows.Forms.Label();
            this.pHFactoryTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.remarkLabel = new System.Windows.Forms.Label();
            this.remarkMemoExEdit = new DevExpress.XtraEditors.MemoExEdit();
            this.timeFrameLabel = new System.Windows.Forms.Label();
            this.timeFrameSpinEdit = new DevExpress.XtraEditors.SpinEdit();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.endPointCodeTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pHFactoryTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.remarkMemoExEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.timeFrameSpinEdit.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.BasicInfo.BO.EndPointFactoryFrame);
            // 
            // endPointCodeLabel
            // 
            this.endPointCodeLabel.Location = new System.Drawing.Point(151, 98);
            this.endPointCodeLabel.Name = "endPointCodeLabel";
            this.endPointCodeLabel.Size = new System.Drawing.Size(107, 12);
            this.PlatetoolTipController.SetSuperTip(this.endPointCodeLabel, null);
            this.endPointCodeLabel.TabIndex = 4;
            this.endPointCodeLabel.Text = "End Point Code:";
            this.endPointCodeLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // endPointCodeTextEdit
            // 
            this.endPointCodeTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "EndPointCode", true));
            this.endPointCodeTextEdit.Location = new System.Drawing.Point(264, 95);
            this.endPointCodeTextEdit.Name = "endPointCodeTextEdit";
            this.endPointCodeTextEdit.Size = new System.Drawing.Size(145, 21);
            this.endPointCodeTextEdit.TabIndex = 5;
            // 
            // pHFactoryLabel
            // 
            this.pHFactoryLabel.Location = new System.Drawing.Point(151, 71);
            this.pHFactoryLabel.Name = "pHFactoryLabel";
            this.pHFactoryLabel.Size = new System.Drawing.Size(107, 12);
            this.PlatetoolTipController.SetSuperTip(this.pHFactoryLabel, null);
            this.pHFactoryLabel.TabIndex = 6;
            this.pHFactoryLabel.Text = "PHFactory:";
            this.pHFactoryLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // pHFactoryTextEdit
            // 
            this.pHFactoryTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "PHFactory", true));
            this.pHFactoryTextEdit.Location = new System.Drawing.Point(264, 68);
            this.pHFactoryTextEdit.Name = "pHFactoryTextEdit";
            this.pHFactoryTextEdit.Size = new System.Drawing.Size(145, 21);
            this.pHFactoryTextEdit.TabIndex = 7;
            // 
            // remarkLabel
            // 
            this.remarkLabel.Location = new System.Drawing.Point(151, 152);
            this.remarkLabel.Name = "remarkLabel";
            this.remarkLabel.Size = new System.Drawing.Size(107, 12);
            this.PlatetoolTipController.SetSuperTip(this.remarkLabel, null);
            this.remarkLabel.TabIndex = 8;
            this.remarkLabel.Text = "Remark:";
            this.remarkLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // remarkMemoExEdit
            // 
            this.remarkMemoExEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Remark", true));
            this.remarkMemoExEdit.Location = new System.Drawing.Point(264, 149);
            this.remarkMemoExEdit.Name = "remarkMemoExEdit";
            this.remarkMemoExEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.remarkMemoExEdit.Size = new System.Drawing.Size(145, 21);
            this.remarkMemoExEdit.TabIndex = 9;
            // 
            // timeFrameLabel
            // 
            this.timeFrameLabel.Location = new System.Drawing.Point(151, 125);
            this.timeFrameLabel.Name = "timeFrameLabel";
            this.timeFrameLabel.Size = new System.Drawing.Size(107, 12);
            this.PlatetoolTipController.SetSuperTip(this.timeFrameLabel, null);
            this.timeFrameLabel.TabIndex = 10;
            this.timeFrameLabel.Text = "Time Frame:";
            this.timeFrameLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // timeFrameSpinEdit
            // 
            this.timeFrameSpinEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "TimeFrame", true));
            this.timeFrameSpinEdit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.timeFrameSpinEdit.Location = new System.Drawing.Point(264, 122);
            this.timeFrameSpinEdit.Name = "timeFrameSpinEdit";
            this.timeFrameSpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.timeFrameSpinEdit.Size = new System.Drawing.Size(145, 21);
            this.timeFrameSpinEdit.TabIndex = 11;
            // 
            // EPFParentEditFrm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.timeFrameLabel);
            this.Controls.Add(this.timeFrameSpinEdit);
            this.Controls.Add(this.remarkLabel);
            this.Controls.Add(this.remarkMemoExEdit);
            this.Controls.Add(this.pHFactoryLabel);
            this.Controls.Add(this.pHFactoryTextEdit);
            this.Controls.Add(this.endPointCodeLabel);
            this.Controls.Add(this.endPointCodeTextEdit);
            this.Name = "EPFParentEditFrm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.endPointCodeTextEdit, 0);
            this.Controls.SetChildIndex(this.endPointCodeLabel, 0);
            this.Controls.SetChildIndex(this.pHFactoryTextEdit, 0);
            this.Controls.SetChildIndex(this.pHFactoryLabel, 0);
            this.Controls.SetChildIndex(this.remarkMemoExEdit, 0);
            this.Controls.SetChildIndex(this.remarkLabel, 0);
            this.Controls.SetChildIndex(this.timeFrameSpinEdit, 0);
            this.Controls.SetChildIndex(this.timeFrameLabel, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.endPointCodeTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pHFactoryTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.remarkMemoExEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.timeFrameSpinEdit.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit endPointCodeTextEdit;
        private DevExpress.XtraEditors.TextEdit pHFactoryTextEdit;
        private System.Windows.Forms.Label endPointCodeLabel;
        private System.Windows.Forms.Label pHFactoryLabel;
        private System.Windows.Forms.Label remarkLabel;
        private DevExpress.XtraEditors.MemoExEdit remarkMemoExEdit;
        private System.Windows.Forms.Label timeFrameLabel;
        private DevExpress.XtraEditors.SpinEdit timeFrameSpinEdit;
    }
}
