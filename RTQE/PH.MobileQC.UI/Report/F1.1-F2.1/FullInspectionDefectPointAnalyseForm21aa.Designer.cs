namespace PH.MobileQC.UI.Rpt21aa
{
    partial class FullInspectionDefectPointAnalyseForm21aa
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
            this.txFactory = new DevExpress.XtraEditors.ComboBoxEdit();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.simpleButton1 = new DevExpress.XtraEditors.SimpleButton();
            this.comboBoxEdit1 = new DevExpress.XtraEditors.ComboBoxEdit();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl5 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl4 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl3 = new DevExpress.XtraEditors.LabelControl();
            this.checkCust = new DevExpress.XtraEditors.CheckedComboBoxEdit();
            this.checkLine = new DevExpress.XtraEditors.CheckedComboBoxEdit();
            this.checkWs = new DevExpress.XtraEditors.CheckedComboBoxEdit();
            this.ucDateChoice = new PH.MobileQC.UI.UserControllibrary.MultipleDateChoiceUserControl();
            ((System.ComponentModel.ISupportInitialize)(this.txFactory.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.comboBoxEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.checkCust.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.checkLine.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.checkWs.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // txFactory
            // 
            this.txFactory.EditValue = "SL";
            this.txFactory.Location = new System.Drawing.Point(142, 38);
            this.txFactory.Name = "txFactory";
            this.txFactory.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txFactory.Properties.Items.AddRange(new object[] {
            "CN",
            "SL",
            "RX",
            "CL"});
            this.txFactory.Size = new System.Drawing.Size(102, 21);
            this.txFactory.TabIndex = 10;
            this.txFactory.SelectedIndexChanged += new System.EventHandler(this.txFactory_SelectedIndexChanged);
            // 
            // labelControl1
            // 
            this.labelControl1.Appearance.Options.UseTextOptions = true;
            this.labelControl1.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.labelControl1.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.labelControl1.Location = new System.Drawing.Point(20, 41);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(113, 14);
            this.labelControl1.TabIndex = 8;
            this.labelControl1.Text = "Factory :";
            // 
            // simpleButton1
            // 
            this.simpleButton1.Location = new System.Drawing.Point(142, 350);
            this.simpleButton1.Name = "simpleButton1";
            this.simpleButton1.Size = new System.Drawing.Size(75, 23);
            this.simpleButton1.TabIndex = 7;
            this.simpleButton1.Text = "OK";
            this.simpleButton1.Click += new System.EventHandler(this.simpleButton1_Click);
            // 
            // comboBoxEdit1
            // 
            this.comboBoxEdit1.EditValue = "Full Inspection Performance - Defect Points List - 2.1aa";
            this.comboBoxEdit1.Location = new System.Drawing.Point(142, 308);
            this.comboBoxEdit1.Name = "comboBoxEdit1";
            this.comboBoxEdit1.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.comboBoxEdit1.Properties.Items.AddRange(new object[] {
            "Full Inspection Performance - Defect Points List - 2.1aa"});
            this.comboBoxEdit1.Size = new System.Drawing.Size(117, 21);
            this.comboBoxEdit1.TabIndex = 13;
            // 
            // labelControl2
            // 
            this.labelControl2.Appearance.Options.UseTextOptions = true;
            this.labelControl2.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.labelControl2.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.labelControl2.Location = new System.Drawing.Point(20, 310);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(113, 14);
            this.labelControl2.TabIndex = 12;
            this.labelControl2.Text = "Rpt Type :";
            // 
            // labelControl5
            // 
            this.labelControl5.Appearance.Options.UseTextOptions = true;
            this.labelControl5.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.labelControl5.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.labelControl5.Location = new System.Drawing.Point(20, 281);
            this.labelControl5.Name = "labelControl5";
            this.labelControl5.Size = new System.Drawing.Size(113, 14);
            this.labelControl5.TabIndex = 30;
            this.labelControl5.Text = "By Cust. Code :";
            // 
            // labelControl4
            // 
            this.labelControl4.Appearance.Options.UseTextOptions = true;
            this.labelControl4.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.labelControl4.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.labelControl4.Location = new System.Drawing.Point(20, 248);
            this.labelControl4.Name = "labelControl4";
            this.labelControl4.Size = new System.Drawing.Size(113, 18);
            this.labelControl4.TabIndex = 28;
            this.labelControl4.Text = "By Assembly Line :";
            // 
            // labelControl3
            // 
            this.labelControl3.Appearance.Options.UseTextOptions = true;
            this.labelControl3.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.labelControl3.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.labelControl3.Location = new System.Drawing.Point(20, 217);
            this.labelControl3.Name = "labelControl3";
            this.labelControl3.Size = new System.Drawing.Size(113, 14);
            this.labelControl3.TabIndex = 26;
            this.labelControl3.Text = "By Ws :";
            // 
            // checkCust
            // 
            this.checkCust.Location = new System.Drawing.Point(142, 278);
            this.checkCust.Name = "checkCust";
            this.checkCust.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.checkCust.Size = new System.Drawing.Size(117, 21);
            this.checkCust.TabIndex = 33;
            // 
            // checkLine
            // 
            this.checkLine.Location = new System.Drawing.Point(142, 245);
            this.checkLine.Name = "checkLine";
            this.checkLine.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.checkLine.Size = new System.Drawing.Size(117, 21);
            this.checkLine.TabIndex = 32;
            this.checkLine.EditValueChanged += new System.EventHandler(this.checkLine_EditValueChanged);
            // 
            // checkWs
            // 
            this.checkWs.Location = new System.Drawing.Point(142, 214);
            this.checkWs.Name = "checkWs";
            this.checkWs.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.checkWs.Size = new System.Drawing.Size(117, 21);
            this.checkWs.TabIndex = 31;
            this.checkWs.EditValueChanged += new System.EventHandler(this.checkWs_EditValueChanged);
            // 
            // ucDateChoice
            // 
            this.ucDateChoice.FromDate = new System.DateTime(((long)(0)));
            this.ucDateChoice.Location = new System.Drawing.Point(29, 61);
            this.ucDateChoice.Month = 0;
            this.ucDateChoice.Name = "ucDateChoice";
            this.ucDateChoice.Size = new System.Drawing.Size(410, 148);
            this.PlatetoolTipController.SetSuperTip(this.ucDateChoice, null);
            this.ucDateChoice.TabIndex = 11;
            this.ucDateChoice.ToDate = new System.DateTime(((long)(0)));
            this.ucDateChoice.Week = 0;
            this.ucDateChoice.Load += new System.EventHandler(this.ucDateChoice_Load);
            // 
            // FullInspectionDefectPointAnalyseForm21aa
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.checkCust);
            this.Controls.Add(this.checkLine);
            this.Controls.Add(this.checkWs);
            this.Controls.Add(this.labelControl5);
            this.Controls.Add(this.labelControl4);
            this.Controls.Add(this.labelControl3);
            this.Controls.Add(this.comboBoxEdit1);
            this.Controls.Add(this.labelControl2);
            this.Controls.Add(this.ucDateChoice);
            this.Controls.Add(this.txFactory);
            this.Controls.Add(this.labelControl1);
            this.Controls.Add(this.simpleButton1);
            this.Name = "FullInspectionDefectPointAnalyseForm21aa";
            this.Size = new System.Drawing.Size(537, 444);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.txFactory.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.comboBoxEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.checkCust.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.checkLine.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.checkWs.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.ComboBoxEdit txFactory;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.SimpleButton simpleButton1;
        private PH.MobileQC.UI.UserControllibrary.MultipleDateChoiceUserControl ucDateChoice;
        private DevExpress.XtraEditors.ComboBoxEdit comboBoxEdit1;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.LabelControl labelControl5;
        private DevExpress.XtraEditors.LabelControl labelControl4;
        private DevExpress.XtraEditors.LabelControl labelControl3;
        private DevExpress.XtraEditors.CheckedComboBoxEdit checkCust;
        private DevExpress.XtraEditors.CheckedComboBoxEdit checkLine;
        private DevExpress.XtraEditors.CheckedComboBoxEdit checkWs;
    }
}