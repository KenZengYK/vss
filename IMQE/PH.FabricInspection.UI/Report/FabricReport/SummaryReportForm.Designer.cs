namespace PH.FabricInspection.UI.Report.FabricReport
{
    partial class SummaryReportForm
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
            this.radioGroupOption = new DevExpress.XtraEditors.RadioGroup();
            this.lbDate = new DevExpress.XtraEditors.LabelControl();
            this.txtDateFrom = new DevExpress.XtraEditors.DateEdit();
            this.btnDetail = new DevExpress.XtraEditors.SimpleButton();
            this.btnSummary = new DevExpress.XtraEditors.SimpleButton();
            this.txtDateTo = new DevExpress.XtraEditors.DateEdit();
            this.lbTo = new DevExpress.XtraEditors.LabelControl();
            this.txtWhse = new DevExpress.XtraEditors.ComboBoxEdit();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.txtCategory = new DevExpress.XtraEditors.ComboBoxEdit();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            ((System.ComponentModel.ISupportInitialize)(this.radioGroupOption.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDateFrom.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDateFrom.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDateTo.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDateTo.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtWhse.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtCategory.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // radioGroupOption
            // 
            this.radioGroupOption.EditValue = "Monthly";
            this.radioGroupOption.Location = new System.Drawing.Point(111, 78);
            this.radioGroupOption.Name = "radioGroupOption";
            this.radioGroupOption.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] {
            new DevExpress.XtraEditors.Controls.RadioGroupItem("Daily", "Daily"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem("Weekly", "Weekly"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem("Monthly", "Monthly")});
            this.radioGroupOption.Size = new System.Drawing.Size(209, 80);
            this.radioGroupOption.TabIndex = 0;
            this.radioGroupOption.SelectedIndexChanged += new System.EventHandler(this.radioGroupOption_SelectedIndexChanged);
            // 
            // lbDate
            // 
            this.lbDate.Location = new System.Drawing.Point(64, 177);
            this.lbDate.Name = "lbDate";
            this.lbDate.Size = new System.Drawing.Size(30, 14);
            this.lbDate.TabIndex = 1;
            this.lbDate.Text = "Date:";
            // 
            // txtDateFrom
            // 
            this.txtDateFrom.EditValue = null;
            this.txtDateFrom.Location = new System.Drawing.Point(111, 174);
            this.txtDateFrom.Name = "txtDateFrom";
            this.txtDateFrom.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtDateFrom.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.txtDateFrom.Size = new System.Drawing.Size(93, 21);
            this.txtDateFrom.TabIndex = 2;
            // 
            // btnDetail
            // 
            this.btnDetail.Location = new System.Drawing.Point(129, 209);
            this.btnDetail.Name = "btnDetail";
            this.btnDetail.Size = new System.Drawing.Size(75, 23);
            this.btnDetail.TabIndex = 3;
            this.btnDetail.Text = "Detail";
            this.btnDetail.Click += new System.EventHandler(this.btnDetail_Click);
            // 
            // btnSummary
            // 
            this.btnSummary.Location = new System.Drawing.Point(227, 209);
            this.btnSummary.Name = "btnSummary";
            this.btnSummary.Size = new System.Drawing.Size(75, 23);
            this.btnSummary.TabIndex = 4;
            this.btnSummary.Text = "Summary";
            this.btnSummary.Click += new System.EventHandler(this.btnSummary_Click);
            // 
            // txtDateTo
            // 
            this.txtDateTo.EditValue = null;
            this.txtDateTo.Location = new System.Drawing.Point(227, 174);
            this.txtDateTo.Name = "txtDateTo";
            this.txtDateTo.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtDateTo.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.txtDateTo.Size = new System.Drawing.Size(93, 21);
            this.txtDateTo.TabIndex = 6;
            // 
            // lbTo
            // 
            this.lbTo.Location = new System.Drawing.Point(209, 177);
            this.lbTo.Name = "lbTo";
            this.lbTo.Size = new System.Drawing.Size(12, 14);
            this.lbTo.TabIndex = 5;
            this.lbTo.Text = "to";
            // 
            // txtWhse
            // 
            this.txtWhse.EditValue = "";
            this.txtWhse.Location = new System.Drawing.Point(111, 46);
            this.txtWhse.Name = "txtWhse";
            this.txtWhse.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtWhse.Properties.Items.AddRange(new object[] {
            "",
            "RM",
            "RT"});
            this.txtWhse.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.txtWhse.Size = new System.Drawing.Size(123, 21);
            this.txtWhse.TabIndex = 11;
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(59, 49);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(35, 14);
            this.labelControl1.TabIndex = 10;
            this.labelControl1.Text = "Whse:";
            // 
            // txtCategory
            // 
            this.txtCategory.Location = new System.Drawing.Point(111, 15);
            this.txtCategory.Name = "txtCategory";
            this.txtCategory.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtCategory.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.txtCategory.Size = new System.Drawing.Size(123, 21);
            this.txtCategory.TabIndex = 13;
            // 
            // labelControl2
            // 
            this.labelControl2.Location = new System.Drawing.Point(41, 19);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(53, 14);
            this.labelControl2.TabIndex = 12;
            this.labelControl2.Text = "Category:";
            // 
            // SummaryReportForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.txtCategory);
            this.Controls.Add(this.labelControl2);
            this.Controls.Add(this.txtWhse);
            this.Controls.Add(this.labelControl1);
            this.Controls.Add(this.txtDateTo);
            this.Controls.Add(this.lbTo);
            this.Controls.Add(this.btnSummary);
            this.Controls.Add(this.btnDetail);
            this.Controls.Add(this.txtDateFrom);
            this.Controls.Add(this.lbDate);
            this.Controls.Add(this.radioGroupOption);
            this.Name = "SummaryReportForm";
            this.Size = new System.Drawing.Size(524, 361);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.radioGroupOption.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDateFrom.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDateFrom.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDateTo.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDateTo.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtWhse.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtCategory.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.RadioGroup radioGroupOption;
        private DevExpress.XtraEditors.LabelControl lbDate;
        private DevExpress.XtraEditors.DateEdit txtDateFrom;
        private DevExpress.XtraEditors.SimpleButton btnDetail;
        private DevExpress.XtraEditors.SimpleButton btnSummary;
        private DevExpress.XtraEditors.DateEdit txtDateTo;
        private DevExpress.XtraEditors.LabelControl lbTo;
        private DevExpress.XtraEditors.ComboBoxEdit txtWhse;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.ComboBoxEdit txtCategory;
        private DevExpress.XtraEditors.LabelControl labelControl2;
    }
}
