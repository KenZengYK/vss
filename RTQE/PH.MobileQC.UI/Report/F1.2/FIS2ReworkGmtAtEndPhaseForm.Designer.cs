namespace PH.MobileQC.UI.FullInspection
{
    partial class FIS2ReworkGmtAtEndPhaseForm
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
            this.lue_WorkShop = new DevExpress.XtraEditors.ComboBoxEdit();
            this.labelControl12 = new DevExpress.XtraEditors.LabelControl();
            this.sbut_OK = new DevExpress.XtraEditors.SimpleButton();
            this.dateEdit1 = new DevExpress.XtraEditors.DateEdit();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.lue_Factory = new DevExpress.XtraEditors.ComboBoxEdit();
            this.labelControl11 = new DevExpress.XtraEditors.LabelControl();
            ((System.ComponentModel.ISupportInitialize)(this.lue_WorkShop.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit1.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.lue_Factory.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // lue_WorkShop
            // 
            this.lue_WorkShop.Location = new System.Drawing.Point(105, 83);
            this.lue_WorkShop.Name = "lue_WorkShop";
            this.lue_WorkShop.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.lue_WorkShop.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.lue_WorkShop.Size = new System.Drawing.Size(141, 21);
            this.lue_WorkShop.TabIndex = 110;
            // 
            // labelControl12
            // 
            this.labelControl12.Location = new System.Drawing.Point(38, 86);
            this.labelControl12.Name = "labelControl12";
            this.labelControl12.Size = new System.Drawing.Size(61, 14);
            this.labelControl12.TabIndex = 109;
            this.labelControl12.Text = "WorkShop:";
            // 
            // sbut_OK
            // 
            this.sbut_OK.Location = new System.Drawing.Point(127, 149);
            this.sbut_OK.Name = "sbut_OK";
            this.sbut_OK.Size = new System.Drawing.Size(75, 23);
            this.sbut_OK.TabIndex = 108;
            this.sbut_OK.Text = "Preview";
            this.sbut_OK.Click += new System.EventHandler(this.sbut_OK_Click);
            // 
            // dateEdit1
            // 
            this.dateEdit1.EditValue = null;
            this.dateEdit1.Location = new System.Drawing.Point(105, 111);
            this.dateEdit1.Name = "dateEdit1";
            this.dateEdit1.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.dateEdit1.Properties.CloseUpKey = new DevExpress.Utils.KeyShortcut(System.Windows.Forms.Keys.F5);
            this.dateEdit1.Properties.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.dateEdit1.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.dateEdit1.Properties.EditFormat.FormatString = "yyyy-MM-dd";
            this.dateEdit1.Properties.EditFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.dateEdit1.Properties.Mask.EditMask = "yyyy-MM-dd";
            this.dateEdit1.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.dateEdit1.Size = new System.Drawing.Size(141, 21);
            this.dateEdit1.TabIndex = 107;
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(69, 114);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(30, 14);
            this.labelControl1.TabIndex = 106;
            this.labelControl1.Text = "Date:";
            // 
            // lue_Factory
            // 
            this.lue_Factory.Location = new System.Drawing.Point(105, 56);
            this.lue_Factory.Name = "lue_Factory";
            this.lue_Factory.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.lue_Factory.Properties.Items.AddRange(new object[] {
            "SL",
            "RX",
            "CL"});
            this.lue_Factory.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.lue_Factory.Size = new System.Drawing.Size(141, 21);
            this.lue_Factory.TabIndex = 105;
            this.lue_Factory.EditValueChanged += new System.EventHandler(this.lue_Factory_EditValueChanged);
            // 
            // labelControl11
            // 
            this.labelControl11.Location = new System.Drawing.Point(55, 60);
            this.labelControl11.Name = "labelControl11";
            this.labelControl11.Size = new System.Drawing.Size(44, 14);
            this.labelControl11.TabIndex = 104;
            this.labelControl11.Text = "Factory:";
            // 
            // FIS2ReworkGmtAtEndPhaseForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.lue_WorkShop);
            this.Controls.Add(this.labelControl12);
            this.Controls.Add(this.sbut_OK);
            this.Controls.Add(this.dateEdit1);
            this.Controls.Add(this.labelControl1);
            this.Controls.Add(this.lue_Factory);
            this.Controls.Add(this.labelControl11);
            this.Name = "FIS2ReworkGmtAtEndPhaseForm";
            this.Size = new System.Drawing.Size(321, 262);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.lue_WorkShop.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit1.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.lue_Factory.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.ComboBoxEdit lue_WorkShop;
        private DevExpress.XtraEditors.LabelControl labelControl12;
        private DevExpress.XtraEditors.SimpleButton sbut_OK;
        private DevExpress.XtraEditors.DateEdit dateEdit1;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.ComboBoxEdit lue_Factory;
        private DevExpress.XtraEditors.LabelControl labelControl11;
    }
}