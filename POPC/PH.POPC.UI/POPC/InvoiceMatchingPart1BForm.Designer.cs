namespace PH.POPC.UI.POPC
{
    partial class InvoiceMatchingPart1BForm
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
            this.components = new System.ComponentModel.Container();
            this.simpleButton2 = new DevExpress.XtraEditors.SimpleButton();
            this.groupControl6 = new DevExpress.XtraEditors.GroupControl();
            this.labelControl22 = new DevExpress.XtraEditors.LabelControl();
            this.btnINV2DN = new DevExpress.XtraEditors.SimpleButton();
            this.btnINV2DNs = new DevExpress.XtraEditors.SimpleButton();
            this.lbTips = new DevExpress.XtraEditors.LabelControl();
            this.bindingSource1 = new System.Windows.Forms.BindingSource(this.components);
            ((System.ComponentModel.ISupportInitialize)(this.groupControl6)).BeginInit();
            this.groupControl6.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).BeginInit();
            this.SuspendLayout();
            // 
            // simpleButton2
            // 
            this.simpleButton2.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.simpleButton2.Location = new System.Drawing.Point(319, 219);
            this.simpleButton2.Name = "simpleButton2";
            this.simpleButton2.Size = new System.Drawing.Size(188, 29);
            this.simpleButton2.TabIndex = 5;
            this.simpleButton2.Text = "Back to Part 1A re-check";
            // 
            // groupControl6
            // 
            this.groupControl6.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.groupControl6.Controls.Add(this.labelControl22);
            this.groupControl6.Controls.Add(this.btnINV2DN);
            this.groupControl6.Controls.Add(this.btnINV2DNs);
            this.groupControl6.Location = new System.Drawing.Point(12, 96);
            this.groupControl6.Name = "groupControl6";
            this.groupControl6.Size = new System.Drawing.Size(495, 108);
            this.groupControl6.TabIndex = 6;
            this.groupControl6.Text = "Part 1B:-";
            // 
            // labelControl22
            // 
            this.labelControl22.Location = new System.Drawing.Point(11, 24);
            this.labelControl22.Name = "labelControl22";
            this.labelControl22.Size = new System.Drawing.Size(470, 14);
            this.labelControl22.TabIndex = 60;
            this.labelControl22.Text = "Invoice not matching at Part 1A (re-checking based on item\'s quantities and amoun" +
                "t)";
            // 
            // btnINV2DN
            // 
            this.btnINV2DN.Appearance.Options.UseTextOptions = true;
            this.btnINV2DN.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.btnINV2DN.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.btnINV2DN.Enabled = false;
            this.btnINV2DN.Location = new System.Drawing.Point(32, 44);
            this.btnINV2DN.Name = "btnINV2DN";
            this.btnINV2DN.Size = new System.Drawing.Size(256, 27);
            this.btnINV2DN.TabIndex = 0;
            this.btnINV2DN.Text = "1.1B Invoice Dependent - Single Del Note";
            // 
            // btnINV2DNs
            // 
            this.btnINV2DNs.Appearance.Options.UseTextOptions = true;
            this.btnINV2DNs.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.btnINV2DNs.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.btnINV2DNs.Enabled = false;
            this.btnINV2DNs.Location = new System.Drawing.Point(32, 77);
            this.btnINV2DNs.Name = "btnINV2DNs";
            this.btnINV2DNs.Size = new System.Drawing.Size(256, 27);
            this.btnINV2DNs.TabIndex = 2;
            this.btnINV2DNs.Text = "1.2B Invoice Dependent - Multiple Del Note";
            // 
            // lbTips
            // 
            this.lbTips.Appearance.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.lbTips.Appearance.Options.UseFont = true;
            this.lbTips.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.Vertical;
            this.lbTips.Location = new System.Drawing.Point(17, 15);
            this.lbTips.Name = "lbTips";
            this.lbTips.Size = new System.Drawing.Size(490, 28);
            this.lbTips.TabIndex = 61;
            this.lbTips.Text = "Invoice not matching at Part 1A (re-checking based on item\'s quantities and amoun" +
                "t)";
            // 
            // bindingSource1
            // 
            this.bindingSource1.DataSource = typeof(PH.BasicInfo.BO.TransitModeTransitPointChange);
            // 
            // InvoiceMatchingPart1BForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(523, 265);
            this.Controls.Add(this.lbTips);
            this.Controls.Add(this.groupControl6);
            this.Controls.Add(this.simpleButton2);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow;
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "InvoiceMatchingPart1BForm";
            this.ShowInTaskbar = false;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Part 1A Invoice Matching";
            ((System.ComponentModel.ISupportInitialize)(this.groupControl6)).EndInit();
            this.groupControl6.ResumeLayout(false);
            this.groupControl6.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.SimpleButton simpleButton2;
        private System.Windows.Forms.BindingSource bindingSource1;
        private DevExpress.XtraEditors.GroupControl groupControl6;
        private DevExpress.XtraEditors.LabelControl labelControl22;
        private DevExpress.XtraEditors.SimpleButton btnINV2DN;
        private DevExpress.XtraEditors.SimpleButton btnINV2DNs;
        private DevExpress.XtraEditors.LabelControl lbTips;
    }
}