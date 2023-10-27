namespace PH.MobileQC.UI.RPT.AQL
{
    partial class GarmentsOffLineCondition
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
            this.btnPrint = new DevExpress.XtraEditors.SimpleButton();
            this.cbStyle = new DevExpress.XtraEditors.ComboBoxEdit();
            this.labelControl6 = new DevExpress.XtraEditors.LabelControl();
            this.cbFactory = new DevExpress.XtraEditors.ComboBoxEdit();
            this.Factory = new DevExpress.XtraEditors.LabelControl();
            this.labelControl3 = new DevExpress.XtraEditors.LabelControl();
            this.cbReportType = new DevExpress.XtraEditors.ComboBoxEdit();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl4 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl7 = new DevExpress.XtraEditors.LabelControl();
            this.cbLine = new DevExpress.XtraEditors.ComboBoxEdit();
            this.cbClolor = new DevExpress.XtraEditors.ComboBoxEdit();
            this.labelControl8 = new DevExpress.XtraEditors.LabelControl();
            this.cbWO = new DevExpress.XtraEditors.ComboBoxEdit();
            this.cbProject = new DevExpress.XtraEditors.TextEdit();
            ((System.ComponentModel.ISupportInitialize)(this.cbStyle.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbFactory.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbReportType.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbLine.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbClolor.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbWO.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbProject.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // btnPrint
            // 
            this.btnPrint.Location = new System.Drawing.Point(167, 273);
            this.btnPrint.Name = "btnPrint";
            this.btnPrint.Size = new System.Drawing.Size(75, 23);
            this.btnPrint.TabIndex = 130;
            this.btnPrint.Text = "Print";
            this.btnPrint.Click += new System.EventHandler(this.btnPrint_Click);
            // 
            // cbStyle
            // 
            this.cbStyle.Location = new System.Drawing.Point(143, 84);
            this.cbStyle.Name = "cbStyle";
            this.cbStyle.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbStyle.Size = new System.Drawing.Size(132, 21);
            this.cbStyle.TabIndex = 129;
            this.cbStyle.Leave += new System.EventHandler(this.cbStyle_Leave);
            this.cbStyle.SelectedValueChanged += new System.EventHandler(this.cbStyle_SelectedValueChanged);
            // 
            // labelControl6
            // 
            this.labelControl6.Location = new System.Drawing.Point(107, 91);
            this.labelControl6.Name = "labelControl6";
            this.labelControl6.Size = new System.Drawing.Size(27, 14);
            this.labelControl6.TabIndex = 128;
            this.labelControl6.Text = "Style";
            // 
            // cbFactory
            // 
            this.cbFactory.EditValue = "SL";
            this.cbFactory.Location = new System.Drawing.Point(143, 219);
            this.cbFactory.Name = "cbFactory";
            this.cbFactory.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbFactory.Properties.Items.AddRange(new object[] {
            "SL",
            "GG",
            "RX"});
            this.cbFactory.Size = new System.Drawing.Size(132, 21);
            this.cbFactory.TabIndex = 123;
            // 
            // Factory
            // 
            this.Factory.Location = new System.Drawing.Point(77, 222);
            this.Factory.Name = "Factory";
            this.Factory.Size = new System.Drawing.Size(57, 14);
            this.Factory.TabIndex = 122;
            this.Factory.Text = "Factory(*)";
            // 
            // labelControl3
            // 
            this.labelControl3.Appearance.Options.UseTextOptions = true;
            this.labelControl3.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.labelControl3.Appearance.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.labelControl3.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.labelControl3.Location = new System.Drawing.Point(52, 195);
            this.labelControl3.Name = "labelControl3";
            this.labelControl3.Size = new System.Drawing.Size(82, 19);
            this.labelControl3.TabIndex = 117;
            this.labelControl3.Text = "ReportType";
            // 
            // cbReportType
            // 
            this.cbReportType.EditValue = "AQL";
            this.cbReportType.Location = new System.Drawing.Point(143, 192);
            this.cbReportType.Name = "cbReportType";
            this.cbReportType.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbReportType.Properties.Items.AddRange(new object[] {
            "AQL",
            "FullAudit",
            "FistBoxAudit"});
            this.cbReportType.Size = new System.Drawing.Size(132, 21);
            this.cbReportType.TabIndex = 116;
            // 
            // labelControl1
            // 
            this.labelControl1.Appearance.Options.UseTextOptions = true;
            this.labelControl1.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.labelControl1.Appearance.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.labelControl1.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.labelControl1.Location = new System.Drawing.Point(66, 139);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(68, 19);
            this.labelControl1.TabIndex = 131;
            this.labelControl1.Text = "Line(*)";
            // 
            // labelControl4
            // 
            this.labelControl4.Appearance.Options.UseTextOptions = true;
            this.labelControl4.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.labelControl4.Appearance.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.labelControl4.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.labelControl4.Location = new System.Drawing.Point(66, 62);
            this.labelControl4.Name = "labelControl4";
            this.labelControl4.Size = new System.Drawing.Size(68, 19);
            this.labelControl4.TabIndex = 132;
            this.labelControl4.Text = "Project";
            // 
            // labelControl7
            // 
            this.labelControl7.Appearance.Options.UseTextOptions = true;
            this.labelControl7.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.labelControl7.Appearance.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.labelControl7.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.labelControl7.Location = new System.Drawing.Point(66, 167);
            this.labelControl7.Name = "labelControl7";
            this.labelControl7.Size = new System.Drawing.Size(68, 19);
            this.labelControl7.TabIndex = 133;
            this.labelControl7.Text = "Color(*)";
            // 
            // cbLine
            // 
            this.cbLine.Location = new System.Drawing.Point(143, 138);
            this.cbLine.Name = "cbLine";
            this.cbLine.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbLine.Size = new System.Drawing.Size(132, 21);
            this.cbLine.TabIndex = 134;
            this.cbLine.Leave += new System.EventHandler(this.cbLine_Leave);
            this.cbLine.SelectedValueChanged += new System.EventHandler(this.cbLine_SelectedValueChanged);
            // 
            // cbClolor
            // 
            this.cbClolor.Location = new System.Drawing.Point(143, 165);
            this.cbClolor.Name = "cbClolor";
            this.cbClolor.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbClolor.Size = new System.Drawing.Size(132, 21);
            this.cbClolor.TabIndex = 136;
            this.cbClolor.Leave += new System.EventHandler(this.cbClolor_Leave);
            // 
            // labelControl8
            // 
            this.labelControl8.Appearance.Options.UseTextOptions = true;
            this.labelControl8.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.labelControl8.Appearance.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.labelControl8.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.labelControl8.Location = new System.Drawing.Point(66, 111);
            this.labelControl8.Name = "labelControl8";
            this.labelControl8.Size = new System.Drawing.Size(68, 19);
            this.labelControl8.TabIndex = 137;
            this.labelControl8.Text = "WO(*)";
            // 
            // cbWO
            // 
            this.cbWO.Location = new System.Drawing.Point(143, 109);
            this.cbWO.Name = "cbWO";
            this.cbWO.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbWO.Size = new System.Drawing.Size(132, 21);
            this.cbWO.TabIndex = 138;
            this.cbWO.Leave += new System.EventHandler(this.cbWO_Leave);
            this.cbWO.SelectedValueChanged += new System.EventHandler(this.cbWO_SelectedValueChanged);
            // 
            // cbProject
            // 
            this.cbProject.Location = new System.Drawing.Point(143, 57);
            this.cbProject.Name = "cbProject";
            this.cbProject.Size = new System.Drawing.Size(132, 21);
            this.cbProject.TabIndex = 139;
            this.cbProject.Leave += new System.EventHandler(this.cbProject_Leave_1);
            // 
            // GarmentsOffLineCondition
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.cbProject);
            this.Controls.Add(this.cbWO);
            this.Controls.Add(this.labelControl8);
            this.Controls.Add(this.cbClolor);
            this.Controls.Add(this.cbLine);
            this.Controls.Add(this.labelControl7);
            this.Controls.Add(this.labelControl4);
            this.Controls.Add(this.labelControl1);
            this.Controls.Add(this.btnPrint);
            this.Controls.Add(this.cbStyle);
            this.Controls.Add(this.labelControl6);
            this.Controls.Add(this.cbFactory);
            this.Controls.Add(this.Factory);
            this.Controls.Add(this.labelControl3);
            this.Controls.Add(this.cbReportType);
            this.Name = "GarmentsOffLineCondition";
            this.Size = new System.Drawing.Size(546, 362);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.cbStyle.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbFactory.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbReportType.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbLine.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbClolor.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbWO.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbProject.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.SimpleButton btnPrint;
        private DevExpress.XtraEditors.ComboBoxEdit cbStyle;
        private DevExpress.XtraEditors.LabelControl labelControl6;
        private DevExpress.XtraEditors.ComboBoxEdit cbFactory;
        private DevExpress.XtraEditors.LabelControl Factory;
        private DevExpress.XtraEditors.LabelControl labelControl3;
        private DevExpress.XtraEditors.ComboBoxEdit cbReportType;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.LabelControl labelControl4;
        private DevExpress.XtraEditors.LabelControl labelControl7;
        private DevExpress.XtraEditors.ComboBoxEdit cbLine;
        private DevExpress.XtraEditors.ComboBoxEdit cbClolor;
        private DevExpress.XtraEditors.LabelControl labelControl8;
        private DevExpress.XtraEditors.ComboBoxEdit cbWO;
        private DevExpress.XtraEditors.TextEdit cbProject;
    }
}
