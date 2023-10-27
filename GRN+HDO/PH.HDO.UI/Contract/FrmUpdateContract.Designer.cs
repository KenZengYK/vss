namespace PH.HDO.UI.Contract
{
    partial class FrmUpdateContract
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
            this.txtBgno = new DevExpress.XtraEditors.TextEdit();
            this.btnUpdate = new DevExpress.XtraEditors.SimpleButton();
            this.btnCancel = new DevExpress.XtraEditors.SimpleButton();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.cmbContract = new DevExpress.XtraEditors.ComboBoxEdit();
            this.lblWeight = new DevExpress.XtraEditors.LabelControl();
            this.edtWeight = new DevExpress.XtraEditors.TextEdit();
            this.lblWeightCal = new DevExpress.XtraEditors.LabelControl();
            this.edtWeightCal = new DevExpress.XtraEditors.TextEdit();
            this.labelControl3 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl4 = new DevExpress.XtraEditors.LabelControl();
            this.lblBG_Date = new DevExpress.XtraEditors.LabelControl();
            this.deBG_Date = new DevExpress.XtraEditors.DateEdit();
            ((System.ComponentModel.ISupportInitialize)(this.txtBgno.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cmbContract.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtWeight.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtWeightCal.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deBG_Date.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deBG_Date.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // txtBgno
            // 
            this.txtBgno.Location = new System.Drawing.Point(128, 56);
            this.txtBgno.Name = "txtBgno";
            this.txtBgno.Size = new System.Drawing.Size(297, 21);
            this.txtBgno.TabIndex = 1;
            // 
            // btnUpdate
            // 
            this.btnUpdate.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.btnUpdate.Location = new System.Drawing.Point(115, 198);
            this.btnUpdate.Name = "btnUpdate";
            this.btnUpdate.Size = new System.Drawing.Size(75, 23);
            this.btnUpdate.TabIndex = 2;
            this.btnUpdate.Text = "Update";
            this.btnUpdate.Click += new System.EventHandler(this.btnUpdate_Click);
            // 
            // btnCancel
            // 
            this.btnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnCancel.Location = new System.Drawing.Point(246, 198);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(75, 23);
            this.btnCancel.TabIndex = 3;
            this.btnCancel.Text = "Cancel";
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(79, 23);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(36, 14);
            this.labelControl1.TabIndex = 4;
            this.labelControl1.Text = "合同號";
            // 
            // labelControl2
            // 
            this.labelControl2.Location = new System.Drawing.Point(67, 59);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(48, 14);
            this.labelControl2.TabIndex = 5;
            this.labelControl2.Text = "報關單號";
            // 
            // cmbContract
            // 
            this.cmbContract.Location = new System.Drawing.Point(128, 20);
            this.cmbContract.Name = "cmbContract";
            this.cmbContract.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cmbContract.Size = new System.Drawing.Size(244, 21);
            this.cmbContract.TabIndex = 7;
            // 
            // lblWeight
            // 
            this.lblWeight.Location = new System.Drawing.Point(67, 126);
            this.lblWeight.Name = "lblWeight";
            this.lblWeight.Size = new System.Drawing.Size(48, 14);
            this.lblWeight.TabIndex = 8;
            this.lblWeight.Text = "報關重量";
            // 
            // edtWeight
            // 
            this.edtWeight.Location = new System.Drawing.Point(128, 123);
            this.edtWeight.Name = "edtWeight";
            this.edtWeight.Size = new System.Drawing.Size(172, 21);
            this.edtWeight.TabIndex = 9;
            // 
            // lblWeightCal
            // 
            this.lblWeightCal.Location = new System.Drawing.Point(24, 160);
            this.lblWeightCal.Name = "lblWeightCal";
            this.lblWeightCal.Size = new System.Drawing.Size(91, 14);
            this.lblWeightCal.TabIndex = 10;
            this.lblWeightCal.Text = "所選擇Grn總重量";
            // 
            // edtWeightCal
            // 
            this.edtWeightCal.Location = new System.Drawing.Point(128, 157);
            this.edtWeightCal.Name = "edtWeightCal";
            this.edtWeightCal.Size = new System.Drawing.Size(172, 21);
            this.edtWeightCal.TabIndex = 11;
            // 
            // labelControl3
            // 
            this.labelControl3.Location = new System.Drawing.Point(306, 152);
            this.labelControl3.Name = "labelControl3";
            this.labelControl3.Size = new System.Drawing.Size(15, 14);
            this.labelControl3.TabIndex = 12;
            this.labelControl3.Text = "KG";
            // 
            // labelControl4
            // 
            this.labelControl4.Location = new System.Drawing.Point(306, 115);
            this.labelControl4.Name = "labelControl4";
            this.labelControl4.Size = new System.Drawing.Size(15, 14);
            this.labelControl4.TabIndex = 13;
            this.labelControl4.Text = "KG";
            // 
            // lblBG_Date
            // 
            this.lblBG_Date.Location = new System.Drawing.Point(67, 92);
            this.lblBG_Date.Name = "lblBG_Date";
            this.lblBG_Date.Size = new System.Drawing.Size(48, 14);
            this.lblBG_Date.TabIndex = 14;
            this.lblBG_Date.Text = "報關日期";
            // 
            // deBG_Date
            // 
            this.deBG_Date.EditValue = null;
            this.deBG_Date.Location = new System.Drawing.Point(128, 89);
            this.deBG_Date.Name = "deBG_Date";
            this.deBG_Date.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.deBG_Date.Properties.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.deBG_Date.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.deBG_Date.Properties.EditFormat.FormatString = "yyyy-MM-dd";
            this.deBG_Date.Properties.EditFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.deBG_Date.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.deBG_Date.Size = new System.Drawing.Size(172, 21);
            this.deBG_Date.TabIndex = 15;
            // 
            // FrmUpdateContract
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(442, 233);
            this.Controls.Add(this.deBG_Date);
            this.Controls.Add(this.lblBG_Date);
            this.Controls.Add(this.labelControl4);
            this.Controls.Add(this.labelControl3);
            this.Controls.Add(this.edtWeightCal);
            this.Controls.Add(this.lblWeightCal);
            this.Controls.Add(this.edtWeight);
            this.Controls.Add(this.lblWeight);
            this.Controls.Add(this.cmbContract);
            this.Controls.Add(this.labelControl2);
            this.Controls.Add(this.labelControl1);
            this.Controls.Add(this.btnCancel);
            this.Controls.Add(this.btnUpdate);
            this.Controls.Add(this.txtBgno);
            this.Name = "FrmUpdateContract";
            this.Text = "更新合同號&報關單號&報關重量";
            ((System.ComponentModel.ISupportInitialize)(this.txtBgno.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cmbContract.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtWeight.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtWeightCal.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deBG_Date.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deBG_Date.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit txtBgno;
        private DevExpress.XtraEditors.SimpleButton btnUpdate;
        private DevExpress.XtraEditors.SimpleButton btnCancel;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.ComboBoxEdit cmbContract;
        private DevExpress.XtraEditors.LabelControl lblWeight;
        private DevExpress.XtraEditors.TextEdit edtWeight;
        private DevExpress.XtraEditors.LabelControl lblWeightCal;
        private DevExpress.XtraEditors.TextEdit edtWeightCal;
        private DevExpress.XtraEditors.LabelControl labelControl3;
        private DevExpress.XtraEditors.LabelControl labelControl4;
        private DevExpress.XtraEditors.LabelControl lblBG_Date;
        private DevExpress.XtraEditors.DateEdit deBG_Date;
    }
}