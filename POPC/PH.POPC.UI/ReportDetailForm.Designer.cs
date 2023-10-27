namespace PH.POPC.UI
{
    partial class ReportDetailForm
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

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.Windows.Forms.Label reportTypeCodeLabel;
            System.Windows.Forms.Label reportCodeLabel;
            this.reportTypeCodeLookUpEdit = new DevExpress.XtraEditors.LookUpEdit();
            this.reportCodeLookUpEdit = new DevExpress.XtraEditors.LookUpEdit();
            reportTypeCodeLabel = new System.Windows.Forms.Label();
            reportCodeLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.reportTypeCodeLookUpEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.reportCodeLookUpEdit.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // objEditBar
            // 
            this.objEditBar.Appearance.Options.UseTextOptions = true;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.POPC.BO.Report);
            // 
            // reportTypeCodeLabel
            // 
            reportTypeCodeLabel.AutoSize = true;
            reportTypeCodeLabel.Location = new System.Drawing.Point(45, 45);
            reportTypeCodeLabel.Name = "reportTypeCodeLabel";
            reportTypeCodeLabel.Size = new System.Drawing.Size(95, 12);
            this.PlatetoolTipController.SetSuperTip(reportTypeCodeLabel, null);
            reportTypeCodeLabel.TabIndex = 4;
            reportTypeCodeLabel.Text = "Report Type Code:";
            // 
            // reportTypeCodeLookUpEdit
            // 
            this.reportTypeCodeLookUpEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "ReportTypeCode", true));
            this.reportTypeCodeLookUpEdit.Location = new System.Drawing.Point(146, 42);
            this.reportTypeCodeLookUpEdit.Name = "reportTypeCodeLookUpEdit";
            this.reportTypeCodeLookUpEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.reportTypeCodeLookUpEdit.Properties.NullText = "";
            this.reportTypeCodeLookUpEdit.Size = new System.Drawing.Size(194, 21);
            this.reportTypeCodeLookUpEdit.TabIndex = 5;
            // 
            // reportCodeLabel
            // 
            reportCodeLabel.AutoSize = true;
            reportCodeLabel.Location = new System.Drawing.Point(72, 82);
            reportCodeLabel.Name = "reportCodeLabel";
            reportCodeLabel.Size = new System.Drawing.Size(68, 12);
            this.PlatetoolTipController.SetSuperTip(reportCodeLabel, null);
            reportCodeLabel.TabIndex = 6;
            reportCodeLabel.Text = "Report Code:";
            // 
            // reportCodeLookUpEdit
            // 
            this.reportCodeLookUpEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "ReportCode", true));
            this.reportCodeLookUpEdit.Location = new System.Drawing.Point(146, 79);
            this.reportCodeLookUpEdit.Name = "reportCodeLookUpEdit";
            this.reportCodeLookUpEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.reportCodeLookUpEdit.Properties.NullText = "";
            this.reportCodeLookUpEdit.Size = new System.Drawing.Size(194, 21);
            this.reportCodeLookUpEdit.TabIndex = 7;
            // 
            // ReportDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(reportCodeLabel);
            this.Controls.Add(this.reportCodeLookUpEdit);
            this.Controls.Add(reportTypeCodeLabel);
            this.Controls.Add(this.reportTypeCodeLookUpEdit);
            this.Name = "ReportDetailForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Load += new System.EventHandler(this.ReportDetailForm_Load);
            this.Controls.SetChildIndex(this.reportTypeCodeLookUpEdit, 0);
            this.Controls.SetChildIndex(reportTypeCodeLabel, 0);
            this.Controls.SetChildIndex(this.reportCodeLookUpEdit, 0);
            this.Controls.SetChildIndex(reportCodeLabel, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.reportTypeCodeLookUpEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.reportCodeLookUpEdit.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.LookUpEdit reportTypeCodeLookUpEdit;
        private DevExpress.XtraEditors.LookUpEdit reportCodeLookUpEdit;


    }
}
