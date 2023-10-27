namespace PH.MobileQC.UI.FullInspection
{
    partial class FullInspectionFourDefectForm
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

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.simpleButton1 = new DevExpress.XtraEditors.SimpleButton();
            this.deDueDate = new DevExpress.XtraEditors.DateEdit();
            this.deStartDate = new DevExpress.XtraEditors.DateEdit();
            this.labelControl4 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl3 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.rgByWeekOrMonth = new DevExpress.XtraEditors.RadioGroup();
            this.cbCustomer = new DevExpress.XtraEditors.TextEdit();
            ((System.ComponentModel.ISupportInitialize)(this.deDueDate.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deDueDate.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deStartDate.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deStartDate.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rgByWeekOrMonth.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbCustomer.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // simpleButton1
            // 
            this.simpleButton1.Location = new System.Drawing.Point(208, 177);
            this.simpleButton1.Name = "simpleButton1";
            this.simpleButton1.Size = new System.Drawing.Size(75, 23);
            this.simpleButton1.TabIndex = 0;
            this.simpleButton1.Text = "Preview";
            this.simpleButton1.Click += new System.EventHandler(this.simpleButton1_Click);
            // 
            // deDueDate
            // 
            this.deDueDate.EditValue = null;
            this.deDueDate.Location = new System.Drawing.Point(147, 69);
            this.deDueDate.Name = "deDueDate";
            this.deDueDate.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.deDueDate.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.deDueDate.Size = new System.Drawing.Size(224, 21);
            this.deDueDate.TabIndex = 19;
            this.deDueDate.EditValueChanged += new System.EventHandler(this.deDueDate_EditValueChanged);
            // 
            // deStartDate
            // 
            this.deStartDate.EditValue = null;
            this.deStartDate.Location = new System.Drawing.Point(147, 42);
            this.deStartDate.Name = "deStartDate";
            this.deStartDate.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.deStartDate.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.deStartDate.Size = new System.Drawing.Size(224, 21);
            this.deStartDate.TabIndex = 18;
            this.deStartDate.EditValueChanged += new System.EventHandler(this.deStartDate_EditValueChanged);
            // 
            // labelControl4
            // 
            this.labelControl4.Location = new System.Drawing.Point(70, 71);
            this.labelControl4.Name = "labelControl4";
            this.labelControl4.Size = new System.Drawing.Size(56, 14);
            this.labelControl4.TabIndex = 17;
            this.labelControl4.Text = "Due Date:";
            // 
            // labelControl3
            // 
            this.labelControl3.Location = new System.Drawing.Point(65, 42);
            this.labelControl3.Name = "labelControl3";
            this.labelControl3.Size = new System.Drawing.Size(61, 14);
            this.labelControl3.TabIndex = 16;
            this.labelControl3.Text = "Start Date:";
            // 
            // labelControl2
            // 
            this.labelControl2.Location = new System.Drawing.Point(70, 99);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(56, 14);
            this.labelControl2.TabIndex = 12;
            this.labelControl2.Text = "Customer:";
            // 
            // rgByWeekOrMonth
            // 
            this.rgByWeekOrMonth.EditValue = "ByWeek";
            this.rgByWeekOrMonth.Location = new System.Drawing.Point(147, 125);
            this.rgByWeekOrMonth.Name = "rgByWeekOrMonth";
            this.rgByWeekOrMonth.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] {
            new DevExpress.XtraEditors.Controls.RadioGroupItem("ByWeek", "By Week"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem("ByMonth", "By Month"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem("ByDay", "By Day")});
            this.rgByWeekOrMonth.Size = new System.Drawing.Size(224, 36);
            this.rgByWeekOrMonth.TabIndex = 10;
            this.rgByWeekOrMonth.SelectedIndexChanged += new System.EventHandler(this.rgByWeekOrMonth_SelectedIndexChanged);
            // 
            // cbCustomer
            // 
            this.cbCustomer.Location = new System.Drawing.Point(147, 96);
            this.cbCustomer.Name = "cbCustomer";
            this.cbCustomer.Size = new System.Drawing.Size(224, 21);
            this.cbCustomer.TabIndex = 20;
            // 
            // FullInspectionFourDefectForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.cbCustomer);
            this.Controls.Add(this.deDueDate);
            this.Controls.Add(this.deStartDate);
            this.Controls.Add(this.labelControl4);
            this.Controls.Add(this.labelControl3);
            this.Controls.Add(this.labelControl2);
            this.Controls.Add(this.rgByWeekOrMonth);
            this.Controls.Add(this.simpleButton1);
            this.Name = "FullInspectionFourDefectForm";
            this.Size = new System.Drawing.Size(936, 319);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.deDueDate.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deDueDate.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deStartDate.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deStartDate.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rgByWeekOrMonth.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbCustomer.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.SimpleButton simpleButton1;
        private DevExpress.XtraEditors.DateEdit deDueDate;
        private DevExpress.XtraEditors.DateEdit deStartDate;
        private DevExpress.XtraEditors.LabelControl labelControl4;
        private DevExpress.XtraEditors.LabelControl labelControl3;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.RadioGroup rgByWeekOrMonth;
        private DevExpress.XtraEditors.TextEdit cbCustomer;
    }
}