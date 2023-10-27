namespace PH.SPC.UI.Main
{
    partial class FrmWorkLoadQuery
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
            this.lblStart = new DevExpress.XtraEditors.LabelControl();
            this.lblEnd = new DevExpress.XtraEditors.LabelControl();
            this.btnQuery = new System.Windows.Forms.Button();
            this.btnClose = new System.Windows.Forms.Button();
            this.cbStart = new DevExpress.XtraEditors.ComboBoxEdit();
            this.cbEnd = new DevExpress.XtraEditors.ComboBoxEdit();
            this.ckSummary = new DevExpress.XtraEditors.CheckEdit();
            ((System.ComponentModel.ISupportInitialize)(this.cbStart.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbEnd.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.ckSummary.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // lblStart
            // 
            this.lblStart.Location = new System.Drawing.Point(104, 35);
            this.lblStart.Name = "lblStart";
            this.lblStart.Size = new System.Drawing.Size(70, 14);
            this.lblStart.TabIndex = 0;
            this.lblStart.Text = "Start Month:";
            // 
            // lblEnd
            // 
            this.lblEnd.Location = new System.Drawing.Point(104, 93);
            this.lblEnd.Name = "lblEnd";
            this.lblEnd.Size = new System.Drawing.Size(68, 14);
            this.lblEnd.TabIndex = 1;
            this.lblEnd.Text = "End Month :";
            // 
            // btnQuery
            // 
            this.btnQuery.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.btnQuery.Location = new System.Drawing.Point(104, 186);
            this.btnQuery.Name = "btnQuery";
            this.btnQuery.Size = new System.Drawing.Size(75, 23);
            this.btnQuery.TabIndex = 4;
            this.btnQuery.Text = "Query";
            this.btnQuery.UseVisualStyleBackColor = true;
            this.btnQuery.Click += new System.EventHandler(this.btnQuery_Click);
            // 
            // btnClose
            // 
            this.btnClose.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnClose.Location = new System.Drawing.Point(277, 186);
            this.btnClose.Name = "btnClose";
            this.btnClose.Size = new System.Drawing.Size(75, 23);
            this.btnClose.TabIndex = 5;
            this.btnClose.Text = "Close";
            this.btnClose.UseVisualStyleBackColor = true;
            this.btnClose.Click += new System.EventHandler(this.btnClose_Click);
            // 
            // cbStart
            // 
            this.cbStart.Location = new System.Drawing.Point(200, 35);
            this.cbStart.Name = "cbStart";
            this.cbStart.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbStart.Size = new System.Drawing.Size(100, 21);
            this.cbStart.TabIndex = 6;
            // 
            // cbEnd
            // 
            this.cbEnd.Location = new System.Drawing.Point(200, 93);
            this.cbEnd.Name = "cbEnd";
            this.cbEnd.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbEnd.Size = new System.Drawing.Size(100, 21);
            this.cbEnd.TabIndex = 7;
            // 
            // ckSummary
            // 
            this.ckSummary.Location = new System.Drawing.Point(198, 143);
            this.ckSummary.Name = "ckSummary";
            this.ckSummary.Properties.Caption = "匯總";
            this.ckSummary.Size = new System.Drawing.Size(75, 19);
            this.ckSummary.TabIndex = 8;
            // 
            // FrmWorkLoadQuery
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(449, 242);
            this.Controls.Add(this.ckSummary);
            this.Controls.Add(this.cbEnd);
            this.Controls.Add(this.cbStart);
            this.Controls.Add(this.btnClose);
            this.Controls.Add(this.btnQuery);
            this.Controls.Add(this.lblEnd);
            this.Controls.Add(this.lblStart);
            this.Name = "FrmWorkLoadQuery";
            this.Text = "FrmWorkLoadQuery";
            ((System.ComponentModel.ISupportInitialize)(this.cbStart.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbEnd.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.ckSummary.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.LabelControl lblStart;
        private DevExpress.XtraEditors.LabelControl lblEnd;
        private System.Windows.Forms.Button btnQuery;
        private System.Windows.Forms.Button btnClose;
        private DevExpress.XtraEditors.ComboBoxEdit cbStart;
        private DevExpress.XtraEditors.ComboBoxEdit cbEnd;
        private DevExpress.XtraEditors.CheckEdit ckSummary;
    }
}