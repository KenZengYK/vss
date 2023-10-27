namespace PH.MobileQC.UI.Others
{
    partial class TrafficSummary
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
            this.rbTraffic = new System.Windows.Forms.RadioButton();
            this.rbAuditWorking = new System.Windows.Forms.RadioButton();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.cmbFac = new DevExpress.XtraEditors.ComboBoxEdit();
            ((System.ComponentModel.ISupportInitialize)(this.date_FromDate.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.date_FromDate.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cmbFac.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // date_FromDate
            // 
            this.date_FromDate.EditValue = null;
            this.date_FromDate.Location = new System.Drawing.Point(83, 71);
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
            this.date_FromDate.Size = new System.Drawing.Size(148, 21);
            this.date_FromDate.TabIndex = 70;
            // 
            // sbut_print
            // 
            this.sbut_print.Location = new System.Drawing.Point(99, 103);
            this.sbut_print.Name = "sbut_print";
            this.sbut_print.Size = new System.Drawing.Size(75, 23);
            this.sbut_print.TabIndex = 71;
            this.sbut_print.Text = "打印";
            this.sbut_print.Click += new System.EventHandler(this.sbut_print_Click);
            // 
            // lblExecDT
            // 
            this.lblExecDT.Appearance.Options.UseTextOptions = true;
            this.lblExecDT.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.lblExecDT.Appearance.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.lblExecDT.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.lblExecDT.Location = new System.Drawing.Point(16, 74);
            this.lblExecDT.Name = "lblExecDT";
            this.lblExecDT.Size = new System.Drawing.Size(61, 19);
            this.lblExecDT.TabIndex = 72;
            this.lblExecDT.Text = "日期:";
            // 
            // rbTraffic
            // 
            this.rbTraffic.AutoSize = true;
            this.rbTraffic.Location = new System.Drawing.Point(120, 143);
            this.rbTraffic.Name = "rbTraffic";
            this.rbTraffic.Size = new System.Drawing.Size(101, 16);
            this.PlatetoolTipController.SetSuperTip(this.rbTraffic, null);
            this.rbTraffic.TabIndex = 73;
            this.rbTraffic.TabStop = true;
            this.rbTraffic.Text = "Traffic Light";
            this.rbTraffic.UseVisualStyleBackColor = true;
            this.rbTraffic.Visible = false;
            // 
            // rbAuditWorking
            // 
            this.rbAuditWorking.AutoSize = true;
            this.rbAuditWorking.Location = new System.Drawing.Point(120, 165);
            this.rbAuditWorking.Name = "rbAuditWorking";
            this.rbAuditWorking.Size = new System.Drawing.Size(167, 16);
            this.PlatetoolTipController.SetSuperTip(this.rbAuditWorking, null);
            this.rbAuditWorking.TabIndex = 74;
            this.rbAuditWorking.TabStop = true;
            this.rbAuditWorking.Text = "Auditor Working Analysis";
            this.rbAuditWorking.UseVisualStyleBackColor = true;
            this.rbAuditWorking.Visible = false;
            // 
            // labelControl1
            // 
            this.labelControl1.Appearance.Options.UseTextOptions = true;
            this.labelControl1.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.labelControl1.Appearance.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.labelControl1.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.labelControl1.Location = new System.Drawing.Point(16, 33);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(61, 19);
            this.labelControl1.TabIndex = 76;
            this.labelControl1.Text = "工廠 :";
            // 
            // cmbFac
            // 
            this.cmbFac.EditValue = "SL";
            this.cmbFac.Location = new System.Drawing.Point(83, 32);
            this.cmbFac.Name = "cmbFac";
            this.cmbFac.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cmbFac.Properties.Items.AddRange(new object[] {
            "SL",
            "GG",
            "RX"});
            this.cmbFac.Size = new System.Drawing.Size(148, 21);
            this.cmbFac.TabIndex = 75;
            // 
            // TrafficSummary
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.labelControl1);
            this.Controls.Add(this.cmbFac);
            this.Controls.Add(this.rbAuditWorking);
            this.Controls.Add(this.rbTraffic);
            this.Controls.Add(this.lblExecDT);
            this.Controls.Add(this.sbut_print);
            this.Controls.Add(this.date_FromDate);
            this.Name = "TrafficSummary";
            this.Size = new System.Drawing.Size(317, 214);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Load += new System.EventHandler(this.TrafficSummary_Load);
            ((System.ComponentModel.ISupportInitialize)(this.date_FromDate.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.date_FromDate.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cmbFac.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.DateEdit date_FromDate;
        private DevExpress.XtraEditors.SimpleButton sbut_print;
        private DevExpress.XtraEditors.LabelControl lblExecDT;
        private System.Windows.Forms.RadioButton rbTraffic;
        private System.Windows.Forms.RadioButton rbAuditWorking;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.ComboBoxEdit cmbFac;
    }
}
