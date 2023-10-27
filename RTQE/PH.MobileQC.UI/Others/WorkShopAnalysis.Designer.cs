namespace PH.MobileQC.UI.Others
{
    partial class WorkShopAnalysis
    {
        /// <summary> 
        /// 必需的设计器变量。
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary> 
        /// 清理所有正在使用的资源。
        /// </summary>
        /// <param name="disposing">如果应释放托管资源，为 true；否则为 false。</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region 组件设计器生成的代码

        /// <summary> 
        /// 设计器支持所需的方法 - 不要
        /// 使用代码编辑器修改此方法的内容。
        /// </summary>
        private void InitializeComponent()
        {
            this.date_FromDate = new DevExpress.XtraEditors.DateEdit();
            this.sbut_print = new DevExpress.XtraEditors.SimpleButton();
            this.lblExecDT = new DevExpress.XtraEditors.LabelControl();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.cmbFac = new DevExpress.XtraEditors.ComboBoxEdit();
            this.date_ToDate = new DevExpress.XtraEditors.DateEdit();
            this.label1 = new System.Windows.Forms.Label();
            this.radioGroup1 = new DevExpress.XtraEditors.RadioGroup();
            ((System.ComponentModel.ISupportInitialize)(this.date_FromDate.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.date_FromDate.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cmbFac.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.date_ToDate.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.date_ToDate.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.radioGroup1.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // date_FromDate
            // 
            this.date_FromDate.EditValue = null;
            this.date_FromDate.Location = new System.Drawing.Point(81, 80);
            this.date_FromDate.Name = "date_FromDate";
            this.date_FromDate.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.date_FromDate.Properties.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.date_FromDate.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.date_FromDate.Properties.EditFormat.FormatString = "yyyy-MM-dd";
            this.date_FromDate.Properties.EditFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.date_FromDate.Properties.Mask.EditMask = "yyyy-MM-dd";
            this.date_FromDate.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.date_FromDate.Size = new System.Drawing.Size(88, 21);
            this.date_FromDate.TabIndex = 70;
            // 
            // sbut_print
            // 
            this.sbut_print.Location = new System.Drawing.Point(127, 146);
            this.sbut_print.Name = "sbut_print";
            this.sbut_print.Size = new System.Drawing.Size(75, 23);
            this.sbut_print.TabIndex = 71;
            this.sbut_print.Text = "Print";
            this.sbut_print.Click += new System.EventHandler(this.sbut_print_Click);
            // 
            // lblExecDT
            // 
            this.lblExecDT.Appearance.Options.UseTextOptions = true;
            this.lblExecDT.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.lblExecDT.Appearance.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.lblExecDT.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.lblExecDT.Location = new System.Drawing.Point(24, 82);
            this.lblExecDT.Name = "lblExecDT";
            this.lblExecDT.Size = new System.Drawing.Size(51, 19);
            this.lblExecDT.TabIndex = 72;
            this.lblExecDT.Text = "Date :";
            this.lblExecDT.Click += new System.EventHandler(this.lblExecDT_Click);
            // 
            // labelControl1
            // 
            this.labelControl1.Appearance.Options.UseTextOptions = true;
            this.labelControl1.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.labelControl1.Appearance.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.labelControl1.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.labelControl1.Location = new System.Drawing.Point(14, 44);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(61, 19);
            this.labelControl1.TabIndex = 78;
            this.labelControl1.Text = "Factory :";
            // 
            // cmbFac
            // 
            this.cmbFac.EditValue = "SL";
            this.cmbFac.Location = new System.Drawing.Point(81, 43);
            this.cmbFac.Name = "cmbFac";
            this.cmbFac.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cmbFac.Properties.Items.AddRange(new object[] {
            "SL",
            "RX",
            "CL"});
            this.cmbFac.Size = new System.Drawing.Size(208, 21);
            this.cmbFac.TabIndex = 77;
            // 
            // date_ToDate
            // 
            this.date_ToDate.EditValue = null;
            this.date_ToDate.Location = new System.Drawing.Point(201, 80);
            this.date_ToDate.Name = "date_ToDate";
            this.date_ToDate.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.date_ToDate.Properties.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.date_ToDate.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.date_ToDate.Properties.EditFormat.FormatString = "yyyy-MM-dd";
            this.date_ToDate.Properties.EditFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.date_ToDate.Properties.Mask.EditMask = "yyyy-MM-dd";
            this.date_ToDate.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.date_ToDate.Size = new System.Drawing.Size(88, 21);
            this.date_ToDate.TabIndex = 79;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(179, 85);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(11, 12);
            this.PlatetoolTipController.SetSuperTip(this.label1, null);
            this.label1.TabIndex = 80;
            this.label1.Text = "~";
            // 
            // radioGroup1
            // 
            this.radioGroup1.EditValue = "Audit";
            this.radioGroup1.Location = new System.Drawing.Point(81, 115);
            this.radioGroup1.Name = "radioGroup1";
            this.radioGroup1.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] {
            new DevExpress.XtraEditors.Controls.RadioGroupItem("Audit", "Audit"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem("Inspection", "Inspection")});
            this.radioGroup1.Size = new System.Drawing.Size(208, 22);
            this.radioGroup1.TabIndex = 81;
            // 
            // WorkShopAnalysis
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.radioGroup1);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.date_ToDate);
            this.Controls.Add(this.labelControl1);
            this.Controls.Add(this.cmbFac);
            this.Controls.Add(this.lblExecDT);
            this.Controls.Add(this.sbut_print);
            this.Controls.Add(this.date_FromDate);
            this.Name = "WorkShopAnalysis";
            this.Size = new System.Drawing.Size(329, 240);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Load += new System.EventHandler(this.TrafficSummary_Load);
            ((System.ComponentModel.ISupportInitialize)(this.date_FromDate.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.date_FromDate.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cmbFac.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.date_ToDate.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.date_ToDate.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.radioGroup1.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.DateEdit date_FromDate;
        private DevExpress.XtraEditors.SimpleButton sbut_print;
        private DevExpress.XtraEditors.LabelControl lblExecDT;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.ComboBoxEdit cmbFac;
        private DevExpress.XtraEditors.DateEdit date_ToDate;
        private System.Windows.Forms.Label label1;
        public DevExpress.XtraEditors.RadioGroup radioGroup1;
    }
}
