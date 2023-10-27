namespace PH.HDO.UI.ByPiece
{
    partial class CheckWorkTimeApplicationReport
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
            this.components = new System.ComponentModel.Container();
            this.label4 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.txtDueDate = new DevExpress.XtraEditors.DateEdit();
            this.txtStartDate = new DevExpress.XtraEditors.DateEdit();
            this.label1 = new System.Windows.Forms.Label();
            this.simpleButton1 = new DevExpress.XtraEditors.SimpleButton();
            this.lookUpEdit1 = new DevExpress.XtraEditors.LookUpEdit();
            this.BsEmp = new System.Windows.Forms.BindingSource(this.components);
            this.label3 = new System.Windows.Forms.Label();
            this.simpleButton2 = new DevExpress.XtraEditors.SimpleButton();
            this.simpleButton3 = new DevExpress.XtraEditors.SimpleButton();
            this.label5 = new System.Windows.Forms.Label();
            this.EdReportType = new DevExpress.XtraEditors.ComboBoxEdit();
            this.checkedComboBoxEdit1 = new DevExpress.XtraEditors.CheckedComboBoxEdit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDueDate.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDueDate.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtStartDate.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtStartDate.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.lookUpEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BsEmp)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.EdReportType.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.checkedComboBoxEdit1.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(71, 123);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(29, 12);
            this.PlatetoolTipController.SetSuperTip(this.label4, null);
            this.label4.TabIndex = 113;
            this.label4.Text = "姓名";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(71, 85);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(this.label2, null);
            this.label2.TabIndex = 109;
            this.label2.Text = "結束日期";
            // 
            // txtDueDate
            // 
            this.txtDueDate.EditValue = null;
            this.txtDueDate.Location = new System.Drawing.Point(129, 80);
            this.txtDueDate.Name = "txtDueDate";
            this.txtDueDate.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtDueDate.Properties.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.txtDueDate.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.txtDueDate.Properties.EditFormat.FormatString = "yyyy-MM-dd";
            this.txtDueDate.Properties.EditFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.txtDueDate.Properties.Mask.EditMask = "yyyy-MM-dd";
            this.txtDueDate.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.txtDueDate.Size = new System.Drawing.Size(190, 21);
            this.txtDueDate.TabIndex = 108;
            // 
            // txtStartDate
            // 
            this.txtStartDate.EditValue = null;
            this.txtStartDate.Location = new System.Drawing.Point(129, 45);
            this.txtStartDate.Name = "txtStartDate";
            this.txtStartDate.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtStartDate.Properties.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.txtStartDate.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.txtStartDate.Properties.EditFormat.FormatString = "yyyy-MM-dd";
            this.txtStartDate.Properties.EditFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.txtStartDate.Properties.Mask.EditMask = "yyyy-MM-dd";
            this.txtStartDate.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.txtStartDate.Size = new System.Drawing.Size(190, 21);
            this.txtStartDate.TabIndex = 107;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(71, 50);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(this.label1, null);
            this.label1.TabIndex = 106;
            this.label1.Text = "開始日期";
            // 
            // simpleButton1
            // 
            this.simpleButton1.Location = new System.Drawing.Point(137, 231);
            this.simpleButton1.Name = "simpleButton1";
            this.simpleButton1.Size = new System.Drawing.Size(75, 23);
            this.simpleButton1.TabIndex = 114;
            this.simpleButton1.Text = "確認";
            this.simpleButton1.Click += new System.EventHandler(this.simpleButton1_Click);
            // 
            // lookUpEdit1
            // 
            this.lookUpEdit1.EditValue = "";
            this.lookUpEdit1.Location = new System.Drawing.Point(129, 117);
            this.lookUpEdit1.Name = "lookUpEdit1";
            this.lookUpEdit1.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.lookUpEdit1.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("EmpId", "工號", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("EmpName", "姓名", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None)});
            this.lookUpEdit1.Properties.DataSource = this.BsEmp;
            this.lookUpEdit1.Properties.DisplayMember = "EmpName";
            this.lookUpEdit1.Properties.NullText = "";
            this.lookUpEdit1.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.Standard;
            this.lookUpEdit1.Properties.ValueMember = "EmpId";
            this.lookUpEdit1.Size = new System.Drawing.Size(190, 21);
            this.lookUpEdit1.TabIndex = 115;
            // 
            // BsEmp
            // 
            this.BsEmp.DataSource = typeof(PH.PHGDB2.BO.ByPiece_Employee);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(71, 163);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(29, 12);
            this.PlatetoolTipController.SetSuperTip(this.label3, null);
            this.label3.TabIndex = 116;
            this.label3.Text = "組別";
            // 
            // simpleButton2
            // 
            this.simpleButton2.Location = new System.Drawing.Point(219, 231);
            this.simpleButton2.Name = "simpleButton2";
            this.simpleButton2.Size = new System.Drawing.Size(75, 23);
            this.simpleButton2.TabIndex = 118;
            this.simpleButton2.Text = "重置";
            this.simpleButton2.Click += new System.EventHandler(this.simpleButton2_Click);
            // 
            // simpleButton3
            // 
            this.simpleButton3.Location = new System.Drawing.Point(401, 264);
            this.simpleButton3.Name = "simpleButton3";
            this.simpleButton3.Size = new System.Drawing.Size(75, 23);
            this.simpleButton3.TabIndex = 119;
            this.simpleButton3.Text = "Print";
            this.simpleButton3.Visible = false;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(71, 196);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(this.label5, null);
            this.label5.TabIndex = 121;
            this.label5.Text = "報表類型";
            // 
            // EdReportType
            // 
            this.EdReportType.EditValue = "倉庫部工時(含盤點)補貼日報表";
            this.EdReportType.Location = new System.Drawing.Point(129, 190);
            this.EdReportType.Name = "EdReportType";
            this.EdReportType.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.EdReportType.Properties.Items.AddRange(new object[] {
            "倉庫部工時(含盤點)補貼日報表",
            "倉庫部工時補貼匯總表"});
            this.EdReportType.Size = new System.Drawing.Size(190, 21);
            this.EdReportType.TabIndex = 120;
            // 
            // checkedComboBoxEdit1
            // 
            this.checkedComboBoxEdit1.Location = new System.Drawing.Point(129, 158);
            this.checkedComboBoxEdit1.Name = "checkedComboBoxEdit1";
            this.checkedComboBoxEdit1.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.checkedComboBoxEdit1.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.CheckedListBoxItem[] {
            new DevExpress.XtraEditors.Controls.CheckedListBoxItem("輔料組"),
            new DevExpress.XtraEditors.Controls.CheckedListBoxItem("布料組"),
            new DevExpress.XtraEditors.Controls.CheckedListBoxItem("模杯組")});
            this.checkedComboBoxEdit1.Size = new System.Drawing.Size(190, 21);
            this.checkedComboBoxEdit1.TabIndex = 122;
            // 
            // CheckWorkTimeApplicationReport
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.checkedComboBoxEdit1);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.EdReportType);
            this.Controls.Add(this.simpleButton3);
            this.Controls.Add(this.simpleButton2);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.lookUpEdit1);
            this.Controls.Add(this.simpleButton1);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.txtDueDate);
            this.Controls.Add(this.txtStartDate);
            this.Controls.Add(this.label1);
            this.Name = "CheckWorkTimeApplicationReport";
            this.Size = new System.Drawing.Size(401, 287);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.txtDueDate.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDueDate.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtStartDate.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtStartDate.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.lookUpEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BsEmp)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.EdReportType.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.checkedComboBoxEdit1.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label2;
        private DevExpress.XtraEditors.DateEdit txtDueDate;
        private DevExpress.XtraEditors.DateEdit txtStartDate;
        private System.Windows.Forms.Label label1;
        private DevExpress.XtraEditors.SimpleButton simpleButton1;
        private DevExpress.XtraEditors.LookUpEdit lookUpEdit1;
        private System.Windows.Forms.BindingSource BsEmp;
        private System.Windows.Forms.Label label3;
        private DevExpress.XtraEditors.SimpleButton simpleButton2;
        private DevExpress.XtraEditors.SimpleButton simpleButton3;
        private System.Windows.Forms.Label label5;
        private DevExpress.XtraEditors.ComboBoxEdit EdReportType;
        private DevExpress.XtraEditors.CheckedComboBoxEdit checkedComboBoxEdit1;
    }
}