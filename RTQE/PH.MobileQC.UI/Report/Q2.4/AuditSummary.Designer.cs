namespace PH.MobileQC.UI.Others
{
    partial class AuditSummary
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
            this.radioGroup1 = new DevExpress.XtraEditors.RadioGroup();
            this.ucDateChoice = new PH.MobileQC.UI.UserControllibrary.MultipleDateChoiceUserControl();
            this.checkedComboBoxEdit1 = new DevExpress.XtraEditors.CheckedComboBoxEdit();
            this.cmbFac = new DevExpress.XtraEditors.ComboBoxEdit();
            ((System.ComponentModel.ISupportInitialize)(this.date_FromDate.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.date_FromDate.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.radioGroup1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.checkedComboBoxEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cmbFac.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // date_FromDate
            // 
            this.date_FromDate.EditValue = null;
            this.date_FromDate.Location = new System.Drawing.Point(586, 94);
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
            this.date_FromDate.Size = new System.Drawing.Size(164, 21);
            this.date_FromDate.TabIndex = 70;
            this.date_FromDate.Visible = false;
            // 
            // sbut_print
            // 
            this.sbut_print.Location = new System.Drawing.Point(132, 209);
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
            this.lblExecDT.Location = new System.Drawing.Point(498, 95);
            this.lblExecDT.Name = "lblExecDT";
            this.lblExecDT.Size = new System.Drawing.Size(82, 19);
            this.lblExecDT.TabIndex = 72;
            this.lblExecDT.Text = "Date:";
            this.lblExecDT.Visible = false;
            // 
            // labelControl1
            // 
            this.labelControl1.Appearance.Options.UseTextOptions = true;
            this.labelControl1.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.labelControl1.Appearance.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.labelControl1.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.labelControl1.Location = new System.Drawing.Point(44, 25);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(82, 19);
            this.labelControl1.TabIndex = 74;
            this.labelControl1.Text = "Factory:";
            // 
            // radioGroup1
            // 
            this.radioGroup1.EditValue = "Audit";
            this.radioGroup1.Location = new System.Drawing.Point(586, 66);
            this.radioGroup1.Name = "radioGroup1";
            this.radioGroup1.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] {
            new DevExpress.XtraEditors.Controls.RadioGroupItem("Audit", "Audit"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem("Inspection", "Inspection")});
            this.radioGroup1.Size = new System.Drawing.Size(164, 22);
            this.radioGroup1.TabIndex = 82;
            this.radioGroup1.Visible = false;
            // 
            // ucDateChoice
            // 
            this.ucDateChoice.FromDate = new System.DateTime(((long)(0)));
            this.ucDateChoice.Location = new System.Drawing.Point(20, 50);
            this.ucDateChoice.Month = 0;
            this.ucDateChoice.Name = "ucDateChoice";
            this.ucDateChoice.Size = new System.Drawing.Size(407, 152);
            this.PlatetoolTipController.SetSuperTip(this.ucDateChoice, null);
            this.ucDateChoice.TabIndex = 83;
            this.ucDateChoice.ToDate = new System.DateTime(((long)(0)));
            this.ucDateChoice.Week = 0;
            // 
            // checkedComboBoxEdit1
            // 
            this.checkedComboBoxEdit1.Location = new System.Drawing.Point(132, 24);
            this.checkedComboBoxEdit1.Name = "checkedComboBoxEdit1";
            this.checkedComboBoxEdit1.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.checkedComboBoxEdit1.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.CheckedListBoxItem[] {
            new DevExpress.XtraEditors.Controls.CheckedListBoxItem("CL"),
            new DevExpress.XtraEditors.Controls.CheckedListBoxItem("RX"),
            new DevExpress.XtraEditors.Controls.CheckedListBoxItem("SL")});
            this.checkedComboBoxEdit1.Size = new System.Drawing.Size(118, 21);
            this.checkedComboBoxEdit1.TabIndex = 85;
            // 
            // cmbFac
            // 
            this.cmbFac.EditValue = "SL";
            this.cmbFac.Location = new System.Drawing.Point(586, 39);
            this.cmbFac.Name = "cmbFac";
            this.cmbFac.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cmbFac.Properties.Items.AddRange(new object[] {
            "CL",
            "SL",
            "GG",
            "RX"});
            this.cmbFac.Size = new System.Drawing.Size(118, 21);
            this.cmbFac.TabIndex = 73;
            this.cmbFac.Visible = false;
            // 
            // AuditSummary
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.checkedComboBoxEdit1);
            this.Controls.Add(this.radioGroup1);
            this.Controls.Add(this.labelControl1);
            this.Controls.Add(this.cmbFac);
            this.Controls.Add(this.lblExecDT);
            this.Controls.Add(this.sbut_print);
            this.Controls.Add(this.date_FromDate);
            this.Controls.Add(this.ucDateChoice);
            this.Name = "AuditSummary";
            this.Size = new System.Drawing.Size(1081, 524);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Load += new System.EventHandler(this.AuditSummary_Load);
            ((System.ComponentModel.ISupportInitialize)(this.date_FromDate.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.date_FromDate.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.radioGroup1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.checkedComboBoxEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cmbFac.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.DateEdit date_FromDate;
        private DevExpress.XtraEditors.SimpleButton sbut_print;
        private DevExpress.XtraEditors.LabelControl lblExecDT;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        public DevExpress.XtraEditors.RadioGroup radioGroup1;
        private PH.MobileQC.UI.UserControllibrary.MultipleDateChoiceUserControl ucDateChoice;
        private DevExpress.XtraEditors.CheckedComboBoxEdit checkedComboBoxEdit1;
        private DevExpress.XtraEditors.ComboBoxEdit cmbFac;
    }
}
