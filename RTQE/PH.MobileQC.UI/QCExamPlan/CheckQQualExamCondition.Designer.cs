namespace PH.MobileQC.UI.QCExamPlan
{
    partial class CheckQQualExamCondition
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
            this.lue_Line = new DevExpress.XtraEditors.ComboBoxEdit();
            this.lue_Factory = new DevExpress.XtraEditors.ComboBoxEdit();
            this.labelControl4 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl11 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl13 = new DevExpress.XtraEditors.LabelControl();
            this.sBut_Cancel = new DevExpress.XtraEditors.SimpleButton();
            this.sbut_OK = new DevExpress.XtraEditors.SimpleButton();
            this.CheckStepType = new DevExpress.XtraEditors.RadioGroup();
            this.lue_Style = new DevExpress.XtraEditors.ButtonEdit();
            ((System.ComponentModel.ISupportInitialize)(this.lue_Line.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.lue_Factory.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.CheckStepType.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.lue_Style.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // lue_Line
            // 
            this.lue_Line.Location = new System.Drawing.Point(114, 123);
            this.lue_Line.Name = "lue_Line";
            this.lue_Line.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.lue_Line.Size = new System.Drawing.Size(207, 21);
            this.lue_Line.TabIndex = 80;
            this.lue_Line.SelectedValueChanged += new System.EventHandler(this.lue_Line_SelectedValueChanged);
            // 
            // lue_Factory
            // 
            this.lue_Factory.Location = new System.Drawing.Point(114, 88);
            this.lue_Factory.Name = "lue_Factory";
            this.lue_Factory.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.lue_Factory.Properties.Items.AddRange(new object[] {
            "",
            "SL",
            "RX",
            "CL"});
            this.lue_Factory.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.lue_Factory.Size = new System.Drawing.Size(207, 21);
            this.lue_Factory.TabIndex = 79;
            this.lue_Factory.SelectedValueChanged += new System.EventHandler(this.lue_Factory_SelectedValueChanged);
            // 
            // labelControl4
            // 
            this.labelControl4.Location = new System.Drawing.Point(70, 59);
            this.labelControl4.Name = "labelControl4";
            this.labelControl4.Size = new System.Drawing.Size(31, 14);
            this.labelControl4.TabIndex = 75;
            this.labelControl4.Text = "Style:";
            // 
            // labelControl11
            // 
            this.labelControl11.Location = new System.Drawing.Point(57, 91);
            this.labelControl11.Name = "labelControl11";
            this.labelControl11.Size = new System.Drawing.Size(44, 14);
            this.labelControl11.TabIndex = 74;
            this.labelControl11.Text = "Factory:";
            // 
            // labelControl13
            // 
            this.labelControl13.Location = new System.Drawing.Point(75, 126);
            this.labelControl13.Name = "labelControl13";
            this.labelControl13.Size = new System.Drawing.Size(26, 14);
            this.labelControl13.TabIndex = 76;
            this.labelControl13.Text = "Line:";
            // 
            // sBut_Cancel
            // 
            this.sBut_Cancel.Location = new System.Drawing.Point(223, 191);
            this.sBut_Cancel.Name = "sBut_Cancel";
            this.sBut_Cancel.Size = new System.Drawing.Size(75, 23);
            this.sBut_Cancel.TabIndex = 83;
            this.sBut_Cancel.Text = "Cancel";
            // 
            // sbut_OK
            // 
            this.sbut_OK.Location = new System.Drawing.Point(114, 191);
            this.sbut_OK.Name = "sbut_OK";
            this.sbut_OK.Size = new System.Drawing.Size(75, 23);
            this.sbut_OK.TabIndex = 82;
            this.sbut_OK.Text = "OK";
            this.sbut_OK.Click += new System.EventHandler(this.sbut_OK_Click);
            // 
            // CheckStepType
            // 
            this.CheckStepType.EditValue = "Step1";
            this.CheckStepType.Location = new System.Drawing.Point(115, 158);
            this.CheckStepType.Name = "CheckStepType";
            this.CheckStepType.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] {
            new DevExpress.XtraEditors.Controls.RadioGroupItem("Step1", "Step 1"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem("Step2", "Step 2")});
            this.CheckStepType.Size = new System.Drawing.Size(197, 25);
            this.CheckStepType.TabIndex = 84;
            this.CheckStepType.SelectedIndexChanged += new System.EventHandler(this.CheckStepType_SelectedIndexChanged);
            // 
            // lue_Style
            // 
            this.lue_Style.Location = new System.Drawing.Point(114, 56);
            this.lue_Style.Name = "lue_Style";
            this.lue_Style.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.lue_Style.Size = new System.Drawing.Size(207, 21);
            this.lue_Style.TabIndex = 85;
            this.lue_Style.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(this.lue_Style_ButtonClick);
            this.lue_Style.EditValueChanged += new System.EventHandler(this.lue_Style_EditValueChanged);
            // 
            // CheckQQualExamCondition
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.lue_Style);
            this.Controls.Add(this.CheckStepType);
            this.Controls.Add(this.sBut_Cancel);
            this.Controls.Add(this.sbut_OK);
            this.Controls.Add(this.lue_Line);
            this.Controls.Add(this.lue_Factory);
            this.Controls.Add(this.labelControl4);
            this.Controls.Add(this.labelControl11);
            this.Controls.Add(this.labelControl13);
            this.Name = "CheckQQualExamCondition";
            this.Size = new System.Drawing.Size(409, 309);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.lue_Line.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.lue_Factory.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.CheckStepType.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.lue_Style.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.ComboBoxEdit lue_Line;
        private DevExpress.XtraEditors.ComboBoxEdit lue_Factory;
        private DevExpress.XtraEditors.LabelControl labelControl4;
        private DevExpress.XtraEditors.LabelControl labelControl11;
        private DevExpress.XtraEditors.LabelControl labelControl13;
        private DevExpress.XtraEditors.SimpleButton sBut_Cancel;
        private DevExpress.XtraEditors.SimpleButton sbut_OK;
        private DevExpress.XtraEditors.RadioGroup CheckStepType;
        private DevExpress.XtraEditors.ButtonEdit lue_Style;
    }
}