namespace PH.POPC.UI.POPC
{
    partial class InvoiceMatchingIForm
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
            this.btnOK = new DevExpress.XtraEditors.SimpleButton();
            this.simpleButton2 = new DevExpress.XtraEditors.SimpleButton();
            this.lbCurrency = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.lbAdviceNote = new System.Windows.Forms.Label();
            this.lbUom = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.lbSupp = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.edUnit = new DevExpress.XtraEditors.TextEdit();
            this.label8 = new System.Windows.Forms.Label();
            this.edCurrency = new DevExpress.XtraEditors.TextEdit();
            this.lbApplyTo = new System.Windows.Forms.Label();
            this.btnStep2 = new DevExpress.XtraEditors.SimpleButton();
            this.tcMain = new DevExpress.XtraTab.XtraTabControl();
            this.xtraTabPage1 = new DevExpress.XtraTab.XtraTabPage();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.lbTtlQty = new System.Windows.Forms.Label();
            this.lbTtlAmount = new System.Windows.Forms.Label();
            this.groupControl1 = new DevExpress.XtraEditors.GroupControl();
            ((System.ComponentModel.ISupportInitialize)(this.edUnit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edCurrency.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.tcMain)).BeginInit();
            this.tcMain.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).BeginInit();
            this.groupControl1.SuspendLayout();
            this.SuspendLayout();
            // 
            // btnOK
            // 
            this.btnOK.Location = new System.Drawing.Point(301, 462);
            this.btnOK.Name = "btnOK";
            this.btnOK.Size = new System.Drawing.Size(75, 29);
            this.btnOK.TabIndex = 4;
            this.btnOK.Text = "Accept";
            this.btnOK.Click += new System.EventHandler(this.btnOK_Click);
            // 
            // simpleButton2
            // 
            this.simpleButton2.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.simpleButton2.Location = new System.Drawing.Point(393, 462);
            this.simpleButton2.Name = "simpleButton2";
            this.simpleButton2.Size = new System.Drawing.Size(75, 29);
            this.simpleButton2.TabIndex = 5;
            this.simpleButton2.Text = "Cancel";
            // 
            // lbCurrency
            // 
            this.lbCurrency.AutoSize = true;
            this.lbCurrency.Location = new System.Drawing.Point(421, 323);
            this.lbCurrency.Name = "lbCurrency";
            this.lbCurrency.Size = new System.Drawing.Size(40, 14);
            this.lbCurrency.TabIndex = 13;
            this.lbCurrency.Text = "(HKD)";
            this.lbCurrency.Visible = false;
            this.lbCurrency.DoubleClick += new System.EventHandler(this.lbCurrency_DoubleClick);
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(51, 83);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(99, 14);
            this.label6.TabIndex = 14;
            this.label6.Text = "Delivery Note(s):";
            // 
            // lbAdviceNote
            // 
            this.lbAdviceNote.AutoSize = true;
            this.lbAdviceNote.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.lbAdviceNote.Location = new System.Drawing.Point(180, 83);
            this.lbAdviceNote.Name = "lbAdviceNote";
            this.lbAdviceNote.Size = new System.Drawing.Size(95, 14);
            this.lbAdviceNote.TabIndex = 15;
            this.lbAdviceNote.Text = "32013000764";
            // 
            // lbUom
            // 
            this.lbUom.AutoSize = true;
            this.lbUom.Location = new System.Drawing.Point(421, 268);
            this.lbUom.Name = "lbUom";
            this.lbUom.Size = new System.Drawing.Size(26, 14);
            this.lbUom.TabIndex = 16;
            this.lbUom.Text = "(M)";
            this.lbUom.Visible = false;
            this.lbUom.DoubleClick += new System.EventHandler(this.lbUom_DoubleClick);
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(51, 59);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(39, 14);
            this.label5.TabIndex = 17;
            this.label5.Text = "Supp:";
            // 
            // lbSupp
            // 
            this.lbSupp.AutoSize = true;
            this.lbSupp.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.lbSupp.Location = new System.Drawing.Point(180, 59);
            this.lbSupp.Name = "lbSupp";
            this.lbSupp.Size = new System.Drawing.Size(36, 14);
            this.lbSupp.TabIndex = 18;
            this.lbSupp.Text = "JORI";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.ForeColor = System.Drawing.Color.DarkGreen;
            this.label7.Location = new System.Drawing.Point(71, 319);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(61, 14);
            this.label7.TabIndex = 20;
            this.label7.Text = "Supp Unit";
            this.label7.Visible = false;
            this.label7.DoubleClick += new System.EventHandler(this.lbUom_DoubleClick);
            // 
            // edUnit
            // 
            this.edUnit.Location = new System.Drawing.Point(203, 316);
            this.edUnit.Name = "edUnit";
            this.edUnit.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.edUnit.Size = new System.Drawing.Size(189, 21);
            this.edUnit.TabIndex = 21;
            this.edUnit.Visible = false;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.ForeColor = System.Drawing.Color.DarkGreen;
            this.label8.Location = new System.Drawing.Point(71, 349);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(55, 14);
            this.label8.TabIndex = 22;
            this.label8.Text = "Currency";
            this.label8.DoubleClick += new System.EventHandler(this.lbCurrency_DoubleClick);
            // 
            // edCurrency
            // 
            this.edCurrency.Location = new System.Drawing.Point(203, 346);
            this.edCurrency.Name = "edCurrency";
            this.edCurrency.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.edCurrency.Size = new System.Drawing.Size(189, 21);
            this.edCurrency.TabIndex = 23;
            // 
            // lbApplyTo
            // 
            this.lbApplyTo.AutoSize = true;
            this.lbApplyTo.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.lbApplyTo.ForeColor = System.Drawing.Color.Blue;
            this.lbApplyTo.Location = new System.Drawing.Point(38, 4);
            this.lbApplyTo.Name = "lbApplyTo";
            this.lbApplyTo.Size = new System.Drawing.Size(434, 28);
            this.lbApplyTo.TabIndex = 24;
            this.lbApplyTo.Text = "Step 1:\r\nDel Note/GRN compared to Single invoice against Single delivery note";
            // 
            // btnStep2
            // 
            this.btnStep2.Appearance.ForeColor = System.Drawing.Color.DarkGreen;
            this.btnStep2.Appearance.Options.UseForeColor = true;
            this.btnStep2.Location = new System.Drawing.Point(55, 462);
            this.btnStep2.Name = "btnStep2";
            this.btnStep2.Size = new System.Drawing.Size(75, 29);
            this.btnStep2.TabIndex = 25;
            this.btnStep2.Text = "Step 2";
            this.btnStep2.Visible = false;
            this.btnStep2.Click += new System.EventHandler(this.btnStep2_Click);
            // 
            // tcMain
            // 
            this.tcMain.Location = new System.Drawing.Point(48, 176);
            this.tcMain.Name = "tcMain";
            this.tcMain.SelectedTabPage = this.xtraTabPage1;
            this.tcMain.Size = new System.Drawing.Size(418, 161);
            this.tcMain.TabIndex = 27;
            this.tcMain.TabPages.AddRange(new DevExpress.XtraTab.XtraTabPage[] {
            this.xtraTabPage1});
            this.tcMain.Text = "Invoice";
            // 
            // xtraTabPage1
            // 
            this.xtraTabPage1.Name = "xtraTabPage1";
            this.xtraTabPage1.Size = new System.Drawing.Size(409, 129);
            this.xtraTabPage1.Text = "Invoice - 1";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(15, 29);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(97, 14);
            this.label1.TabIndex = 28;
            this.label1.Text = "Ttl. Invoice Qty:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(15, 51);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(121, 14);
            this.label2.TabIndex = 29;
            this.label2.Text = "Ttl. Invoice Amount:";
            // 
            // lbTtlQty
            // 
            this.lbTtlQty.AutoSize = true;
            this.lbTtlQty.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.lbTtlQty.Location = new System.Drawing.Point(141, 29);
            this.lbTtlQty.Name = "lbTtlQty";
            this.lbTtlQty.Size = new System.Drawing.Size(36, 14);
            this.lbTtlQty.TabIndex = 30;
            this.lbTtlQty.Text = "JORI";
            // 
            // lbTtlAmount
            // 
            this.lbTtlAmount.AutoSize = true;
            this.lbTtlAmount.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.lbTtlAmount.Location = new System.Drawing.Point(141, 51);
            this.lbTtlAmount.Name = "lbTtlAmount";
            this.lbTtlAmount.Size = new System.Drawing.Size(36, 14);
            this.lbTtlAmount.TabIndex = 31;
            this.lbTtlAmount.Text = "JORI";
            // 
            // groupControl1
            // 
            this.groupControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.groupControl1.Controls.Add(this.label1);
            this.groupControl1.Controls.Add(this.lbTtlAmount);
            this.groupControl1.Controls.Add(this.label2);
            this.groupControl1.Controls.Add(this.lbTtlQty);
            this.groupControl1.Location = new System.Drawing.Point(48, 374);
            this.groupControl1.Name = "groupControl1";
            this.groupControl1.Size = new System.Drawing.Size(340, 74);
            this.groupControl1.TabIndex = 32;
            this.groupControl1.Text = "POPC";
            // 
            // InvoiceMatchingIForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(516, 509);
            this.Controls.Add(this.groupControl1);
            this.Controls.Add(this.tcMain);
            this.Controls.Add(this.btnStep2);
            this.Controls.Add(this.lbApplyTo);
            this.Controls.Add(this.edCurrency);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.lbSupp);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.edUnit);
            this.Controls.Add(this.lbUom);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.lbAdviceNote);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.lbCurrency);
            this.Controls.Add(this.simpleButton2);
            this.Controls.Add(this.btnOK);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow;
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "InvoiceMatchingIForm";
            this.ShowInTaskbar = false;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Part 2: Invoice Matching";
            ((System.ComponentModel.ISupportInitialize)(this.edUnit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edCurrency.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.tcMain)).EndInit();
            this.tcMain.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).EndInit();
            this.groupControl1.ResumeLayout(false);
            this.groupControl1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.SimpleButton btnOK;
        private DevExpress.XtraEditors.SimpleButton simpleButton2;
        private System.Windows.Forms.Label lbCurrency;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label lbAdviceNote;
        private System.Windows.Forms.Label lbUom;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label lbSupp;
        private System.Windows.Forms.Label label7;
        private DevExpress.XtraEditors.TextEdit edUnit;
        private System.Windows.Forms.Label label8;
        private DevExpress.XtraEditors.TextEdit edCurrency;
        private System.Windows.Forms.Label lbApplyTo;
        private DevExpress.XtraEditors.SimpleButton btnStep2;
        private DevExpress.XtraTab.XtraTabControl tcMain;
        private DevExpress.XtraTab.XtraTabPage xtraTabPage1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label lbTtlQty;
        private System.Windows.Forms.Label lbTtlAmount;
        private DevExpress.XtraEditors.GroupControl groupControl1;
    }
}