namespace PH.LineBalanceII.UI
{
    partial class PrintSetupForm
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
            this.chkMainTable = new DevExpress.XtraEditors.CheckEdit();
            this.chkAdjTable = new DevExpress.XtraEditors.CheckEdit();
            this.panel1 = new System.Windows.Forms.Panel();
            this.btnOK = new DevExpress.XtraEditors.SimpleButton();
            this.btnCancel = new DevExpress.XtraEditors.SimpleButton();
            this.checkPrintEnglish = new DevExpress.XtraEditors.CheckEdit();
            ((System.ComponentModel.ISupportInitialize)(this.chkMainTable.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkAdjTable.Properties)).BeginInit();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.checkPrintEnglish.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // chkMainTable
            // 
            this.chkMainTable.EditValue = true;
            this.chkMainTable.Location = new System.Drawing.Point(64, 9);
            this.chkMainTable.Name = "chkMainTable";
            this.chkMainTable.Properties.Caption = "列印主工序表";
            this.chkMainTable.Size = new System.Drawing.Size(148, 19);
            this.chkMainTable.TabIndex = 0;
            // 
            // chkAdjTable
            // 
            this.chkAdjTable.Location = new System.Drawing.Point(64, 34);
            this.chkAdjTable.Name = "chkAdjTable";
            this.chkAdjTable.Properties.Caption = "列印附表";
            this.chkAdjTable.Size = new System.Drawing.Size(95, 19);
            this.chkAdjTable.TabIndex = 1;
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.btnOK);
            this.panel1.Controls.Add(this.btnCancel);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.panel1.Location = new System.Drawing.Point(0, 90);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(269, 47);
            this.panel1.TabIndex = 2;
            // 
            // btnOK
            // 
            this.btnOK.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.btnOK.Location = new System.Drawing.Point(53, 12);
            this.btnOK.Name = "btnOK";
            this.btnOK.Size = new System.Drawing.Size(75, 23);
            this.btnOK.TabIndex = 1;
            this.btnOK.Text = "OK";
            this.btnOK.Click += new System.EventHandler(this.btnOK_Click);
            // 
            // btnCancel
            // 
            this.btnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnCancel.Location = new System.Drawing.Point(146, 12);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(75, 23);
            this.btnCancel.TabIndex = 0;
            this.btnCancel.Text = "Cancel";
            // 
            // checkPrintEnglish
            // 
            this.checkPrintEnglish.Location = new System.Drawing.Point(64, 59);
            this.checkPrintEnglish.Name = "checkPrintEnglish";
            this.checkPrintEnglish.Properties.Caption = "Print English";
            this.checkPrintEnglish.Size = new System.Drawing.Size(95, 19);
            this.checkPrintEnglish.TabIndex = 3;
            // 
            // PrintSetupForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(269, 137);
            this.Controls.Add(this.checkPrintEnglish);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.chkAdjTable);
            this.Controls.Add(this.chkMainTable);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "PrintSetupForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "列印表格";
            ((System.ComponentModel.ISupportInitialize)(this.chkMainTable.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkAdjTable.Properties)).EndInit();
            this.panel1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.checkPrintEnglish.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.CheckEdit chkMainTable;
        private DevExpress.XtraEditors.CheckEdit chkAdjTable;
        private System.Windows.Forms.Panel panel1;
        private DevExpress.XtraEditors.SimpleButton btnOK;
        private DevExpress.XtraEditors.SimpleButton btnCancel;
        private DevExpress.XtraEditors.CheckEdit checkPrintEnglish;
    }
}