namespace PH.LWPM.UI.LB4
{
    partial class LB4AuditCondition
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
            this.lblFac = new DevExpress.XtraEditors.LabelControl();
            this.lblDTFrom = new DevExpress.XtraEditors.LabelControl();
            this.lblDTTo = new DevExpress.XtraEditors.LabelControl();
            this.cmbFactory = new DevExpress.XtraEditors.ComboBoxEdit();
            this.deStart = new DevExpress.XtraEditors.DateEdit();
            this.deEnd = new DevExpress.XtraEditors.DateEdit();
            this.btWorker = new System.Windows.Forms.Button();
            this.btMachine = new System.Windows.Forms.Button();
            this.btClose = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.cmbFactory.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deStart.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deStart.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deEnd.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deEnd.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // lblFac
            // 
            this.lblFac.Location = new System.Drawing.Point(56, 45);
            this.lblFac.Name = "lblFac";
            this.lblFac.Size = new System.Drawing.Size(40, 14);
            this.lblFac.TabIndex = 0;
            this.lblFac.Text = "Factory";
            // 
            // lblDTFrom
            // 
            this.lblDTFrom.Location = new System.Drawing.Point(65, 91);
            this.lblDTFrom.Name = "lblDTFrom";
            this.lblDTFrom.Size = new System.Drawing.Size(31, 14);
            this.lblDTFrom.TabIndex = 1;
            this.lblDTFrom.Text = "Start ";
            // 
            // lblDTTo
            // 
            this.lblDTTo.Location = new System.Drawing.Point(75, 138);
            this.lblDTTo.Name = "lblDTTo";
            this.lblDTTo.Size = new System.Drawing.Size(21, 14);
            this.lblDTTo.TabIndex = 2;
            this.lblDTTo.Text = "End";
            // 
            // cmbFactory
            // 
            this.cmbFactory.Location = new System.Drawing.Point(125, 45);
            this.cmbFactory.Name = "cmbFactory";
            this.cmbFactory.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cmbFactory.Properties.Items.AddRange(new object[] {
            "SL",
            "CS",
            "GG",
            "RX"});
            this.cmbFactory.Size = new System.Drawing.Size(131, 21);
            this.cmbFactory.TabIndex = 3;
            // 
            // deStart
            // 
            this.deStart.EditValue = null;
            this.deStart.Location = new System.Drawing.Point(125, 88);
            this.deStart.Name = "deStart";
            this.deStart.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.deStart.Properties.Mask.EditMask = "yyyy-MM-dd";
            this.deStart.Properties.Mask.MaskType = DevExpress.XtraEditors.Mask.MaskType.DateTimeAdvancingCaret;
            this.deStart.Properties.Mask.UseMaskAsDisplayFormat = true;
            this.deStart.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.deStart.Size = new System.Drawing.Size(131, 21);
            this.deStart.TabIndex = 4;
            // 
            // deEnd
            // 
            this.deEnd.EditValue = null;
            this.deEnd.Location = new System.Drawing.Point(125, 135);
            this.deEnd.Name = "deEnd";
            this.deEnd.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.deEnd.Properties.Mask.EditMask = "yyyy-MM-dd";
            this.deEnd.Properties.Mask.UseMaskAsDisplayFormat = true;
            this.deEnd.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.deEnd.Size = new System.Drawing.Size(131, 21);
            this.deEnd.TabIndex = 5;
            // 
            // btWorker
            // 
            this.btWorker.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.btWorker.Location = new System.Drawing.Point(65, 194);
            this.btWorker.Name = "btWorker";
            this.btWorker.Size = new System.Drawing.Size(75, 23);
            this.btWorker.TabIndex = 6;
            this.btWorker.Text = "By Worker";
            this.btWorker.UseVisualStyleBackColor = true;
            this.btWorker.Click += new System.EventHandler(this.btWorker_Click);
            // 
            // btMachine
            // 
            this.btMachine.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.btMachine.Location = new System.Drawing.Point(148, 193);
            this.btMachine.Name = "btMachine";
            this.btMachine.Size = new System.Drawing.Size(75, 23);
            this.btMachine.TabIndex = 7;
            this.btMachine.Text = "By Machine";
            this.btMachine.UseVisualStyleBackColor = true;
            this.btMachine.Click += new System.EventHandler(this.button2_Click);
            // 
            // btClose
            // 
            this.btClose.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btClose.Location = new System.Drawing.Point(238, 193);
            this.btClose.Name = "btClose";
            this.btClose.Size = new System.Drawing.Size(75, 23);
            this.btClose.TabIndex = 8;
            this.btClose.Text = "Close";
            this.btClose.UseVisualStyleBackColor = true;
            // 
            // LB4AuditCondition
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(389, 255);
            this.Controls.Add(this.btClose);
            this.Controls.Add(this.btMachine);
            this.Controls.Add(this.btWorker);
            this.Controls.Add(this.deEnd);
            this.Controls.Add(this.deStart);
            this.Controls.Add(this.cmbFactory);
            this.Controls.Add(this.lblDTTo);
            this.Controls.Add(this.lblDTFrom);
            this.Controls.Add(this.lblFac);
            this.Name = "LB4AuditCondition";
            this.Text = "LB4 Audit";
            ((System.ComponentModel.ISupportInitialize)(this.cmbFactory.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deStart.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deStart.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deEnd.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deEnd.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.LabelControl lblFac;
        private DevExpress.XtraEditors.LabelControl lblDTFrom;
        private DevExpress.XtraEditors.LabelControl lblDTTo;
        private DevExpress.XtraEditors.ComboBoxEdit cmbFactory;
        private DevExpress.XtraEditors.DateEdit deStart;
        private DevExpress.XtraEditors.DateEdit deEnd;
        private System.Windows.Forms.Button btWorker;
        private System.Windows.Forms.Button btMachine;
        private System.Windows.Forms.Button btClose;
    }
}