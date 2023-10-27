namespace PH.MobileQC.UI.CustQC
{
    partial class PerfSummaryQueryForm
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
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.cbFactory = new DevExpress.XtraEditors.ComboBoxEdit();
            this.cbCustomer = new DevExpress.XtraEditors.ComboBoxEdit();
            this.btnPreview = new DevExpress.XtraEditors.SimpleButton();
            this.labelControl3 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl4 = new DevExpress.XtraEditors.LabelControl();
            this.deStartDate = new DevExpress.XtraEditors.DateEdit();
            this.deDueDate = new DevExpress.XtraEditors.DateEdit();
            ((System.ComponentModel.ISupportInitialize)(this.rgByWeekOrMonth.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbFactory.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbCustomer.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deStartDate.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deStartDate.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deDueDate.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deDueDate.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // rgByWeekOrMonth
            // 
            this.rgByWeekOrMonth.EditValue = "ByWeek";
            this.rgByWeekOrMonth.Location = new System.Drawing.Point(125, 28);
            this.rgByWeekOrMonth.Name = "rgByWeekOrMonth";
            this.rgByWeekOrMonth.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] {
            new DevExpress.XtraEditors.Controls.RadioGroupItem("ByWeek", "By Week"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem("ByMonth", "By Month")});
            this.rgByWeekOrMonth.Size = new System.Drawing.Size(190, 27);
            this.rgByWeekOrMonth.TabIndex = 0;
            this.rgByWeekOrMonth.SelectedIndexChanged += new System.EventHandler(this.rgByWeekOrMonth_SelectedIndexChanged);
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(48, 131);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(44, 14);
            this.labelControl1.TabIndex = 1;
            this.labelControl1.Text = "Factory:";
            // 
            // labelControl2
            // 
            this.labelControl2.Location = new System.Drawing.Point(48, 161);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(56, 14);
            this.labelControl2.TabIndex = 2;
            this.labelControl2.Text = "Customer:";
            // 
            // cbFactory
            // 
            this.cbFactory.EditValue = "";
            this.cbFactory.Location = new System.Drawing.Point(125, 128);
            this.cbFactory.Name = "cbFactory";
            this.cbFactory.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbFactory.Properties.Items.AddRange(new object[] {
            "",
            "CL",
            "SL",
            "RX",
            "CN(SL+RX)"});
            this.cbFactory.Size = new System.Drawing.Size(190, 21);
            this.cbFactory.TabIndex = 3;
            this.cbFactory.EditValueChanged += new System.EventHandler(this.cbFactory_EditValueChanged);
            // 
            // cbCustomer
            // 
            this.cbCustomer.Location = new System.Drawing.Point(125, 158);
            this.cbCustomer.Name = "cbCustomer";
            this.cbCustomer.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbCustomer.Size = new System.Drawing.Size(190, 21);
            this.cbCustomer.TabIndex = 4;
            // 
            // btnPreview
            // 
            this.btnPreview.Location = new System.Drawing.Point(171, 203);
            this.btnPreview.Name = "btnPreview";
            this.btnPreview.Size = new System.Drawing.Size(75, 23);
            this.btnPreview.TabIndex = 5;
            this.btnPreview.Text = "Preview";
            this.btnPreview.Click += new System.EventHandler(this.btnPreview_Click);
            // 
            // labelControl3
            // 
            this.labelControl3.Location = new System.Drawing.Point(48, 72);
            this.labelControl3.Name = "labelControl3";
            this.labelControl3.Size = new System.Drawing.Size(61, 14);
            this.labelControl3.TabIndex = 6;
            this.labelControl3.Text = "Start Date:";
            // 
            // labelControl4
            // 
            this.labelControl4.Location = new System.Drawing.Point(48, 106);
            this.labelControl4.Name = "labelControl4";
            this.labelControl4.Size = new System.Drawing.Size(56, 14);
            this.labelControl4.TabIndex = 7;
            this.labelControl4.Text = "Due Date:";
            // 
            // deStartDate
            // 
            this.deStartDate.EditValue = null;
            this.deStartDate.Location = new System.Drawing.Point(125, 72);
            this.deStartDate.Name = "deStartDate";
            this.deStartDate.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.deStartDate.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.deStartDate.Size = new System.Drawing.Size(190, 21);
            this.deStartDate.TabIndex = 8;
            this.deStartDate.EditValueChanged += new System.EventHandler(this.deStartDate_EditValueChanged);
            // 
            // deDueDate
            // 
            this.deDueDate.EditValue = null;
            this.deDueDate.Location = new System.Drawing.Point(125, 99);
            this.deDueDate.Name = "deDueDate";
            this.deDueDate.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.deDueDate.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.deDueDate.Size = new System.Drawing.Size(190, 21);
            this.deDueDate.TabIndex = 9;
            this.deDueDate.EditValueChanged += new System.EventHandler(this.deDueDate_EditValueChanged);
            // 
            // PerfSummaryQueryForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.deDueDate);
            this.Controls.Add(this.deStartDate);
            this.Controls.Add(this.labelControl4);
            this.Controls.Add(this.labelControl3);
            this.Controls.Add(this.btnPreview);
            this.Controls.Add(this.cbCustomer);
            this.Controls.Add(this.cbFactory);
            this.Controls.Add(this.labelControl2);
            this.Controls.Add(this.labelControl1);
            this.Controls.Add(this.rgByWeekOrMonth);
            this.Name = "PerfSummaryQueryForm";
            this.Size = new System.Drawing.Size(463, 297);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.rgByWeekOrMonth.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbFactory.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbCustomer.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deStartDate.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deStartDate.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deDueDate.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deDueDate.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.RadioGroup rgByWeekOrMonth;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.ComboBoxEdit cbFactory;
        private DevExpress.XtraEditors.ComboBoxEdit cbCustomer;
        private DevExpress.XtraEditors.SimpleButton btnPreview;
        private DevExpress.XtraEditors.LabelControl labelControl3;
        private DevExpress.XtraEditors.LabelControl labelControl4;
        private DevExpress.XtraEditors.DateEdit deStartDate;
        private DevExpress.XtraEditors.DateEdit deDueDate;
    }
}
