namespace PH.FabricInspection.UI.SupplierQE.Elastic
{
    partial class sInputPOForm
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
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.txtPONo = new DevExpress.XtraEditors.TextEdit();
            this.btnOK = new DevExpress.XtraEditors.SimpleButton();
            this.btnCancel = new DevExpress.XtraEditors.SimpleButton();
            this.labelControl3 = new DevExpress.XtraEditors.LabelControl();
            this.txtCompany = new DevExpress.XtraEditors.TextEdit();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.txtIDCreateDate = new DevExpress.XtraEditors.DateEdit();
            this.txtAuditStage = new DevExpress.XtraEditors.ComboBoxEdit();
            this.lbAuditStage = new DevExpress.XtraEditors.LabelControl();
            ((System.ComponentModel.ISupportInitialize)(this.txtPONo.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtCompany.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtIDCreateDate.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtIDCreateDate.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtAuditStage.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(18, 43);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(25, 14);
            this.labelControl1.TabIndex = 0;
            this.labelControl1.Text = "PO#";
            // 
            // txtPONo
            // 
            this.txtPONo.Location = new System.Drawing.Point(100, 40);
            this.txtPONo.Name = "txtPONo";
            this.txtPONo.Size = new System.Drawing.Size(176, 21);
            this.txtPONo.TabIndex = 1;
            // 
            // btnOK
            // 
            this.btnOK.Location = new System.Drawing.Point(86, 106);
            this.btnOK.Name = "btnOK";
            this.btnOK.Size = new System.Drawing.Size(75, 23);
            this.btnOK.TabIndex = 2;
            this.btnOK.Text = "OK";
            this.btnOK.Click += new System.EventHandler(this.btnOK_Click);
            // 
            // btnCancel
            // 
            this.btnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnCancel.Location = new System.Drawing.Point(187, 106);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(75, 23);
            this.btnCancel.TabIndex = 3;
            this.btnCancel.Text = "Cancel";
            // 
            // labelControl3
            // 
            this.labelControl3.Location = new System.Drawing.Point(18, 15);
            this.labelControl3.Name = "labelControl3";
            this.labelControl3.Size = new System.Drawing.Size(50, 14);
            this.labelControl3.TabIndex = 76;
            this.labelControl3.Text = "Company";
            // 
            // txtCompany
            // 
            this.txtCompany.EditValue = "P1";
            this.txtCompany.Location = new System.Drawing.Point(100, 13);
            this.txtCompany.Name = "txtCompany";
            this.txtCompany.Size = new System.Drawing.Size(35, 21);
            this.txtCompany.TabIndex = 77;
            // 
            // labelControl2
            // 
            this.labelControl2.Location = new System.Drawing.Point(18, 72);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(67, 14);
            this.labelControl2.TabIndex = 78;
            this.labelControl2.Text = "id Create dd";
            // 
            // txtIDCreateDate
            // 
            this.txtIDCreateDate.EditValue = null;
            this.txtIDCreateDate.Location = new System.Drawing.Point(100, 68);
            this.txtIDCreateDate.Name = "txtIDCreateDate";
            this.txtIDCreateDate.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtIDCreateDate.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.txtIDCreateDate.Size = new System.Drawing.Size(176, 21);
            this.txtIDCreateDate.TabIndex = 79;
            // 
            // txtAuditStage
            // 
            this.txtAuditStage.EditValue = "1st";
            this.txtAuditStage.Location = new System.Drawing.Point(216, 13);
            this.txtAuditStage.Name = "txtAuditStage";
            this.txtAuditStage.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtAuditStage.Properties.Items.AddRange(new object[] {
            "1st",
            "2nd"});
            this.txtAuditStage.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.txtAuditStage.Size = new System.Drawing.Size(60, 21);
            this.txtAuditStage.TabIndex = 81;
            // 
            // lbAuditStage
            // 
            this.lbAuditStage.Location = new System.Drawing.Point(148, 16);
            this.lbAuditStage.Name = "lbAuditStage";
            this.lbAuditStage.Size = new System.Drawing.Size(63, 14);
            this.lbAuditStage.TabIndex = 80;
            this.lbAuditStage.Text = "Audit stage";
            // 
            // InputPOForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(308, 146);
            this.Controls.Add(this.txtAuditStage);
            this.Controls.Add(this.lbAuditStage);
            this.Controls.Add(this.txtIDCreateDate);
            this.Controls.Add(this.labelControl2);
            this.Controls.Add(this.txtCompany);
            this.Controls.Add(this.labelControl3);
            this.Controls.Add(this.btnCancel);
            this.Controls.Add(this.btnOK);
            this.Controls.Add(this.txtPONo);
            this.Controls.Add(this.labelControl1);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "InputPOForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Import Item id# from ERP";
            this.Load += new System.EventHandler(this.InputPOForm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.txtPONo.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtCompany.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtIDCreateDate.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtIDCreateDate.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtAuditStage.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.TextEdit txtPONo;
        private DevExpress.XtraEditors.SimpleButton btnOK;
        private DevExpress.XtraEditors.SimpleButton btnCancel;
        private DevExpress.XtraEditors.LabelControl labelControl3;
        private DevExpress.XtraEditors.TextEdit txtCompany;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.DateEdit txtIDCreateDate;
        private DevExpress.XtraEditors.ComboBoxEdit txtAuditStage;
        private DevExpress.XtraEditors.LabelControl lbAuditStage;
    }
}