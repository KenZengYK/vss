namespace PH.POPC.UI
{
    partial class POSKUColorStdDetailForm
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
            System.Windows.Forms.Label remarkLabel1;
            this.handleNoLabel = new System.Windows.Forms.Label();
            this.handleNoSpinEdit = new DevExpress.XtraEditors.SpinEdit();
            this.operateDateLabel = new System.Windows.Forms.Label();
            this.operateDateDateEdit = new DevExpress.XtraEditors.DateEdit();
            this.remarkMemoEdit = new DevExpress.XtraEditors.MemoEdit();
            remarkLabel1 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.handleNoSpinEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.operateDateDateEdit.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.operateDateDateEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.remarkMemoEdit.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.POPC.BO.POSKUOperate);
            // 
            // remarkLabel1
            // 
            remarkLabel1.AutoSize = true;
            remarkLabel1.Location = new System.Drawing.Point(29, 172);
            remarkLabel1.Name = "remarkLabel1";
            remarkLabel1.Size = new System.Drawing.Size(40, 12);
            this.PlatetoolTipController.SetSuperTip(remarkLabel1, null);
            remarkLabel1.TabIndex = 22;
            remarkLabel1.Text = "Season:";
            // 
            // handleNoLabel
            // 
            this.handleNoLabel.AutoSize = true;
            this.handleNoLabel.Location = new System.Drawing.Point(29, 82);
            this.handleNoLabel.Name = "handleNoLabel";
            this.handleNoLabel.Size = new System.Drawing.Size(42, 12);
            this.PlatetoolTipController.SetSuperTip(this.handleNoLabel, null);
            this.handleNoLabel.TabIndex = 6;
            this.handleNoLabel.Text = "Seq No:";
            // 
            // handleNoSpinEdit
            // 
            this.handleNoSpinEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "HandleNo", true));
            this.handleNoSpinEdit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.handleNoSpinEdit.Location = new System.Drawing.Point(106, 77);
            this.handleNoSpinEdit.Name = "handleNoSpinEdit";
            this.handleNoSpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.handleNoSpinEdit.Size = new System.Drawing.Size(161, 21);
            this.handleNoSpinEdit.TabIndex = 7;
            // 
            // operateDateLabel
            // 
            this.operateDateLabel.AutoSize = true;
            this.operateDateLabel.Location = new System.Drawing.Point(29, 122);
            this.operateDateLabel.Name = "operateDateLabel";
            this.operateDateLabel.Size = new System.Drawing.Size(68, 12);
            this.PlatetoolTipController.SetSuperTip(this.operateDateLabel, null);
            this.operateDateLabel.TabIndex = 8;
            this.operateDateLabel.Text = "Operate Date:";
            // 
            // operateDateDateEdit
            // 
            this.operateDateDateEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "OperateDate", true));
            this.operateDateDateEdit.EditValue = null;
            this.operateDateDateEdit.Location = new System.Drawing.Point(106, 117);
            this.operateDateDateEdit.Name = "operateDateDateEdit";
            this.operateDateDateEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.operateDateDateEdit.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.operateDateDateEdit.Size = new System.Drawing.Size(161, 21);
            this.operateDateDateEdit.TabIndex = 9;
            // 
            // remarkMemoEdit
            // 
            this.remarkMemoEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Remark", true));
            this.remarkMemoEdit.Location = new System.Drawing.Point(106, 168);
            this.remarkMemoEdit.Name = "remarkMemoEdit";
            this.remarkMemoEdit.Size = new System.Drawing.Size(161, 74);
            this.remarkMemoEdit.TabIndex = 23;
            // 
            // POSKUColorStdDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(remarkLabel1);
            this.Controls.Add(this.remarkMemoEdit);
            this.Controls.Add(this.operateDateLabel);
            this.Controls.Add(this.operateDateDateEdit);
            this.Controls.Add(this.handleNoLabel);
            this.Controls.Add(this.handleNoSpinEdit);
            this.Name = "POSKUColorStdDetailForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.handleNoSpinEdit, 0);
            this.Controls.SetChildIndex(this.handleNoLabel, 0);
            this.Controls.SetChildIndex(this.operateDateDateEdit, 0);
            this.Controls.SetChildIndex(this.operateDateLabel, 0);
            this.Controls.SetChildIndex(this.remarkMemoEdit, 0);
            this.Controls.SetChildIndex(remarkLabel1, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.handleNoSpinEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.operateDateDateEdit.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.operateDateDateEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.remarkMemoEdit.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label handleNoLabel;
        private DevExpress.XtraEditors.SpinEdit handleNoSpinEdit;
        private System.Windows.Forms.Label operateDateLabel;
        private DevExpress.XtraEditors.DateEdit operateDateDateEdit;
        private DevExpress.XtraEditors.MemoEdit remarkMemoEdit;
    }
}
