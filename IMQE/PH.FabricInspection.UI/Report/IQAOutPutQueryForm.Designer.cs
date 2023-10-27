namespace PH.FabricInspection.UI.Report
{
    partial class IQAOutPutQueryForm
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
            this.rgByWeekOrMonth = new DevExpress.XtraEditors.RadioGroup();
            this.labelControl4 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl3 = new DevExpress.XtraEditors.LabelControl();
            this.deStartDate = new DevExpress.XtraEditors.DateEdit();
            this.deDueDate = new DevExpress.XtraEditors.DateEdit();
            this.btnPreview = new DevExpress.XtraEditors.SimpleButton();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.cmbWhse = new DevExpress.XtraEditors.ComboBoxEdit();
            ((System.ComponentModel.ISupportInitialize)(this.rgByWeekOrMonth.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deStartDate.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deStartDate.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deDueDate.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deDueDate.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cmbWhse.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // rgByWeekOrMonth
            // 
            this.rgByWeekOrMonth.EditValue = "ByWeek";
            this.rgByWeekOrMonth.Location = new System.Drawing.Point(87, 35);
            this.rgByWeekOrMonth.Name = "rgByWeekOrMonth";
            this.rgByWeekOrMonth.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] {
            new DevExpress.XtraEditors.Controls.RadioGroupItem("ByWeek", "By Week"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem("ByMonth", "By Month")});
            this.rgByWeekOrMonth.Size = new System.Drawing.Size(164, 28);
            this.rgByWeekOrMonth.TabIndex = 0;
            this.rgByWeekOrMonth.SelectedIndexChanged += new System.EventHandler(this.rgByWeekOrMonth_SelectedIndexChanged);
            // 
            // labelControl4
            // 
            this.labelControl4.Location = new System.Drawing.Point(18, 124);
            this.labelControl4.Name = "labelControl4";
            this.labelControl4.Size = new System.Drawing.Size(56, 14);
            this.labelControl4.TabIndex = 9;
            this.labelControl4.Text = "Due Date:";
            // 
            // labelControl3
            // 
            this.labelControl3.Location = new System.Drawing.Point(18, 90);
            this.labelControl3.Name = "labelControl3";
            this.labelControl3.Size = new System.Drawing.Size(61, 14);
            this.labelControl3.TabIndex = 8;
            this.labelControl3.Text = "Start Date:";
            // 
            // deStartDate
            // 
            this.deStartDate.EditValue = null;
            this.deStartDate.Location = new System.Drawing.Point(87, 87);
            this.deStartDate.Name = "deStartDate";
            this.deStartDate.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.deStartDate.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.deStartDate.Size = new System.Drawing.Size(164, 21);
            this.deStartDate.TabIndex = 10;
            this.deStartDate.EditValueChanged += new System.EventHandler(this.deStartDate_EditValueChanged);
            // 
            // deDueDate
            // 
            this.deDueDate.EditValue = null;
            this.deDueDate.Location = new System.Drawing.Point(87, 121);
            this.deDueDate.Name = "deDueDate";
            this.deDueDate.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.deDueDate.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.deDueDate.Size = new System.Drawing.Size(164, 21);
            this.deDueDate.TabIndex = 11;
            this.deDueDate.EditValueChanged += new System.EventHandler(this.deDueDate_EditValueChanged);
            // 
            // btnPreview
            // 
            this.btnPreview.Location = new System.Drawing.Point(116, 206);
            this.btnPreview.Name = "btnPreview";
            this.btnPreview.Size = new System.Drawing.Size(75, 23);
            this.btnPreview.TabIndex = 12;
            this.btnPreview.Text = "Preview";
            this.btnPreview.Click += new System.EventHandler(this.btnPreview_Click);
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(39, 161);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(35, 14);
            this.labelControl1.TabIndex = 13;
            this.labelControl1.Text = "Whse:";
            // 
            // cmbWhse
            // 
            this.cmbWhse.Location = new System.Drawing.Point(87, 161);
            this.cmbWhse.Name = "cmbWhse";
            this.cmbWhse.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cmbWhse.Properties.Items.AddRange(new object[] {
            "RM",
            "RT"});
            this.cmbWhse.Size = new System.Drawing.Size(164, 21);
            this.cmbWhse.TabIndex = 14;
            // 
            // IQAOutPutQueryForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.cmbWhse);
            this.Controls.Add(this.labelControl1);
            this.Controls.Add(this.btnPreview);
            this.Controls.Add(this.deDueDate);
            this.Controls.Add(this.deStartDate);
            this.Controls.Add(this.labelControl4);
            this.Controls.Add(this.labelControl3);
            this.Controls.Add(this.rgByWeekOrMonth);
            this.Name = "IQAOutPutQueryForm";
            this.Size = new System.Drawing.Size(397, 346);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.rgByWeekOrMonth.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deStartDate.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deStartDate.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deDueDate.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deDueDate.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cmbWhse.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.RadioGroup rgByWeekOrMonth;
        private DevExpress.XtraEditors.LabelControl labelControl4;
        private DevExpress.XtraEditors.LabelControl labelControl3;
        private DevExpress.XtraEditors.DateEdit deStartDate;
        private DevExpress.XtraEditors.DateEdit deDueDate;
        private DevExpress.XtraEditors.SimpleButton btnPreview;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.ComboBoxEdit cmbWhse;
    }
}
