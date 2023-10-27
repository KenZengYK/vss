namespace PH.MobileQC.UI.UserControllibrary
{
    partial class MultipleDateChoiceUserControl
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
            this.lbDate = new DevExpress.XtraEditors.LabelControl();
            this.radDateWorkMode = new DevExpress.XtraEditors.RadioGroup();
            this.txtDateTo = new DevExpress.XtraEditors.DateEdit();
            this.txtDateFrom = new DevExpress.XtraEditors.DateEdit();
            this.lbDateTo = new DevExpress.XtraEditors.LabelControl();
            ((System.ComponentModel.ISupportInitialize)(this.radDateWorkMode.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDateTo.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDateTo.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDateFrom.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDateFrom.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // lbDate
            // 
            this.lbDate.Appearance.Options.UseTextOptions = true;
            this.lbDate.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.lbDate.Appearance.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.lbDate.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.lbDate.Location = new System.Drawing.Point(22, 120);
            this.lbDate.Name = "lbDate";
            this.lbDate.Size = new System.Drawing.Size(82, 19);
            this.lbDate.TabIndex = 97;
            this.lbDate.Text = "Audit Time:";
            // 
            // radDateWorkMode
            // 
            this.radDateWorkMode.EditValue = "Daily";
            this.radDateWorkMode.Location = new System.Drawing.Point(112, 12);
            this.radDateWorkMode.Name = "radDateWorkMode";
            this.radDateWorkMode.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] {
            new DevExpress.XtraEditors.Controls.RadioGroupItem("Daily", "Daily"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem("Weekly", "Weekly"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem("Monthly", "Monthly"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem("Period Range", "Period Range")});
            this.radDateWorkMode.Size = new System.Drawing.Size(110, 96);
            this.radDateWorkMode.TabIndex = 96;
            this.radDateWorkMode.SelectedIndexChanged += new System.EventHandler(this.radDateWorkMode_SelectedIndexChanged);
            // 
            // txtDateTo
            // 
            this.txtDateTo.EditValue = null;
            this.txtDateTo.Location = new System.Drawing.Point(255, 119);
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
            this.txtDateTo.Size = new System.Drawing.Size(119, 21);
            this.txtDateTo.TabIndex = 95;
            this.txtDateTo.Visible = false;
            // 
            // txtDateFrom
            // 
            this.txtDateFrom.EditValue = null;
            this.txtDateFrom.Location = new System.Drawing.Point(112, 119);
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
            this.txtDateFrom.Size = new System.Drawing.Size(119, 21);
            this.txtDateFrom.TabIndex = 94;
            // 
            // lbDateTo
            // 
            this.lbDateTo.Location = new System.Drawing.Point(237, 122);
            this.lbDateTo.Name = "lbDateTo";
            this.lbDateTo.Size = new System.Drawing.Size(12, 14);
            this.lbDateTo.TabIndex = 93;
            this.lbDateTo.Text = "to";
            this.lbDateTo.Visible = false;
            // 
            // MultipleDateChoiceUserControl
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.lbDate);
            this.Controls.Add(this.radDateWorkMode);
            this.Controls.Add(this.txtDateTo);
            this.Controls.Add(this.txtDateFrom);
            this.Controls.Add(this.lbDateTo);
            this.Name = "MultipleDateChoiceUserControl";
            this.Size = new System.Drawing.Size(410, 152);
            ((System.ComponentModel.ISupportInitialize)(this.radDateWorkMode.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDateTo.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDateTo.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDateFrom.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDateFrom.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.DateEdit txtDateTo;
        private DevExpress.XtraEditors.LabelControl lbDateTo;
        public DevExpress.XtraEditors.RadioGroup radDateWorkMode;
        public DevExpress.XtraEditors.LabelControl lbDate;
        public DevExpress.XtraEditors.DateEdit txtDateFrom;
    }
}
