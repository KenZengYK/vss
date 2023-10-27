namespace PH.LWPM.UI.LB5
{
    partial class Step5DeploymentReArrangingParamForm
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
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.btnOK = new DevExpress.XtraEditors.SimpleButton();
            this.btnCancel = new DevExpress.XtraEditors.SimpleButton();
            this.cbFactory = new DevExpress.XtraEditors.ComboBoxEdit();
            this.cbLanguage = new DevExpress.XtraEditors.ComboBoxEdit();
            ((System.ComponentModel.ISupportInitialize)(this.cbFactory.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbLanguage.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(49, 32);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(44, 14);
            this.labelControl1.TabIndex = 0;
            this.labelControl1.Text = "Facotry:";
            // 
            // labelControl2
            // 
            this.labelControl2.Location = new System.Drawing.Point(36, 74);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(57, 14);
            this.labelControl2.TabIndex = 1;
            this.labelControl2.Text = "Language:";
            // 
            // btnOK
            // 
            this.btnOK.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.btnOK.Location = new System.Drawing.Point(49, 128);
            this.btnOK.Name = "btnOK";
            this.btnOK.Size = new System.Drawing.Size(75, 23);
            this.btnOK.TabIndex = 2;
            this.btnOK.Text = "OK";
            // 
            // btnCancel
            // 
            this.btnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnCancel.Location = new System.Drawing.Point(159, 128);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(75, 23);
            this.btnCancel.TabIndex = 3;
            this.btnCancel.Text = "Cancel";
            // 
            // cbFactory
            // 
            this.cbFactory.EditValue = "SL";
            this.cbFactory.Location = new System.Drawing.Point(120, 29);
            this.cbFactory.Name = "cbFactory";
            this.cbFactory.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbFactory.Properties.Items.AddRange(new object[] {
            "SL",
            "GG",
            "RX",
            "CL"});
            this.cbFactory.Size = new System.Drawing.Size(100, 21);
            this.cbFactory.TabIndex = 4;
            // 
            // cbLanguage
            // 
            this.cbLanguage.EditValue = "CN";
            this.cbLanguage.Location = new System.Drawing.Point(120, 71);
            this.cbLanguage.Name = "cbLanguage";
            this.cbLanguage.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbLanguage.Properties.Items.AddRange(new object[] {
            "EN",
            "CN"});
            this.cbLanguage.Size = new System.Drawing.Size(100, 21);
            this.cbLanguage.TabIndex = 5;
            // 
            // Step5DeploymentReArrangingParamForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(308, 188);
            this.Controls.Add(this.cbLanguage);
            this.Controls.Add(this.cbFactory);
            this.Controls.Add(this.btnCancel);
            this.Controls.Add(this.btnOK);
            this.Controls.Add(this.labelControl2);
            this.Controls.Add(this.labelControl1);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "Step5DeploymentReArrangingParamForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Step5 Deployment ReArranging";
            ((System.ComponentModel.ISupportInitialize)(this.cbFactory.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbLanguage.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.SimpleButton btnOK;
        private DevExpress.XtraEditors.SimpleButton btnCancel;
        private DevExpress.XtraEditors.ComboBoxEdit cbFactory;
        private DevExpress.XtraEditors.ComboBoxEdit cbLanguage;
    }
}