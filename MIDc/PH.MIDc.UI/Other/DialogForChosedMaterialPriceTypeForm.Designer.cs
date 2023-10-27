namespace PH.MIDc.UI
{
    partial class DialogForChosedMaterialPriceTypeForm
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
            this.chkListBoxPriceType = new DevExpress.XtraEditors.CheckedListBoxControl();
            this.sBtn_OK = new DevExpress.XtraEditors.SimpleButton();
            this.sBtn_Cancel = new DevExpress.XtraEditors.SimpleButton();
            ((System.ComponentModel.ISupportInitialize)(this.chkListBoxPriceType)).BeginInit();
            this.SuspendLayout();
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(30, 13);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(120, 14);
            this.labelControl1.TabIndex = 0;
            this.labelControl1.Text = "请选择打印单价类别：";
            // 
            // chkListBoxPriceType
            // 
            this.chkListBoxPriceType.Items.AddRange(new DevExpress.XtraEditors.Controls.CheckedListBoxItem[] {
            new DevExpress.XtraEditors.Controls.CheckedListBoxItem("Standard"),
            new DevExpress.XtraEditors.Controls.CheckedListBoxItem("CustomerFavor"),
            new DevExpress.XtraEditors.Controls.CheckedListBoxItem("Volume"),
            new DevExpress.XtraEditors.Controls.CheckedListBoxItem("Period"),
            new DevExpress.XtraEditors.Controls.CheckedListBoxItem("Collective")});
            this.chkListBoxPriceType.Location = new System.Drawing.Point(30, 35);
            this.chkListBoxPriceType.Name = "chkListBoxPriceType";
            this.chkListBoxPriceType.Size = new System.Drawing.Size(320, 95);
            this.chkListBoxPriceType.TabIndex = 2;
            // 
            // sBtn_OK
            // 
            this.sBtn_OK.Location = new System.Drawing.Point(275, 136);
            this.sBtn_OK.Name = "sBtn_OK";
            this.sBtn_OK.Size = new System.Drawing.Size(75, 23);
            this.sBtn_OK.TabIndex = 3;
            this.sBtn_OK.Text = "确定";
            this.sBtn_OK.Click += new System.EventHandler(this.sBtn_OK_Click);
            // 
            // sBtn_Cancel
            // 
            this.sBtn_Cancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.sBtn_Cancel.Location = new System.Drawing.Point(200, 136);
            this.sBtn_Cancel.Name = "sBtn_Cancel";
            this.sBtn_Cancel.Size = new System.Drawing.Size(75, 23);
            this.sBtn_Cancel.TabIndex = 3;
            this.sBtn_Cancel.Text = "取消";
            // 
            // DialogForChosedMaterialPriceTypeForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(376, 165);
            this.Controls.Add(this.sBtn_Cancel);
            this.Controls.Add(this.sBtn_OK);
            this.Controls.Add(this.chkListBoxPriceType);
            this.Controls.Add(this.labelControl1);
            this.Name = "DialogForChosedMaterialPriceTypeForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "单价类别选择";
            ((System.ComponentModel.ISupportInitialize)(this.chkListBoxPriceType)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.CheckedListBoxControl chkListBoxPriceType;
        private DevExpress.XtraEditors.SimpleButton sBtn_OK;
        private DevExpress.XtraEditors.SimpleButton sBtn_Cancel;
    }
}