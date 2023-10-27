namespace PH.FabricInspection.UI.SupplierQE.BandLace
{
    partial class sInputLotIDForm
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
            this.txtLotID = new DevExpress.XtraEditors.TextEdit();
            this.btnOK = new DevExpress.XtraEditors.SimpleButton();
            this.btnCancel = new DevExpress.XtraEditors.SimpleButton();
            this.labelControl3 = new DevExpress.XtraEditors.LabelControl();
            this.txtCompany = new DevExpress.XtraEditors.TextEdit();
            this.txtAuditStage = new DevExpress.XtraEditors.ComboBoxEdit();
            this.lbAuditStage = new DevExpress.XtraEditors.LabelControl();
            ((System.ComponentModel.ISupportInitialize)(this.txtLotID.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtCompany.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtAuditStage.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(30, 45);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(48, 14);
            this.labelControl1.TabIndex = 0;
            this.labelControl1.Text = "Item id#";
            // 
            // txtLotID
            // 
            this.txtLotID.Location = new System.Drawing.Point(96, 42);
            this.txtLotID.Name = "txtLotID";
            this.txtLotID.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtLotID.Size = new System.Drawing.Size(200, 21);
            this.txtLotID.TabIndex = 1;
            // 
            // btnOK
            // 
            this.btnOK.Location = new System.Drawing.Point(118, 75);
            this.btnOK.Name = "btnOK";
            this.btnOK.Size = new System.Drawing.Size(75, 23);
            this.btnOK.TabIndex = 2;
            this.btnOK.Text = "OK";
            this.btnOK.Click += new System.EventHandler(this.btnOK_Click);
            // 
            // btnCancel
            // 
            this.btnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnCancel.Location = new System.Drawing.Point(209, 75);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(75, 23);
            this.btnCancel.TabIndex = 3;
            this.btnCancel.Text = "Cancel";
            // 
            // labelControl3
            // 
            this.labelControl3.Location = new System.Drawing.Point(30, 15);
            this.labelControl3.Name = "labelControl3";
            this.labelControl3.Size = new System.Drawing.Size(50, 14);
            this.labelControl3.TabIndex = 76;
            this.labelControl3.Text = "Company";
            // 
            // txtCompany
            // 
            this.txtCompany.EditValue = "P1";
            this.txtCompany.Location = new System.Drawing.Point(96, 12);
            this.txtCompany.Name = "txtCompany";
            this.txtCompany.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtCompany.Size = new System.Drawing.Size(49, 21);
            this.txtCompany.TabIndex = 77;
            // 
            // txtAuditStage
            // 
            this.txtAuditStage.EditValue = "1st";
            this.txtAuditStage.Location = new System.Drawing.Point(221, 12);
            this.txtAuditStage.Name = "txtAuditStage";
            this.txtAuditStage.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtAuditStage.Properties.Items.AddRange(new object[] {
            "1st",
            "2nd"});
            this.txtAuditStage.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.txtAuditStage.Size = new System.Drawing.Size(75, 21);
            this.txtAuditStage.TabIndex = 79;
            // 
            // lbAuditStage
            // 
            this.lbAuditStage.Location = new System.Drawing.Point(153, 15);
            this.lbAuditStage.Name = "lbAuditStage";
            this.lbAuditStage.Size = new System.Drawing.Size(63, 14);
            this.lbAuditStage.TabIndex = 78;
            this.lbAuditStage.Text = "Audit stage";
            // 
            // InputLotIDForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(330, 111);
            this.Controls.Add(this.txtAuditStage);
            this.Controls.Add(this.lbAuditStage);
            this.Controls.Add(this.txtCompany);
            this.Controls.Add(this.labelControl3);
            this.Controls.Add(this.btnCancel);
            this.Controls.Add(this.btnOK);
            this.Controls.Add(this.txtLotID);
            this.Controls.Add(this.labelControl1);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "InputLotIDForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Import Item id# from ERP";
            ((System.ComponentModel.ISupportInitialize)(this.txtLotID.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtCompany.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtAuditStage.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.TextEdit txtLotID;
        private DevExpress.XtraEditors.SimpleButton btnOK;
        private DevExpress.XtraEditors.SimpleButton btnCancel;
        private DevExpress.XtraEditors.LabelControl labelControl3;
        private DevExpress.XtraEditors.TextEdit txtCompany;
        private DevExpress.XtraEditors.ComboBoxEdit txtAuditStage;
        private DevExpress.XtraEditors.LabelControl lbAuditStage;
    }
}