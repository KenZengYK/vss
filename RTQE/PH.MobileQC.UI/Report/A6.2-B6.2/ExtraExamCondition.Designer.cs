namespace PH.MobileQC.UI.RPT
{
    partial class ExtraExamCondition
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
            this.radioGroup1 = new DevExpress.XtraEditors.RadioGroup();
            this.edtProject = new DevExpress.XtraEditors.CheckedComboBoxEdit();
            this.lue_Customer = new DevExpress.XtraEditors.ComboBoxEdit();
            this.edtLine = new DevExpress.XtraEditors.ComboBoxEdit();
            this.lue_WorkShop = new DevExpress.XtraEditors.ComboBoxEdit();
            this.lue_Factory = new DevExpress.XtraEditors.ComboBoxEdit();
            this.edtStyle = new DevExpress.XtraEditors.ComboBoxEdit();
            this.sbut_OK = new DevExpress.XtraEditors.SimpleButton();
            this.labelControl4 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl11 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl12 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl13 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl3 = new DevExpress.XtraEditors.LabelControl();
            ((System.ComponentModel.ISupportInitialize)(this.radioGroup1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtProject.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.lue_Customer.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtLine.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.lue_WorkShop.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.lue_Factory.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtStyle.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // radioGroup1
            // 
            this.radioGroup1.EditValue = "Audit";
            this.radioGroup1.Location = new System.Drawing.Point(105, 193);
            this.radioGroup1.Name = "radioGroup1";
            this.radioGroup1.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] {
            new DevExpress.XtraEditors.Controls.RadioGroupItem("Audit", "Audit"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem("Inspection", "Inspection")});
            this.radioGroup1.Size = new System.Drawing.Size(207, 22);
            this.radioGroup1.TabIndex = 96;
            // 
            // edtProject
            // 
            this.edtProject.Location = new System.Drawing.Point(105, 132);
            this.edtProject.Name = "edtProject";
            this.edtProject.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.edtProject.Properties.PopupFormMinSize = new System.Drawing.Size(0, 200);
            this.edtProject.Size = new System.Drawing.Size(207, 21);
            this.edtProject.TabIndex = 95;
            this.edtProject.EditValueChanged += new System.EventHandler(this.edtProject_EditValueChanged);
            // 
            // lue_Customer
            // 
            this.lue_Customer.Location = new System.Drawing.Point(105, 79);
            this.lue_Customer.Name = "lue_Customer";
            this.lue_Customer.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.lue_Customer.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.lue_Customer.Size = new System.Drawing.Size(207, 21);
            this.lue_Customer.TabIndex = 92;
            this.lue_Customer.EditValueChanged += new System.EventHandler(this.lue_Customer_EditValueChanged);
            // 
            // edtLine
            // 
            this.edtLine.Location = new System.Drawing.Point(105, 159);
            this.edtLine.Name = "edtLine";
            this.edtLine.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.edtLine.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.edtLine.Size = new System.Drawing.Size(207, 21);
            this.edtLine.TabIndex = 93;
            // 
            // lue_WorkShop
            // 
            this.lue_WorkShop.Location = new System.Drawing.Point(105, 53);
            this.lue_WorkShop.Name = "lue_WorkShop";
            this.lue_WorkShop.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.lue_WorkShop.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.lue_WorkShop.Size = new System.Drawing.Size(207, 21);
            this.lue_WorkShop.TabIndex = 94;
            this.lue_WorkShop.EditValueChanged += new System.EventHandler(this.lue_WorkShop_EditValueChanged);
            // 
            // lue_Factory
            // 
            this.lue_Factory.Location = new System.Drawing.Point(105, 25);
            this.lue_Factory.Name = "lue_Factory";
            this.lue_Factory.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.lue_Factory.Properties.Items.AddRange(new object[] {
            "SL",
            "RX",
            "CL"});
            this.lue_Factory.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.lue_Factory.Size = new System.Drawing.Size(207, 21);
            this.lue_Factory.TabIndex = 91;
            this.lue_Factory.EditValueChanged += new System.EventHandler(this.lue_Factory_EditValueChanged);
            // 
            // edtStyle
            // 
            this.edtStyle.Location = new System.Drawing.Point(105, 107);
            this.edtStyle.Name = "edtStyle";
            this.edtStyle.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.edtStyle.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.edtStyle.Size = new System.Drawing.Size(207, 21);
            this.edtStyle.TabIndex = 90;
            this.edtStyle.EditValueChanged += new System.EventHandler(this.edtStyle_EditValueChanged);
            // 
            // sbut_OK
            // 
            this.sbut_OK.Location = new System.Drawing.Point(167, 238);
            this.sbut_OK.Name = "sbut_OK";
            this.sbut_OK.Size = new System.Drawing.Size(75, 23);
            this.sbut_OK.TabIndex = 78;
            this.sbut_OK.Text = "Preview";
            this.sbut_OK.Click += new System.EventHandler(this.sbut_OK_Click);
            // 
            // labelControl4
            // 
            this.labelControl4.Location = new System.Drawing.Point(68, 109);
            this.labelControl4.Name = "labelControl4";
            this.labelControl4.Size = new System.Drawing.Size(31, 14);
            this.labelControl4.TabIndex = 81;
            this.labelControl4.Text = "Style:";
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(56, 132);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(43, 14);
            this.labelControl1.TabIndex = 80;
            this.labelControl1.Text = "Project:";
            // 
            // labelControl11
            // 
            this.labelControl11.Location = new System.Drawing.Point(55, 29);
            this.labelControl11.Name = "labelControl11";
            this.labelControl11.Size = new System.Drawing.Size(44, 14);
            this.labelControl11.TabIndex = 84;
            this.labelControl11.Text = "Factory:";
            // 
            // labelControl12
            // 
            this.labelControl12.Location = new System.Drawing.Point(38, 56);
            this.labelControl12.Name = "labelControl12";
            this.labelControl12.Size = new System.Drawing.Size(61, 14);
            this.labelControl12.TabIndex = 85;
            this.labelControl12.Text = "WorkShop:";
            // 
            // labelControl13
            // 
            this.labelControl13.Location = new System.Drawing.Point(43, 82);
            this.labelControl13.Name = "labelControl13";
            this.labelControl13.Size = new System.Drawing.Size(56, 14);
            this.labelControl13.TabIndex = 82;
            this.labelControl13.Text = "Customer:";
            // 
            // labelControl3
            // 
            this.labelControl3.Location = new System.Drawing.Point(73, 162);
            this.labelControl3.Name = "labelControl3";
            this.labelControl3.Size = new System.Drawing.Size(26, 14);
            this.labelControl3.TabIndex = 83;
            this.labelControl3.Text = "Line:";
            // 
            // ExtraExamCondition
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.radioGroup1);
            this.Controls.Add(this.edtProject);
            this.Controls.Add(this.lue_Customer);
            this.Controls.Add(this.edtLine);
            this.Controls.Add(this.lue_WorkShop);
            this.Controls.Add(this.lue_Factory);
            this.Controls.Add(this.edtStyle);
            this.Controls.Add(this.sbut_OK);
            this.Controls.Add(this.labelControl4);
            this.Controls.Add(this.labelControl1);
            this.Controls.Add(this.labelControl11);
            this.Controls.Add(this.labelControl12);
            this.Controls.Add(this.labelControl13);
            this.Controls.Add(this.labelControl3);
            this.Name = "ExtraExamCondition";
            this.Size = new System.Drawing.Size(588, 403);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Load += new System.EventHandler(this.ExtraExamCondition_Load);
            ((System.ComponentModel.ISupportInitialize)(this.radioGroup1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtProject.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.lue_Customer.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtLine.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.lue_WorkShop.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.lue_Factory.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtStyle.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        public DevExpress.XtraEditors.RadioGroup radioGroup1;
        private DevExpress.XtraEditors.CheckedComboBoxEdit edtProject;
        private DevExpress.XtraEditors.ComboBoxEdit lue_Customer;
        private DevExpress.XtraEditors.ComboBoxEdit edtLine;
        private DevExpress.XtraEditors.ComboBoxEdit lue_WorkShop;
        private DevExpress.XtraEditors.ComboBoxEdit lue_Factory;
        private DevExpress.XtraEditors.ComboBoxEdit edtStyle;
        private DevExpress.XtraEditors.SimpleButton sbut_OK;
        private DevExpress.XtraEditors.LabelControl labelControl4;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.LabelControl labelControl11;
        private DevExpress.XtraEditors.LabelControl labelControl12;
        private DevExpress.XtraEditors.LabelControl labelControl13;
        private DevExpress.XtraEditors.LabelControl labelControl3;
    }
}
