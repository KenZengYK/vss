namespace PH.HDO.UI.ByPiece
{
    partial class FrmDateRange
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
            this.lblFrom = new DevExpress.XtraEditors.LabelControl();
            this.lblTo = new DevExpress.XtraEditors.LabelControl();
            this.btnOK = new DevExpress.XtraEditors.SimpleButton();
            this.bntCancel = new DevExpress.XtraEditors.SimpleButton();
            this.deFrom = new DevExpress.XtraEditors.DateEdit();
            this.deTo = new DevExpress.XtraEditors.DateEdit();
            ((System.ComponentModel.ISupportInitialize)(this.deFrom.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deFrom.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deTo.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deTo.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // lblFrom
            // 
            this.lblFrom.Location = new System.Drawing.Point(70, 33);
            this.lblFrom.Name = "lblFrom";
            this.lblFrom.Size = new System.Drawing.Size(61, 14);
            this.lblFrom.TabIndex = 2;
            this.lblFrom.Text = "Date From:";
            // 
            // lblTo
            // 
            this.lblTo.Location = new System.Drawing.Point(82, 89);
            this.lblTo.Name = "lblTo";
            this.lblTo.Size = new System.Drawing.Size(49, 14);
            this.lblTo.TabIndex = 3;
            this.lblTo.Text = "Date To:";
            // 
            // btnOK
            // 
            this.btnOK.Location = new System.Drawing.Point(98, 139);
            this.btnOK.Name = "btnOK";
            this.btnOK.Size = new System.Drawing.Size(75, 23);
            this.btnOK.TabIndex = 4;
            this.btnOK.Text = "確定";
            this.btnOK.Click += new System.EventHandler(this.btnOK_Click);
            // 
            // bntCancel
            // 
            this.bntCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.bntCancel.Location = new System.Drawing.Point(222, 139);
            this.bntCancel.Name = "bntCancel";
            this.bntCancel.Size = new System.Drawing.Size(75, 23);
            this.bntCancel.TabIndex = 5;
            this.bntCancel.Text = "取消";
            // 
            // deFrom
            // 
            this.deFrom.EditValue = null;
            this.deFrom.Location = new System.Drawing.Point(159, 30);
            this.deFrom.Name = "deFrom";
            this.deFrom.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.deFrom.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.deFrom.Size = new System.Drawing.Size(148, 21);
            this.deFrom.TabIndex = 6;
            // 
            // deTo
            // 
            this.deTo.EditValue = null;
            this.deTo.Location = new System.Drawing.Point(159, 82);
            this.deTo.Name = "deTo";
            this.deTo.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.deTo.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.deTo.Size = new System.Drawing.Size(148, 21);
            this.deTo.TabIndex = 7;
            this.deTo.EditValueChanged += new System.EventHandler(this.deTo_EditValueChanged);
            // 
            // FrmDateRange
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(368, 201);
            this.Controls.Add(this.deTo);
            this.Controls.Add(this.deFrom);
            this.Controls.Add(this.bntCancel);
            this.Controls.Add(this.btnOK);
            this.Controls.Add(this.lblTo);
            this.Controls.Add(this.lblFrom);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "FrmDateRange";
            this.Text = "選擇導入條件";
            ((System.ComponentModel.ISupportInitialize)(this.deFrom.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deFrom.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deTo.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deTo.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.LabelControl lblFrom;
        private DevExpress.XtraEditors.LabelControl lblTo;
        private DevExpress.XtraEditors.SimpleButton btnOK;
        private DevExpress.XtraEditors.SimpleButton bntCancel;
        private DevExpress.XtraEditors.DateEdit deFrom;
        private DevExpress.XtraEditors.DateEdit deTo;
    }
}