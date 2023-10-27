namespace PH.POPC.UI.NewPO
{
    partial class POSKUOperateDetailForm
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
            this.handleTypeLabel = new System.Windows.Forms.Label();
            this.handleNoLabel = new System.Windows.Forms.Label();
            this.handleNoSpinEdit = new DevExpress.XtraEditors.SpinEdit();
            this.operateDateLabel = new System.Windows.Forms.Label();
            this.operateDateDateEdit = new DevExpress.XtraEditors.DateEdit();
            this.qtyLabel = new System.Windows.Forms.Label();
            this.qtySpinEdit = new DevExpress.XtraEditors.SpinEdit();
            this.receiveDateLabel = new System.Windows.Forms.Label();
            this.receiveDateDateEdit = new DevExpress.XtraEditors.DateEdit();
            this.receiveBulkSampleDateLabel = new System.Windows.Forms.Label();
            this.receiveBulkSampleDateDateEdit = new DevExpress.XtraEditors.DateEdit();
            this.submitNoLabel = new System.Windows.Forms.Label();
            this.submitNoTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.statusLabel = new System.Windows.Forms.Label();
            this.statusComboBoxEdit = new DevExpress.XtraEditors.ComboBoxEdit();
            this.handleTypeComboBoxEdit = new DevExpress.XtraEditors.ComboBoxEdit();
            this.remarkMemoEdit = new DevExpress.XtraEditors.MemoEdit();
            remarkLabel1 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.handleNoSpinEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.operateDateDateEdit.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.operateDateDateEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.qtySpinEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.receiveDateDateEdit.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.receiveDateDateEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.receiveBulkSampleDateDateEdit.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.receiveBulkSampleDateDateEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.submitNoTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.statusComboBoxEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.handleTypeComboBoxEdit.Properties)).BeginInit();
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
            remarkLabel1.Location = new System.Drawing.Point(350, 154);
            remarkLabel1.Name = "remarkLabel1";
            remarkLabel1.Size = new System.Drawing.Size(45, 12);
            this.PlatetoolTipController.SetSuperTip(remarkLabel1, null);
            remarkLabel1.TabIndex = 22;
            remarkLabel1.Text = "Remark:";
            // 
            // handleTypeLabel
            // 
            this.handleTypeLabel.Location = new System.Drawing.Point(34, 48);
            this.handleTypeLabel.Name = "handleTypeLabel";
            this.handleTypeLabel.Size = new System.Drawing.Size(68, 12);
            this.PlatetoolTipController.SetSuperTip(this.handleTypeLabel, null);
            this.handleTypeLabel.TabIndex = 4;
            this.handleTypeLabel.Text = "Handle Type:";
            // 
            // handleNoLabel
            // 
            this.handleNoLabel.Location = new System.Drawing.Point(44, 88);
            this.handleNoLabel.Name = "handleNoLabel";
            this.handleNoLabel.Size = new System.Drawing.Size(58, 12);
            this.PlatetoolTipController.SetSuperTip(this.handleNoLabel, null);
            this.handleNoLabel.TabIndex = 6;
            this.handleNoLabel.Text = "Handle No:";
            // 
            // handleNoSpinEdit
            // 
            this.handleNoSpinEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "HandleNo", true));
            this.handleNoSpinEdit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.handleNoSpinEdit.Location = new System.Drawing.Point(119, 85);
            this.handleNoSpinEdit.Name = "handleNoSpinEdit";
            this.handleNoSpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.handleNoSpinEdit.Size = new System.Drawing.Size(161, 21);
            this.handleNoSpinEdit.TabIndex = 7;
            // 
            // operateDateLabel
            // 
            this.operateDateLabel.Location = new System.Drawing.Point(34, 128);
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
            this.operateDateDateEdit.Location = new System.Drawing.Point(119, 125);
            this.operateDateDateEdit.Name = "operateDateDateEdit";
            this.operateDateDateEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.operateDateDateEdit.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.operateDateDateEdit.Size = new System.Drawing.Size(161, 21);
            this.operateDateDateEdit.TabIndex = 9;
            // 
            // qtyLabel
            // 
            this.qtyLabel.Location = new System.Drawing.Point(370, 81);
            this.qtyLabel.Name = "qtyLabel";
            this.qtyLabel.Size = new System.Drawing.Size(25, 12);
            this.PlatetoolTipController.SetSuperTip(this.qtyLabel, null);
            this.qtyLabel.TabIndex = 10;
            this.qtyLabel.Text = "Qty:";
            // 
            // qtySpinEdit
            // 
            this.qtySpinEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Qty", true));
            this.qtySpinEdit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.qtySpinEdit.Location = new System.Drawing.Point(416, 78);
            this.qtySpinEdit.Name = "qtySpinEdit";
            this.qtySpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.qtySpinEdit.Size = new System.Drawing.Size(171, 21);
            this.qtySpinEdit.TabIndex = 11;
            // 
            // receiveDateLabel
            // 
            this.receiveDateLabel.Location = new System.Drawing.Point(33, 168);
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
            this.receiveDateDateEdit.Location = new System.Drawing.Point(119, 165);
            this.receiveDateDateEdit.Name = "receiveDateDateEdit";
            this.receiveDateDateEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.receiveDateDateEdit.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.receiveDateDateEdit.Size = new System.Drawing.Size(161, 21);
            this.receiveDateDateEdit.TabIndex = 13;
            // 
            // receiveBulkSampleDateLabel
            // 
            this.receiveBulkSampleDateLabel.Location = new System.Drawing.Point(33, 208);
            this.receiveBulkSampleDateLabel.Name = "receiveBulkSampleDateLabel";
            this.receiveBulkSampleDateLabel.Size = new System.Drawing.Size(79, 29);
            this.PlatetoolTipController.SetSuperTip(this.receiveBulkSampleDateLabel, null);
            this.receiveBulkSampleDateLabel.TabIndex = 14;
            this.receiveBulkSampleDateLabel.Text = "Receive Bulk Sample Date:";
            // 
            // receiveBulkSampleDateDateEdit
            // 
            this.receiveBulkSampleDateDateEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "ReceiveBulkSampleDate", true));
            this.receiveBulkSampleDateDateEdit.EditValue = null;
            this.receiveBulkSampleDateDateEdit.Location = new System.Drawing.Point(119, 205);
            this.receiveBulkSampleDateDateEdit.Name = "receiveBulkSampleDateDateEdit";
            this.receiveBulkSampleDateDateEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.receiveBulkSampleDateDateEdit.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.receiveBulkSampleDateDateEdit.Size = new System.Drawing.Size(161, 21);
            this.receiveBulkSampleDateDateEdit.TabIndex = 15;
            // 
            // submitNoLabel
            // 
            this.submitNoLabel.Location = new System.Drawing.Point(337, 48);
            this.submitNoLabel.Name = "submitNoLabel";
            this.submitNoLabel.Size = new System.Drawing.Size(58, 12);
            this.PlatetoolTipController.SetSuperTip(this.submitNoLabel, null);
            this.submitNoLabel.TabIndex = 18;
            this.submitNoLabel.Text = "Submit No:";
            // 
            // submitNoTextEdit
            // 
            this.submitNoTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "SubmitNo", true));
            this.submitNoTextEdit.Location = new System.Drawing.Point(416, 45);
            this.submitNoTextEdit.Name = "submitNoTextEdit";
            this.submitNoTextEdit.Size = new System.Drawing.Size(171, 21);
            this.submitNoTextEdit.TabIndex = 19;
            // 
            // statusLabel
            // 
            this.statusLabel.Location = new System.Drawing.Point(360, 114);
            this.statusLabel.Name = "statusLabel";
            this.statusLabel.Size = new System.Drawing.Size(35, 12);
            this.PlatetoolTipController.SetSuperTip(this.statusLabel, null);
            this.statusLabel.TabIndex = 20;
            this.statusLabel.Text = "Status:";
            // 
            // statusComboBoxEdit
            // 
            this.statusComboBoxEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Status", true));
            this.statusComboBoxEdit.Location = new System.Drawing.Point(416, 111);
            this.statusComboBoxEdit.Name = "statusComboBoxEdit";
            this.statusComboBoxEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.statusComboBoxEdit.Properties.Items.AddRange(new object[] {
            "Ok",
            "Rej."});
            this.statusComboBoxEdit.Size = new System.Drawing.Size(171, 21);
            this.statusComboBoxEdit.TabIndex = 21;
            // 
            // handleTypeComboBoxEdit
            // 
            this.handleTypeComboBoxEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "HandleType", true));
            this.handleTypeComboBoxEdit.Location = new System.Drawing.Point(119, 45);
            this.handleTypeComboBoxEdit.Name = "handleTypeComboBoxEdit";
            this.handleTypeComboBoxEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.handleTypeComboBoxEdit.Properties.Items.AddRange(new object[] {
            "BulkSubmission",
            "ColorStd",
            "DipSubmit",
            "TestStatus",
            "Lot"});
            this.handleTypeComboBoxEdit.Size = new System.Drawing.Size(161, 21);
            this.handleTypeComboBoxEdit.TabIndex = 22;
            // 
            // remarkMemoEdit
            // 
            this.remarkMemoEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Remark", true));
            this.remarkMemoEdit.Location = new System.Drawing.Point(416, 152);
            this.remarkMemoEdit.Name = "remarkMemoEdit";
            this.remarkMemoEdit.Size = new System.Drawing.Size(171, 74);
            this.remarkMemoEdit.TabIndex = 23;
            // 
            // POSKUOperateDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(remarkLabel1);
            this.Controls.Add(this.remarkMemoEdit);
            this.Controls.Add(this.handleTypeComboBoxEdit);
            this.Controls.Add(this.statusLabel);
            this.Controls.Add(this.statusComboBoxEdit);
            this.Controls.Add(this.submitNoLabel);
            this.Controls.Add(this.submitNoTextEdit);
            this.Controls.Add(this.receiveBulkSampleDateLabel);
            this.Controls.Add(this.receiveBulkSampleDateDateEdit);
            this.Controls.Add(this.receiveDateLabel);
            this.Controls.Add(this.receiveDateDateEdit);
            this.Controls.Add(this.qtyLabel);
            this.Controls.Add(this.qtySpinEdit);
            this.Controls.Add(this.operateDateLabel);
            this.Controls.Add(this.operateDateDateEdit);
            this.Controls.Add(this.handleNoLabel);
            this.Controls.Add(this.handleNoSpinEdit);
            this.Controls.Add(this.handleTypeLabel);
            this.Name = "POSKUOperateDetailForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.handleTypeLabel, 0);
            this.Controls.SetChildIndex(this.handleNoSpinEdit, 0);
            this.Controls.SetChildIndex(this.handleNoLabel, 0);
            this.Controls.SetChildIndex(this.operateDateDateEdit, 0);
            this.Controls.SetChildIndex(this.operateDateLabel, 0);
            this.Controls.SetChildIndex(this.qtySpinEdit, 0);
            this.Controls.SetChildIndex(this.qtyLabel, 0);
            this.Controls.SetChildIndex(this.receiveDateDateEdit, 0);
            this.Controls.SetChildIndex(this.receiveDateLabel, 0);
            this.Controls.SetChildIndex(this.receiveBulkSampleDateDateEdit, 0);
            this.Controls.SetChildIndex(this.receiveBulkSampleDateLabel, 0);
            this.Controls.SetChildIndex(this.submitNoTextEdit, 0);
            this.Controls.SetChildIndex(this.submitNoLabel, 0);
            this.Controls.SetChildIndex(this.statusComboBoxEdit, 0);
            this.Controls.SetChildIndex(this.statusLabel, 0);
            this.Controls.SetChildIndex(this.handleTypeComboBoxEdit, 0);
            this.Controls.SetChildIndex(this.remarkMemoEdit, 0);
            this.Controls.SetChildIndex(remarkLabel1, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.handleNoSpinEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.operateDateDateEdit.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.operateDateDateEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.qtySpinEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.receiveDateDateEdit.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.receiveDateDateEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.receiveBulkSampleDateDateEdit.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.receiveBulkSampleDateDateEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.submitNoTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.statusComboBoxEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.handleTypeComboBoxEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.remarkMemoEdit.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label handleTypeLabel;
        private System.Windows.Forms.Label handleNoLabel;
        private DevExpress.XtraEditors.SpinEdit handleNoSpinEdit;
        private System.Windows.Forms.Label operateDateLabel;
        private DevExpress.XtraEditors.DateEdit operateDateDateEdit;
        private System.Windows.Forms.Label qtyLabel;
        private DevExpress.XtraEditors.SpinEdit qtySpinEdit;
        private System.Windows.Forms.Label receiveDateLabel;
        private DevExpress.XtraEditors.DateEdit receiveDateDateEdit;
        private System.Windows.Forms.Label receiveBulkSampleDateLabel;
        private DevExpress.XtraEditors.DateEdit receiveBulkSampleDateDateEdit;
        private System.Windows.Forms.Label submitNoLabel;
        private DevExpress.XtraEditors.TextEdit submitNoTextEdit;
        private System.Windows.Forms.Label statusLabel;
        private DevExpress.XtraEditors.ComboBoxEdit statusComboBoxEdit;
        private DevExpress.XtraEditors.ComboBoxEdit handleTypeComboBoxEdit;
        private DevExpress.XtraEditors.MemoEdit remarkMemoEdit;
    }
}
