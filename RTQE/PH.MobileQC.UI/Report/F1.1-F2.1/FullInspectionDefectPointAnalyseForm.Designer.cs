namespace PH.MobileQC.UI.RPT.AQL
{
    partial class FullInspectionDefectPointAnalyseForm
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
            this.labCust = new DevExpress.XtraEditors.LabelControl();
            this.labLine = new DevExpress.XtraEditors.LabelControl();
            this.labws = new DevExpress.XtraEditors.LabelControl();
            this.checkWs = new DevExpress.XtraEditors.CheckedComboBoxEdit();
            this.checkLine = new DevExpress.XtraEditors.CheckedComboBoxEdit();
            this.checkCust = new DevExpress.XtraEditors.CheckedComboBoxEdit();
            this.ucDateChoice = new PH.MobileQC.UI.UserControllibrary.MultipleDateChoiceUserControl();
            ((System.ComponentModel.ISupportInitialize)(this.txFactory.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.comboBoxEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.checkWs.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.checkLine.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.checkCust.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // txFactory
            // 
            this.txFactory.EditValue = "SL";
            this.txFactory.Location = new System.Drawing.Point(189, 48);
            this.txFactory.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.txFactory.Name = "txFactory";
            this.txFactory.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txFactory.Properties.Items.AddRange(new object[] {
            "SL",
            "RX",
            "CL"});
            this.txFactory.Size = new System.Drawing.Size(136, 25);
            this.txFactory.TabIndex = 10;
            this.txFactory.EditValueChanged += new System.EventHandler(this.txFactory_EditValueChanged);
            // 
            // labelControl1
            // 
            this.labelControl1.Appearance.Options.UseTextOptions = true;
            this.labelControl1.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.labelControl1.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.labelControl1.Location = new System.Drawing.Point(29, 51);
            this.labelControl1.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(148, 18);
            this.labelControl1.TabIndex = 8;
            this.labelControl1.Text = "Factory :";
            // 
            // simpleButton1
            // 
            this.simpleButton1.Location = new System.Drawing.Point(189, 432);
            this.simpleButton1.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.simpleButton1.Name = "simpleButton1";
            this.simpleButton1.Size = new System.Drawing.Size(100, 29);
            this.simpleButton1.TabIndex = 7;
            this.simpleButton1.Text = "OK";
            this.simpleButton1.Click += new System.EventHandler(this.simpleButton1_Click);
            // 
            // comboBoxEdit1
            // 
            this.comboBoxEdit1.EditValue = "";
            this.comboBoxEdit1.Location = new System.Drawing.Point(189, 376);
            this.comboBoxEdit1.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.comboBoxEdit1.Name = "comboBoxEdit1";
            this.comboBoxEdit1.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.comboBoxEdit1.Properties.Items.AddRange(new object[] {
            "Full Inspection Performance - Defect Points List - 2.1aa",
            "Full Inspection Performance - Defect Points List - 2.1ab"});
            this.comboBoxEdit1.Size = new System.Drawing.Size(156, 25);
            this.comboBoxEdit1.TabIndex = 13;
            this.comboBoxEdit1.EditValueChanged += new System.EventHandler(this.comboBoxEdit1_EditValueChanged);
            // 
            // labelControl2
            // 
            this.labelControl2.Appearance.Options.UseTextOptions = true;
            this.labelControl2.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.labelControl2.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.labelControl2.Location = new System.Drawing.Point(29, 380);
            this.labelControl2.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(148, 18);
            this.labelControl2.TabIndex = 12;
            this.labelControl2.Text = "Rpt Type :";
            // 
            // labCust
            // 
            this.labCust.Appearance.Options.UseTextOptions = true;
            this.labCust.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.labCust.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.labCust.Location = new System.Drawing.Point(29, 342);
            this.labCust.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.labCust.Name = "labCust";
            this.labCust.Size = new System.Drawing.Size(148, 18);
            this.labCust.TabIndex = 24;
            this.labCust.Text = "By Cust. Code :";
            // 
            // labLine
            // 
            this.labLine.Appearance.Options.UseTextOptions = true;
            this.labLine.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.labLine.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.labLine.Location = new System.Drawing.Point(29, 301);
            this.labLine.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.labLine.Name = "labLine";
            this.labLine.Size = new System.Drawing.Size(148, 18);
            this.labLine.TabIndex = 22;
            this.labLine.Text = "By Assembly Line :";
            // 
            // labws
            // 
            this.labws.Appearance.Options.UseTextOptions = true;
            this.labws.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.labws.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.labws.Location = new System.Drawing.Point(29, 262);
            this.labws.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.labws.Name = "labws";
            this.labws.Size = new System.Drawing.Size(148, 18);
            this.labws.TabIndex = 20;
            this.labws.Text = "By Ws :";
            // 
            // checkWs
            // 
            this.checkWs.Location = new System.Drawing.Point(189, 259);
            this.checkWs.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.checkWs.Name = "checkWs";
            this.checkWs.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.checkWs.Size = new System.Drawing.Size(156, 25);
            this.checkWs.TabIndex = 26;
            this.checkWs.EditValueChanged += new System.EventHandler(this.checkWs_EditValueChanged);
            // 
            // checkLine
            // 
            this.checkLine.Location = new System.Drawing.Point(189, 298);
            this.checkLine.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.checkLine.Name = "checkLine";
            this.checkLine.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.checkLine.Size = new System.Drawing.Size(156, 25);
            this.checkLine.TabIndex = 27;
            this.checkLine.EditValueChanged += new System.EventHandler(this.checkLine_EditValueChanged);
            // 
            // checkCust
            // 
            this.checkCust.Location = new System.Drawing.Point(189, 339);
            this.checkCust.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.checkCust.Name = "checkCust";
            this.checkCust.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.checkCust.Size = new System.Drawing.Size(156, 25);
            this.checkCust.TabIndex = 28;
            // 
            // ucDateChoice
            // 
            this.ucDateChoice.FromDate = new System.DateTime(((long)(0)));
            this.ucDateChoice.Location = new System.Drawing.Point(39, 76);
            this.ucDateChoice.Margin = new System.Windows.Forms.Padding(5);
            this.ucDateChoice.Month = 0;
            this.ucDateChoice.Name = "ucDateChoice";
            this.ucDateChoice.Size = new System.Drawing.Size(547, 185);
            this.PlatetoolTipController.SetSuperTip(this.ucDateChoice, null);
            this.ucDateChoice.TabIndex = 11;
            this.ucDateChoice.ToDate = new System.DateTime(((long)(0)));
            this.ucDateChoice.Week = 0;
            // 
            // FullInspectionDefectPointAnalyseForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.checkCust);
            this.Controls.Add(this.checkLine);
            this.Controls.Add(this.checkWs);
            this.Controls.Add(this.labCust);
            this.Controls.Add(this.labLine);
            this.Controls.Add(this.labws);
            this.Controls.Add(this.comboBoxEdit1);
            this.Controls.Add(this.labelControl2);
            this.Controls.Add(this.ucDateChoice);
            this.Controls.Add(this.txFactory);
            this.Controls.Add(this.labelControl1);
            this.Controls.Add(this.simpleButton1);
            this.Margin = new System.Windows.Forms.Padding(5, 5, 5, 5);
            this.Name = "FullInspectionDefectPointAnalyseForm";
            this.Size = new System.Drawing.Size(716, 555);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.txFactory.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.comboBoxEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.checkWs.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.checkLine.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.checkCust.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.ComboBoxEdit txFactory;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.SimpleButton simpleButton1;
        private PH.MobileQC.UI.UserControllibrary.MultipleDateChoiceUserControl ucDateChoice;
        private DevExpress.XtraEditors.ComboBoxEdit comboBoxEdit1;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.LabelControl labCust;
        private DevExpress.XtraEditors.LabelControl labLine;
        private DevExpress.XtraEditors.LabelControl labws;
        private DevExpress.XtraEditors.CheckedComboBoxEdit checkWs;
        private DevExpress.XtraEditors.CheckedComboBoxEdit checkLine;
        private DevExpress.XtraEditors.CheckedComboBoxEdit checkCust;
    }
}