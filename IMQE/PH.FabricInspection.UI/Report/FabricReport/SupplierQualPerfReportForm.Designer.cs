namespace PH.FabricInspection.UI.Report.FabricReport
{
    partial class SupplierQualPerfReportForm
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
            this.lbDate = new DevExpress.XtraEditors.LabelControl();
            this.txtDateFrom = new DevExpress.XtraEditors.DateEdit();
            this.btnMonthly = new DevExpress.XtraEditors.SimpleButton();
            this.txtDateTo = new DevExpress.XtraEditors.DateEdit();
            this.lbTo = new DevExpress.XtraEditors.LabelControl();
            this.btnSupplier = new DevExpress.XtraEditors.SimpleButton();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.txtWhse = new DevExpress.XtraEditors.ComboBoxEdit();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.txtCategory = new DevExpress.XtraEditors.ComboBoxEdit();
            this.chkConvertedFabric = new DevExpress.XtraEditors.CheckEdit();
            this.radType = new DevExpress.XtraEditors.RadioGroup();
            ((System.ComponentModel.ISupportInitialize)(this.txtDateFrom.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDateFrom.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDateTo.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDateTo.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtWhse.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtCategory.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkConvertedFabric.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.radType.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // lbDate
            // 
            this.lbDate.Location = new System.Drawing.Point(54, 146);
            this.lbDate.Name = "lbDate";
            this.lbDate.Size = new System.Drawing.Size(39, 14);
            this.lbDate.TabIndex = 1;
            this.lbDate.Text = "Month:";
            // 
            // txtDateFrom
            // 
            this.txtDateFrom.EditValue = null;
            this.txtDateFrom.Location = new System.Drawing.Point(101, 143);
            this.txtDateFrom.Name = "txtDateFrom";
            this.txtDateFrom.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtDateFrom.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.txtDateFrom.Size = new System.Drawing.Size(123, 21);
            this.txtDateFrom.TabIndex = 2;
            // 
            // btnMonthly
            // 
            this.btnMonthly.Location = new System.Drawing.Point(158, 189);
            this.btnMonthly.Name = "btnMonthly";
            this.btnMonthly.Size = new System.Drawing.Size(75, 23);
            this.btnMonthly.TabIndex = 4;
            this.btnMonthly.Text = "By Monthly";
            this.btnMonthly.Click += new System.EventHandler(this.btnMonthly_Click);
            // 
            // txtDateTo
            // 
            this.txtDateTo.EditValue = null;
            this.txtDateTo.Location = new System.Drawing.Point(247, 143);
            this.txtDateTo.Name = "txtDateTo";
            this.txtDateTo.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtDateTo.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.txtDateTo.Size = new System.Drawing.Size(123, 21);
            this.txtDateTo.TabIndex = 6;
            // 
            // lbTo
            // 
            this.lbTo.Location = new System.Drawing.Point(228, 146);
            this.lbTo.Name = "lbTo";
            this.lbTo.Size = new System.Drawing.Size(12, 14);
            this.lbTo.TabIndex = 5;
            this.lbTo.Text = "to";
            // 
            // btnSupplier
            // 
            this.btnSupplier.Location = new System.Drawing.Point(69, 189);
            this.btnSupplier.Name = "btnSupplier";
            this.btnSupplier.Size = new System.Drawing.Size(75, 23);
            this.btnSupplier.TabIndex = 7;
            this.btnSupplier.Text = "By Supplier";
            this.btnSupplier.Click += new System.EventHandler(this.btnSupplier_Click);
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(58, 50);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(35, 14);
            this.labelControl1.TabIndex = 8;
            this.labelControl1.Text = "Whse:";
            // 
            // txtWhse
            // 
            this.txtWhse.EditValue = "";
            this.txtWhse.Location = new System.Drawing.Point(101, 47);
            this.txtWhse.Name = "txtWhse";
            this.txtWhse.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtWhse.Properties.Items.AddRange(new object[] {
            "",
            "RM",
            "RT"});
            this.txtWhse.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.txtWhse.Size = new System.Drawing.Size(123, 21);
            this.txtWhse.TabIndex = 9;
            // 
            // labelControl2
            // 
            this.labelControl2.Location = new System.Drawing.Point(40, 18);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(53, 14);
            this.labelControl2.TabIndex = 10;
            this.labelControl2.Text = "Category:";
            // 
            // txtCategory
            // 
            this.txtCategory.Location = new System.Drawing.Point(101, 14);
            this.txtCategory.Name = "txtCategory";
            this.txtCategory.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtCategory.Properties.Items.AddRange(new object[] {
            "",
            "RM",
            "RT"});
            this.txtCategory.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.txtCategory.Size = new System.Drawing.Size(123, 21);
            this.txtCategory.TabIndex = 11;
            this.txtCategory.SelectedIndexChanged += new System.EventHandler(this.txtCategory_SelectedIndexChanged);
            // 
            // chkConvertedFabric
            // 
            this.chkConvertedFabric.Location = new System.Drawing.Point(245, 16);
            this.chkConvertedFabric.Name = "chkConvertedFabric";
            this.chkConvertedFabric.Properties.Caption = "Converted Fabric";
            this.chkConvertedFabric.Size = new System.Drawing.Size(125, 19);
            this.chkConvertedFabric.TabIndex = 12;
            // 
            // radType
            // 
            this.radType.EditValue = "Monthly";
            this.radType.Location = new System.Drawing.Point(101, 77);
            this.radType.Name = "radType";
            this.radType.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] {
            new DevExpress.XtraEditors.Controls.RadioGroupItem("Monthly", "Monthly"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem("Period Range", "Period Range")});
            this.radType.Size = new System.Drawing.Size(123, 55);
            this.radType.TabIndex = 13;
            this.radType.SelectedIndexChanged += new System.EventHandler(this.radType_SelectedIndexChanged);
            // 
            // SupplierQualPerfReportForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.radType);
            this.Controls.Add(this.chkConvertedFabric);
            this.Controls.Add(this.txtCategory);
            this.Controls.Add(this.labelControl2);
            this.Controls.Add(this.txtWhse);
            this.Controls.Add(this.labelControl1);
            this.Controls.Add(this.btnSupplier);
            this.Controls.Add(this.txtDateTo);
            this.Controls.Add(this.lbTo);
            this.Controls.Add(this.btnMonthly);
            this.Controls.Add(this.txtDateFrom);
            this.Controls.Add(this.lbDate);
            this.Name = "SupplierQualPerfReportForm";
            this.Size = new System.Drawing.Size(603, 347);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Load += new System.EventHandler(this.SupplierQualPerfReportForm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.txtDateFrom.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDateFrom.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDateTo.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDateTo.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtWhse.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtCategory.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkConvertedFabric.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.radType.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.LabelControl lbDate;
        private DevExpress.XtraEditors.DateEdit txtDateFrom;
        private DevExpress.XtraEditors.SimpleButton btnMonthly;
        private DevExpress.XtraEditors.DateEdit txtDateTo;
        private DevExpress.XtraEditors.LabelControl lbTo;
        private DevExpress.XtraEditors.SimpleButton btnSupplier;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.ComboBoxEdit txtWhse;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.ComboBoxEdit txtCategory;
        private DevExpress.XtraEditors.CheckEdit chkConvertedFabric;
        private DevExpress.XtraEditors.RadioGroup radType;
    }
}
