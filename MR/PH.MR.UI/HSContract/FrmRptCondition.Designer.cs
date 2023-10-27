namespace PH.MR.UI.HSContract
{
    partial class FrmRptCondition
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

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.rgpType = new DevExpress.XtraEditors.RadioGroup();
            this.cmbFty = new DevExpress.XtraEditors.ComboBoxEdit();
            this.cmbContract = new DevExpress.XtraEditors.ComboBoxEdit();
            this.lblFty = new DevExpress.XtraEditors.LabelControl();
            this.lblContract = new DevExpress.XtraEditors.LabelControl();
            this.btnPrint = new DevExpress.XtraEditors.SimpleButton();
            this.btnCancel = new DevExpress.XtraEditors.SimpleButton();
            ((System.ComponentModel.ISupportInitialize)(this.rgpType.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cmbFty.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cmbContract.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // rgpType
            // 
            this.rgpType.EditValue = 0;
            this.rgpType.Location = new System.Drawing.Point(49, 12);
            this.rgpType.Name = "rgpType";
            this.rgpType.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] {
            new DevExpress.XtraEditors.Controls.RadioGroupItem(0, "匯總表"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem(1, "明細表")});
            this.rgpType.Size = new System.Drawing.Size(351, 35);
            this.rgpType.TabIndex = 0;
            this.rgpType.SelectedIndexChanged += new System.EventHandler(this.rgpType_SelectedIndexChanged);
            // 
            // cmbFty
            // 
            this.cmbFty.EditValue = "ALL";
            this.cmbFty.Enabled = false;
            this.cmbFty.Location = new System.Drawing.Point(118, 65);
            this.cmbFty.Name = "cmbFty";
            this.cmbFty.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cmbFty.Properties.Items.AddRange(new object[] {
            "ALL",
            "SL",
            "GG",
            "RX"});
            this.cmbFty.Size = new System.Drawing.Size(100, 21);
            this.cmbFty.TabIndex = 1;
            // 
            // cmbContract
            // 
            this.cmbContract.EditValue = "ALL";
            this.cmbContract.Enabled = false;
            this.cmbContract.Location = new System.Drawing.Point(118, 112);
            this.cmbContract.Name = "cmbContract";
            this.cmbContract.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cmbContract.Size = new System.Drawing.Size(183, 21);
            this.cmbContract.TabIndex = 2;
            // 
            // lblFty
            // 
            this.lblFty.Location = new System.Drawing.Point(59, 68);
            this.lblFty.Name = "lblFty";
            this.lblFty.Size = new System.Drawing.Size(24, 14);
            this.lblFty.TabIndex = 3;
            this.lblFty.Text = "工廠";
            // 
            // lblContract
            // 
            this.lblContract.Location = new System.Drawing.Point(59, 115);
            this.lblContract.Name = "lblContract";
            this.lblContract.Size = new System.Drawing.Size(36, 14);
            this.lblContract.TabIndex = 4;
            this.lblContract.Text = "合同號";
            // 
            // btnPrint
            // 
            this.btnPrint.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.btnPrint.Location = new System.Drawing.Point(91, 170);
            this.btnPrint.Name = "btnPrint";
            this.btnPrint.Size = new System.Drawing.Size(75, 23);
            this.btnPrint.TabIndex = 5;
            this.btnPrint.Text = "打印";
            this.btnPrint.Click += new System.EventHandler(this.btnPrint_Click);
            // 
            // btnCancel
            // 
            this.btnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnCancel.Location = new System.Drawing.Point(226, 170);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(75, 23);
            this.btnCancel.TabIndex = 6;
            this.btnCancel.Text = "取消";
            // 
            // FrmRptCondition
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(462, 239);
            this.Controls.Add(this.btnCancel);
            this.Controls.Add(this.btnPrint);
            this.Controls.Add(this.lblContract);
            this.Controls.Add(this.lblFty);
            this.Controls.Add(this.cmbContract);
            this.Controls.Add(this.cmbFty);
            this.Controls.Add(this.rgpType);
            this.Name = "FrmRptCondition";
            this.Text = "報表條件選擇";
            ((System.ComponentModel.ISupportInitialize)(this.rgpType.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cmbFty.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cmbContract.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.RadioGroup rgpType;
        private DevExpress.XtraEditors.ComboBoxEdit cmbFty;
        private DevExpress.XtraEditors.ComboBoxEdit cmbContract;
        private DevExpress.XtraEditors.LabelControl lblFty;
        private DevExpress.XtraEditors.LabelControl lblContract;
        private DevExpress.XtraEditors.SimpleButton btnPrint;
        private DevExpress.XtraEditors.SimpleButton btnCancel;
    }
}