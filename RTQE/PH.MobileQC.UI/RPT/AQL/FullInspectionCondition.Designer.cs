namespace PH.MobileQC.UI.AQL
{
    partial class FullInspectionCondition
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
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.cmbFac = new DevExpress.XtraEditors.ComboBoxEdit();
            this.lblStart = new DevExpress.XtraEditors.LabelControl();
            this.sbut_print = new DevExpress.XtraEditors.SimpleButton();
            this.deStart = new DevExpress.XtraEditors.DateEdit();
            this.radioGroup1 = new DevExpress.XtraEditors.RadioGroup();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.deEnd = new DevExpress.XtraEditors.DateEdit();
            this.lblSumType = new DevExpress.XtraEditors.LabelControl();
            this.cmbType = new DevExpress.XtraEditors.ComboBoxEdit();
            this.labelControl3 = new DevExpress.XtraEditors.LabelControl();
            this.lblCust = new DevExpress.XtraEditors.LabelControl();
            this.lblWO = new DevExpress.XtraEditors.LabelControl();
            this.cbbWo = new DevExpress.XtraEditors.CheckedComboBoxEdit();
            this.cbbCust = new DevExpress.XtraEditors.CheckedComboBoxEdit();
            this.lblWorkshop = new DevExpress.XtraEditors.LabelControl();
            this.cbbWs = new DevExpress.XtraEditors.CheckedComboBoxEdit();
            this.lblLine = new DevExpress.XtraEditors.LabelControl();
            this.cbbLine = new DevExpress.XtraEditors.CheckedComboBoxEdit();
            ((System.ComponentModel.ISupportInitialize)(this.cmbFac.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deStart.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deStart.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.radioGroup1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deEnd.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deEnd.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cmbType.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbbWo.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbbCust.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbbWs.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbbLine.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // labelControl1
            // 
            this.labelControl1.Appearance.Options.UseTextOptions = true;
            this.labelControl1.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.labelControl1.Appearance.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.labelControl1.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.labelControl1.Location = new System.Drawing.Point(26, 24);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(82, 19);
            this.labelControl1.TabIndex = 79;
            this.labelControl1.Text = "Factory:";
            // 
            // cmbFac
            // 
            this.cmbFac.EditValue = "SL";
            this.cmbFac.Location = new System.Drawing.Point(122, 23);
            this.cmbFac.Name = "cmbFac";
            this.cmbFac.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cmbFac.Properties.Items.AddRange(new object[] {
            "SL",
            "GG",
            "RX"});
            this.cmbFac.Size = new System.Drawing.Size(148, 21);
            this.cmbFac.TabIndex = 78;
            this.cmbFac.EditValueChanged += new System.EventHandler(this.cmbFac_EditValueChanged);
            // 
            // lblStart
            // 
            this.lblStart.Appearance.Options.UseTextOptions = true;
            this.lblStart.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.lblStart.Appearance.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.lblStart.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.lblStart.Location = new System.Drawing.Point(26, 141);
            this.lblStart.Name = "lblStart";
            this.lblStart.Size = new System.Drawing.Size(82, 19);
            this.lblStart.TabIndex = 77;
            this.lblStart.Text = "Start Date:";
            // 
            // sbut_print
            // 
            this.sbut_print.Location = new System.Drawing.Point(122, 305);
            this.sbut_print.Name = "sbut_print";
            this.sbut_print.Size = new System.Drawing.Size(75, 23);
            this.sbut_print.TabIndex = 76;
            this.sbut_print.Text = "Print";
            this.sbut_print.Click += new System.EventHandler(this.sbut_print_Click);
            // 
            // deStart
            // 
            this.deStart.EditValue = null;
            this.deStart.Location = new System.Drawing.Point(120, 140);
            this.deStart.Name = "deStart";
            this.deStart.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.deStart.Properties.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.deStart.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.deStart.Properties.EditFormat.FormatString = "yyyy-MM-dd";
            this.deStart.Properties.EditFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.deStart.Properties.Mask.EditMask = "yyyy-MM-dd";
            this.deStart.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.deStart.Size = new System.Drawing.Size(148, 21);
            this.deStart.TabIndex = 75;
            this.deStart.EditValueChanged += new System.EventHandler(this.deStart_EditValueChanged);
            this.deStart.Leave += new System.EventHandler(this.deStart_Leave);
            // 
            // radioGroup1
            // 
            this.radioGroup1.EditValue = 1;
            this.radioGroup1.Location = new System.Drawing.Point(120, 53);
            this.radioGroup1.Name = "radioGroup1";
            this.radioGroup1.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] {
            new DevExpress.XtraEditors.Controls.RadioGroupItem(1, "By Day"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem(1, "By Week"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem(2, "By Month")});
            this.radioGroup1.Size = new System.Drawing.Size(187, 76);
            this.radioGroup1.TabIndex = 80;
            this.radioGroup1.SelectedIndexChanged += new System.EventHandler(this.radioGroup1_SelectedIndexChanged);
            // 
            // labelControl2
            // 
            this.labelControl2.Appearance.Options.UseTextOptions = true;
            this.labelControl2.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.labelControl2.Appearance.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.labelControl2.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.labelControl2.Location = new System.Drawing.Point(282, 141);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(59, 19);
            this.labelControl2.TabIndex = 82;
            this.labelControl2.Text = "Due Date:";
            // 
            // deEnd
            // 
            this.deEnd.EditValue = null;
            this.deEnd.Location = new System.Drawing.Point(350, 140);
            this.deEnd.Name = "deEnd";
            this.deEnd.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.deEnd.Properties.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.deEnd.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.deEnd.Properties.EditFormat.FormatString = "yyyy-MM-dd";
            this.deEnd.Properties.EditFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.deEnd.Properties.Mask.EditMask = "yyyy-MM-dd";
            this.deEnd.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.deEnd.Size = new System.Drawing.Size(325, 21);
            this.deEnd.TabIndex = 81;
            this.deEnd.EditValueChanged += new System.EventHandler(this.deEnd_EditValueChanged);
            this.deEnd.Leave += new System.EventHandler(this.deEnd_Leave);
            // 
            // lblSumType
            // 
            this.lblSumType.Location = new System.Drawing.Point(26, 54);
            this.lblSumType.Name = "lblSumType";
            this.lblSumType.Size = new System.Drawing.Size(82, 14);
            this.lblSumType.TabIndex = 83;
            this.lblSumType.Text = "SummaryType:";
            // 
            // cmbType
            // 
            this.cmbType.EditValue = "2.2 AQL Performance - Defect";
            this.cmbType.Location = new System.Drawing.Point(122, 255);
            this.cmbType.Name = "cmbType";
            this.cmbType.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cmbType.Properties.Items.AddRange(new object[] {
            "2.2 AQL Performance - Defect",
            "Full Inspection - Defect",
            "2.2b AQL Reject List"});
            this.cmbType.Size = new System.Drawing.Size(190, 21);
            this.cmbType.TabIndex = 84;
            this.cmbType.SelectedIndexChanged += new System.EventHandler(this.cmbType_SelectedIndexChanged);
            // 
            // labelControl3
            // 
            this.labelControl3.Appearance.Options.UseTextOptions = true;
            this.labelControl3.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.labelControl3.Appearance.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.labelControl3.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.labelControl3.Location = new System.Drawing.Point(26, 255);
            this.labelControl3.Name = "labelControl3";
            this.labelControl3.Size = new System.Drawing.Size(82, 19);
            this.labelControl3.TabIndex = 85;
            this.labelControl3.Text = "Report Type:";
            // 
            // lblCust
            // 
            this.lblCust.Location = new System.Drawing.Point(52, 184);
            this.lblCust.Name = "lblCust";
            this.lblCust.Size = new System.Drawing.Size(56, 14);
            this.lblCust.TabIndex = 88;
            this.lblCust.Text = "Customer:";
            // 
            // lblWO
            // 
            this.lblWO.Location = new System.Drawing.Point(316, 181);
            this.lblWO.Name = "lblWO";
            this.lblWO.Size = new System.Drawing.Size(25, 14);
            this.lblWO.TabIndex = 89;
            this.lblWO.Text = "WO:";
            // 
            // cbbWo
            // 
            this.cbbWo.Location = new System.Drawing.Point(350, 177);
            this.cbbWo.Name = "cbbWo";
            this.cbbWo.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbbWo.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.Standard;
            this.cbbWo.Size = new System.Drawing.Size(325, 21);
            this.cbbWo.TabIndex = 90;
            this.cbbWo.EditValueChanged += new System.EventHandler(this.cbbWo_EditValueChanged);
            // 
            // cbbCust
            // 
            this.cbbCust.Location = new System.Drawing.Point(120, 177);
            this.cbbCust.Name = "cbbCust";
            this.cbbCust.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbbCust.Size = new System.Drawing.Size(147, 21);
            this.cbbCust.TabIndex = 91;
            this.cbbCust.EditValueChanged += new System.EventHandler(this.cbbCust_EditValueChanged);
            // 
            // lblWorkshop
            // 
            this.lblWorkshop.Location = new System.Drawing.Point(47, 218);
            this.lblWorkshop.Name = "lblWorkshop";
            this.lblWorkshop.Size = new System.Drawing.Size(61, 14);
            this.lblWorkshop.TabIndex = 92;
            this.lblWorkshop.Text = "WorkShop:";
            // 
            // cbbWs
            // 
            this.cbbWs.Location = new System.Drawing.Point(120, 215);
            this.cbbWs.Name = "cbbWs";
            this.cbbWs.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbbWs.Size = new System.Drawing.Size(147, 21);
            this.cbbWs.TabIndex = 93;
            this.cbbWs.EditValueChanged += new System.EventHandler(this.cbbWs_EditValueChanged);
            // 
            // lblLine
            // 
            this.lblLine.Location = new System.Drawing.Point(315, 218);
            this.lblLine.Name = "lblLine";
            this.lblLine.Size = new System.Drawing.Size(26, 14);
            this.lblLine.TabIndex = 94;
            this.lblLine.Text = "Line:";
            // 
            // cbbLine
            // 
            this.cbbLine.Location = new System.Drawing.Point(350, 215);
            this.cbbLine.Name = "cbbLine";
            this.cbbLine.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbbLine.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.Standard;
            this.cbbLine.Size = new System.Drawing.Size(325, 21);
            this.cbbLine.TabIndex = 95;
            this.cbbLine.EditValueChanged += new System.EventHandler(this.cbbLine_EditValueChanged);
            // 
            // FullInspectionCondition
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.cbbLine);
            this.Controls.Add(this.lblLine);
            this.Controls.Add(this.cbbWs);
            this.Controls.Add(this.lblWorkshop);
            this.Controls.Add(this.cbbCust);
            this.Controls.Add(this.cbbWo);
            this.Controls.Add(this.lblWO);
            this.Controls.Add(this.lblCust);
            this.Controls.Add(this.labelControl3);
            this.Controls.Add(this.cmbType);
            this.Controls.Add(this.lblSumType);
            this.Controls.Add(this.labelControl2);
            this.Controls.Add(this.deEnd);
            this.Controls.Add(this.radioGroup1);
            this.Controls.Add(this.labelControl1);
            this.Controls.Add(this.cmbFac);
            this.Controls.Add(this.lblStart);
            this.Controls.Add(this.sbut_print);
            this.Controls.Add(this.deStart);
            this.Name = "FullInspectionCondition";
            this.Size = new System.Drawing.Size(891, 361);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Load += new System.EventHandler(this.FullInspectionCondition_Load);
            ((System.ComponentModel.ISupportInitialize)(this.cmbFac.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deStart.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deStart.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.radioGroup1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deEnd.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deEnd.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cmbType.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbbWo.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbbCust.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbbWs.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbbLine.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.ComboBoxEdit cmbFac;
        private DevExpress.XtraEditors.LabelControl lblStart;
        private DevExpress.XtraEditors.SimpleButton sbut_print;
        private DevExpress.XtraEditors.DateEdit deStart;
        private DevExpress.XtraEditors.RadioGroup radioGroup1;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.DateEdit deEnd;
        private DevExpress.XtraEditors.LabelControl lblSumType;
        private DevExpress.XtraEditors.ComboBoxEdit cmbType;
        private DevExpress.XtraEditors.LabelControl labelControl3;
        private DevExpress.XtraEditors.LabelControl lblCust;
        private DevExpress.XtraEditors.LabelControl lblWO;
        private DevExpress.XtraEditors.CheckedComboBoxEdit cbbWo;
        private DevExpress.XtraEditors.CheckedComboBoxEdit cbbCust;
        private DevExpress.XtraEditors.LabelControl lblWorkshop;
        private DevExpress.XtraEditors.CheckedComboBoxEdit cbbWs;
        private DevExpress.XtraEditors.LabelControl lblLine;
        private DevExpress.XtraEditors.CheckedComboBoxEdit cbbLine;
    }
}
