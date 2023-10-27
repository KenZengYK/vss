namespace PH.MobileQC.UI
{
    partial class StyleOpsQualityProblemShootingCondition
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
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.lblExecDT = new DevExpress.XtraEditors.LabelControl();
            this.txtDateFrom = new DevExpress.XtraEditors.DateEdit();
            this.txtDateTo = new DevExpress.XtraEditors.DateEdit();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.btnPreview = new DevExpress.XtraEditors.SimpleButton();
            this.comStyle = new DevExpress.XtraEditors.ComboBoxEdit();
            this.cmbFac = new DevExpress.XtraEditors.ComboBoxEdit();
            this.labelControl3 = new DevExpress.XtraEditors.LabelControl();
            this.btnRefresh = new DevExpress.XtraEditors.SimpleButton();
            ((System.ComponentModel.ISupportInitialize)(this.txtDateFrom.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDateFrom.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDateTo.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDateTo.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.comStyle.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cmbFac.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(57, 56);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(55, 14);
            this.labelControl1.TabIndex = 0;
            this.labelControl1.Text = "Cust Style";
            // 
            // lblExecDT
            // 
            this.lblExecDT.Appearance.Options.UseTextOptions = true;
            this.lblExecDT.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.lblExecDT.Appearance.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.lblExecDT.Location = new System.Drawing.Point(55, 88);
            this.lblExecDT.Name = "lblExecDT";
            this.lblExecDT.Size = new System.Drawing.Size(57, 14);
            this.lblExecDT.TabIndex = 74;
            this.lblExecDT.Text = "Date From";
            // 
            // txtDateFrom
            // 
            this.txtDateFrom.EditValue = new System.DateTime(2019, 5, 20, 0, 0, 0, 0);
            this.txtDateFrom.Location = new System.Drawing.Point(143, 86);
            this.txtDateFrom.Name = "txtDateFrom";
            this.txtDateFrom.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtDateFrom.Properties.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.txtDateFrom.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.txtDateFrom.Properties.EditFormat.FormatString = "yyyy-MM-dd";
            this.txtDateFrom.Properties.EditFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.txtDateFrom.Properties.Mask.EditMask = "yyyy-MM-dd";
            this.txtDateFrom.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.txtDateFrom.Size = new System.Drawing.Size(88, 21);
            this.txtDateFrom.TabIndex = 73;
            this.txtDateFrom.EditValueChanged += new System.EventHandler(this.txtDateFrom_EditValueChanged);
            // 
            // txtDateTo
            // 
            this.txtDateTo.EditValue = new System.DateTime(2019, 6, 10, 0, 0, 0, 0);
            this.txtDateTo.Location = new System.Drawing.Point(257, 86);
            this.txtDateTo.Name = "txtDateTo";
            this.txtDateTo.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtDateTo.Properties.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.txtDateTo.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.txtDateTo.Properties.EditFormat.FormatString = "yyyy-MM-dd";
            this.txtDateTo.Properties.EditFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.txtDateTo.Properties.Mask.EditMask = "yyyy-MM-dd";
            this.txtDateTo.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.txtDateTo.Size = new System.Drawing.Size(88, 21);
            this.txtDateTo.TabIndex = 75;
            this.txtDateTo.EditValueChanged += new System.EventHandler(this.txtDateTo_EditValueChanged);
            // 
            // labelControl2
            // 
            this.labelControl2.Appearance.Options.UseTextOptions = true;
            this.labelControl2.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.labelControl2.Appearance.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.labelControl2.Location = new System.Drawing.Point(238, 89);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(15, 14);
            this.labelControl2.TabIndex = 76;
            this.labelControl2.Text = "To";
            // 
            // btnPreview
            // 
            this.btnPreview.Location = new System.Drawing.Point(143, 129);
            this.btnPreview.Name = "btnPreview";
            this.btnPreview.Size = new System.Drawing.Size(75, 23);
            this.btnPreview.TabIndex = 77;
            this.btnPreview.Text = "Preview";
            this.btnPreview.Click += new System.EventHandler(this.btnPreview_Click);
            // 
            // comStyle
            // 
            this.comStyle.Location = new System.Drawing.Point(143, 54);
            this.comStyle.Name = "comStyle";
            this.comStyle.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.comStyle.Size = new System.Drawing.Size(202, 21);
            this.comStyle.TabIndex = 78;
            // 
            // cmbFac
            // 
            this.cmbFac.EditValue = "CL";
            this.cmbFac.Location = new System.Drawing.Point(143, 26);
            this.cmbFac.Name = "cmbFac";
            this.cmbFac.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cmbFac.Size = new System.Drawing.Size(202, 21);
            this.cmbFac.TabIndex = 80;
            this.cmbFac.SelectedValueChanged += new System.EventHandler(this.cmbFac_SelectedValueChanged);
            // 
            // labelControl3
            // 
            this.labelControl3.Location = new System.Drawing.Point(57, 28);
            this.labelControl3.Name = "labelControl3";
            this.labelControl3.Size = new System.Drawing.Size(17, 14);
            this.labelControl3.TabIndex = 79;
            this.labelControl3.Text = "Fty";
            // 
            // btnRefresh
            // 
            this.btnRefresh.Location = new System.Drawing.Point(257, 129);
            this.btnRefresh.Name = "btnRefresh";
            this.btnRefresh.Size = new System.Drawing.Size(88, 23);
            this.btnRefresh.TabIndex = 82;
            this.btnRefresh.Text = "Preview All";
            this.btnRefresh.Click += new System.EventHandler(this.btnRefresh_Click);
            // 
            // StyleOpsQualityProblemShootingCondition
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.btnRefresh);
            this.Controls.Add(this.cmbFac);
            this.Controls.Add(this.labelControl3);
            this.Controls.Add(this.comStyle);
            this.Controls.Add(this.btnPreview);
            this.Controls.Add(this.labelControl2);
            this.Controls.Add(this.txtDateTo);
            this.Controls.Add(this.lblExecDT);
            this.Controls.Add(this.txtDateFrom);
            this.Controls.Add(this.labelControl1);
            this.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.Name = "StyleOpsQualityProblemShootingCondition";
            this.Size = new System.Drawing.Size(466, 208);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.txtDateFrom.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDateFrom.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDateTo.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDateTo.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.comStyle.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cmbFac.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.LabelControl lblExecDT;
        private DevExpress.XtraEditors.DateEdit txtDateFrom;
        private DevExpress.XtraEditors.DateEdit txtDateTo;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.SimpleButton btnPreview;
        private DevExpress.XtraEditors.ComboBoxEdit comStyle;
        private DevExpress.XtraEditors.ComboBoxEdit cmbFac;
        private DevExpress.XtraEditors.LabelControl labelControl3;
        private DevExpress.XtraEditors.SimpleButton btnRefresh;
    }
}
