namespace PH.SPC.UI.Report
{
    partial class SummaryReportConditionForm
    {
        /// <summary> 
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary> 
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.lbFrom = new DevExpress.XtraEditors.LabelControl();
            this.txtFromDate = new DevExpress.XtraEditors.DateEdit();
            this.lbTo = new DevExpress.XtraEditors.LabelControl();
            this.txtToDate = new DevExpress.XtraEditors.DateEdit();
            this.lbProductSite = new DevExpress.XtraEditors.LabelControl();
            this.txtPrdnSite = new DevExpress.XtraEditors.ComboBoxEdit();
            this.btnPrint = new DevExpress.XtraEditors.SimpleButton();
            this.lb = new DevExpress.XtraEditors.LabelControl();
            this.txtSeason = new DevExpress.XtraEditors.TextEdit();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.txtProductCategory = new DevExpress.XtraEditors.ComboBoxEdit();
            this.labelControl3 = new DevExpress.XtraEditors.LabelControl();
            this.txtReportType = new DevExpress.XtraEditors.ComboBoxEdit();
            this.groupControl1 = new DevExpress.XtraEditors.GroupControl();
            this.txtProductWs = new DevExpress.XtraEditors.LookUpEdit();
            this.lbProduceWs = new DevExpress.XtraEditors.LabelControl();
            ((System.ComponentModel.ISupportInitialize)(this.txtFromDate.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtFromDate.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtToDate.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtToDate.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtPrdnSite.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtSeason.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtProductCategory.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtReportType.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).BeginInit();
            this.groupControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.txtProductWs.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // lbFrom
            // 
            this.lbFrom.Location = new System.Drawing.Point(35, 29);
            this.lbFrom.Name = "lbFrom";
            this.lbFrom.Size = new System.Drawing.Size(27, 14);
            this.lbFrom.TabIndex = 0;
            this.lbFrom.Text = "From";
            // 
            // txtFromDate
            // 
            this.txtFromDate.EditValue = null;
            this.txtFromDate.Location = new System.Drawing.Point(68, 24);
            this.txtFromDate.Name = "txtFromDate";
            this.txtFromDate.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtFromDate.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.txtFromDate.Size = new System.Drawing.Size(142, 21);
            this.txtFromDate.TabIndex = 1;
            // 
            // lbTo
            // 
            this.lbTo.Location = new System.Drawing.Point(50, 58);
            this.lbTo.Name = "lbTo";
            this.lbTo.Size = new System.Drawing.Size(12, 14);
            this.lbTo.TabIndex = 2;
            this.lbTo.Text = "to";
            // 
            // txtToDate
            // 
            this.txtToDate.EditValue = null;
            this.txtToDate.Location = new System.Drawing.Point(68, 54);
            this.txtToDate.Name = "txtToDate";
            this.txtToDate.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtToDate.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.txtToDate.Size = new System.Drawing.Size(142, 21);
            this.txtToDate.TabIndex = 3;
            // 
            // lbProductSite
            // 
            this.lbProductSite.Location = new System.Drawing.Point(70, 109);
            this.lbProductSite.Name = "lbProductSite";
            this.lbProductSite.Size = new System.Drawing.Size(50, 14);
            this.lbProductSite.TabIndex = 4;
            this.lbProductSite.Text = "Prdn Site";
            // 
            // txtPrdnSite
            // 
            this.txtPrdnSite.Location = new System.Drawing.Point(128, 106);
            this.txtPrdnSite.Name = "txtPrdnSite";
            this.txtPrdnSite.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtPrdnSite.Properties.Items.AddRange(new object[] {
            "",
            "SL",
            "CL"});
            this.txtPrdnSite.Size = new System.Drawing.Size(142, 21);
            this.txtPrdnSite.TabIndex = 5;
            // 
            // btnPrint
            // 
            this.btnPrint.Location = new System.Drawing.Point(154, 278);
            this.btnPrint.Name = "btnPrint";
            this.btnPrint.Size = new System.Drawing.Size(75, 23);
            this.btnPrint.TabIndex = 6;
            this.btnPrint.Text = "Print";
            this.btnPrint.Click += new System.EventHandler(this.btnPrint_Click);
            // 
            // lb
            // 
            this.lb.Location = new System.Drawing.Point(81, 170);
            this.lb.Name = "lb";
            this.lb.Size = new System.Drawing.Size(39, 14);
            this.lb.TabIndex = 7;
            this.lb.Text = "Season";
            // 
            // txtSeason
            // 
            this.txtSeason.Location = new System.Drawing.Point(128, 166);
            this.txtSeason.Name = "txtSeason";
            this.txtSeason.Size = new System.Drawing.Size(142, 21);
            this.txtSeason.TabIndex = 8;
            // 
            // labelControl2
            // 
            this.labelControl2.Location = new System.Drawing.Point(71, 199);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(49, 14);
            this.labelControl2.TabIndex = 9;
            this.labelControl2.Text = "Prdt Cat.";
            // 
            // txtProductCategory
            // 
            this.txtProductCategory.Location = new System.Drawing.Point(128, 196);
            this.txtProductCategory.Name = "txtProductCategory";
            this.txtProductCategory.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtProductCategory.Size = new System.Drawing.Size(142, 21);
            this.txtProductCategory.TabIndex = 10;
            // 
            // labelControl3
            // 
            this.labelControl3.Location = new System.Drawing.Point(51, 237);
            this.labelControl3.Name = "labelControl3";
            this.labelControl3.Size = new System.Drawing.Size(69, 14);
            this.labelControl3.TabIndex = 11;
            this.labelControl3.Text = "Report Type";
            // 
            // txtReportType
            // 
            this.txtReportType.EditValue = "By Cust + Smpl Type";
            this.txtReportType.Location = new System.Drawing.Point(128, 234);
            this.txtReportType.Name = "txtReportType";
            this.txtReportType.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtReportType.Properties.Items.AddRange(new object[] {
            "By Sample Type",
            "By Cust",
            "By Cust + Smpl Type",
            "By Cust + DVP + PH Style#"});
            this.txtReportType.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.txtReportType.Size = new System.Drawing.Size(179, 21);
            this.txtReportType.TabIndex = 12;
            // 
            // groupControl1
            // 
            this.groupControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.groupControl1.Controls.Add(this.txtFromDate);
            this.groupControl1.Controls.Add(this.lbFrom);
            this.groupControl1.Controls.Add(this.txtToDate);
            this.groupControl1.Controls.Add(this.lbTo);
            this.groupControl1.Location = new System.Drawing.Point(60, 11);
            this.groupControl1.Name = "groupControl1";
            this.groupControl1.Size = new System.Drawing.Size(247, 84);
            this.PlatetoolTipController.SetSuperTip(this.groupControl1, null);
            this.groupControl1.TabIndex = 13;
            this.groupControl1.Text = "Time Frame";
            // 
            // txtProductWs
            // 
            this.txtProductWs.Location = new System.Drawing.Point(128, 136);
            this.txtProductWs.Name = "txtProductWs";
            this.txtProductWs.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtProductWs.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Code", "Code", 70),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("NameEN", "Desc. (EN)", 280),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("NameCN", "Desc. (CN)", 150)});
            this.txtProductWs.Properties.NullText = "";
            this.txtProductWs.Properties.PopupWidth = 550;
            this.txtProductWs.Size = new System.Drawing.Size(142, 21);
            this.txtProductWs.TabIndex = 115;
            // 
            // lbProduceWs
            // 
            this.lbProduceWs.Appearance.Options.UseTextOptions = true;
            this.lbProduceWs.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.lbProduceWs.Location = new System.Drawing.Point(74, 139);
            this.lbProduceWs.Name = "lbProduceWs";
            this.lbProduceWs.Size = new System.Drawing.Size(46, 14);
            this.lbProduceWs.TabIndex = 114;
            this.lbProduceWs.Text = "Prdn Ws";
            // 
            // SummaryReportConditionForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.txtProductWs);
            this.Controls.Add(this.lbProduceWs);
            this.Controls.Add(this.groupControl1);
            this.Controls.Add(this.txtReportType);
            this.Controls.Add(this.labelControl3);
            this.Controls.Add(this.txtProductCategory);
            this.Controls.Add(this.labelControl2);
            this.Controls.Add(this.txtSeason);
            this.Controls.Add(this.lb);
            this.Controls.Add(this.btnPrint);
            this.Controls.Add(this.txtPrdnSite);
            this.Controls.Add(this.lbProductSite);
            this.Name = "SummaryReportConditionForm";
            this.Size = new System.Drawing.Size(842, 490);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.txtFromDate.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtFromDate.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtToDate.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtToDate.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtPrdnSite.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtSeason.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtProductCategory.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtReportType.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).EndInit();
            this.groupControl1.ResumeLayout(false);
            this.groupControl1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.txtProductWs.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.LabelControl lbFrom;
        private DevExpress.XtraEditors.DateEdit txtFromDate;
        private DevExpress.XtraEditors.LabelControl lbTo;
        private DevExpress.XtraEditors.DateEdit txtToDate;
        private DevExpress.XtraEditors.LabelControl lbProductSite;
        private DevExpress.XtraEditors.ComboBoxEdit txtPrdnSite;
        private DevExpress.XtraEditors.SimpleButton btnPrint;
        private DevExpress.XtraEditors.LabelControl lb;
        private DevExpress.XtraEditors.TextEdit txtSeason;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.ComboBoxEdit txtProductCategory;
        private DevExpress.XtraEditors.LabelControl labelControl3;
        private DevExpress.XtraEditors.ComboBoxEdit txtReportType;
        private DevExpress.XtraEditors.GroupControl groupControl1;
        private DevExpress.XtraEditors.LookUpEdit txtProductWs;
        private DevExpress.XtraEditors.LabelControl lbProduceWs;
    }
}
