namespace PH.MobileQC.UI.Others
{
    partial class QualityPerformance
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
            this.cbbLine = new DevExpress.XtraEditors.ComboBoxEdit();
            this.cbbWshop = new DevExpress.XtraEditors.ComboBoxEdit();
            this.lblLine = new DevExpress.XtraEditors.LabelControl();
            this.lblWorkshop = new DevExpress.XtraEditors.LabelControl();
            this.lblFac = new DevExpress.XtraEditors.LabelControl();
            this.cbbFac = new DevExpress.XtraEditors.ComboBoxEdit();
            this.deStart = new DevExpress.XtraEditors.DateEdit();
            this.deEnd = new DevExpress.XtraEditors.DateEdit();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.lblDateRange = new DevExpress.XtraEditors.LabelControl();
            this.spbPrint = new DevExpress.XtraEditors.SimpleButton();
            this.ucDateChoice = new PH.MobileQC.UI.UserControllibrary.MultipleDateChoiceUserControl();
            ((System.ComponentModel.ISupportInitialize)(this.cbbLine.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbbWshop.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbbFac.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deStart.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deStart.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deEnd.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deEnd.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // cbbLine
            // 
            this.cbbLine.Location = new System.Drawing.Point(131, 115);
            this.cbbLine.Name = "cbbLine";
            this.cbbLine.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbbLine.Size = new System.Drawing.Size(100, 21);
            this.cbbLine.TabIndex = 40;
            // 
            // cbbWshop
            // 
            this.cbbWshop.Location = new System.Drawing.Point(131, 77);
            this.cbbWshop.Name = "cbbWshop";
            this.cbbWshop.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbbWshop.Size = new System.Drawing.Size(100, 21);
            this.cbbWshop.TabIndex = 39;
            this.cbbWshop.SelectedValueChanged += new System.EventHandler(this.cbbWshop_SelectedValueChanged);
            // 
            // lblLine
            // 
            this.lblLine.Location = new System.Drawing.Point(78, 118);
            this.lblLine.Name = "lblLine";
            this.lblLine.Size = new System.Drawing.Size(35, 14);
            this.lblLine.TabIndex = 38;
            this.lblLine.Text = "Line #";
            // 
            // lblWorkshop
            // 
            this.lblWorkshop.Location = new System.Drawing.Point(56, 80);
            this.lblWorkshop.Name = "lblWorkshop";
            this.lblWorkshop.Size = new System.Drawing.Size(57, 14);
            this.lblWorkshop.TabIndex = 37;
            this.lblWorkshop.Text = "WorkShop";
            // 
            // lblFac
            // 
            this.lblFac.Location = new System.Drawing.Point(73, 42);
            this.lblFac.Name = "lblFac";
            this.lblFac.Size = new System.Drawing.Size(40, 14);
            this.lblFac.TabIndex = 36;
            this.lblFac.Text = "Factory";
            // 
            // cbbFac
            // 
            this.cbbFac.EditValue = "SL";
            this.cbbFac.Location = new System.Drawing.Point(131, 39);
            this.cbbFac.Name = "cbbFac";
            this.cbbFac.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbbFac.Properties.Items.AddRange(new object[] {
            "SL",
            "RX",
            "CL"});
            this.cbbFac.Size = new System.Drawing.Size(100, 21);
            this.cbbFac.TabIndex = 35;
            this.cbbFac.SelectedValueChanged += new System.EventHandler(this.cbbFac_SelectedValueChanged);
            // 
            // deStart
            // 
            this.deStart.EditValue = null;
            this.deStart.Location = new System.Drawing.Point(121, 362);
            this.deStart.Name = "deStart";
            this.deStart.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.deStart.Properties.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.deStart.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.deStart.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.deStart.Size = new System.Drawing.Size(100, 21);
            this.deStart.TabIndex = 41;
            this.deStart.Visible = false;
            // 
            // deEnd
            // 
            this.deEnd.EditValue = null;
            this.deEnd.Location = new System.Drawing.Point(264, 362);
            this.deEnd.Name = "deEnd";
            this.deEnd.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.deEnd.Properties.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.deEnd.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.deEnd.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.deEnd.Size = new System.Drawing.Size(100, 21);
            this.deEnd.TabIndex = 42;
            this.deEnd.Visible = false;
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(237, 365);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(9, 14);
            this.labelControl1.TabIndex = 43;
            this.labelControl1.Text = "~";
            this.labelControl1.Visible = false;
            // 
            // lblDateRange
            // 
            this.lblDateRange.Location = new System.Drawing.Point(69, 366);
            this.lblDateRange.Name = "lblDateRange";
            this.lblDateRange.Size = new System.Drawing.Size(34, 14);
            this.lblDateRange.TabIndex = 44;
            this.lblDateRange.Text = "Period";
            this.lblDateRange.Visible = false;
            // 
            // spbPrint
            // 
            this.spbPrint.Location = new System.Drawing.Point(153, 301);
            this.spbPrint.Name = "spbPrint";
            this.spbPrint.Size = new System.Drawing.Size(75, 23);
            this.spbPrint.TabIndex = 45;
            this.spbPrint.Text = "Preview";
            this.spbPrint.Click += new System.EventHandler(this.spbPrint_Click);
            // 
            // ucDateChoice
            // 
            this.ucDateChoice.FromDate = new System.DateTime(((long)(0)));
            this.ucDateChoice.Location = new System.Drawing.Point(16, 137);
            this.ucDateChoice.Month = 0;
            this.ucDateChoice.Name = "ucDateChoice";
            this.ucDateChoice.Size = new System.Drawing.Size(407, 152);
            this.PlatetoolTipController.SetSuperTip(this.ucDateChoice, null);
            this.ucDateChoice.TabIndex = 46;
            this.ucDateChoice.ToDate = new System.DateTime(((long)(0)));
            this.ucDateChoice.Week = 0;
            // 
            // QualityPerformance
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.ucDateChoice);
            this.Controls.Add(this.spbPrint);
            this.Controls.Add(this.lblDateRange);
            this.Controls.Add(this.labelControl1);
            this.Controls.Add(this.deEnd);
            this.Controls.Add(this.deStart);
            this.Controls.Add(this.cbbLine);
            this.Controls.Add(this.cbbWshop);
            this.Controls.Add(this.lblLine);
            this.Controls.Add(this.lblWorkshop);
            this.Controls.Add(this.lblFac);
            this.Controls.Add(this.cbbFac);
            this.Name = "QualityPerformance";
            this.Size = new System.Drawing.Size(436, 333);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.cbbLine.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbbWshop.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbbFac.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deStart.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deStart.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deEnd.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deEnd.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.ComboBoxEdit cbbLine;
        private DevExpress.XtraEditors.ComboBoxEdit cbbWshop;
        private DevExpress.XtraEditors.LabelControl lblLine;
        private DevExpress.XtraEditors.LabelControl lblWorkshop;
        private DevExpress.XtraEditors.LabelControl lblFac;
        private DevExpress.XtraEditors.ComboBoxEdit cbbFac;
        private DevExpress.XtraEditors.DateEdit deStart;
        private DevExpress.XtraEditors.DateEdit deEnd;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.LabelControl lblDateRange;
        private DevExpress.XtraEditors.SimpleButton spbPrint;
        private PH.MobileQC.UI.UserControllibrary.MultipleDateChoiceUserControl ucDateChoice;
    }
}
