namespace PH.MobileQC.UI.FinalAuditPlan
{
    partial class GetDateByFtyForm
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
            this.cbbFac = new DevExpress.XtraEditors.ComboBoxEdit();
            this.simpleButton1 = new DevExpress.XtraEditors.SimpleButton();
            this.cbbQN = new DevExpress.XtraEditors.TextEdit();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            ((System.ComponentModel.ISupportInitialize)(this.cbbFac.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbbQN.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(80, 54);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(40, 14);
            this.labelControl1.TabIndex = 4;
            this.labelControl1.Text = "Factory";
            // 
            // cbbFac
            // 
            this.cbbFac.EditValue = "";
            this.cbbFac.Location = new System.Drawing.Point(126, 51);
            this.cbbFac.Name = "cbbFac";
            this.cbbFac.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbbFac.Properties.Items.AddRange(new object[] {
            "SL",
            "GG",
            "RX",
            "CL"});
            this.cbbFac.Size = new System.Drawing.Size(130, 21);
            this.cbbFac.TabIndex = 3;
            this.cbbFac.ToolTipIconType = DevExpress.Utils.ToolTipIconType.Application;
            // 
            // simpleButton1
            // 
            this.simpleButton1.Location = new System.Drawing.Point(143, 121);
            this.simpleButton1.Name = "simpleButton1";
            this.simpleButton1.Size = new System.Drawing.Size(75, 23);
            this.simpleButton1.TabIndex = 5;
            this.simpleButton1.Text = "Import QN";
            this.simpleButton1.Click += new System.EventHandler(this.simpleButton1_Click);
            // 
            // cbbQN
            // 
            this.cbbQN.Location = new System.Drawing.Point(126, 83);
            this.cbbQN.Name = "cbbQN";
            this.cbbQN.Size = new System.Drawing.Size(130, 21);
            this.cbbQN.TabIndex = 8;
            // 
            // labelControl2
            // 
            this.labelControl2.Location = new System.Drawing.Point(103, 86);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(17, 14);
            this.labelControl2.TabIndex = 7;
            this.labelControl2.Text = "QN";
            // 
            // GetDateByFtyForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(373, 243);
            this.Controls.Add(this.cbbQN);
            this.Controls.Add(this.labelControl2);
            this.Controls.Add(this.simpleButton1);
            this.Controls.Add(this.labelControl1);
            this.Controls.Add(this.cbbFac);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "GetDateByFtyForm";
            this.RightToLeftLayout = true;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            ((System.ComponentModel.ISupportInitialize)(this.cbbFac.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbbQN.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.ComboBoxEdit cbbFac;
        private DevExpress.XtraEditors.SimpleButton simpleButton1;
        private DevExpress.XtraEditors.TextEdit cbbQN;
        private DevExpress.XtraEditors.LabelControl labelControl2;
    }
}