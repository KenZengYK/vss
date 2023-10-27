namespace PH.FabricInspection.UI.Report.ResultNoticeReport
{
    partial class ShowCalculationElementsForm
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
            this.checkBox1 = new System.Windows.Forms.CheckBox();
            this.BtPreview = new DevExpress.XtraEditors.SimpleButton();
            this.SuspendLayout();
            // 
            // checkBox1
            // 
            this.checkBox1.AutoSize = true;
            this.checkBox1.Checked = true;
            this.checkBox1.CheckState = System.Windows.Forms.CheckState.Checked;
            this.checkBox1.Location = new System.Drawing.Point(78, 29);
            this.checkBox1.Name = "checkBox1";
            this.checkBox1.Size = new System.Drawing.Size(134, 18);
            this.checkBox1.TabIndex = 0;
            this.checkBox1.Text = "Show Internal Copy";
            this.checkBox1.UseVisualStyleBackColor = true;
            // 
            // BtPreview
            // 
            this.BtPreview.Location = new System.Drawing.Point(99, 54);
            this.BtPreview.Name = "BtPreview";
            this.BtPreview.Size = new System.Drawing.Size(75, 23);
            this.BtPreview.TabIndex = 1;
            this.BtPreview.Text = "Preview";
            this.BtPreview.Click += new System.EventHandler(this.BtPreview_Click);
            // 
            // ShowCalculationElementsForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(295, 107);
            this.Controls.Add(this.BtPreview);
            this.Controls.Add(this.checkBox1);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "ShowCalculationElementsForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.CheckBox checkBox1;
        private DevExpress.XtraEditors.SimpleButton BtPreview;
    }
}