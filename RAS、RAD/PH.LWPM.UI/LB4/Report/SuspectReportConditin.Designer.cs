namespace PH.LWPM.UI.LB4.Report
{
    partial class SuspectReportConditin
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
            this.cmbFactory = new DevExpress.XtraEditors.ComboBoxEdit();
            this.deStart = new DevExpress.XtraEditors.DateEdit();
            this.deEnd = new DevExpress.XtraEditors.DateEdit();
            this.lblEnddate = new DevExpress.XtraEditors.LabelControl();
            this.lblFac = new DevExpress.XtraEditors.LabelControl();
            this.lblStart = new DevExpress.XtraEditors.LabelControl();
            this.btnPrint = new System.Windows.Forms.Button();
            this.btnClose = new System.Windows.Forms.Button();
            this.btnPrtWC = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.cmbFactory.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deStart.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deStart.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deEnd.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deEnd.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // cmbFactory
            // 
            this.cmbFactory.Location = new System.Drawing.Point(162, 36);
            this.cmbFactory.Name = "cmbFactory";
            this.cmbFactory.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cmbFactory.Properties.Items.AddRange(new object[] {
            "SL",
            "CS",
            "GG",
            "RX"});
            this.cmbFactory.Size = new System.Drawing.Size(133, 21);
            this.cmbFactory.TabIndex = 0;
            // 
            // deStart
            // 
            this.deStart.EditValue = null;
            this.deStart.Location = new System.Drawing.Point(162, 79);
            this.deStart.Name = "deStart";
            this.deStart.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.deStart.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.deStart.Size = new System.Drawing.Size(133, 21);
            this.deStart.TabIndex = 1;
            // 
            // deEnd
            // 
            this.deEnd.EditValue = null;
            this.deEnd.Location = new System.Drawing.Point(162, 121);
            this.deEnd.Name = "deEnd";
            this.deEnd.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.deEnd.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.deEnd.Size = new System.Drawing.Size(133, 21);
            this.deEnd.TabIndex = 2;
            // 
            // lblEnddate
            // 
            this.lblEnddate.Location = new System.Drawing.Point(78, 124);
            this.lblEnddate.Name = "lblEnddate";
            this.lblEnddate.Size = new System.Drawing.Size(51, 14);
            this.lblEnddate.TabIndex = 3;
            this.lblEnddate.Text = "End Date";
            // 
            // lblFac
            // 
            this.lblFac.Location = new System.Drawing.Point(86, 39);
            this.lblFac.Name = "lblFac";
            this.lblFac.Size = new System.Drawing.Size(40, 14);
            this.lblFac.TabIndex = 4;
            this.lblFac.Text = "Factory";
            // 
            // lblStart
            // 
            this.lblStart.Location = new System.Drawing.Point(71, 82);
            this.lblStart.Name = "lblStart";
            this.lblStart.Size = new System.Drawing.Size(57, 14);
            this.lblStart.TabIndex = 5;
            this.lblStart.Text = "Start Date";
            // 
            // btnPrint
            // 
            this.btnPrint.Location = new System.Drawing.Point(39, 166);
            this.btnPrint.Name = "btnPrint";
            this.btnPrint.Size = new System.Drawing.Size(90, 23);
            this.PlatetoolTipController.SetSuperTip(this.btnPrint, null);
            this.btnPrint.TabIndex = 6;
            this.btnPrint.Text = "Print by WF";
            this.btnPrint.UseVisualStyleBackColor = true;
            this.btnPrint.Click += new System.EventHandler(this.btnPrint_Click);
            // 
            // btnClose
            // 
            this.btnClose.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnClose.Location = new System.Drawing.Point(231, 166);
            this.btnClose.Name = "btnClose";
            this.btnClose.Size = new System.Drawing.Size(75, 23);
            this.PlatetoolTipController.SetSuperTip(this.btnClose, null);
            this.btnClose.TabIndex = 7;
            this.btnClose.Text = "Close";
            this.btnClose.UseVisualStyleBackColor = true;
            // 
            // btnPrtWC
            // 
            this.btnPrtWC.Location = new System.Drawing.Point(135, 166);
            this.btnPrtWC.Name = "btnPrtWC";
            this.btnPrtWC.Size = new System.Drawing.Size(90, 23);
            this.PlatetoolTipController.SetSuperTip(this.btnPrtWC, null);
            this.btnPrtWC.TabIndex = 8;
            this.btnPrtWC.Text = "Print by MC";
            this.btnPrtWC.UseVisualStyleBackColor = true;
            this.btnPrtWC.Click += new System.EventHandler(this.btnPrtWC_Click);
            // 
            // SuspectReportConditin
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.btnPrtWC);
            this.Controls.Add(this.btnClose);
            this.Controls.Add(this.btnPrint);
            this.Controls.Add(this.lblStart);
            this.Controls.Add(this.lblFac);
            this.Controls.Add(this.lblEnddate);
            this.Controls.Add(this.deEnd);
            this.Controls.Add(this.deStart);
            this.Controls.Add(this.cmbFactory);
            this.Name = "SuspectReportConditin";
            this.Size = new System.Drawing.Size(342, 228);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Load += new System.EventHandler(this.SuspectReportConditin_Load);
            ((System.ComponentModel.ISupportInitialize)(this.cmbFactory.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deStart.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deStart.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deEnd.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deEnd.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.ComboBoxEdit cmbFactory;
        private DevExpress.XtraEditors.DateEdit deStart;
        private DevExpress.XtraEditors.DateEdit deEnd;
        private DevExpress.XtraEditors.LabelControl lblEnddate;
        private DevExpress.XtraEditors.LabelControl lblFac;
        private DevExpress.XtraEditors.LabelControl lblStart;
        private System.Windows.Forms.Button btnPrint;
        private System.Windows.Forms.Button btnClose;
        private System.Windows.Forms.Button btnPrtWC;
    }
}