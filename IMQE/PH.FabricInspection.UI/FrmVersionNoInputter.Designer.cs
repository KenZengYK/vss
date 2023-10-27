namespace PH.FabricInspection.UI
{
    partial class FrmVersionNoInputter
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
            this.sbOk = new DevExpress.XtraEditors.SimpleButton();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.teVersionID = new DevExpress.XtraEditors.TextEdit();
            this.sbCancel = new DevExpress.XtraEditors.SimpleButton();
            ((System.ComponentModel.ISupportInitialize)(this.teVersionID.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // sbOk
            // 
            this.sbOk.Location = new System.Drawing.Point(20, 74);
            this.sbOk.Margin = new System.Windows.Forms.Padding(2);
            this.sbOk.Name = "sbOk";
            this.sbOk.Size = new System.Drawing.Size(100, 55);
            this.sbOk.TabIndex = 78;
            this.sbOk.Text = "Ok";
            this.sbOk.Click += new System.EventHandler(this.sbOk_Click);
            // 
            // labelControl2
            // 
            this.labelControl2.Location = new System.Drawing.Point(48, 27);
            this.labelControl2.Margin = new System.Windows.Forms.Padding(2);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(63, 14);
            this.labelControl2.TabIndex = 80;
            this.labelControl2.Text = "Version No:";
            // 
            // teVersionID
            // 
            this.teVersionID.EditValue = "1";
            this.teVersionID.Location = new System.Drawing.Point(136, 20);
            this.teVersionID.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.teVersionID.Name = "teVersionID";
            this.teVersionID.Properties.AutoHeight = false;
            this.teVersionID.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.teVersionID.Size = new System.Drawing.Size(113, 30);
            this.teVersionID.TabIndex = 79;
            // 
            // sbCancel
            // 
            this.sbCancel.Location = new System.Drawing.Point(163, 74);
            this.sbCancel.Margin = new System.Windows.Forms.Padding(2);
            this.sbCancel.Name = "sbCancel";
            this.sbCancel.Size = new System.Drawing.Size(100, 55);
            this.sbCancel.TabIndex = 77;
            this.sbCancel.Text = "Cancel";
            this.sbCancel.Click += new System.EventHandler(this.sbCancel_Click);
            // 
            // FrmVersionNoInputter2
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(292, 152);
            this.Controls.Add(this.sbOk);
            this.Controls.Add(this.labelControl2);
            this.Controls.Add(this.teVersionID);
            this.Controls.Add(this.sbCancel);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "FrmVersionNoInputter2";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Version No Input";
            ((System.ComponentModel.ISupportInitialize)(this.teVersionID.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.SimpleButton sbOk;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.TextEdit teVersionID;
        private DevExpress.XtraEditors.SimpleButton sbCancel;
    }
}