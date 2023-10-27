namespace PH.FabricInspection.UI.MasterDB
{
    partial class S21QCResultActionDetailForm
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
            System.Windows.Forms.Label s21QCResultLabel;
            System.Windows.Forms.Label s21QCActionLabel;
            System.Windows.Forms.Label desc_ENLabel;
            System.Windows.Forms.Label desc_CNLabel;
            this.seqNoSpinEdit = new DevExpress.XtraEditors.SpinEdit();
            this.s21QCResultTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.s21QCActionTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.desc_ENMemoEdit = new DevExpress.XtraEditors.MemoEdit();
            this.desc_CNMemoEdit = new DevExpress.XtraEditors.MemoEdit();
            this.groupControl1 = new DevExpress.XtraEditors.GroupControl();
            seqNoLabel = new System.Windows.Forms.Label();
            s21QCResultLabel = new System.Windows.Forms.Label();
            s21QCActionLabel = new System.Windows.Forms.Label();
            desc_ENLabel = new System.Windows.Forms.Label();
            desc_CNLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.seqNoSpinEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.s21QCResultTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.s21QCActionTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.desc_ENMemoEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.desc_CNMemoEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).BeginInit();
            this.groupControl1.SuspendLayout();
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
            this.BindingSource.DataSource = typeof(PH.FabricInspection.BO.S21QCResultAction);
            // 
            // seqNoLabel
            // 
            seqNoLabel.AutoSize = true;
            seqNoLabel.Location = new System.Drawing.Point(73, 64);
            seqNoLabel.Name = "seqNoLabel";
            seqNoLabel.Size = new System.Drawing.Size(47, 12);
            this.PlatetoolTipController.SetSuperTip(seqNoLabel, null);
            seqNoLabel.TabIndex = 4;
            seqNoLabel.Text = "Seq No:";
            // 
            // s21QCResultLabel
            // 
            s21QCResultLabel.AutoSize = true;
            s21QCResultLabel.Location = new System.Drawing.Point(73, 100);
            s21QCResultLabel.Name = "s21QCResultLabel";
            s21QCResultLabel.Size = new System.Drawing.Size(41, 24);
            this.PlatetoolTipController.SetSuperTip(s21QCResultLabel, null);
            s21QCResultLabel.TabIndex = 6;
            s21QCResultLabel.Text = "S21 QC\r\nResult";
            // 
            // s21QCActionLabel
            // 
            s21QCActionLabel.AutoSize = true;
            s21QCActionLabel.Location = new System.Drawing.Point(73, 140);
            s21QCActionLabel.Name = "s21QCActionLabel";
            s21QCActionLabel.Size = new System.Drawing.Size(107, 24);
            this.PlatetoolTipController.SetSuperTip(s21QCActionLabel, null);
            s21QCActionLabel.TabIndex = 8;
            s21QCActionLabel.Text = "S21 QC Action\r\n(who execute it?)";
            // 
            // desc_ENLabel
            // 
            desc_ENLabel.AutoSize = true;
            desc_ENLabel.Location = new System.Drawing.Point(45, 39);
            desc_ENLabel.Name = "desc_ENLabel";
            desc_ENLabel.Size = new System.Drawing.Size(23, 12);
            this.PlatetoolTipController.SetSuperTip(desc_ENLabel, null);
            desc_ENLabel.TabIndex = 10;
            desc_ENLabel.Text = "EN:";
            // 
            // desc_CNLabel
            // 
            desc_CNLabel.AutoSize = true;
            desc_CNLabel.Location = new System.Drawing.Point(45, 127);
            desc_CNLabel.Name = "desc_CNLabel";
            desc_CNLabel.Size = new System.Drawing.Size(23, 12);
            this.PlatetoolTipController.SetSuperTip(desc_CNLabel, null);
            desc_CNLabel.TabIndex = 12;
            desc_CNLabel.Text = "CN:";
            // 
            // seqNoSpinEdit
            // 
            this.seqNoSpinEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "SeqNo", true));
            this.seqNoSpinEdit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.seqNoSpinEdit.Location = new System.Drawing.Point(188, 61);
            this.seqNoSpinEdit.Name = "seqNoSpinEdit";
            this.seqNoSpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.seqNoSpinEdit.Size = new System.Drawing.Size(105, 21);
            this.seqNoSpinEdit.TabIndex = 5;
            // 
            // s21QCResultTextEdit
            // 
            this.s21QCResultTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "S21QCResult", true));
            this.s21QCResultTextEdit.Location = new System.Drawing.Point(188, 98);
            this.s21QCResultTextEdit.Name = "s21QCResultTextEdit";
            this.s21QCResultTextEdit.Size = new System.Drawing.Size(253, 21);
            this.s21QCResultTextEdit.TabIndex = 7;
            // 
            // s21QCActionTextEdit
            // 
            this.s21QCActionTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "S21QCAction", true));
            this.s21QCActionTextEdit.Location = new System.Drawing.Point(188, 138);
            this.s21QCActionTextEdit.Name = "s21QCActionTextEdit";
            this.s21QCActionTextEdit.Size = new System.Drawing.Size(253, 21);
            this.s21QCActionTextEdit.TabIndex = 9;
            // 
            // desc_ENMemoEdit
            // 
            this.desc_ENMemoEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Desc_EN", true));
            this.desc_ENMemoEdit.Location = new System.Drawing.Point(80, 35);
            this.desc_ENMemoEdit.Name = "desc_ENMemoEdit";
            this.desc_ENMemoEdit.Size = new System.Drawing.Size(502, 79);
            this.desc_ENMemoEdit.TabIndex = 11;
            // 
            // desc_CNMemoEdit
            // 
            this.desc_CNMemoEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Desc_CN", true));
            this.desc_CNMemoEdit.Location = new System.Drawing.Point(80, 122);
            this.desc_CNMemoEdit.Name = "desc_CNMemoEdit";
            this.desc_CNMemoEdit.Size = new System.Drawing.Size(502, 96);
            this.desc_CNMemoEdit.TabIndex = 13;
            // 
            // groupControl1
            // 
            this.groupControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.groupControl1.Controls.Add(this.desc_ENMemoEdit);
            this.groupControl1.Controls.Add(desc_CNLabel);
            this.groupControl1.Controls.Add(desc_ENLabel);
            this.groupControl1.Controls.Add(this.desc_CNMemoEdit);
            this.groupControl1.Location = new System.Drawing.Point(68, 181);
            this.groupControl1.Name = "groupControl1";
            this.groupControl1.Size = new System.Drawing.Size(601, 237);
            this.PlatetoolTipController.SetSuperTip(this.groupControl1, null);
            this.groupControl1.TabIndex = 14;
            this.groupControl1.Text = "Cde Explanation";
            // 
            // S21QCResultActionDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.groupControl1);
            this.Controls.Add(s21QCActionLabel);
            this.Controls.Add(this.s21QCActionTextEdit);
            this.Controls.Add(s21QCResultLabel);
            this.Controls.Add(this.s21QCResultTextEdit);
            this.Controls.Add(seqNoLabel);
            this.Controls.Add(this.seqNoSpinEdit);
            this.Name = "S21QCResultActionDetailForm";
            this.Size = new System.Drawing.Size(1000, 548);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.seqNoSpinEdit, 0);
            this.Controls.SetChildIndex(seqNoLabel, 0);
            this.Controls.SetChildIndex(this.s21QCResultTextEdit, 0);
            this.Controls.SetChildIndex(s21QCResultLabel, 0);
            this.Controls.SetChildIndex(this.s21QCActionTextEdit, 0);
            this.Controls.SetChildIndex(s21QCActionLabel, 0);
            this.Controls.SetChildIndex(this.groupControl1, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.seqNoSpinEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.s21QCResultTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.s21QCActionTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.desc_ENMemoEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.desc_CNMemoEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).EndInit();
            this.groupControl1.ResumeLayout(false);
            this.groupControl1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.SpinEdit seqNoSpinEdit;
        private DevExpress.XtraEditors.TextEdit s21QCResultTextEdit;
        private DevExpress.XtraEditors.TextEdit s21QCActionTextEdit;
        private DevExpress.XtraEditors.MemoEdit desc_ENMemoEdit;
        private DevExpress.XtraEditors.MemoEdit desc_CNMemoEdit;
        private DevExpress.XtraEditors.GroupControl groupControl1;
    }
}
