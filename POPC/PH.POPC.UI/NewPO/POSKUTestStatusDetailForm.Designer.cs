namespace PH.POPC.UI.NewPO
{
    partial class POSKUTestStatusDetailForm
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
            this.receiveDateLabel = new System.Windows.Forms.Label();
            this.receiveDateDateEdit = new DevExpress.XtraEditors.DateEdit();
            this.statusLabel = new System.Windows.Forms.Label();
            this.statusComboBoxEdit = new DevExpress.XtraEditors.ComboBoxEdit();
            this.remarkMemoEdit = new DevExpress.XtraEditors.MemoEdit();
            remarkLabel1 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.handleNoSpinEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.receiveDateDateEdit.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.receiveDateDateEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.statusComboBoxEdit.Properties)).BeginInit();
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
            remarkLabel1.Location = new System.Drawing.Point(26, 163);
            remarkLabel1.Name = "remarkLabel1";
            remarkLabel1.Size = new System.Drawing.Size(45, 12);
            this.PlatetoolTipController.SetSuperTip(remarkLabel1, null);
            remarkLabel1.TabIndex = 22;
            remarkLabel1.Text = "Remark:";
            // 
            // handleNoLabel
            // 
            this.handleNoLabel.Location = new System.Drawing.Point(26, 49);
            this.handleNoLabel.Name = "handleNoLabel";
            this.handleNoLabel.Size = new System.Drawing.Size(58, 12);
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
            this.handleNoSpinEdit.Location = new System.Drawing.Point(124, 46);
            this.handleNoSpinEdit.Name = "handleNoSpinEdit";
            this.handleNoSpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.handleNoSpinEdit.Size = new System.Drawing.Size(171, 21);
            this.handleNoSpinEdit.TabIndex = 7;
            // 
            // receiveDateLabel
            // 
            this.receiveDateLabel.Location = new System.Drawing.Point(26, 90);
            this.receiveDateLabel.Name = "receiveDateLabel";
            this.receiveDateLabel.Size = new System.Drawing.Size(69, 12);
            this.PlatetoolTipController.SetSuperTip(this.receiveDateLabel, null);
            this.receiveDateLabel.TabIndex = 12;
            this.receiveDateLabel.Text = "Receive Date:";
            // 
            // receiveDateDateEdit
            // 
            this.receiveDateDateEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "ReceiveDate", true));
            this.receiveDateDateEdit.EditValue = null;
            this.receiveDateDateEdit.Location = new System.Drawing.Point(124, 87);
            this.receiveDateDateEdit.Name = "receiveDateDateEdit";
            this.receiveDateDateEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.receiveDateDateEdit.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.receiveDateDateEdit.Size = new System.Drawing.Size(171, 21);
            this.receiveDateDateEdit.TabIndex = 13;
            // 
            // statusLabel
            // 
            this.statusLabel.Location = new System.Drawing.Point(26, 126);
            this.statusLabel.Name = "statusLabel";
            this.statusLabel.Size = new System.Drawing.Size(35, 12);
            this.PlatetoolTipController.SetSuperTip(this.statusLabel, null);
            this.statusLabel.TabIndex = 20;
            this.statusLabel.Text = "Status:";
            // 
            // statusComboBoxEdit
            // 
            this.statusComboBoxEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Status", true));
            this.statusComboBoxEdit.Location = new System.Drawing.Point(124, 123);
            this.statusComboBoxEdit.Name = "statusComboBoxEdit";
            this.statusComboBoxEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.statusComboBoxEdit.Properties.Items.AddRange(new object[] {
            "Ok",
            "Rej."});
            this.statusComboBoxEdit.Size = new System.Drawing.Size(171, 21);
            this.statusComboBoxEdit.TabIndex = 21;
            // 
            // remarkMemoEdit
            // 
            this.remarkMemoEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Remark", true));
            this.remarkMemoEdit.Location = new System.Drawing.Point(124, 161);
            this.remarkMemoEdit.Name = "remarkMemoEdit";
            this.remarkMemoEdit.Size = new System.Drawing.Size(171, 74);
            this.remarkMemoEdit.TabIndex = 23;
            // 
            // POSKUTestStatusDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(remarkLabel1);
            this.Controls.Add(this.remarkMemoEdit);
            this.Controls.Add(this.statusLabel);
            this.Controls.Add(this.statusComboBoxEdit);
            this.Controls.Add(this.receiveDateLabel);
            this.Controls.Add(this.receiveDateDateEdit);
            this.Controls.Add(this.handleNoLabel);
            this.Controls.Add(this.handleNoSpinEdit);
            this.Name = "POSKUTestStatusDetailForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.handleNoSpinEdit, 0);
            this.Controls.SetChildIndex(this.handleNoLabel, 0);
            this.Controls.SetChildIndex(this.receiveDateDateEdit, 0);
            this.Controls.SetChildIndex(this.receiveDateLabel, 0);
            this.Controls.SetChildIndex(this.statusComboBoxEdit, 0);
            this.Controls.SetChildIndex(this.statusLabel, 0);
            this.Controls.SetChildIndex(this.remarkMemoEdit, 0);
            this.Controls.SetChildIndex(remarkLabel1, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.handleNoSpinEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.receiveDateDateEdit.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.receiveDateDateEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.statusComboBoxEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.remarkMemoEdit.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label handleNoLabel;
        private DevExpress.XtraEditors.SpinEdit handleNoSpinEdit;
        private System.Windows.Forms.Label receiveDateLabel;
        private DevExpress.XtraEditors.DateEdit receiveDateDateEdit;
        private System.Windows.Forms.Label statusLabel;
        private DevExpress.XtraEditors.ComboBoxEdit statusComboBoxEdit;
        private DevExpress.XtraEditors.MemoEdit remarkMemoEdit;
    }
}
