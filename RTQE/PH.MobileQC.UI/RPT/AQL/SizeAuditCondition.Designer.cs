namespace PH.MobileQC.UI.AQL
{
    partial class SizeAuditCondition
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
            this.labelControl3 = new DevExpress.XtraEditors.LabelControl();
            this.cbReportType = new DevExpress.XtraEditors.ComboBoxEdit();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.deEndDate = new DevExpress.XtraEditors.DateEdit();
            this.lblStart = new DevExpress.XtraEditors.LabelControl();
            this.deBeginDate = new DevExpress.XtraEditors.DateEdit();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.cbProject = new DevExpress.XtraEditors.ComboBoxEdit();
            this.labelControl4 = new DevExpress.XtraEditors.LabelControl();
            this.cbWO = new DevExpress.XtraEditors.ComboBoxEdit();
            this.cbStyle = new DevExpress.XtraEditors.ComboBoxEdit();
            this.labelControl5 = new DevExpress.XtraEditors.LabelControl();
            this.cbColor = new DevExpress.XtraEditors.ComboBoxEdit();
            this.labelControl6 = new DevExpress.XtraEditors.LabelControl();
            this.btnPrint = new DevExpress.XtraEditors.SimpleButton();
            ((System.ComponentModel.ISupportInitialize)(this.cbReportType.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deEndDate.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deEndDate.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deBeginDate.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deBeginDate.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbProject.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbWO.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbStyle.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbColor.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // labelControl3
            // 
            this.labelControl3.Appearance.Options.UseTextOptions = true;
            this.labelControl3.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.labelControl3.Appearance.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.labelControl3.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.labelControl3.Location = new System.Drawing.Point(30, 187);
            this.labelControl3.Name = "labelControl3";
            this.labelControl3.Size = new System.Drawing.Size(82, 19);
            this.labelControl3.TabIndex = 87;
            this.labelControl3.Text = "ReportType";
            // 
            // cbReportType
            // 
            this.cbReportType.EditValue = "AQL";
            this.cbReportType.Location = new System.Drawing.Point(120, 187);
            this.cbReportType.Name = "cbReportType";
            this.cbReportType.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbReportType.Properties.Items.AddRange(new object[] {
            "AQL",
            "Full Audit",
            "FirstBoxAudit"});
            this.cbReportType.Size = new System.Drawing.Size(132, 21);
            this.cbReportType.TabIndex = 86;
            // 
            // labelControl2
            // 
            this.labelControl2.Appearance.Options.UseTextOptions = true;
            this.labelControl2.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.labelControl2.Appearance.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.labelControl2.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.labelControl2.Location = new System.Drawing.Point(258, 38);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(67, 19);
            this.labelControl2.TabIndex = 91;
            this.labelControl2.Text = "DueDate(*)";
            // 
            // deEndDate
            // 
            this.deEndDate.EditValue = null;
            this.deEndDate.Location = new System.Drawing.Point(331, 37);
            this.deEndDate.Name = "deEndDate";
            this.deEndDate.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.deEndDate.Properties.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.deEndDate.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.deEndDate.Properties.EditFormat.FormatString = "yyyy-MM-dd";
            this.deEndDate.Properties.EditFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.deEndDate.Properties.Mask.EditMask = "yyyy-MM-dd";
            this.deEndDate.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.deEndDate.Size = new System.Drawing.Size(132, 21);
            this.deEndDate.TabIndex = 90;
            this.deEndDate.EditValueChanged += new System.EventHandler(this.deEndDate_EditValueChanged);
            // 
            // lblStart
            // 
            this.lblStart.Appearance.Options.UseTextOptions = true;
            this.lblStart.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.lblStart.Appearance.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.lblStart.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.lblStart.Location = new System.Drawing.Point(24, 38);
            this.lblStart.Name = "lblStart";
            this.lblStart.Size = new System.Drawing.Size(88, 19);
            this.lblStart.TabIndex = 89;
            this.lblStart.Text = "StartDate(*)";
            // 
            // deBeginDate
            // 
            this.deBeginDate.EditValue = null;
            this.deBeginDate.Location = new System.Drawing.Point(120, 37);
            this.deBeginDate.Name = "deBeginDate";
            this.deBeginDate.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.deBeginDate.Properties.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.deBeginDate.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.deBeginDate.Properties.EditFormat.FormatString = "yyyy-MM-dd";
            this.deBeginDate.Properties.EditFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.deBeginDate.Properties.Mask.EditMask = "yyyy-MM-dd";
            this.deBeginDate.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.deBeginDate.Size = new System.Drawing.Size(132, 21);
            this.deBeginDate.TabIndex = 88;
            this.deBeginDate.EditValueChanged += new System.EventHandler(this.deBeginDate_EditValueChanged);
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(73, 71);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(39, 14);
            this.labelControl1.TabIndex = 92;
            this.labelControl1.Text = "Project";
            // 
            // cbProject
            // 
            this.cbProject.EditValue = "";
            this.cbProject.Location = new System.Drawing.Point(120, 67);
            this.cbProject.Name = "cbProject";
            this.cbProject.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbProject.Size = new System.Drawing.Size(132, 21);
            this.cbProject.TabIndex = 93;
            this.cbProject.EditValueChanged += new System.EventHandler(this.cbProject_EditValueChanged);
            // 
            // labelControl4
            // 
            this.labelControl4.Location = new System.Drawing.Point(91, 100);
            this.labelControl4.Name = "labelControl4";
            this.labelControl4.Size = new System.Drawing.Size(21, 14);
            this.labelControl4.TabIndex = 94;
            this.labelControl4.Text = "WO";
            // 
            // cbWO
            // 
            this.cbWO.Location = new System.Drawing.Point(120, 97);
            this.cbWO.Name = "cbWO";
            this.cbWO.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbWO.Size = new System.Drawing.Size(132, 21);
            this.cbWO.TabIndex = 95;
            this.cbWO.EditValueChanged += new System.EventHandler(this.cbWO_EditValueChanged);
            // 
            // cbStyle
            // 
            this.cbStyle.Location = new System.Drawing.Point(120, 127);
            this.cbStyle.Name = "cbStyle";
            this.cbStyle.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbStyle.Size = new System.Drawing.Size(132, 21);
            this.cbStyle.TabIndex = 97;
            this.cbStyle.EditValueChanged += new System.EventHandler(this.cbStyle_EditValueChanged);
            // 
            // labelControl5
            // 
            this.labelControl5.Location = new System.Drawing.Point(68, 130);
            this.labelControl5.Name = "labelControl5";
            this.labelControl5.Size = new System.Drawing.Size(44, 14);
            this.labelControl5.TabIndex = 96;
            this.labelControl5.Text = "Style(*)";
            // 
            // cbColor
            // 
            this.cbColor.Location = new System.Drawing.Point(120, 157);
            this.cbColor.Name = "cbColor";
            this.cbColor.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbColor.Size = new System.Drawing.Size(132, 21);
            this.cbColor.TabIndex = 99;
            // 
            // labelControl6
            // 
            this.labelControl6.Location = new System.Drawing.Point(68, 159);
            this.labelControl6.Name = "labelControl6";
            this.labelControl6.Size = new System.Drawing.Size(44, 14);
            this.labelControl6.TabIndex = 98;
            this.labelControl6.Text = "Color(*)";
            // 
            // btnPrint
            // 
            this.btnPrint.Location = new System.Drawing.Point(156, 232);
            this.btnPrint.Name = "btnPrint";
            this.btnPrint.Size = new System.Drawing.Size(75, 23);
            this.btnPrint.TabIndex = 100;
            this.btnPrint.Text = "Print";
            this.btnPrint.Click += new System.EventHandler(this.btnPrint_Click);
            // 
            // SizeAuditCondition
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.btnPrint);
            this.Controls.Add(this.cbColor);
            this.Controls.Add(this.labelControl6);
            this.Controls.Add(this.cbStyle);
            this.Controls.Add(this.labelControl5);
            this.Controls.Add(this.cbWO);
            this.Controls.Add(this.labelControl4);
            this.Controls.Add(this.cbProject);
            this.Controls.Add(this.labelControl1);
            this.Controls.Add(this.labelControl2);
            this.Controls.Add(this.deEndDate);
            this.Controls.Add(this.lblStart);
            this.Controls.Add(this.deBeginDate);
            this.Controls.Add(this.labelControl3);
            this.Controls.Add(this.cbReportType);
            this.Name = "SizeAuditCondition";
            this.Size = new System.Drawing.Size(495, 287);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.cbReportType.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deEndDate.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deEndDate.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deBeginDate.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deBeginDate.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbProject.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbWO.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbStyle.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbColor.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.LabelControl labelControl3;
        private DevExpress.XtraEditors.ComboBoxEdit cbReportType;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.DateEdit deEndDate;
        private DevExpress.XtraEditors.LabelControl lblStart;
        private DevExpress.XtraEditors.DateEdit deBeginDate;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.ComboBoxEdit cbProject;
        private DevExpress.XtraEditors.LabelControl labelControl4;
        private DevExpress.XtraEditors.ComboBoxEdit cbWO;
        private DevExpress.XtraEditors.ComboBoxEdit cbStyle;
        private DevExpress.XtraEditors.LabelControl labelControl5;
        private DevExpress.XtraEditors.ComboBoxEdit cbColor;
        private DevExpress.XtraEditors.LabelControl labelControl6;
        private DevExpress.XtraEditors.SimpleButton btnPrint;
    }
}
