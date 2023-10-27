namespace PH.MobileQC.UI.RPT.AQL
{
    partial class AQLDefectPointAnalyseForm
    {
        /// <summary> 
        /// 必需的设计器变量。
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary> 
        /// 清理所有正在使用的资源。
        /// </summary>
        /// <param name="disposing">如果应释放托管资源，为 true；否则为 false。</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region 组件设计器生成的代码

        /// <summary> 
        /// 设计器支持所需的方法 - 不要
        /// 使用代码编辑器修改此方法的内容。
        /// </summary>
        private void InitializeComponent()
        {
            this.simpleButton1 = new DevExpress.XtraEditors.SimpleButton();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.txFactory = new DevExpress.XtraEditors.ComboBoxEdit();
            this.labelControl4 = new DevExpress.XtraEditors.LabelControl();
            this.cmbType = new DevExpress.XtraEditors.ComboBoxEdit();
            this.checkIncompleted = new System.Windows.Forms.CheckBox();
            this.checkCompleted = new System.Windows.Forms.CheckBox();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.comboBoxEdit1 = new DevExpress.XtraEditors.ComboBoxEdit();
            this.ucDateChoice = new PH.MobileQC.UI.UserControllibrary.MultipleDateChoiceUserControl();
            ((System.ComponentModel.ISupportInitialize)(this.txFactory.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cmbType.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.comboBoxEdit1.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // simpleButton1
            // 
            this.simpleButton1.Location = new System.Drawing.Point(188, 295);
            this.simpleButton1.Name = "simpleButton1";
            this.simpleButton1.Size = new System.Drawing.Size(75, 23);
            this.simpleButton1.TabIndex = 0;
            this.simpleButton1.Text = "OK";
            this.simpleButton1.Click += new System.EventHandler(this.simpleButton1_Click);
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(125, 35);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(44, 14);
            this.labelControl1.TabIndex = 1;
            this.labelControl1.Text = "Factory:";
            // 
            // txFactory
            // 
            this.txFactory.EditValue = "SL";
            this.txFactory.Location = new System.Drawing.Point(181, 32);
            this.txFactory.Name = "txFactory";
            this.txFactory.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txFactory.Properties.Items.AddRange(new object[] {
            "SL",
            "RX",
            "CL"});
            this.txFactory.Size = new System.Drawing.Size(119, 21);
            this.txFactory.TabIndex = 3;
            // 
            // labelControl4
            // 
            this.labelControl4.Appearance.Options.UseTextOptions = true;
            this.labelControl4.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.labelControl4.Appearance.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.labelControl4.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.labelControl4.Location = new System.Drawing.Point(439, 358);
            this.labelControl4.Name = "labelControl4";
            this.labelControl4.Size = new System.Drawing.Size(82, 19);
            this.labelControl4.TabIndex = 87;
            this.labelControl4.Text = "Report Type :";
            this.labelControl4.Visible = false;
            // 
            // cmbType
            // 
            this.cmbType.EditValue = "2.2a AQL Performance - Defect";
            this.cmbType.Location = new System.Drawing.Point(439, 383);
            this.cmbType.Name = "cmbType";
            this.cmbType.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cmbType.Properties.Items.AddRange(new object[] {
            "2.2a AQL Performance - Defect"});
            this.cmbType.Size = new System.Drawing.Size(197, 21);
            this.cmbType.TabIndex = 86;
            this.cmbType.Visible = false;
            this.cmbType.SelectedIndexChanged += new System.EventHandler(this.cmbType_SelectedIndexChanged);
            // 
            // checkIncompleted
            // 
            this.checkIncompleted.AutoSize = true;
            this.checkIncompleted.Checked = true;
            this.checkIncompleted.CheckState = System.Windows.Forms.CheckState.Checked;
            this.checkIncompleted.Location = new System.Drawing.Point(181, 237);
            this.checkIncompleted.Name = "checkIncompleted";
            this.checkIncompleted.Size = new System.Drawing.Size(120, 16);
            this.PlatetoolTipController.SetSuperTip(this.checkIncompleted, null);
            this.checkIncompleted.TabIndex = 88;
            this.checkIncompleted.Text = "Show Incompleted";
            this.checkIncompleted.UseVisualStyleBackColor = true;
            // 
            // checkCompleted
            // 
            this.checkCompleted.AutoSize = true;
            this.checkCompleted.Location = new System.Drawing.Point(181, 261);
            this.checkCompleted.Name = "checkCompleted";
            this.checkCompleted.Size = new System.Drawing.Size(108, 16);
            this.PlatetoolTipController.SetSuperTip(this.checkCompleted, null);
            this.checkCompleted.TabIndex = 89;
            this.checkCompleted.Text = "Show Completed";
            this.checkCompleted.UseVisualStyleBackColor = true;
            // 
            // labelControl2
            // 
            this.labelControl2.Appearance.Options.UseTextOptions = true;
            this.labelControl2.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.labelControl2.Appearance.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.labelControl2.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.labelControl2.Location = new System.Drawing.Point(3, 207);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(170, 19);
            this.labelControl2.TabIndex = 91;
            this.labelControl2.Text = "Filtering by seq. lot:";
            // 
            // comboBoxEdit1
            // 
            this.comboBoxEdit1.EditValue = "1) Filtered | w/max 2 extra last seq lot of 1st freq. audit result was REJ.";
            this.comboBoxEdit1.Location = new System.Drawing.Point(181, 205);
            this.comboBoxEdit1.Name = "comboBoxEdit1";
            this.comboBoxEdit1.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.comboBoxEdit1.Properties.Items.AddRange(new object[] {
            "1) Filtered | w/max 2 extra last seq lot of 1st freq. audit result was REJ.",
            "2) Non Filter"});
            this.comboBoxEdit1.Size = new System.Drawing.Size(425, 21);
            this.comboBoxEdit1.TabIndex = 92;
            // 
            // ucDateChoice
            // 
            this.ucDateChoice.FromDate = new System.DateTime(((long)(0)));
            this.ucDateChoice.Location = new System.Drawing.Point(70, 55);
            this.ucDateChoice.Month = 0;
            this.ucDateChoice.Name = "ucDateChoice";
            this.ucDateChoice.Size = new System.Drawing.Size(410, 148);
            this.PlatetoolTipController.SetSuperTip(this.ucDateChoice, null);
            this.ucDateChoice.TabIndex = 90;
            this.ucDateChoice.ToDate = new System.DateTime(((long)(0)));
            this.ucDateChoice.Week = 0;
            this.ucDateChoice.Load += new System.EventHandler(this.ucDateChoice_Load);
            // 
            // AQLDefectPointAnalyseForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.comboBoxEdit1);
            this.Controls.Add(this.labelControl2);
            this.Controls.Add(this.ucDateChoice);
            this.Controls.Add(this.checkCompleted);
            this.Controls.Add(this.checkIncompleted);
            this.Controls.Add(this.labelControl4);
            this.Controls.Add(this.cmbType);
            this.Controls.Add(this.txFactory);
            this.Controls.Add(this.labelControl1);
            this.Controls.Add(this.simpleButton1);
            this.Name = "AQLDefectPointAnalyseForm";
            this.Size = new System.Drawing.Size(664, 459);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.txFactory.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cmbType.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.comboBoxEdit1.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.SimpleButton simpleButton1;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.ComboBoxEdit txFactory;
        private DevExpress.XtraEditors.LabelControl labelControl4;
        private DevExpress.XtraEditors.ComboBoxEdit cmbType;
        private System.Windows.Forms.CheckBox checkIncompleted;
        private System.Windows.Forms.CheckBox checkCompleted;
        private PH.MobileQC.UI.UserControllibrary.MultipleDateChoiceUserControl ucDateChoice;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.ComboBoxEdit comboBoxEdit1;
    }
}
