namespace PH.MobileQC.UI.AQL
{
    partial class DefectPictureCondition
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
            this.btnPrint = new DevExpress.XtraEditors.SimpleButton();
            this.labelControl6 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl5 = new DevExpress.XtraEditors.LabelControl();
            this.Workshop = new DevExpress.XtraEditors.LabelControl();
            this.cbFactory = new DevExpress.XtraEditors.ComboBoxEdit();
            this.Factory = new DevExpress.XtraEditors.LabelControl();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.deEndDate = new DevExpress.XtraEditors.DateEdit();
            this.lblStart = new DevExpress.XtraEditors.LabelControl();
            this.deBeginDate = new DevExpress.XtraEditors.DateEdit();
            this.labelControl3 = new DevExpress.XtraEditors.LabelControl();
            this.cbReportType = new DevExpress.XtraEditors.ComboBoxEdit();
            this.cbWorkshop = new DevExpress.XtraEditors.CheckedComboBoxEdit();
            this.cbCustomer = new DevExpress.XtraEditors.CheckedComboBoxEdit();
            this.cbStyle = new DevExpress.XtraEditors.CheckedComboBoxEdit();
            ((System.ComponentModel.ISupportInitialize)(this.cbFactory.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deEndDate.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deEndDate.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deBeginDate.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deBeginDate.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbReportType.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbWorkshop.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbCustomer.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbStyle.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // btnPrint
            // 
            this.btnPrint.Location = new System.Drawing.Point(165, 219);
            this.btnPrint.Name = "btnPrint";
            this.btnPrint.Size = new System.Drawing.Size(75, 23);
            this.btnPrint.TabIndex = 115;
            this.btnPrint.Text = "Print";
            this.btnPrint.Click += new System.EventHandler(this.btnPrint_Click);
            // 
            // labelControl6
            // 
            this.labelControl6.Location = new System.Drawing.Point(95, 151);
            this.labelControl6.Name = "labelControl6";
            this.labelControl6.Size = new System.Drawing.Size(27, 14);
            this.labelControl6.TabIndex = 113;
            this.labelControl6.Text = "Style";
            // 
            // labelControl5
            // 
            this.labelControl5.Location = new System.Drawing.Point(70, 121);
            this.labelControl5.Name = "labelControl5";
            this.labelControl5.Size = new System.Drawing.Size(52, 14);
            this.labelControl5.TabIndex = 111;
            this.labelControl5.Text = "Customer";
            // 
            // Workshop
            // 
            this.Workshop.Location = new System.Drawing.Point(48, 91);
            this.Workshop.Name = "Workshop";
            this.Workshop.Size = new System.Drawing.Size(74, 14);
            this.Workshop.TabIndex = 109;
            this.Workshop.Text = "WorkShop(*)";
            // 
            // cbFactory
            // 
            this.cbFactory.EditValue = "";
            this.cbFactory.Location = new System.Drawing.Point(128, 59);
            this.cbFactory.Name = "cbFactory";
            this.cbFactory.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbFactory.Properties.Items.AddRange(new object[] {
            "SL",
            "RX",
            "CL"});
            this.cbFactory.Size = new System.Drawing.Size(132, 21);
            this.cbFactory.TabIndex = 108;
            this.cbFactory.SelectedValueChanged += new System.EventHandler(this.cbFactory_SelectedValueChanged);
            // 
            // Factory
            // 
            this.Factory.Location = new System.Drawing.Point(65, 62);
            this.Factory.Name = "Factory";
            this.Factory.Size = new System.Drawing.Size(57, 14);
            this.Factory.TabIndex = 107;
            this.Factory.Text = "Factory(*)";
            // 
            // labelControl2
            // 
            this.labelControl2.Appearance.Options.UseTextOptions = true;
            this.labelControl2.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.labelControl2.Appearance.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.labelControl2.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.labelControl2.Location = new System.Drawing.Point(271, 34);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(68, 19);
            this.labelControl2.TabIndex = 106;
            this.labelControl2.Text = "DueDate(*)";
            // 
            // deEndDate
            // 
            this.deEndDate.EditValue = null;
            this.deEndDate.Location = new System.Drawing.Point(345, 33);
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
            this.deEndDate.TabIndex = 105;
            this.deEndDate.EditValueChanged += new System.EventHandler(this.deEndDate_EditValueChanged);
            // 
            // lblStart
            // 
            this.lblStart.Appearance.Options.UseTextOptions = true;
            this.lblStart.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.lblStart.Appearance.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.lblStart.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.lblStart.Location = new System.Drawing.Point(24, 33);
            this.lblStart.Name = "lblStart";
            this.lblStart.Size = new System.Drawing.Size(98, 19);
            this.lblStart.TabIndex = 104;
            this.lblStart.Text = "StartDate(*)";
            // 
            // deBeginDate
            // 
            this.deBeginDate.EditValue = null;
            this.deBeginDate.Location = new System.Drawing.Point(128, 32);
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
            this.deBeginDate.TabIndex = 103;
            this.deBeginDate.EditValueChanged += new System.EventHandler(this.deBeginDate_EditValueChanged);
            // 
            // labelControl3
            // 
            this.labelControl3.Appearance.Options.UseTextOptions = true;
            this.labelControl3.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.labelControl3.Appearance.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.labelControl3.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.labelControl3.Location = new System.Drawing.Point(40, 181);
            this.labelControl3.Name = "labelControl3";
            this.labelControl3.Size = new System.Drawing.Size(82, 19);
            this.labelControl3.TabIndex = 102;
            this.labelControl3.Text = "ReportType";
            // 
            // cbReportType
            // 
            this.cbReportType.EditValue = "AQL";
            this.cbReportType.Location = new System.Drawing.Point(128, 181);
            this.cbReportType.Name = "cbReportType";
            this.cbReportType.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbReportType.Properties.Items.AddRange(new object[] {
            "AQL",
            "Full Audit",
            "Mobile"});
            this.cbReportType.Size = new System.Drawing.Size(132, 21);
            this.cbReportType.TabIndex = 101;
            // 
            // cbWorkshop
            // 
            this.cbWorkshop.Location = new System.Drawing.Point(128, 87);
            this.cbWorkshop.Name = "cbWorkshop";
            this.cbWorkshop.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbWorkshop.Size = new System.Drawing.Size(132, 21);
            this.cbWorkshop.TabIndex = 116;
            this.cbWorkshop.EditValueChanged += new System.EventHandler(this.cbWorkshop_SelectedValueChanged);
            // 
            // cbCustomer
            // 
            this.cbCustomer.Location = new System.Drawing.Point(128, 118);
            this.cbCustomer.Name = "cbCustomer";
            this.cbCustomer.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbCustomer.Size = new System.Drawing.Size(132, 21);
            this.cbCustomer.TabIndex = 117;
            this.cbCustomer.EditValueChanged += new System.EventHandler(this.cbCustomer_SelectedValueChanged);
            // 
            // cbStyle
            // 
            this.cbStyle.Location = new System.Drawing.Point(128, 148);
            this.cbStyle.Name = "cbStyle";
            this.cbStyle.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbStyle.Size = new System.Drawing.Size(132, 21);
            this.cbStyle.TabIndex = 118;
            // 
            // DefectPictureCondition
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.cbStyle);
            this.Controls.Add(this.cbCustomer);
            this.Controls.Add(this.cbWorkshop);
            this.Controls.Add(this.btnPrint);
            this.Controls.Add(this.labelControl6);
            this.Controls.Add(this.labelControl5);
            this.Controls.Add(this.Workshop);
            this.Controls.Add(this.cbFactory);
            this.Controls.Add(this.Factory);
            this.Controls.Add(this.labelControl2);
            this.Controls.Add(this.deEndDate);
            this.Controls.Add(this.lblStart);
            this.Controls.Add(this.deBeginDate);
            this.Controls.Add(this.labelControl3);
            this.Controls.Add(this.cbReportType);
            this.Name = "DefectPictureCondition";
            this.Size = new System.Drawing.Size(487, 269);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.cbFactory.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deEndDate.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deEndDate.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deBeginDate.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deBeginDate.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbReportType.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbWorkshop.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbCustomer.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbStyle.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.SimpleButton btnPrint;
        private DevExpress.XtraEditors.LabelControl labelControl6;
        private DevExpress.XtraEditors.LabelControl labelControl5;
        private DevExpress.XtraEditors.LabelControl Workshop;
        private DevExpress.XtraEditors.ComboBoxEdit cbFactory;
        private DevExpress.XtraEditors.LabelControl Factory;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.DateEdit deEndDate;
        private DevExpress.XtraEditors.LabelControl lblStart;
        private DevExpress.XtraEditors.DateEdit deBeginDate;
        private DevExpress.XtraEditors.LabelControl labelControl3;
        private DevExpress.XtraEditors.ComboBoxEdit cbReportType;
        private DevExpress.XtraEditors.CheckedComboBoxEdit cbWorkshop;
        private DevExpress.XtraEditors.CheckedComboBoxEdit cbCustomer;
        private DevExpress.XtraEditors.CheckedComboBoxEdit cbStyle;
    }
}
