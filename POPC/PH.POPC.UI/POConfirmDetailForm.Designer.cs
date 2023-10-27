namespace PH.POPC.UI
{
    partial class POConfirmDetailForm
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
            this.confirmDateLabel = new System.Windows.Forms.Label();
            this.confirmDateDateEdit = new DevExpress.XtraEditors.DateEdit();
            this.receiveDateLabel = new System.Windows.Forms.Label();
            this.receiveDateDateEdit = new DevExpress.XtraEditors.DateEdit();
            this.remarkLabel = new System.Windows.Forms.Label();
            this.remarkMemoEdit = new DevExpress.XtraEditors.MemoEdit();
            this.handleNoLabel = new System.Windows.Forms.Label();
            this.handleNoSpinEdit = new DevExpress.XtraEditors.SpinEdit();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.confirmDateDateEdit.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.confirmDateDateEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.receiveDateDateEdit.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.receiveDateDateEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.remarkMemoEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.handleNoSpinEdit.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.POPC.BO.POConfirm);
            // 
            // confirmDateLabel
            // 
            this.confirmDateLabel.AutoSize = true;
            this.confirmDateLabel.Location = new System.Drawing.Point(35, 125);
            this.confirmDateLabel.Name = "confirmDateLabel";
            this.confirmDateLabel.Size = new System.Drawing.Size(72, 12);
            this.PlatetoolTipController.SetSuperTip(this.confirmDateLabel, null);
            this.confirmDateLabel.TabIndex = 4;
            this.confirmDateLabel.Text = "Confirm Date:";
            // 
            // confirmDateDateEdit
            // 
            this.confirmDateDateEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "ConfirmDate", true));
            this.confirmDateDateEdit.EditValue = null;
            this.confirmDateDateEdit.Location = new System.Drawing.Point(125, 120);
            this.confirmDateDateEdit.Name = "confirmDateDateEdit";
            this.confirmDateDateEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.confirmDateDateEdit.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.confirmDateDateEdit.Size = new System.Drawing.Size(197, 21);
            this.confirmDateDateEdit.TabIndex = 5;
            // 
            // receiveDateLabel
            // 
            this.receiveDateLabel.AutoSize = true;
            this.receiveDateLabel.Location = new System.Drawing.Point(35, 90);
            this.receiveDateLabel.Name = "receiveDateLabel";
            this.receiveDateLabel.Size = new System.Drawing.Size(69, 12);
            this.PlatetoolTipController.SetSuperTip(this.receiveDateLabel, null);
            this.receiveDateLabel.TabIndex = 6;
            this.receiveDateLabel.Text = "Receive Date:";
            // 
            // receiveDateDateEdit
            // 
            this.receiveDateDateEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "ReceiveDate", true));
            this.receiveDateDateEdit.EditValue = null;
            this.receiveDateDateEdit.Location = new System.Drawing.Point(125, 85);
            this.receiveDateDateEdit.Name = "receiveDateDateEdit";
            this.receiveDateDateEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.receiveDateDateEdit.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.receiveDateDateEdit.Size = new System.Drawing.Size(197, 21);
            this.receiveDateDateEdit.TabIndex = 7;
            // 
            // remarkLabel
            // 
            this.remarkLabel.AutoSize = true;
            this.remarkLabel.Location = new System.Drawing.Point(35, 161);
            this.remarkLabel.Name = "remarkLabel";
            this.remarkLabel.Size = new System.Drawing.Size(40, 12);
            this.PlatetoolTipController.SetSuperTip(this.remarkLabel, null);
            this.remarkLabel.TabIndex = 8;
            this.remarkLabel.Text = "Season:";
            // 
            // remarkMemoEdit
            // 
            this.remarkMemoEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Remark", true));
            this.remarkMemoEdit.Location = new System.Drawing.Point(125, 157);
            this.remarkMemoEdit.Name = "remarkMemoEdit";
            this.remarkMemoEdit.Size = new System.Drawing.Size(197, 96);
            this.remarkMemoEdit.TabIndex = 9;
            // 
            // handleNoLabel
            // 
            this.handleNoLabel.AutoSize = true;
            this.handleNoLabel.Location = new System.Drawing.Point(35, 57);
            this.handleNoLabel.Name = "handleNoLabel";
            this.handleNoLabel.Size = new System.Drawing.Size(42, 12);
            this.PlatetoolTipController.SetSuperTip(this.handleNoLabel, null);
            this.handleNoLabel.TabIndex = 10;
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
            this.handleNoSpinEdit.Location = new System.Drawing.Point(125, 52);
            this.handleNoSpinEdit.Name = "handleNoSpinEdit";
            this.handleNoSpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.handleNoSpinEdit.Size = new System.Drawing.Size(197, 21);
            this.handleNoSpinEdit.TabIndex = 11;
            // 
            // POConfirmDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.handleNoLabel);
            this.Controls.Add(this.handleNoSpinEdit);
            this.Controls.Add(this.remarkLabel);
            this.Controls.Add(this.remarkMemoEdit);
            this.Controls.Add(this.receiveDateLabel);
            this.Controls.Add(this.receiveDateDateEdit);
            this.Controls.Add(this.confirmDateLabel);
            this.Controls.Add(this.confirmDateDateEdit);
            this.Name = "POConfirmDetailForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.confirmDateDateEdit, 0);
            this.Controls.SetChildIndex(this.confirmDateLabel, 0);
            this.Controls.SetChildIndex(this.receiveDateDateEdit, 0);
            this.Controls.SetChildIndex(this.receiveDateLabel, 0);
            this.Controls.SetChildIndex(this.remarkMemoEdit, 0);
            this.Controls.SetChildIndex(this.remarkLabel, 0);
            this.Controls.SetChildIndex(this.handleNoSpinEdit, 0);
            this.Controls.SetChildIndex(this.handleNoLabel, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.confirmDateDateEdit.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.confirmDateDateEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.receiveDateDateEdit.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.receiveDateDateEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.remarkMemoEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.handleNoSpinEdit.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.DateEdit confirmDateDateEdit;
        private DevExpress.XtraEditors.DateEdit receiveDateDateEdit;
        private DevExpress.XtraEditors.MemoEdit remarkMemoEdit;
        private DevExpress.XtraEditors.SpinEdit handleNoSpinEdit;
        private System.Windows.Forms.Label confirmDateLabel;
        private System.Windows.Forms.Label receiveDateLabel;
        private System.Windows.Forms.Label remarkLabel;
        private System.Windows.Forms.Label handleNoLabel;
    }
}
