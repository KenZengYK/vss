namespace PH.MobileQC.UI
{
    partial class ProductionScheduleBarChartQueryForm
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
            this.txtFactory = new DevExpress.XtraEditors.ComboBoxEdit();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.txtLine = new DevExpress.XtraEditors.ComboBoxEdit();
            this.labelControl3 = new DevExpress.XtraEditors.LabelControl();
            this.txtWorkShop = new DevExpress.XtraEditors.ComboBoxEdit();
            this.labelControl4 = new DevExpress.XtraEditors.LabelControl();
            this.txtProject = new DevExpress.XtraEditors.ComboBoxEdit();
            this.labelControl5 = new DevExpress.XtraEditors.LabelControl();
            this.txtStyle = new DevExpress.XtraEditors.ComboBoxEdit();
            this.labelControl6 = new DevExpress.XtraEditors.LabelControl();
            this.txtColor = new DevExpress.XtraEditors.ComboBoxEdit();
            ((System.ComponentModel.ISupportInitialize)(this.txtFactory.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtLine.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtWorkShop.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtProject.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtStyle.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtColor.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // simpleButton1
            // 
            this.simpleButton1.Location = new System.Drawing.Point(196, 243);
            this.simpleButton1.Name = "simpleButton1";
            this.simpleButton1.Size = new System.Drawing.Size(75, 23);
            this.simpleButton1.TabIndex = 0;
            this.simpleButton1.Text = "OK";
            this.simpleButton1.Click += new System.EventHandler(this.simpleButton1_Click);
            // 
            // txtFactory
            // 
            this.txtFactory.Location = new System.Drawing.Point(150, 56);
            this.txtFactory.Name = "txtFactory";
            this.txtFactory.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtFactory.Properties.Items.AddRange(new object[] {
            "SL",
            "RX",
            "GG",
            "CL",
            "GX(GG+RX)"});
            this.txtFactory.Size = new System.Drawing.Size(178, 21);
            this.txtFactory.TabIndex = 1;
            this.txtFactory.SelectedValueChanged += new System.EventHandler(this.txtFactory_SelectedValueChanged);
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(83, 59);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(40, 14);
            this.labelControl1.TabIndex = 2;
            this.labelControl1.Text = "Factory";
            // 
            // labelControl2
            // 
            this.labelControl2.Location = new System.Drawing.Point(101, 113);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(22, 14);
            this.labelControl2.TabIndex = 4;
            this.labelControl2.Text = "Line";
            // 
            // txtLine
            // 
            this.txtLine.Location = new System.Drawing.Point(150, 110);
            this.txtLine.Name = "txtLine";
            this.txtLine.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtLine.Size = new System.Drawing.Size(178, 21);
            this.txtLine.TabIndex = 3;
            this.txtLine.SelectedValueChanged += new System.EventHandler(this.txtLine_SelectedValueChanged);
            // 
            // labelControl3
            // 
            this.labelControl3.Location = new System.Drawing.Point(66, 86);
            this.labelControl3.Name = "labelControl3";
            this.labelControl3.Size = new System.Drawing.Size(57, 14);
            this.labelControl3.TabIndex = 6;
            this.labelControl3.Text = "WorkShop";
            // 
            // txtWorkShop
            // 
            this.txtWorkShop.Location = new System.Drawing.Point(150, 83);
            this.txtWorkShop.Name = "txtWorkShop";
            this.txtWorkShop.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtWorkShop.Size = new System.Drawing.Size(178, 21);
            this.txtWorkShop.TabIndex = 5;
            this.txtWorkShop.SelectedValueChanged += new System.EventHandler(this.txtWorkShop_SelectedValueChanged);
            // 
            // labelControl4
            // 
            this.labelControl4.Location = new System.Drawing.Point(84, 140);
            this.labelControl4.Name = "labelControl4";
            this.labelControl4.Size = new System.Drawing.Size(39, 14);
            this.labelControl4.TabIndex = 8;
            this.labelControl4.Text = "Project";
            // 
            // txtProject
            // 
            this.txtProject.Location = new System.Drawing.Point(150, 137);
            this.txtProject.Name = "txtProject";
            this.txtProject.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtProject.Size = new System.Drawing.Size(178, 21);
            this.txtProject.TabIndex = 7;
            this.txtProject.SelectedValueChanged += new System.EventHandler(this.txtProject_SelectedValueChanged);
            // 
            // labelControl5
            // 
            this.labelControl5.Location = new System.Drawing.Point(96, 167);
            this.labelControl5.Name = "labelControl5";
            this.labelControl5.Size = new System.Drawing.Size(27, 14);
            this.labelControl5.TabIndex = 10;
            this.labelControl5.Text = "Style";
            // 
            // txtStyle
            // 
            this.txtStyle.Location = new System.Drawing.Point(150, 164);
            this.txtStyle.Name = "txtStyle";
            this.txtStyle.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtStyle.Size = new System.Drawing.Size(178, 21);
            this.txtStyle.TabIndex = 9;
            this.txtStyle.SelectedValueChanged += new System.EventHandler(this.txtStyle_SelectedValueChanged);
            // 
            // labelControl6
            // 
            this.labelControl6.Location = new System.Drawing.Point(92, 194);
            this.labelControl6.Name = "labelControl6";
            this.labelControl6.Size = new System.Drawing.Size(31, 14);
            this.labelControl6.TabIndex = 12;
            this.labelControl6.Text = "Color ";
            // 
            // txtColor
            // 
            this.txtColor.Location = new System.Drawing.Point(150, 191);
            this.txtColor.Name = "txtColor";
            this.txtColor.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtColor.Size = new System.Drawing.Size(178, 21);
            this.txtColor.TabIndex = 11;
            // 
            // ProductionScheduleBarChartQueryForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(466, 342);
            this.Controls.Add(this.labelControl6);
            this.Controls.Add(this.txtColor);
            this.Controls.Add(this.labelControl5);
            this.Controls.Add(this.txtStyle);
            this.Controls.Add(this.labelControl4);
            this.Controls.Add(this.txtProject);
            this.Controls.Add(this.labelControl3);
            this.Controls.Add(this.txtWorkShop);
            this.Controls.Add(this.labelControl2);
            this.Controls.Add(this.txtLine);
            this.Controls.Add(this.labelControl1);
            this.Controls.Add(this.txtFactory);
            this.Controls.Add(this.simpleButton1);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "ProductionScheduleBarChartQueryForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            ((System.ComponentModel.ISupportInitialize)(this.txtFactory.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtLine.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtWorkShop.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtProject.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtStyle.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtColor.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.SimpleButton simpleButton1;
        private DevExpress.XtraEditors.ComboBoxEdit txtFactory;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.ComboBoxEdit txtLine;
        private DevExpress.XtraEditors.LabelControl labelControl3;
        private DevExpress.XtraEditors.ComboBoxEdit txtWorkShop;
        private DevExpress.XtraEditors.LabelControl labelControl4;
        private DevExpress.XtraEditors.ComboBoxEdit txtProject;
        private DevExpress.XtraEditors.LabelControl labelControl5;
        private DevExpress.XtraEditors.ComboBoxEdit txtStyle;
        private DevExpress.XtraEditors.LabelControl labelControl6;
        private DevExpress.XtraEditors.ComboBoxEdit txtColor;
    }
}