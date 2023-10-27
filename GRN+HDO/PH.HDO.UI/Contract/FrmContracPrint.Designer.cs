namespace PH.HDO.UI.Contract
{
    partial class FrmContracPrint
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
            this.btnPrint = new DevExpress.XtraEditors.SimpleButton();
            this.btnCancel = new DevExpress.XtraEditors.SimpleButton();
            this.deStart = new DevExpress.XtraEditors.DateEdit();
            this.lblTime = new DevExpress.XtraEditors.LabelControl();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.deEnd = new DevExpress.XtraEditors.DateEdit();
            this.lblContract = new DevExpress.XtraEditors.LabelControl();
            this.edtCont1 = new DevExpress.XtraEditors.TextEdit();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.edtCont2 = new DevExpress.XtraEditors.TextEdit();
            this.rgType = new DevExpress.XtraEditors.RadioGroup();
            ((System.ComponentModel.ISupportInitialize)(this.deStart.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deStart.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deEnd.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deEnd.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtCont1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtCont2.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rgType.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // btnPrint
            // 
            this.btnPrint.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.btnPrint.Location = new System.Drawing.Point(150, 250);
            this.btnPrint.Name = "btnPrint";
            this.btnPrint.Size = new System.Drawing.Size(75, 23);
            this.btnPrint.TabIndex = 0;
            this.btnPrint.Text = "打印";
            this.btnPrint.Click += new System.EventHandler(this.btnPrint_Click);
            // 
            // btnCancel
            // 
            this.btnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnCancel.Location = new System.Drawing.Point(291, 250);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(75, 23);
            this.btnCancel.TabIndex = 1;
            this.btnCancel.Text = "取消";
            // 
            // deStart
            // 
            this.deStart.EditValue = null;
            this.deStart.Location = new System.Drawing.Point(138, 57);
            this.deStart.Name = "deStart";
            this.deStart.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.deStart.Properties.DisplayFormat.FormatString = "yyyy-MM-dd HH:mm";
            this.deStart.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.deStart.Properties.EditFormat.FormatString = "yyyy-MM-dd HH:mm";
            this.deStart.Properties.EditFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.deStart.Properties.Mask.EditMask = "yyyy-MM-dd HH:mm";
            this.deStart.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.deStart.Size = new System.Drawing.Size(157, 21);
            this.deStart.TabIndex = 2;
            // 
            // lblTime
            // 
            this.lblTime.Location = new System.Drawing.Point(64, 60);
            this.lblTime.Name = "lblTime";
            this.lblTime.Size = new System.Drawing.Size(56, 14);
            this.lblTime.TabIndex = 3;
            this.lblTime.Text = "建立時間 :";
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(318, 61);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(9, 14);
            this.labelControl1.TabIndex = 4;
            this.labelControl1.Text = "~";
            // 
            // deEnd
            // 
            this.deEnd.EditValue = null;
            this.deEnd.Location = new System.Drawing.Point(350, 57);
            this.deEnd.Name = "deEnd";
            this.deEnd.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.deEnd.Properties.DisplayFormat.FormatString = "yyyy-MM-dd HH:mm";
            this.deEnd.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.deEnd.Properties.EditFormat.FormatString = "yyyy-MM-dd HH:mm";
            this.deEnd.Properties.EditFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.deEnd.Properties.Mask.EditMask = "yyyy-MM-dd HH:mm";
            this.deEnd.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.deEnd.Size = new System.Drawing.Size(171, 21);
            this.deEnd.TabIndex = 5;
            // 
            // lblContract
            // 
            this.lblContract.Location = new System.Drawing.Point(64, 109);
            this.lblContract.Name = "lblContract";
            this.lblContract.Size = new System.Drawing.Size(44, 14);
            this.lblContract.TabIndex = 6;
            this.lblContract.Text = "合同號 :";
            // 
            // edtCont1
            // 
            this.edtCont1.Location = new System.Drawing.Point(138, 106);
            this.edtCont1.Name = "edtCont1";
            this.edtCont1.Size = new System.Drawing.Size(157, 21);
            this.edtCont1.TabIndex = 7;
            // 
            // labelControl2
            // 
            this.labelControl2.Location = new System.Drawing.Point(318, 113);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(9, 14);
            this.labelControl2.TabIndex = 8;
            this.labelControl2.Text = "~";
            // 
            // edtCont2
            // 
            this.edtCont2.Location = new System.Drawing.Point(350, 110);
            this.edtCont2.Name = "edtCont2";
            this.edtCont2.Size = new System.Drawing.Size(171, 21);
            this.edtCont2.TabIndex = 9;
            // 
            // rgType
            // 
            this.rgType.EditValue = 0;
            this.rgType.Location = new System.Drawing.Point(138, 160);
            this.rgType.Name = "rgType";
            this.rgType.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] {
            new DevExpress.XtraEditors.Controls.RadioGroupItem(0, "Packing Summary"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem(1, "Packing Detail")});
            this.rgType.Size = new System.Drawing.Size(383, 50);
            this.rgType.TabIndex = 10;
            // 
            // FrmContracPrint
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(569, 329);
            this.Controls.Add(this.rgType);
            this.Controls.Add(this.edtCont2);
            this.Controls.Add(this.labelControl2);
            this.Controls.Add(this.edtCont1);
            this.Controls.Add(this.lblContract);
            this.Controls.Add(this.deEnd);
            this.Controls.Add(this.labelControl1);
            this.Controls.Add(this.lblTime);
            this.Controls.Add(this.deStart);
            this.Controls.Add(this.btnCancel);
            this.Controls.Add(this.btnPrint);
            this.Name = "FrmContracPrint";
            this.Text = "選擇打印條件";
            ((System.ComponentModel.ISupportInitialize)(this.deStart.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deStart.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deEnd.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deEnd.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtCont1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtCont2.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rgType.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.SimpleButton btnPrint;
        private DevExpress.XtraEditors.SimpleButton btnCancel;
        private DevExpress.XtraEditors.DateEdit deStart;
        private DevExpress.XtraEditors.LabelControl lblTime;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.DateEdit deEnd;
        private DevExpress.XtraEditors.LabelControl lblContract;
        private DevExpress.XtraEditors.TextEdit edtCont1;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.TextEdit edtCont2;
        private DevExpress.XtraEditors.RadioGroup rgType;
    }
}