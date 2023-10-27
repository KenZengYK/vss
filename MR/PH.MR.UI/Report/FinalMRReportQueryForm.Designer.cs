namespace PH.MR.UI.Report
{
    partial class FinalMRReportQueryForm
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
            this.devStartDate = new DevExpress.XtraEditors.DateEdit();
            this.devEndDate = new DevExpress.XtraEditors.DateEdit();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.simpleButton1 = new DevExpress.XtraEditors.SimpleButton();
            ((System.ComponentModel.ISupportInitialize)(this.devStartDate.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.devStartDate.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.devEndDate.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.devEndDate.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(70, 77);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(57, 14);
            this.labelControl1.TabIndex = 0;
            this.labelControl1.Text = "Start Date";
            // 
            // devStartDate
            // 
            this.devStartDate.EditValue = null;
            this.devStartDate.Location = new System.Drawing.Point(146, 74);
            this.devStartDate.Name = "devStartDate";
            this.devStartDate.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.devStartDate.Properties.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.devStartDate.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.devStartDate.Properties.EditFormat.FormatString = "yyyy-MM-dd";
            this.devStartDate.Properties.EditFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.devStartDate.Properties.Mask.EditMask = "yyyy-MM-dd";
            this.devStartDate.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.devStartDate.Size = new System.Drawing.Size(153, 21);
            this.devStartDate.TabIndex = 1;
            // 
            // devEndDate
            // 
            this.devEndDate.EditValue = null;
            this.devEndDate.Location = new System.Drawing.Point(146, 124);
            this.devEndDate.Name = "devEndDate";
            this.devEndDate.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.devEndDate.Properties.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.devEndDate.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.devEndDate.Properties.EditFormat.FormatString = "yyyy-MM-dd";
            this.devEndDate.Properties.EditFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.devEndDate.Properties.Mask.EditMask = "yyyy-MM-dd";
            this.devEndDate.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.devEndDate.Size = new System.Drawing.Size(153, 21);
            this.devEndDate.TabIndex = 3;
            // 
            // labelControl2
            // 
            this.labelControl2.Location = new System.Drawing.Point(70, 127);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(51, 14);
            this.labelControl2.TabIndex = 2;
            this.labelControl2.Text = "End Date";
            // 
            // simpleButton1
            // 
            this.simpleButton1.Location = new System.Drawing.Point(177, 188);
            this.simpleButton1.Name = "simpleButton1";
            this.simpleButton1.Size = new System.Drawing.Size(75, 23);
            this.simpleButton1.TabIndex = 4;
            this.simpleButton1.Text = "OK";
            this.simpleButton1.Click += new System.EventHandler(this.simpleButton1_Click);
            // 
            // FinalMRReportQueryForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.simpleButton1);
            this.Controls.Add(this.devEndDate);
            this.Controls.Add(this.labelControl2);
            this.Controls.Add(this.devStartDate);
            this.Controls.Add(this.labelControl1);
            this.Name = "FinalMRReportQueryForm";
            this.Size = new System.Drawing.Size(470, 426);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.devStartDate.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.devStartDate.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.devEndDate.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.devEndDate.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.DateEdit devStartDate;
        private DevExpress.XtraEditors.DateEdit devEndDate;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.SimpleButton simpleButton1;
    }
}