namespace PH.MIDc.UI
{
    partial class SuppCodeCompareToMIDcAndERP
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
            this.textEditMIDcSuppCode = new DevExpress.XtraEditors.TextEdit();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl3 = new DevExpress.XtraEditors.LabelControl();
            this.textEditERPSuppCode = new DevExpress.XtraEditors.TextEdit();
            this.sBtn_Find = new DevExpress.XtraEditors.SimpleButton();
            this.labelControl4 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl5 = new DevExpress.XtraEditors.LabelControl();
            this.sBtn_Clear = new DevExpress.XtraEditors.SimpleButton();
            ((System.ComponentModel.ISupportInitialize)(this.textEditMIDcSuppCode.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEditERPSuppCode.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // textEditMIDcSuppCode
            // 
            this.textEditMIDcSuppCode.Location = new System.Drawing.Point(152, 12);
            this.textEditMIDcSuppCode.Name = "textEditMIDcSuppCode";
            this.textEditMIDcSuppCode.Size = new System.Drawing.Size(173, 21);
            this.textEditMIDcSuppCode.TabIndex = 0;
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(20, 15);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(126, 14);
            this.labelControl1.TabIndex = 1;
            this.labelControl1.Text = "MIDc\'s Supplier Code：";
            // 
            // labelControl2
            // 
            this.labelControl2.Location = new System.Drawing.Point(148, 42);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(24, 14);
            this.labelControl2.TabIndex = 1;
            this.labelControl2.Text = "对应";
            // 
            // labelControl3
            // 
            this.labelControl3.Location = new System.Drawing.Point(20, 67);
            this.labelControl3.Name = "labelControl3";
            this.labelControl3.Size = new System.Drawing.Size(120, 14);
            this.labelControl3.TabIndex = 1;
            this.labelControl3.Text = "ERP\'s Supplier Code：";
            // 
            // textEditERPSuppCode
            // 
            this.textEditERPSuppCode.Location = new System.Drawing.Point(152, 64);
            this.textEditERPSuppCode.Name = "textEditERPSuppCode";
            this.textEditERPSuppCode.Size = new System.Drawing.Size(173, 21);
            this.textEditERPSuppCode.TabIndex = 0;
            // 
            // sBtn_Find
            // 
            this.sBtn_Find.Location = new System.Drawing.Point(259, 95);
            this.sBtn_Find.Name = "sBtn_Find";
            this.sBtn_Find.Size = new System.Drawing.Size(65, 23);
            this.sBtn_Find.TabIndex = 2;
            this.sBtn_Find.Text = "Find";
            this.sBtn_Find.Click += new System.EventHandler(this.sBtn_Find_Click);
            // 
            // labelControl4
            // 
            this.labelControl4.Location = new System.Drawing.Point(20, 42);
            this.labelControl4.Name = "labelControl4";
            this.labelControl4.Size = new System.Drawing.Size(112, 14);
            this.labelControl4.TabIndex = 3;
            this.labelControl4.Text = "----------------------------";
            // 
            // labelControl5
            // 
            this.labelControl5.Location = new System.Drawing.Point(192, 42);
            this.labelControl5.Name = "labelControl5";
            this.labelControl5.Size = new System.Drawing.Size(132, 14);
            this.labelControl5.TabIndex = 3;
            this.labelControl5.Text = "---------------------------------";
            // 
            // sBtn_Clear
            // 
            this.sBtn_Clear.Location = new System.Drawing.Point(192, 95);
            this.sBtn_Clear.Name = "sBtn_Clear";
            this.sBtn_Clear.Size = new System.Drawing.Size(65, 23);
            this.sBtn_Clear.TabIndex = 2;
            this.sBtn_Clear.Text = "Clear";
            this.sBtn_Clear.Click += new System.EventHandler(this.sBtn_Clear_Click);
            // 
            // SuppCodeCompareToMIDcAndERP
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(343, 128);
            this.Controls.Add(this.labelControl5);
            this.Controls.Add(this.labelControl4);
            this.Controls.Add(this.sBtn_Clear);
            this.Controls.Add(this.sBtn_Find);
            this.Controls.Add(this.labelControl2);
            this.Controls.Add(this.labelControl3);
            this.Controls.Add(this.labelControl1);
            this.Controls.Add(this.textEditERPSuppCode);
            this.Controls.Add(this.textEditMIDcSuppCode);
            this.Name = "SuppCodeCompareToMIDcAndERP";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "Suppler Code查询";
            ((System.ComponentModel.ISupportInitialize)(this.textEditMIDcSuppCode.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEditERPSuppCode.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit textEditMIDcSuppCode;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.LabelControl labelControl3;
        private DevExpress.XtraEditors.TextEdit textEditERPSuppCode;
        private DevExpress.XtraEditors.SimpleButton sBtn_Find;
        private DevExpress.XtraEditors.LabelControl labelControl4;
        private DevExpress.XtraEditors.LabelControl labelControl5;
        private DevExpress.XtraEditors.SimpleButton sBtn_Clear;
    }
}