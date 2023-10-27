namespace PH.MobileQC.UI
{
    partial class DefectSummaryCondition
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
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.cmbLine = new DevExpress.XtraEditors.ComboBoxEdit();
            this.dtfrom = new DevExpress.XtraEditors.DateEdit();
            this.dtto = new DevExpress.XtraEditors.DateEdit();
            this.labelControl3 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl4 = new DevExpress.XtraEditors.LabelControl();
            this.btnCancel = new DevExpress.XtraEditors.SimpleButton();
            this.btnOK = new DevExpress.XtraEditors.SimpleButton();
            ((System.ComponentModel.ISupportInitialize)(this.cmbFactory.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cmbLine.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dtfrom.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dtfrom.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dtto.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dtto.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // cmbFactory
            // 
            this.cmbFactory.Location = new System.Drawing.Point(90, 31);
            this.cmbFactory.Name = "cmbFactory";
            this.cmbFactory.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cmbFactory.Properties.Items.AddRange(new object[] {
            "SL",
            "GG"});
            this.cmbFactory.Size = new System.Drawing.Size(100, 21);
            this.cmbFactory.TabIndex = 0;
            this.cmbFactory.SelectedValueChanged += new System.EventHandler(this.cmbFactory_SelectedValueChanged);
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(41, 31);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(24, 14);
            this.labelControl1.TabIndex = 1;
            this.labelControl1.Text = "工廠";
            // 
            // labelControl2
            // 
            this.labelControl2.Location = new System.Drawing.Point(201, 35);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(36, 14);
            this.labelControl2.TabIndex = 3;
            this.labelControl2.Text = "組裝線";
            // 
            // cmbLine
            // 
            this.cmbLine.Location = new System.Drawing.Point(240, 32);
            this.cmbLine.Name = "cmbLine";
            this.cmbLine.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cmbLine.Size = new System.Drawing.Size(100, 21);
            this.cmbLine.TabIndex = 2;
            // 
            // dtfrom
            // 
            this.dtfrom.EditValue = null;
            this.dtfrom.Location = new System.Drawing.Point(93, 67);
            this.dtfrom.Name = "dtfrom";
            this.dtfrom.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.dtfrom.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.dtfrom.Size = new System.Drawing.Size(100, 21);
            this.dtfrom.TabIndex = 4;
            // 
            // dtto
            // 
            this.dtto.EditValue = null;
            this.dtto.Location = new System.Drawing.Point(242, 64);
            this.dtto.Name = "dtto";
            this.dtto.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.dtto.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.dtto.Size = new System.Drawing.Size(100, 21);
            this.dtto.TabIndex = 5;
            // 
            // labelControl3
            // 
            this.labelControl3.Location = new System.Drawing.Point(23, 70);
            this.labelControl3.Name = "labelControl3";
            this.labelControl3.Size = new System.Drawing.Size(48, 14);
            this.labelControl3.TabIndex = 6;
            this.labelControl3.Text = "審定日期";
            // 
            // labelControl4
            // 
            this.labelControl4.Location = new System.Drawing.Point(215, 68);
            this.labelControl4.Name = "labelControl4";
            this.labelControl4.Size = new System.Drawing.Size(9, 14);
            this.labelControl4.TabIndex = 7;
            this.labelControl4.Text = "~";
            // 
            // btnCancel
            // 
            this.btnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnCancel.Location = new System.Drawing.Point(210, 120);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(75, 23);
            this.btnCancel.TabIndex = 9;
            this.btnCancel.Text = "取消";
            this.btnCancel.Click += new System.EventHandler(this.btnCancel_Click);
            // 
            // btnOK
            // 
            this.btnOK.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.btnOK.Location = new System.Drawing.Point(101, 120);
            this.btnOK.Name = "btnOK";
            this.btnOK.Size = new System.Drawing.Size(75, 23);
            this.btnOK.TabIndex = 8;
            this.btnOK.Text = "確定";
            this.btnOK.Click += new System.EventHandler(this.btnOK_Click);
            // 
            // DefectSummaryCondition
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(388, 199);
            this.Controls.Add(this.btnCancel);
            this.Controls.Add(this.btnOK);
            this.Controls.Add(this.labelControl4);
            this.Controls.Add(this.labelControl3);
            this.Controls.Add(this.dtto);
            this.Controls.Add(this.dtfrom);
            this.Controls.Add(this.labelControl2);
            this.Controls.Add(this.cmbLine);
            this.Controls.Add(this.labelControl1);
            this.Controls.Add(this.cmbFactory);
            this.Name = "DefectSummaryCondition";
            this.Text = "Defect Summary Report Condition";
            ((System.ComponentModel.ISupportInitialize)(this.cmbFactory.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cmbLine.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dtfrom.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dtfrom.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dtto.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dtto.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.ComboBoxEdit cmbFactory;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.ComboBoxEdit cmbLine;
        private DevExpress.XtraEditors.DateEdit dtfrom;
        private DevExpress.XtraEditors.DateEdit dtto;
        private DevExpress.XtraEditors.LabelControl labelControl3;
        private DevExpress.XtraEditors.LabelControl labelControl4;
        private DevExpress.XtraEditors.SimpleButton btnCancel;
        private DevExpress.XtraEditors.SimpleButton btnOK;
    }
}