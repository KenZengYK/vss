namespace PH.MobileQC.UI.Others
{
    partial class DefectAnalyzeCondition
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
            this.edtProject = new DevExpress.XtraEditors.CheckedComboBoxEdit();
            this.lue_Customer = new DevExpress.XtraEditors.ComboBoxEdit();
            this.edtLine = new DevExpress.XtraEditors.ComboBoxEdit();
            this.lue_WorkShop = new DevExpress.XtraEditors.ComboBoxEdit();
            this.lue_Factory = new DevExpress.XtraEditors.ComboBoxEdit();
            this.edtStyle = new DevExpress.XtraEditors.ComboBoxEdit();
            this.date_ToDate = new DevExpress.XtraEditors.DateEdit();
            this.date_FromDate = new DevExpress.XtraEditors.DateEdit();
            this.labelControl8 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl7 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl4 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl11 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl12 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl13 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl3 = new DevExpress.XtraEditors.LabelControl();
            ((System.ComponentModel.ISupportInitialize)(this.barManagerPrint)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtProject.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.lue_Customer.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtLine.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.lue_WorkShop.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.lue_Factory.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtStyle.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.date_ToDate.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.date_ToDate.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.date_FromDate.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.date_FromDate.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // barBtnPrintBase
            // 
            this.barBtnPrintBase.Caption = "打印";
            this.barBtnPrintBase.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtnPrintBase_ItemClick);
            // 
            // edtProject
            // 
            this.edtProject.Location = new System.Drawing.Point(143, 143);
            this.edtProject.Name = "edtProject";
            this.edtProject.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.edtProject.Properties.PopupFormMinSize = new System.Drawing.Size(0, 200);
            this.edtProject.Size = new System.Drawing.Size(207, 21);
            this.edtProject.TabIndex = 92;
            // 
            // lue_Customer
            // 
            this.lue_Customer.Location = new System.Drawing.Point(143, 90);
            this.lue_Customer.Name = "lue_Customer";
            this.lue_Customer.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.lue_Customer.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.lue_Customer.Size = new System.Drawing.Size(207, 21);
            this.lue_Customer.TabIndex = 89;
            // 
            // edtLine
            // 
            this.edtLine.Location = new System.Drawing.Point(143, 170);
            this.edtLine.Name = "edtLine";
            this.edtLine.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.edtLine.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.edtLine.Size = new System.Drawing.Size(207, 21);
            this.edtLine.TabIndex = 90;
            // 
            // lue_WorkShop
            // 
            this.lue_WorkShop.Location = new System.Drawing.Point(143, 64);
            this.lue_WorkShop.Name = "lue_WorkShop";
            this.lue_WorkShop.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.lue_WorkShop.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.lue_WorkShop.Size = new System.Drawing.Size(207, 21);
            this.lue_WorkShop.TabIndex = 91;
            // 
            // lue_Factory
            // 
            this.lue_Factory.Location = new System.Drawing.Point(143, 36);
            this.lue_Factory.Name = "lue_Factory";
            this.lue_Factory.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.lue_Factory.Properties.Items.AddRange(new object[] {
            "SL",
            "RX",
            "CL"});
            this.lue_Factory.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.lue_Factory.Size = new System.Drawing.Size(207, 21);
            this.lue_Factory.TabIndex = 88;
            // 
            // edtStyle
            // 
            this.edtStyle.Location = new System.Drawing.Point(143, 118);
            this.edtStyle.Name = "edtStyle";
            this.edtStyle.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.edtStyle.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.edtStyle.Size = new System.Drawing.Size(207, 21);
            this.edtStyle.TabIndex = 87;
            // 
            // date_ToDate
            // 
            this.date_ToDate.EditValue = null;
            this.date_ToDate.Location = new System.Drawing.Point(256, 198);
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
            this.date_ToDate.Size = new System.Drawing.Size(94, 21);
            this.date_ToDate.TabIndex = 85;
            // 
            // date_FromDate
            // 
            this.date_FromDate.EditValue = null;
            this.date_FromDate.Location = new System.Drawing.Point(143, 198);
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
            this.date_FromDate.Size = new System.Drawing.Size(90, 21);
            this.date_FromDate.TabIndex = 86;
            // 
            // labelControl8
            // 
            this.labelControl8.Location = new System.Drawing.Point(235, 204);
            this.labelControl8.Name = "labelControl8";
            this.labelControl8.Size = new System.Drawing.Size(15, 14);
            this.labelControl8.TabIndex = 84;
            this.labelControl8.Text = "To";
            // 
            // labelControl7
            // 
            this.labelControl7.Location = new System.Drawing.Point(91, 201);
            this.labelControl7.Name = "labelControl7";
            this.labelControl7.Size = new System.Drawing.Size(40, 14);
            this.labelControl7.TabIndex = 83;
            this.labelControl7.Text = "時間段:";
            // 
            // labelControl4
            // 
            this.labelControl4.Location = new System.Drawing.Point(91, 120);
            this.labelControl4.Name = "labelControl4";
            this.labelControl4.Size = new System.Drawing.Size(40, 14);
            this.labelControl4.TabIndex = 78;
            this.labelControl4.Text = "客款號:";
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(91, 143);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(40, 14);
            this.labelControl1.TabIndex = 77;
            this.labelControl1.Text = "工程號:";
            // 
            // labelControl11
            // 
            this.labelControl11.Location = new System.Drawing.Point(103, 39);
            this.labelControl11.Name = "labelControl11";
            this.labelControl11.Size = new System.Drawing.Size(28, 14);
            this.labelControl11.TabIndex = 81;
            this.labelControl11.Text = "工廠:";
            // 
            // labelControl12
            // 
            this.labelControl12.Location = new System.Drawing.Point(103, 66);
            this.labelControl12.Name = "labelControl12";
            this.labelControl12.Size = new System.Drawing.Size(28, 14);
            this.labelControl12.TabIndex = 82;
            this.labelControl12.Text = "車間:";
            // 
            // labelControl13
            // 
            this.labelControl13.Location = new System.Drawing.Point(103, 93);
            this.labelControl13.Name = "labelControl13";
            this.labelControl13.Size = new System.Drawing.Size(28, 14);
            this.labelControl13.TabIndex = 79;
            this.labelControl13.Text = "客戶:";
            // 
            // labelControl3
            // 
            this.labelControl3.Location = new System.Drawing.Point(91, 173);
            this.labelControl3.Name = "labelControl3";
            this.labelControl3.Size = new System.Drawing.Size(40, 14);
            this.labelControl3.TabIndex = 80;
            this.labelControl3.Text = "組裝線:";
            // 
            // DefectAnalyzeCondition
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.edtProject);
            this.Controls.Add(this.lue_Customer);
            this.Controls.Add(this.edtLine);
            this.Controls.Add(this.lue_WorkShop);
            this.Controls.Add(this.lue_Factory);
            this.Controls.Add(this.edtStyle);
            this.Controls.Add(this.date_ToDate);
            this.Controls.Add(this.date_FromDate);
            this.Controls.Add(this.labelControl8);
            this.Controls.Add(this.labelControl7);
            this.Controls.Add(this.labelControl4);
            this.Controls.Add(this.labelControl1);
            this.Controls.Add(this.labelControl11);
            this.Controls.Add(this.labelControl12);
            this.Controls.Add(this.labelControl13);
            this.Controls.Add(this.labelControl3);
            this.Name = "DefectAnalyzeCondition";
            this.Size = new System.Drawing.Size(426, 320);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Load += new System.EventHandler(this.DefectAnalyzeCondition_Load);
            this.Controls.SetChildIndex(this.labelControl3, 0);
            this.Controls.SetChildIndex(this.labelControl13, 0);
            this.Controls.SetChildIndex(this.labelControl12, 0);
            this.Controls.SetChildIndex(this.labelControl11, 0);
            this.Controls.SetChildIndex(this.labelControl1, 0);
            this.Controls.SetChildIndex(this.labelControl4, 0);
            this.Controls.SetChildIndex(this.labelControl7, 0);
            this.Controls.SetChildIndex(this.labelControl8, 0);
            this.Controls.SetChildIndex(this.date_FromDate, 0);
            this.Controls.SetChildIndex(this.date_ToDate, 0);
            this.Controls.SetChildIndex(this.edtStyle, 0);
            this.Controls.SetChildIndex(this.lue_Factory, 0);
            this.Controls.SetChildIndex(this.lue_WorkShop, 0);
            this.Controls.SetChildIndex(this.edtLine, 0);
            this.Controls.SetChildIndex(this.lue_Customer, 0);
            this.Controls.SetChildIndex(this.edtProject, 0);
            ((System.ComponentModel.ISupportInitialize)(this.barManagerPrint)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtProject.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.lue_Customer.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtLine.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.lue_WorkShop.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.lue_Factory.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtStyle.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.date_ToDate.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.date_ToDate.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.date_FromDate.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.date_FromDate.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.CheckedComboBoxEdit edtProject;
        private DevExpress.XtraEditors.ComboBoxEdit lue_Customer;
        private DevExpress.XtraEditors.ComboBoxEdit edtLine;
        private DevExpress.XtraEditors.ComboBoxEdit lue_WorkShop;
        private DevExpress.XtraEditors.ComboBoxEdit lue_Factory;
        private DevExpress.XtraEditors.ComboBoxEdit edtStyle;
        private DevExpress.XtraEditors.DateEdit date_ToDate;
        private DevExpress.XtraEditors.DateEdit date_FromDate;
        private DevExpress.XtraEditors.LabelControl labelControl8;
        private DevExpress.XtraEditors.LabelControl labelControl7;
        private DevExpress.XtraEditors.LabelControl labelControl4;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.LabelControl labelControl11;
        private DevExpress.XtraEditors.LabelControl labelControl12;
        private DevExpress.XtraEditors.LabelControl labelControl13;
        private DevExpress.XtraEditors.LabelControl labelControl3;
    }
}
