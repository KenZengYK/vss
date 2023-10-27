namespace PH.FabricInspection.UI
{
    partial class FrmVersion
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
            this.BtnCancel = new DevExpress.XtraEditors.SimpleButton();
            this.pnlFuncButtons = new DevExpress.XtraEditors.PanelControl();
            this.sBtn_Send2WebSite = new DevExpress.XtraEditors.SimpleButton();
            this.BtnOK = new DevExpress.XtraEditors.SimpleButton();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.TxtVersionID = new DevExpress.XtraEditors.TextEdit();
            ((System.ComponentModel.ISupportInitialize)(this.pnlFuncButtons)).BeginInit();
            this.pnlFuncButtons.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.TxtVersionID.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // BtnCancel
            // 
            this.BtnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.BtnCancel.Location = new System.Drawing.Point(218, 6);
            this.BtnCancel.Margin = new System.Windows.Forms.Padding(2);
            this.BtnCancel.Name = "BtnCancel";
            this.BtnCancel.Size = new System.Drawing.Size(100, 55);
            this.BtnCancel.TabIndex = 66;
            this.BtnCancel.Text = "Cancel";
            // 
            // pnlFuncButtons
            // 
            this.pnlFuncButtons.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.pnlFuncButtons.Controls.Add(this.BtnCancel);
            this.pnlFuncButtons.Controls.Add(this.BtnOK);
            this.pnlFuncButtons.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.pnlFuncButtons.Location = new System.Drawing.Point(0, 118);
            this.pnlFuncButtons.Margin = new System.Windows.Forms.Padding(2);
            this.pnlFuncButtons.Name = "pnlFuncButtons";
            this.pnlFuncButtons.Size = new System.Drawing.Size(368, 67);
            this.pnlFuncButtons.TabIndex = 80;
            // 
            // sBtn_Send2WebSite
            // 
            this.sBtn_Send2WebSite.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.sBtn_Send2WebSite.Location = new System.Drawing.Point(248, 59);
            this.sBtn_Send2WebSite.Margin = new System.Windows.Forms.Padding(2);
            this.sBtn_Send2WebSite.Name = "sBtn_Send2WebSite";
            this.sBtn_Send2WebSite.Size = new System.Drawing.Size(109, 55);
            this.sBtn_Send2WebSite.TabIndex = 68;
            this.sBtn_Send2WebSite.Text = "Send to WebSite";
            this.sBtn_Send2WebSite.Visible = false;
            this.sBtn_Send2WebSite.Click += new System.EventHandler(this.sBtn_Send2WebSite_Click);
            // 
            // BtnOK
            // 
            this.BtnOK.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.BtnOK.Location = new System.Drawing.Point(67, 6);
            this.BtnOK.Margin = new System.Windows.Forms.Padding(2);
            this.BtnOK.Name = "BtnOK";
            this.BtnOK.Size = new System.Drawing.Size(100, 55);
            this.BtnOK.TabIndex = 68;
            this.BtnOK.Text = "Ok";
            // 
            // labelControl2
            // 
            this.labelControl2.Location = new System.Drawing.Point(43, 50);
            this.labelControl2.Margin = new System.Windows.Forms.Padding(2);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(63, 14);
            this.labelControl2.TabIndex = 79;
            this.labelControl2.Text = "Version No:";
            // 
            // TxtVersionID
            // 
            this.TxtVersionID.EditValue = "1";
            this.TxtVersionID.Location = new System.Drawing.Point(127, 44);
            this.TxtVersionID.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.TxtVersionID.Name = "TxtVersionID";
            this.TxtVersionID.Properties.AutoHeight = false;
            this.TxtVersionID.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.TxtVersionID.Size = new System.Drawing.Size(182, 30);
            this.TxtVersionID.TabIndex = 78;
            // 
            // FrmVersion
            // 
            this.AcceptButton = this.BtnOK;
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(368, 185);
            this.Controls.Add(this.pnlFuncButtons);
            this.Controls.Add(this.sBtn_Send2WebSite);
            this.Controls.Add(this.labelControl2);
            this.Controls.Add(this.TxtVersionID);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "FrmVersion";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "FrmVersion";
            ((System.ComponentModel.ISupportInitialize)(this.pnlFuncButtons)).EndInit();
            this.pnlFuncButtons.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.TxtVersionID.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.SimpleButton BtnCancel;
        private DevExpress.XtraEditors.PanelControl pnlFuncButtons;
        private DevExpress.XtraEditors.SimpleButton BtnOK;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        public DevExpress.XtraEditors.TextEdit TxtVersionID;
        private DevExpress.XtraEditors.SimpleButton sBtn_Send2WebSite;
    }
}